Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF65B140F38
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/JCl4FtG9oBRpqGON6yPBhSRN4iOtsUNmHf9tjRE2sE=; b=mCzq/ZJ2PQNA0a
	PFb0xFh3lJaHo+AqQP4m+DIBo+cBix0uc94+z5TTg6XFnLOgkFIoo7m4GFrVaHoPa348HavHIwdhD
	s70KGmhte7uG2argB6UgVr618hs05KM0jerQ9Q8h1uQF9Rk9/89LZJ2yj+0QuI7YZ6yNGd/bClW5Y
	07E09+IZJqdmOdrSG0cYYop7IlVB7l0RTw/10EcUdwe+nmZ63/b8MhMCuKcn+XuJWl1PwA7G1mLmy
	RAFF7dkCHm+YRlW3xRggLSGlDaY3CHYMbl03n338QHcstIRixgsBoDzlez9ph9d/Y1No4ZUsOsfBb
	+LTj5pzImhdz1RuRKr9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUj8-0005js-78; Fri, 17 Jan 2020 16:44:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUio-0005cS-4t
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:43:49 +0000
Received: from dogfood.home (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr
 [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26FED21582;
 Fri, 17 Jan 2020 16:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579279425;
 bh=IiJ6N7t5g/544HW//RaB69eXe3oLB3o2rtxnrI3LbX8=;
 h=From:To:Cc:Subject:Date:From;
 b=kQLkx+xR3VKJV19EKDldbqG5eaEFTIQbRO87amwtfHaVNEbuKpYRWSNgSRL6teTqf
 x87tfnyDN04/6yrf9SfrjRcDCJ2q3jtgotiV0AU71bzZXJLDff3cFM6vG1/J4ruMnX
 zVCtiHUIO7PWWOX6ReQ8AozC7ihtXtwVX+AdU7QI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] crypto: arm/chacha - fix build failured when kernel mode NEON
 is disabled
Date: Fri, 17 Jan 2020 17:43:18 +0100
Message-Id: <20200117164318.21941-1-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_084346_241978_CEB8BE42 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ardb@kernel.org>, Russell King <linux@armlinux.org.uk>,
 linux-crypto@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 herbert@gondor.apana.org.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the ARM accelerated ChaCha driver is built as part of a configuration
that has kernel mode NEON disabled, we expect the compiler to propagate
the build time constant expression IS_ENABLED(CONFIG_KERNEL_MODE_NEON) in
a way that eliminates all the cross-object references to the actual NEON
routines, which allows the chacha-neon-core.o object to be omitted from
the build entirely.

Unfortunately, this fails to work as expected in some cases, and we may
end up with a build error such as

  chacha-glue.c:(.text+0xc0): undefined reference to `chacha_4block_xor_neon'

caused by the fact that chacha_doneon() has not been eliminated from the
object code, even though it will never be called in practice.

Let's fix this by adding some IS_ENABLED(CONFIG_KERNEL_MODE_NEON) tests
that are not strictly needed from a logical point of view, but should
help the compiler infer that the NEON code paths are unreachable in
those cases.

Fixes: b36d8c09e710c71f ("crypto: arm/chacha - remove dependency on generic ...")
Reported-by: Russell King <linux@armlinux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/crypto/chacha-glue.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/crypto/chacha-glue.c b/arch/arm/crypto/chacha-glue.c
index 6ebbb2b241d2..6fdb0ac62b3d 100644
--- a/arch/arm/crypto/chacha-glue.c
+++ b/arch/arm/crypto/chacha-glue.c
@@ -115,7 +115,7 @@ static int chacha_stream_xor(struct skcipher_request *req,
 		if (nbytes < walk.total)
 			nbytes = round_down(nbytes, walk.stride);
 
-		if (!neon) {
+		if (!IS_ENABLED(CONFIG_KERNEL_MODE_NEON) || !neon) {
 			chacha_doarm(walk.dst.virt.addr, walk.src.virt.addr,
 				     nbytes, state, ctx->nrounds);
 			state[12] += DIV_ROUND_UP(nbytes, CHACHA_BLOCK_SIZE);
@@ -159,7 +159,7 @@ static int do_xchacha(struct skcipher_request *req, bool neon)
 
 	chacha_init_generic(state, ctx->key, req->iv);
 
-	if (!neon) {
+	if (!IS_ENABLED(CONFIG_KERNEL_MODE_NEON) || !neon) {
 		hchacha_block_arm(state, subctx.key, ctx->nrounds);
 	} else {
 		kernel_neon_begin();
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
