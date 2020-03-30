Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4014198281
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 19:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iprk0+E3XUDbH6xAl3TYKn6DGFQqJgwOfxdZOq+wQYE=; b=oBre5Y2htpF1FE
	Miq9V/0V/dzld9xIQvaoD8IGJfDu9I/VYskIrKb/auZxKT1VHwzMiE0YF2VBRLaafGy2YKYoitR/F
	CtrVMa7EiBq6DFh3afK8dIdxjqXAmDPx/fFRO0yCbe4MKXhvnt6R8bkgcpIiPdLFXliPf674f2XUk
	n2Ga3Pvd15NJ4u1781zXhSHN43FF7fdRlC0WJfsEESi3CoCfUgeYVhQnsdxk5Flc/CxD31QouvByW
	GU+JH/9wwI+GI2sh4hcdcetA6V1NkmfI8DOYE2i3g5hZ9iN5HFhLd76yWoyQgtNK+scKYbo/aiFBm
	k5ScfdpAqW5LPO6zpjtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyMm-0002iS-8R; Mon, 30 Mar 2020 17:38:28 +0000
Received: from mx.sdf.org ([205.166.94.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyMd-0002hn-KO
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 17:38:20 +0000
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02UHc2SK002031
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Mon, 30 Mar 2020 17:38:02 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02UHc1dq024983;
 Mon, 30 Mar 2020 17:38:01 GMT
Date: Mon, 30 Mar 2020 17:38:01 +0000
From: George Spelvin <lkml@SDF.ORG>
To: Will Deacon <will@kernel.org>
Subject: [PATCH v2] arm64: kexec_file: Avoid temp buffer for RNG seed
Message-ID: <20200330173801.GA9199@SDF.ORG>
References: <202003281643.02SGhMtr029198@sdf.org>
 <20200330133701.GA10633@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330133701.GA10633@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_103819_707380_00910658 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.166.94.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, lkml@sdf.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Hsin-Yi Wang <hsinyi@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After using get_random_bytes(), you want to wipe the buffer
afterward so the seed remains secret.

In this case, we can eliminate the temporary buffer entirely.
fdt_setprop_placeholder() returns a pointer to the property value
buffer, allowing us to put the random data directly in there without
using a temporary buffer at all.  Faster and less stack all in one.

Signed-off-by: George Spelvin <lkml@sdf.org>
Acked-by: Will Deacon <will@kernel.org>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
---
v2: Typos in commit message fixed.

Thank you, I'd be delighted if you'd apply it to the arm64 tree directly!  
I can take it out of my patch series and off my plate.

Now that I'm looking at it some more, I want to change
fdt_setprop_placeholder to return an ERR_PTR.
Must. Stop. Scope. Creep.

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
