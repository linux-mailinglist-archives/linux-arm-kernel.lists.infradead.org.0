Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3734181127
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:53:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:Subject:To:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pMz1+6cs7L0xggazB7hhI833/oUngVOAoI8s+IyHB8Y=; b=bSLTfRPuX5q3TP
	CMjX5vXRIX65fYJNrczYB3tbsOZPmuYZpGsZe9lPw+Sf2MVWBSYhoEQFbvK5+iSN7WaWxz6K7X3yL
	kFKf1NobMGmpudzQpHgUkD1PilErMAPfCQrSXO2FdXYdSfMp7gYFC9SwCw/yKZLJJI+7swLDxNap1
	r8wUhPQ8a/p/gfcJsfWZyqL57nbdz/X/V71tT4il526oyAju5+lsB2onGWXgl2X/Roc8hTkltUYN6
	Z1rCewIjm0g6Le1yWmjNjBcl8zyFQKHSql+bvWZpFwZW4HViSXvrM9Y39ozNYy5deH0ldtqakvWVt
	W1KbxP9dM58H9/QLiyTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvEp-0003ep-Mv; Wed, 11 Mar 2020 06:53:07 +0000
Received: from m177134.mail.qiye.163.com ([123.58.177.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvEh-0003aa-JV
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:53:01 +0000
Received: from vivo.com (wm-5 [127.0.0.1])
 by m177126.mail.qiye.163.com (Hmail) with ESMTP id 2186A182EA3;
 Wed, 11 Mar 2020 14:52:49 +0800 (CST)
Message-ID: <ALsA-QB3CCyH77MiU4gx3arM.1.1583909569099.Hmail.hankecai@vivo.com>
To: catalin.marinas@arm.com, will@kernel.org, suzuki.poulose@arm.com, 
 Dave.Martin@arm.com, broonie@kernel.org, 
 amurray@thegoodpenguin.co.uk, jeremy.linton@arm.com, tglx@linutronix.de
Subject: =?UTF-8?B?W1BBVENIXSBhcm02NDogcmVtb3ZlIHJlZHVuZGFudCBibGFuayBmb3IgJz0nIG9wZXJhdG9y?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 58.251.74.226
MIME-Version: 1.0
Received: from hankecai@vivo.com( [58.251.74.226) ] by ajax-webmail (
 [127.0.0.1] ) ; Wed, 11 Mar 2020 14:52:49 +0800 (GMT+08:00)
From: =?UTF-8?B?6Z+p56eR5omN?= <hankecai@vivo.com>
Date: Wed, 11 Mar 2020 14:52:49 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUlXWQgYFAkeWUFZTVVIQ0xCQkJOSE9NS01CSFlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQQ8JDh5XWRIfHhUPWUFZRzo3CDpWKjlIODgCM0xMNhIuTxwD
 SBoJNlVKVUpOQ0hCS0JOTUJOSUhVMxYaEhdVExoVEB4YGhI7DRINFFUYFBZFWVdZEgtZQVlOQ1VJ
 TkpVTE9VSUlNWVdZCAFZQUlNQkk3Bg++
X-HM-Tid: 0a70c85e02856458kurs2186a182ea3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_235259_894102_1B5AA003 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.58.177.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: =?UTF-8?B?546L5paH6JmO?= <wenhu.wang@vivo.com>, trivial@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

remove redundant blank for '=' operator, it may be more elegant.

Signed-off-by: hankecai <hankecai@vivo.com>
---
 arch/arm64/kernel/cpufeature.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 0b6715625cf6..ce60d1012bfa 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -551,7 +551,7 @@ static void __init init_cpu_ftr_reg(u32 sys_reg, u64 new)
 
 	BUG_ON(!reg);
 
-	for (ftrp  = reg->ftr_bits; ftrp->width; ftrp++) {
+	for (ftrp = reg->ftr_bits; ftrp->width; ftrp++) {
 		u64 ftr_mask = arm64_ftr_mask(ftrp);
 		s64 ftr_new = arm64_ftr_value(ftrp, new);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
