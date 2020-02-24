Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB46D16A8CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 15:48:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OjhiCK/lEtZ+vnD0dLqdm11hSu6jZN94isUgxu3z3wU=; b=Zf0
	DuZHV1FnByjymsR4xZbMTKP1iUHAx/QwHF61TdYGEU1ZfIDs4C0wCrMXVZ+TlkM+wrjZ4u9/hF4Xp
	Z90tixbHUHawgG4tpnNwnnGG3zN3UmcxJmsjFvJRKzLmpxpWEwl2bfBH9nylAyvp40TL30+PRKbSb
	X/De9qP4NL8YJ8Mx1/ToTMJYootXKEwcX9iSNNCu09vk0y0W4udCRpTQa1b4amsr61I18CKINvQ0b
	c3aMldrjqoC8yyUfnEpeSXiKUhCh61IfZmTdC79rHsm4SxHDcHNJv+4iBi6++bQYfPWOlfKXXX0Jy
	6OD87KPl0J4bOgm6gIQXrf/bTPKoQ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6F1b-00007F-QI; Mon, 24 Feb 2020 14:47:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6F1R-0008WB-Qv
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 14:47:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id p18so7052780wre.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 06:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=KDPBtGVPBVQPLZB50FaWbCJtaH0jJpShP4zemqcplEE=;
 b=JSQ9hzcF3mCf5GvenAuVUKTcFJKeFCn0zzl4m6DPVldFFbHeRhui0mprbAZxqQSygM
 S92kaHzJVaIZCzJGrZ+/UpI+laYz1EZ8q9bGWuhOVSysrEq0EEJ73+x5mQUWbWI2cHIv
 plbbwLhaVkngP+8i01HCJNN0R1DyplTti2QXBbMft3QfAbN4PB9BIVyib3aTrpWhsgUa
 xEbI2LltdPFa/9n190aN5C5cUZtYLyNmo0zq78INttuyUFgWL2annLHfekp3hWfJ/r9a
 OOEJRGi+miGPreuQ+udReKLe7GC8EwnbKPVVR0JITLCtFW2YtRoLk+hCtaXRgvSnCFic
 WlRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KDPBtGVPBVQPLZB50FaWbCJtaH0jJpShP4zemqcplEE=;
 b=NXlnZB6fHPbGXigUKRFTK3FzPd0N5e5q3ifs/WndFhKqnXGWjRoNcKaq1mCdzlOas3
 FL8hGDV89+lr3T9q4LrC/YBcACWIHLIXOFjEYyAsoQkP09/1t66LIsxrFp6wxZ0IHlRl
 /sPdNl99EppQls7Vr7SMlD/ZV4TVifkhuQWKUlygs9XfR3jcZBc41JvoqqSk8tazjHOq
 sUZue96Cu1V3IvaeFKz0GiM2qw4DoHlGAucurk3Mi2DMx3OL2eTSOOcq9UaSFhQVPimi
 putypxrzFW7Z5MAZldfi7ANZUgQ+TQa9nT2EJXVeesdTrs8MpomaTR1rksTsYrMYKES+
 HmaA==
X-Gm-Message-State: APjAAAU3ecKznVcKWvVVh1ZTcwtUIDEVLHFCfX3NGhyYGMwQUzdpyNmG
 7MmU61APJ4qEDjSNxC6qMBivuQ==
X-Google-Smtp-Source: APXvYqzGK4+c332KH5IGra98Ax5NpmLFd6tEuMOmZpD6uXoAmVEK8xtY+u8D/Db3A8UAroJjRuoxDg==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr65798433wrt.367.1582555667583; 
 Mon, 24 Feb 2020 06:47:47 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id w1sm19579363wro.72.2020.02.24.06.47.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 24 Feb 2020 06:47:46 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, davem@davemloft.net,
 herbert@gondor.apana.org.au, will@kernel.org, ebiggers@kernel.org
Subject: [PATCH v2] crypto: arm64: CE: implement export/import
Date: Mon, 24 Feb 2020 14:47:41 +0000
Message-Id: <1582555661-25737-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_064749_923285_6D316D5C 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When an ahash algorithm fallback to another ahash and that fallback is
shaXXX-CE, doing export/import lead to error like this:
alg: ahash: sha1-sun8i-ce export() overran state buffer on test vector 0, cfg=\"import/export\"

This is due to the descsize of shaxxx-ce being larger than struct shaxxx_state
off by an u32.
For fixing this, let's implement export/import which rip the finalize
variant instead of using generic export/import.

Fixes: 6ba6c74dfc6b ("arm64/crypto: SHA-224/SHA-256 using ARMv8 Crypto Extensions")
Fixes: 2c98833a42cd ("arm64/crypto: SHA-1 using ARMv8 Crypto Extensions")

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Changes since v1:
- memcpy directly &sctx->sst instead of sctx. As suggested by Eric Biggers

 arch/arm64/crypto/sha1-ce-glue.c | 20 ++++++++++++++++++++
 arch/arm64/crypto/sha2-ce-glue.c | 23 +++++++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
index 63c875d3314b..565ef604ca04 100644
--- a/arch/arm64/crypto/sha1-ce-glue.c
+++ b/arch/arm64/crypto/sha1-ce-glue.c
@@ -91,12 +91,32 @@ static int sha1_ce_final(struct shash_desc *desc, u8 *out)
 	return sha1_base_finish(desc, out);
 }
 
+static int sha1_ce_export(struct shash_desc *desc, void *out)
+{
+	struct sha1_ce_state *sctx = shash_desc_ctx(desc);
+
+	memcpy(out, &sctx->sst, sizeof(struct sha1_state));
+	return 0;
+}
+
+static int sha1_ce_import(struct shash_desc *desc, const void *in)
+{
+	struct sha1_ce_state *sctx = shash_desc_ctx(desc);
+
+	memcpy(&sctx->sst, in, sizeof(struct sha1_state));
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
index a8e67bafba3d..9450d19b9e6e 100644
--- a/arch/arm64/crypto/sha2-ce-glue.c
+++ b/arch/arm64/crypto/sha2-ce-glue.c
@@ -109,12 +109,32 @@ static int sha256_ce_final(struct shash_desc *desc, u8 *out)
 	return sha256_base_finish(desc, out);
 }
 
+static int sha256_ce_export(struct shash_desc *desc, void *out)
+{
+	struct sha256_ce_state *sctx = shash_desc_ctx(desc);
+
+	memcpy(out, &sctx->sst, sizeof(struct sha256_state));
+	return 0;
+}
+
+static int sha256_ce_import(struct shash_desc *desc, const void *in)
+{
+	struct sha256_ce_state *sctx = shash_desc_ctx(desc);
+
+	memcpy(&sctx->sst, in, sizeof(struct sha256_state));
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
