Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B645164962
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 17:01:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FDY/IHMDwy4pUnmG0tMZu9Vtb1xcHF5IUNr0v7Vh/Y0=; b=ir3
	jlU/Mp8XDnGd7nihEVJwtt2jYveG2t4damolDRczwDPXhoZBLtoi1YeNmY1o+UE8daHcSvLudQBRt
	gaHJLLhkquJKHj9rjLYESLE9F2TVnI7+Gx3exFCGgCmjtnAb3k1w5dNO0FOvNlBDTsk+NHQoFuqP7
	zQvDma+lShLx+NqaSGRfu1+0Mi0NuVP1i9r61fKgRfp86Q+R/5EDpxQ76pIxgap6T2+2bQmw51sYd
	rUyQ3Ab5crOgtbrsX7D3FWUiiVqmOiKr+4GANFecc9DLkMjf/Fk6MFPHXr11ww/bIXxxtnPDu+28a
	hSUjeLIUQnh+wCmZnbg62RqLUF5Ur5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Rms-0000S2-Ji; Wed, 19 Feb 2020 16:01:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RmH-0008Kb-4G
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 16:00:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id w15so1166957wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 08:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=oOz4MXPPY4nwvxNiM5TAeaZ5xNN9V5e9W7QtMDUB25U=;
 b=i8sh2k09ezvG04DhkRH2eRpBJXwPHBMPzRvXtwE8VZUIgaPBEFmW5sWPdFcfrnDKSY
 nzLK5SmE2DvFD5RH+oM33WeM1FCtA+EelnJr6VlPyqst0gAsxAMud+JDUb/w1TAOKOoT
 lYPzjPd56VIatBt2RSvdZta318UzJBdJykCplqK6lZ8A1doixFkAbcgwmV2YT8jzH0AO
 7nPDVy7M0tg6EDAYzTD73ODmFHbwnz0SWcyJYUkhoMtf+Uan56XLsj2iWwYHhQ5wx/dd
 cQq0qWAoDaPlk04P3rBGes4Oh2/nxWWFzTMastrc+RAgQb2nxI8vD6GdC7bKSLBqpY/p
 pSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oOz4MXPPY4nwvxNiM5TAeaZ5xNN9V5e9W7QtMDUB25U=;
 b=JrG5ZPrkWqY6oVgxGc8kR4veaT09BKKA80v8IHd6/GrWlvvUssJLk2Txrnzu+2SsZT
 kJASb6LdFiMRZ8b7WaplRhAnU+iUfiyhAHDsCv+CaK9RR/jscVtoSezZMVTaRh2usaRn
 vEUmmkoada8IinAqwCK3UMSt/dWH/NOtp5ACmfqdCBmxneZhSpMOmUfO0tePUpdRSGqu
 BCLEx2IqtVwWzeMj5/BN42lVC/VWtcWMvYRUrH4b814QUJiVF8xqN9ZGl/qO+R9PIig8
 CwZPky+wxY68s8+gTceujq0uKZUAjvtCjia34I3liCIp0C5K/43PNZrS+JwYY2AweFLq
 Gs2Q==
X-Gm-Message-State: APjAAAUD7vod0J2qSVUv151NjMsLs4cmxugTeTF2/EIFgnHffa8yZ+Ti
 BMGmx62r/lUtDFkEJhccLDl+5w==
X-Google-Smtp-Source: APXvYqyAzmVr0iYvKTKSsd5W5HUczeQN5XhXF8zmcFRGDub01v7kzAK40uKhqE+JM1xZJ3K4XOSCEQ==
X-Received: by 2002:a5d:6087:: with SMTP id w7mr35938544wrt.36.1582128042486; 
 Wed, 19 Feb 2020 08:00:42 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id t13sm277027wrw.19.2020.02.19.08.00.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 19 Feb 2020 08:00:41 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 will@kernel.org
Subject: [PATCH] crypto: arm64: CE: implement export/import
Date: Wed, 19 Feb 2020 16:00:37 +0000
Message-Id: <1582128037-18644-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_080049_298461_2ABA7128 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When an ahash algorithm fallback to another ahash and that fallback is
shaXXX-CE, doing export/import lead to error like this:
alg: ahash: sha1-sun8i-ce export() overran state buffer on test vector 0, cfg=\"import/export\"

This is due to the descsize of shaxxx-ce larger than struct shaxxx_state off by an u32.
For fixing this, let's implement export/import which rip the finalize
variant instead of using generic export/import.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/crypto/sha1-ce-glue.c | 20 ++++++++++++++++++++
 arch/arm64/crypto/sha2-ce-glue.c | 23 +++++++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
index 63c875d3314b..dc44d48415cd 100644
--- a/arch/arm64/crypto/sha1-ce-glue.c
+++ b/arch/arm64/crypto/sha1-ce-glue.c
@@ -91,12 +91,32 @@ static int sha1_ce_final(struct shash_desc *desc, u8 *out)
 	return sha1_base_finish(desc, out);
 }
 
+static int sha1_ce_export(struct shash_desc *desc, void *out)
+{
+	struct sha1_ce_state *sctx = shash_desc_ctx(desc);
+
+	memcpy(out, sctx, sizeof(struct sha1_state));
+	return 0;
+}
+
+static int sha1_ce_import(struct shash_desc *desc, const void *in)
+{
+	struct sha1_ce_state *sctx = shash_desc_ctx(desc);
+
+	memcpy(sctx, in, sizeof(struct sha1_state));
+	sctx->finalize = 0;
+	return 0;
+}
+
 static struct shash_alg alg = {
 	.init			= sha1_base_init,
 	.update			= sha1_ce_update,
 	.final			= sha1_ce_final,
 	.finup			= sha1_ce_finup,
+	.import			= sha1_ce_import,
+	.export			= sha1_ce_export,
 	.descsize		= sizeof(struct sha1_ce_state),
+	.statesize		= sizeof(struct sha1_state),
 	.digestsize		= SHA1_DIGEST_SIZE,
 	.base			= {
 		.cra_name		= "sha1",
diff --git a/arch/arm64/crypto/sha2-ce-glue.c b/arch/arm64/crypto/sha2-ce-glue.c
index a8e67bafba3d..f986d4a323b3 100644
--- a/arch/arm64/crypto/sha2-ce-glue.c
+++ b/arch/arm64/crypto/sha2-ce-glue.c
@@ -109,12 +109,32 @@ static int sha256_ce_final(struct shash_desc *desc, u8 *out)
 	return sha256_base_finish(desc, out);
 }
 
+static int sha256_ce_export(struct shash_desc *desc, void *out)
+{
+	struct sha256_ce_state *sctx = shash_desc_ctx(desc);
+
+	memcpy(out, sctx, sizeof(struct sha256_state));
+	return 0;
+}
+
+static int sha256_ce_import(struct shash_desc *desc, const void *in)
+{
+	struct sha256_ce_state *sctx = shash_desc_ctx(desc);
+
+	memcpy(sctx, in, sizeof(struct sha256_state));
+	sctx->finalize = 0;
+	return 0;
+}
+
 static struct shash_alg algs[] = { {
 	.init			= sha224_base_init,
 	.update			= sha256_ce_update,
 	.final			= sha256_ce_final,
 	.finup			= sha256_ce_finup,
+	.export			= sha256_ce_export,
+	.import			= sha256_ce_import,
 	.descsize		= sizeof(struct sha256_ce_state),
+	.statesize		= sizeof(struct sha256_state),
 	.digestsize		= SHA224_DIGEST_SIZE,
 	.base			= {
 		.cra_name		= "sha224",
@@ -128,7 +148,10 @@ static struct shash_alg algs[] = { {
 	.update			= sha256_ce_update,
 	.final			= sha256_ce_final,
 	.finup			= sha256_ce_finup,
+	.export			= sha256_ce_export,
+	.import			= sha256_ce_import,
 	.descsize		= sizeof(struct sha256_ce_state),
+	.statesize		= sizeof(struct sha256_state),
 	.digestsize		= SHA256_DIGEST_SIZE,
 	.base			= {
 		.cra_name		= "sha256",
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
