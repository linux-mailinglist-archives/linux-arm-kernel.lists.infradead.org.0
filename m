Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9802E1967A9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 17:46:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B4e7EIeWjkzklHd/blRRvS5qAkEAMOczLd8Dem1cYFo=; b=mey
	jObDVHxmyK9ZtmMskHjrcpZTIb2nok3qoeZGGIQDYP+TXquMD7CMWHUu7vxjV3bWwbnbTLeH+vUSZ
	iwBGA4VeRJWt6R7wisGornaUn18c7VslLWRzdd/+WOpIlZGnNKblbOk1cYCyKEoKIXBpmkW6L5S+m
	3/LSopcbo5r9mbkBV7vLqOKXCry7UScYEZhIHv342yOMRku5zO1AaTAWHww6wt9Ppt2SNLCCpWNlW
	yU/Bbk9yzusQbJL2Vduo3M8ZxyrD44HNwwHsXgQz3xmD66I8uYr6vob/Pc2ME3J/e2Z+qcDtKvCgz
	ZuuPebMpjNAI3VbkK5lWlPqTlMb9bFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIEb0-0006Vo-PI; Sat, 28 Mar 2020 16:46:06 +0000
Received: from mx.sdf.org ([205.166.94.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIEah-0006Ox-VM
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 16:45:50 +0000
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02SGhMAI029531
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Sat, 28 Mar 2020 16:43:22 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02SGhMtr029198;
 Sat, 28 Mar 2020 16:43:22 GMT
Message-Id: <202003281643.02SGhMtr029198@sdf.org>
From: George Spelvin <lkml@sdf.org>
Date: Tue, 10 Dec 2019 10:45:27 -0500
Subject: [RFC PATCH v1 39/50] arm: kexec_file: Avoid temp buffer for RNG seed
To: linux-kernel@vger.kernel.org, lkml@sdf.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_094548_102662_E3305CD7 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.166.94.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
 date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Hsin-Yi Wang <hsinyi@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After using get_random_bytes(), you want to wipe the buffer
afterward so the seed remains secret.

In this case, we can eliminate the temporary buffer entirely.
fdt_setprop_placeholder returns a pointer to the property value
buffer, allowing us to put the random data directy in there without
using a temporary buffer at all.  Faster and less stack all in one.

Signed-off-by: George Spelvin <lkml@sdf.org>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/kernel/machine_kexec_file.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 7b08bf9499b6b..69e25bb96e3fb 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -106,12 +106,12 @@ static int setup_dtb(struct kimage *image,
 
 	/* add rng-seed */
 	if (rng_is_initialized()) {
-		u8 rng_seed[RNG_SEED_SIZE];
-		get_random_bytes(rng_seed, RNG_SEED_SIZE);
-		ret = fdt_setprop(dtb, off, FDT_PROP_RNG_SEED, rng_seed,
-				RNG_SEED_SIZE);
+		void *rng_seed;
+		ret = fdt_setprop_placeholder(dtb, off, FDT_PROP_RNG_SEED,
+				RNG_SEED_SIZE, &rng_seed);
 		if (ret)
 			goto out;
+		get_random_bytes(rng_seed, RNG_SEED_SIZE);
 	} else {
 		pr_notice("RNG is not initialised: omitting \"%s\" property\n",
 				FDT_PROP_RNG_SEED);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
