Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1DA1693DB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 03:26:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HrkOgltklQv4jt5uSgpGT4M6Bq5oy7bVB3VNK+aHFY=; b=jVIORCHuQbs4mD
	K9Rqa5CYRHZS5BFA6Bg/56778ExdGOsz5JdjrXnrH4Y5g9vhwJSmZ34cF9Axxs5q4+rzV7RFPrcOI
	WLwIidyPJfkGGH6M2ZvxY6k4KkwbOFjJ/bd2WVrRzwDpSE2Sd09jcnHJK6LMUHh3ZaKAYR05oSbLu
	p/PgvR4buVX7MQ2v5jZWfIFBnAFAQ93Px7yw6JV00xZLHmP9iwpzq61CZ3FJZnXJlba5KNkDS6cCZ
	U+q/re54+K+vtDQWE2PYW7yCT3/NxQX+O1ZoJsUc8rmADucRfS6x8/+d7YpxFZGckSvHXCvlJdC6p
	wXJu2gtf5/Kv1wUrIHpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5gy3-0005uY-4p; Sun, 23 Feb 2020 02:26:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5gwv-0003r7-9A
 for linux-arm-kernel@bombadil.infradead.org; Sun, 23 Feb 2020 02:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=H6Z6SUE82vZfmI3P6QL2Jm60uoGhgDc35m7XO2cM4wk=; b=azKGUqsBlKmFbhHq98sjVvgSxh
 4/57cubLfDElQRFSyhJYirT0v58lJ4saSR6HFmxdst50fPOs0MZWRqQJWSxXkYukJ3WrbWRTqjvFL
 i34Hcl/5rRIgx8ys73syHsnrW5p+PxvD5/EZ3lY0NAxtgIdOl+JfFu5whueYPy5iVTqo2iFTbovCd
 aIK1Xci41qx0KSKHrZStG/6clT/pDZ/wqPgLbv4hAd1MeHCAVvgi5ML4xrCERFBJPEo2myJMcegXI
 fCE+lrogUDql87OgcM3xf+vpVbz9kvWp0/Zko9WElNm4hFqM2cUWd067/BAgEUngz7Hp5kcvgNPpi
 jP2R1rTA==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5gwq-0004Ie-Bb
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 02:24:51 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B61124682;
 Sun, 23 Feb 2020 02:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582424686;
 bh=iu4YqlFBr8NwRxfR43xbHq3M3RJ2xt42vY3xtDy23XY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pT9b8yHRRuk/HoiDSzBLBZcGoSmdsOsBwFkkje4c1j5gL8+klpAniGT4U3SoziqD1
 T2Xe5UYbF3xEIMkt/PwTv5YIIcFmqpcoEFRFUU+A0+VjI/A1kDo8gYcUP1zsyh+hez
 8SjWW8XA+M+BhLy6ptJahIsVVe1dh+PlPxDF9fsU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 06/16] arm/ftrace: Fix BE text poking
Date: Sat, 22 Feb 2020 21:24:28 -0500
Message-Id: <20200223022438.2398-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200223022438.2398-1-sashal@kernel.org>
References: <20200223022438.2398-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_022449_281448_80004637 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -7.1 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-7.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Zijlstra <peterz@infradead.org>, Sasha Levin <sashal@kernel.org>,
 Dmitry Osipenko <digetx@gmail.com>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peter Zijlstra <peterz@infradead.org>

[ Upstream commit be993e44badc448add6a18d6f12b20615692c4c3 ]

The __patch_text() function already applies __opcode_to_mem_*(), so
when __opcode_to_mem_*() is not the identity (BE*), it is applied
twice, wrecking the instruction.

Fixes: 42e51f187f86 ("arm/ftrace: Use __patch_text()")
Reported-by: Dmitry Osipenko <digetx@gmail.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Dmitry Osipenko <digetx@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/kernel/ftrace.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/ftrace.c b/arch/arm/kernel/ftrace.c
index 414e60ed02573..58a01083b0415 100644
--- a/arch/arm/kernel/ftrace.c
+++ b/arch/arm/kernel/ftrace.c
@@ -105,13 +105,10 @@ static int ftrace_modify_code(unsigned long pc, unsigned long old,
 {
 	unsigned long replaced;
 
-	if (IS_ENABLED(CONFIG_THUMB2_KERNEL)) {
+	if (IS_ENABLED(CONFIG_THUMB2_KERNEL))
 		old = __opcode_to_mem_thumb32(old);
-		new = __opcode_to_mem_thumb32(new);
-	} else {
+	else
 		old = __opcode_to_mem_arm(old);
-		new = __opcode_to_mem_arm(new);
-	}
 
 	if (validate) {
 		if (probe_kernel_read(&replaced, (void *)pc, MCOUNT_INSN_SIZE))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
