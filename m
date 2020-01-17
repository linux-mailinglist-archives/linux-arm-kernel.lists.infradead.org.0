Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C68C140E42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 16:49:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xuHlXOYsUDM0nYZS4K+/doHbLXC3EXMCO/gv94c4ZXs=; b=MEVSGzFucq/f6e
	hILwabOcIQdQJKx+f7o273sYE2hvD6e3F9voogyu7DhHGd6ejLYeDffePO5EiULaUw2ECZB9vO7MO
	5mpYqNVe1DkJSxpkRrVgmIGrCfCfw4URE7tW7oX43+0/WV+aDGG7op6NiD1GhuCVr8nHb0klyztvf
	XfRZ2Otc6E6pIlOQ1ttvTOblVh/41jDTwWdmaLitlHSGaeI23yp1rvuooGHnYg7KwNNmKs+aeEGHM
	v1NPddBW8ia/0/Sz18qQpvcLNi6UsWX2wLRYCn/aQ4aT8dQCS9rfglVw10BUttj7i472XXXRGJohA
	YHazmkDHSD0iu+U5fRhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isTrg-0006mJ-LN; Fri, 17 Jan 2020 15:48:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isTrY-0006ld-Sy
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 15:48:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C50BF113E;
 Fri, 17 Jan 2020 07:48:42 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 319EF3F718;
 Fri, 17 Jan 2020 07:48:42 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH] arm64: csum: Fix pathological zero-length calls
Date: Fri, 17 Jan 2020 15:48:39 +0000
Message-Id: <a0d5b472c0c20ca34755a9636e1494d9b2e27af7.1579274660.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_074844_980715_1AEC97C6 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In validating the checksumming results of the new routine, I sadly
neglected to test its not-checksumming results. Thus it slipped through
that the one case where @buff is already dword-aligned and @len = 0
manages to defeat the tail-masking logic and behave as if @len = 8.
For a zero length it doesn't make much sense to deference @buff anyway,
so just add an early return (which has essentially zero impact on
performance).

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

I'm still trying to make sense of the CKI UDP fails, but I've re-tested
against the generic routine and this was the only thing that fell out.

 arch/arm64/lib/csum.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/lib/csum.c b/arch/arm64/lib/csum.c
index 847eb725ce09..1f82c66b32ea 100644
--- a/arch/arm64/lib/csum.c
+++ b/arch/arm64/lib/csum.c
@@ -20,6 +20,9 @@ unsigned int do_csum(const unsigned char *buff, int len)
 	const u64 *ptr;
 	u64 data, sum64 = 0;
 
+	if (unlikely(len == 0))
+		return 0;
+
 	offset = (unsigned long)buff & 7;
 	/*
 	 * This is to all intents and purposes safe, since rounding down cannot
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
