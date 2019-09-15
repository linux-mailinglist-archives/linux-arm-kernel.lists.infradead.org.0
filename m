Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D1CB3164
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 20:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lBdo5J5SkMa84vR6UlBR5vzsuifFtTIGMlsVkBEzgFE=; b=QSv605nbHAKdsN
	BgaJIaHPhiSHQV8zBZZRZoWMpIu0FXyBS+r3Zo4ZtI0a4sWxPgLbwiws09UcrdSwZK3A2ID5Cj+pn
	zaf6dSLC70QkWNSAeUYRhdc6YMAdgjj8YrJ026cwkynOHcL/6J04duN8ZG3QMfMFICHYE5QsUaj/O
	Iaz/XpPGZ8BndV6Ljy/pNEcXnoTD0K3U+B8XiMDn1D3nVG/9DI2SoNOSkfiJyuCN7bdaZXI95Dpzq
	6p7ICp6TZTcfJkUDPRbySybAonkVf+DyL93kWA6koIfeQCVcVgXuNnkdXnGbyYU7PoJRpehhoiRg4
	6WHGIdljmwkhQRZ/k5Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ZO2-00041U-3N; Sun, 15 Sep 2019 18:36:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ZNN-0003tc-1b
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 18:35:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id m3so7740909wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Sep 2019 11:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0lspMjLiionZILkbBr8xfiqwsFdKOXlG6Qqe5s5HG7c=;
 b=BDpr1LCcQBR8RMm+cBgOIclbkpAVbLmO1JLnUiOzNq/PIurUa2s2f92YPB3ZKTopCR
 MRAYLgrv9CWU5oG5nOtlquC6N85TVGGYrMeARJJpdGLIPbcqgmTtBVT3DUCFKVY0hc7G
 n6oPbmLkQGjyqa2qVUur8LC5d/wrdeLfHreFpKuLEQJP5wKG1ffm+9gySglEj3TABwBr
 Ly/t0K+kQlF0ck4Eq8zAMfC2N8uLJYv8k6siXy7Ym69TVO6PQRTziISyR3pYSpbnudRD
 Msox/dobtnl8zwnoLyePA4tJ0Y+Y8JmYIauAE1rjoDMA9cu1/rsBySEUva62htVazwzc
 jUew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0lspMjLiionZILkbBr8xfiqwsFdKOXlG6Qqe5s5HG7c=;
 b=lGG3dfR0GXuxCsFhCOyoip9gobd864kpkzFgOqVIVY4/hGqGq2Kzt77/cOqHFfRIpL
 nLj7Y4EtwHjYiCnD27nzn2vDzHmIfuMJtYcgnEb1vuShxSumCqA62xAT8R4Yc3ig+I4w
 cIZxTfFKHIol3HQF7kZMgCsNN5HsX3Ji8nYcd5EzChi2JNnLDaNBQ5/fts7Ppi2A1GZ8
 9971mKW134swnAi0OhilXiUZYYciC394y8Fqx1hoMTOGu7FOjyH7roPsaC9COsQ6XKJr
 klG13KLn0k4LYh0XSBbF/CIR9GStP6Angm8dVic0wN+tmwPbahTA6M0HcXgtySEzu6Bd
 UV8Q==
X-Gm-Message-State: APjAAAUqOlfzTPL/o4V0zxiwZiEyBm3PshJYVrkMr3ecZ+0Pbww52NAQ
 5KnR0PKeuVbaDtM2EPDMqR8=
X-Google-Smtp-Source: APXvYqxaHaJ3pIakOfUWi1LNN/GOhxVtf6MMn4HmvmZuJr5tm/FKdc97pvTfhJrcS2rbUqLHLMFrzA==
X-Received: by 2002:a1c:a94b:: with SMTP id s72mr11109366wme.9.1568572551931; 
 Sun, 15 Sep 2019 11:35:51 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 t203sm11365202wmf.42.2019.09.15.11.35.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Sep 2019 11:35:51 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH] crypto: sun4i-ss: erase key after use
Date: Sun, 15 Sep 2019 20:35:36 +0200
Message-Id: <20190915183536.3835-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_113557_321944_A2F4D69A 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a TFM is unregistered, the sun4i-ss driver does not clean the key used,
leaking it in memory.
This patch adds this absent key cleaning.

Fixes: 6298e948215f ("crypto: sunxi-ss - Add Allwinner Security System crypto accelerator")
Cc: <stable@vger.kernel.org> # 4.3+
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/sunxi-ss/sun4i-ss-cipher.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
index fa4b1b47822e..60d99370a4ec 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
@@ -503,6 +503,8 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
 void sun4i_ss_cipher_exit(struct crypto_tfm *tfm)
 {
 	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
+
+	memzero_explicit(op->key, op->keylen);
 	crypto_free_sync_skcipher(op->fallback_tfm);
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
