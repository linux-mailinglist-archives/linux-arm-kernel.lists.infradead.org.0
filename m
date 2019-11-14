Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E6CFC6C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:59:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AHOuZ7/dwQewRHKnItd8OTrsoOqal34Gl7zTOsvWn18=; b=RLH5C7+sdoTh50
	Jt4L7clF6x35lN1Nic5J/TWAjitdaWEtK6RPQ3p1LrCiL7On9aIziHCLqKyz5q044z9rSBg9uONz7
	9lvar6ku+mqadkedvI4WVG/wmwHAazgDmILJmxMepheNsy5s34/Zmae3s43LMS1ni1MUZQiAW++PT
	zxmGN89BzWHV9bIOeXy/Acyt5A2yUhXKWQ8KwLT/efjmr4A5eegtqfcvnalKM8hBT47kFzBr0HOCF
	LtlTgnd2wxQ4XkLdAW+UXFaH3T658RjvOX9Z8m6c42YV5z6K6WqEwb3sys7b1q+P/NmQPCV3fUy9q
	hvz79etTLUXRR0PzB2Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEiD-0004hL-G0; Thu, 14 Nov 2019 12:59:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEi6-0004gu-1v
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:58:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id b3so6320289wrs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 04:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5/yZewMOwSUNa5I83y+T0aelSU0qIk8Vc3mk35F3rOY=;
 b=a5edst1XV+upr79EpSARNH1rcJkMpsPeGN84GGciH7M7yuP8Ervh7VUSJYq+WVKxLl
 x3ofgMaRe2fgA/pSIFcPQbQ670Tr5EWECXLBtgWD3St5nKubOs1Z53ELy/18R/pYV4e1
 fsjOb2T7iMRnEyix3y5GwW+XFZDVO62MUDXuN4ZHA8R5qXIEO9/F25XYYCTlJohA6Cls
 kjsPKGSBO7QO36AlDPM7Rfsx0Cs2PvqDoaNC428RZ0buJODbIDvC3OtbO4Y3CgrEiDJs
 yX2h1uoiMg4Qw6tPkAXQzFg0bc/AhzAU1fnKWTpEuiS3sFHGOQCmtsYrQphr59MTUSEb
 AXZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5/yZewMOwSUNa5I83y+T0aelSU0qIk8Vc3mk35F3rOY=;
 b=nRCQLk7BKSOYlDmRomrCjyi5GY8+2cdEZdxkuSCOwhfWwvfoV4dgnzGSUizR7skTRL
 GUDtdsmOgFmx08ddxhoHW1EQ2a8SUplzq53r9SC9gs1+09G3djPbBHHUxcjwoGfhfTZ+
 QpZNk1A89lH0iqcioOa0VYvxsId+Z5DE2jXjPMElEMFISO+pSXGJNhTQQgsRigaBcBW5
 29t7sYwwoRSwJItxY9HfPxCfFUI9ZdLmPg+93WEE5y65+78GMDqmuoRiimheLoAfjAsB
 k8IFJEu3VC0G1/Blw1vZ78x0m+LWU/LustpEq3lPJPxb+Jl+ozKnciUeLBInXQ4qPh/g
 PC+w==
X-Gm-Message-State: APjAAAWiB7Er6OmAgrtxfDUdjxp80evJOw4ekg9pBC4NW2kkYRtvTpAR
 zqxKwIadqY9NKy6f/WpUZck=
X-Google-Smtp-Source: APXvYqwCsRaLS7yOkF7Xv7eprjPRs8ArvDI7XkSFkV6AXyxJaxxVH5FbEacxPkmt+Da39iMiBhecUg==
X-Received: by 2002:adf:f18e:: with SMTP id h14mr8497661wro.348.1573736332664; 
 Thu, 14 Nov 2019 04:58:52 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id z6sm7540220wro.18.2019.11.14.04.58.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 04:58:51 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH] crypto: sun4i-ss: fix big endian issues
Date: Thu, 14 Nov 2019 13:58:49 +0100
Message-Id: <20191114125849.22829-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_045854_121897_285B0E19 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When testing BigEndian kernel, the sun4i-ss was failling all crypto
tests.
This patch fix endian issues with it.

Fixes: 6298e948215f ("crypto: sunxi-ss - Add Allwinner Security System crypto accelerator")
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../crypto/allwinner/sun4i-ss/sun4i-ss-hash.c | 21 ++++++++++---------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
index ec5d9ce24bb8..b233f67f491f 100644
--- a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
+++ b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
@@ -187,7 +187,7 @@ static int sun4i_hash(struct ahash_request *areq)
 	 */
 	unsigned int i = 0, end, fill, min_fill, nwait, nbw = 0, j = 0, todo;
 	unsigned int in_i = 0;
-	u32 spaces, rx_cnt = SS_RX_DEFAULT, bf[32] = {0}, wb = 0, v, ivmode = 0;
+	u32 spaces, rx_cnt = SS_RX_DEFAULT, bf[32] = {0}, v, ivmode = 0;
 	struct sun4i_req_ctx *op = ahash_request_ctx(areq);
 	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 	struct sun4i_tfm_ctx *tfmctx = crypto_ahash_ctx(tfm);
@@ -196,6 +196,7 @@ static int sun4i_hash(struct ahash_request *areq)
 	struct sg_mapping_iter mi;
 	int in_r, err = 0;
 	size_t copied = 0;
+	__le32 wb = 0;
 
 	dev_dbg(ss->dev, "%s %s bc=%llu len=%u mode=%x wl=%u h0=%0x",
 		__func__, crypto_tfm_alg_name(areq->base.tfm),
@@ -407,7 +408,7 @@ static int sun4i_hash(struct ahash_request *areq)
 
 		nbw = op->len - 4 * nwait;
 		if (nbw) {
-			wb = *(u32 *)(op->buf + nwait * 4);
+			wb = cpu_to_le32(*(u32 *)(op->buf + nwait * 4));
 			wb &= GENMASK((nbw * 8) - 1, 0);
 
 			op->byte_count += nbw;
@@ -416,7 +417,7 @@ static int sun4i_hash(struct ahash_request *areq)
 
 	/* write the remaining bytes of the nbw buffer */
 	wb |= ((1 << 7) << (nbw * 8));
-	bf[j++] = wb;
+	bf[j++] = le32_to_cpu(wb);
 
 	/*
 	 * number of space to pad to obtain 64o minus 8(size) minus 4 (final 1)
@@ -435,13 +436,13 @@ static int sun4i_hash(struct ahash_request *areq)
 
 	/* write the length of data */
 	if (op->mode == SS_OP_SHA1) {
-		__be64 bits = cpu_to_be64(op->byte_count << 3);
-		bf[j++] = lower_32_bits(bits);
-		bf[j++] = upper_32_bits(bits);
+		__be64 *bits = (__be64 *)&bf[j];
+		*bits = cpu_to_be64(op->byte_count << 3);
+		j += 2;
 	} else {
-		__le64 bits = op->byte_count << 3;
-		bf[j++] = lower_32_bits(bits);
-		bf[j++] = upper_32_bits(bits);
+		__le64 *bits = (__le64 *)&bf[j];
+		*bits = cpu_to_le64(op->byte_count << 3);
+		j += 2;
 	}
 	writesl(ss->base + SS_RXFIFO, bf, j);
 
@@ -487,7 +488,7 @@ static int sun4i_hash(struct ahash_request *areq)
 		}
 	} else {
 		for (i = 0; i < 4; i++) {
-			v = readl(ss->base + SS_MD0 + i * 4);
+			v = cpu_to_le32(readl(ss->base + SS_MD0 + i * 4));
 			memcpy(areq->result + i * 4, &v, 4);
 		}
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
