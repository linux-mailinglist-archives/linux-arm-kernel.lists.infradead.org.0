Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B33FD2442
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDWh995XZ1MnRTVWuKjuKhBn/75hKXFqOSTJxixTXcY=; b=Sl8iHbLDpxYRyq
	zxV05lVO3OXgnMbHyMqPZAaBGzTW8RRmx0i6/XP76X0zKcGeV5hzQtIewTIhbqN1vx9Jsx0DrWfih
	y/dKKw9XMbOADUnGc5kCDG4+TUpYGeCDBKLau7M5+0kByQWjUB3SUN3mT3Q2wNQU5lM4Wt5otY1H8
	daXbVMPlT4uhnF7bUksBDupx6ZKR79Xcem5e2LneZM0A/VcEhUTI393aWmglMHDOzoPWXt1jFOQje
	MpHHz7zn4c59B+FDSVzzMfkevI889CDjaXGrJ9zNnirNc5DZ+IKeoleIvwt8R3gpv0IABbXGKyU8E
	bMBjIYdYvnmeRvxfSkGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUAL-0007zE-Jg; Thu, 10 Oct 2019 08:51:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIU7r-0004BW-CK
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:48:49 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FF84218AC;
 Thu, 10 Oct 2019 08:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570697326;
 bh=T4FbpQKPhy3l01rC+LQL19O6vxjqjUvvNx+JZt0oe/w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DvVzJZlH6/y+iqSowPXJUyKW6711tKRPd8A/IO2hKjo9IljHTvX6ypUPBYo9+0QAU
 qNpJl0h3ijLl6zJxeIM1sDL0KR2AWYa06ykcGhDPS2rVWkgVzWc1aLLJjScRrXkO3o
 pmZPJzJKw49tyrdXgI/L2eGsE897D52X1KxCeAAE=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4.19 102/114] arm64: ssbs: Dont treat CPUs with SSBS as
 unaffected by SSB
Date: Thu, 10 Oct 2019 10:36:49 +0200
Message-Id: <20191010083613.611304454@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010083544.711104709@linuxfoundation.org>
References: <20191010083544.711104709@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_014847_587025_50FA6626 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

[ Upstream commit eb337cdfcd5dd3b10522c2f34140a73a4c285c30 ]

SSBS provides a relatively cheap mitigation for SSB, but it is still a
mitigation and its presence does not indicate that the CPU is unaffected
by the vulnerability.

Tweak the mitigation logic so that we report the correct string in sysfs.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/cpu_errata.c |   10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -341,15 +341,17 @@ static bool has_ssbd_mitigation(const st
 
 	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
 
+	/* delay setting __ssb_safe until we get a firmware response */
+	if (is_midr_in_range_list(read_cpuid_id(), entry->midr_range_list))
+		this_cpu_safe = true;
+
 	if (this_cpu_has_cap(ARM64_SSBS)) {
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		required = false;
 		goto out_printmsg;
 	}
 
-	/* delay setting __ssb_safe until we get a firmware response */
-	if (is_midr_in_range_list(read_cpuid_id(), entry->midr_range_list))
-		this_cpu_safe = true;
-
 	if (psci_ops.smccc_version == SMCCC_VERSION_1_0) {
 		ssbd_state = ARM64_SSBD_UNKNOWN;
 		if (!this_cpu_safe)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
