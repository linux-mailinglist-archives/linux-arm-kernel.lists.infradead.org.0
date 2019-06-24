Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A6950F19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	References:Date:Subject:To:From:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=4Re9b6Z3uvH3IA1pkTD9WwwomkFZbw4id1uxywbXuKg=; b=M6LeX+ReDeZb7a
	RE/ZpFoePLGyHJHGuMooSuIi+OEGOkdATrfHM8lzvGNnHjHMAnEPAkiRZmuIcM2S3UYhcCCC44s8c
	t2G4phNIigvCCYVAHFiYZMpPtCq0lWGssJn7AD66s2A8xdGRPbkPZGvA8uRvezNp0/cRwlyPtaATw
	r63q0RoCvkY1nqSt0nfMaPKGIzfZ+6Ob9JXhW24GAphAPuwOd7NB1EumqhYZ8vJs3UlYNWCgHHXEi
	IkJBEuZVXWHNKYh0tD/tCJ3gE/CA8ch3CW014wnfBw9E0xE9ApSOz/ZN6Uf8tf3WswUsMIWozHjTp
	ffnVqJ8QoexcuGo3iGHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQIe-0001ug-05; Mon, 24 Jun 2019 14:50:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQGy-0007z7-Md
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:48:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id k11so14259565wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:references:reply-to:message-id:mime-version;
 bh=jTrs1mQZ0/FSZ89wJvHnffxEpLTZfkC4UDZ7Pu7YBmY=;
 b=rhmCKKZjbKp1PKwjr2r+fQSSxZVq79tkZkNi0fg8UyRwv6ETIMEhQHSrSYWna43vKu
 MGjdhDXbhcWx5FvpEUVn4/R/qieZyeQSao7bEoqmxtVnBSgK6uQqm9V2qBFitkbZTHN2
 VxA6UjFfocgi95S5t4RTImUhjXSRhGGarZLxNI1gAf1Av0yznxm/gExYbBl+LtAujmYO
 O9S1pikMLdZs3YExRaNCs86ECnsHP0pntBmXVE9d7rYK39pk5jUgfrKy+mdEx4zyV+1X
 0rEVn1xfvrxuiKmtdpIkcf3eapOFKXqCSEtEnIa19d9oeGYNFC4BpT6DRilJ1ciGkf7C
 CjlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:references:reply-to
 :message-id:mime-version;
 bh=jTrs1mQZ0/FSZ89wJvHnffxEpLTZfkC4UDZ7Pu7YBmY=;
 b=SSzz4yx4dFLy2/kw+aFcZNFeXoMkwZ+AKpZHWc6w5CeXtuMrxkZmmJi+Ynv9IVuHx1
 ZGdKaTe1JAenst9JV123NXxmo6mklZF1IZokBUVrzkzZVKfUCJZt+I3P0NrH5tLFP8qL
 qfuif6wVaLezOa7BReaq4QglLR3rx77cqvHX23vMit4STCYjMNvrJTBSYcjVv0MhDsFK
 JE3q3wvax0fa0f29Ckyn2I8SFV04+A2NK2WpVdHAkfQAHWaCf1HBlnOlPYhDHncE7ylZ
 jUvRR5UxIXu9uUGYPAW9F1iHn4jYUdp8afQ/OFvA2+2jMFwqp+R3sMV5evhF7/G6m8os
 3sCg==
X-Gm-Message-State: APjAAAWO7EOBMlCDIozAq0NV7YBu2iiDy6THxQFjIgj9zSNZf69MJdOU
 Wp32U419kyiAhBvrYy9CodNsXA==
X-Google-Smtp-Source: APXvYqzQXr8ReRhYZkU2ptMeMg0cSSGRYpf7pV4OILxnC2fy7+X810ih75PX4B55ciirVeEnFrrESA==
X-Received: by 2002:adf:fb8a:: with SMTP id a10mr34972921wrr.235.1561387722987; 
 Mon, 24 Jun 2019 07:48:42 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s10sm10966828wrt.49.2019.06.24.07.48.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 07:48:42 -0700 (PDT)
From: Julien Masson <jmasson@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 4/9] drm: meson: vpp: use proper macros instead of magic
 constants
Date: Mon, 24 Jun 2019 16:48:35 +0200
References: <86zhm782g5.fsf@baylibre.com>
Message-ID: <86tvcf82eu.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_074844_996173_78A86567 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Reply-To: 86zhm782g5.fsf@baylibre.com
Cc: Julien Masson <jmasson@baylibre.com>, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add new macros which are used to set the following
registers:
- VPP_OSD_SCALE_COEF_IDX
- VPP_DOLBY_CTRL
- VPP_OFIFO_SIZE
- VPP_HOLD_LINES
- VPP_SC_MISC
- VPP_VADJ_CTRL

Signed-off-by: Julien Masson <jmasson@baylibre.com>
---
 drivers/gpu/drm/meson/meson_registers.h |  8 ++++++++
 drivers/gpu/drm/meson/meson_vpp.c       | 27 ++++++++++++++++---------
 2 files changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index a9db49e5bdd6..172f0794e0cd 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -349,6 +349,7 @@
 #define VPP_LINE_IN_LENGTH 0x1d01
 #define VPP_PIC_IN_HEIGHT 0x1d02
 #define VPP_SCALE_COEF_IDX 0x1d03
+#define		VPP_SCALE_HORIZONTAL_COEF       BIT(8)
 #define VPP_SCALE_COEF 0x1d04
 #define VPP_VSC_REGION12_STARTP 0x1d05
 #define VPP_VSC_REGION34_STARTP 0x1d06
@@ -385,6 +386,8 @@
 #define VPP_PREBLEND_H_SIZE 0x1d20
 #define VPP_POSTBLEND_H_SIZE 0x1d21
 #define VPP_HOLD_LINES 0x1d22
+#define		VPP_POSTBLEND_HOLD_LINES(lines) (lines & 0xf)
+#define		VPP_PREBLEND_HOLD_LINES(lines)  ((lines & 0xf) << 8)
 #define VPP_BLEND_ONECOLOR_CTRL 0x1d23
 #define VPP_PREBLEND_CURRENT_XY 0x1d24
 #define VPP_POSTBLEND_CURRENT_XY 0x1d25
@@ -403,6 +406,8 @@
 #define		VPP_OSD2_PREBLEND	BIT(17)
 #define		VPP_COLOR_MNG_ENABLE	BIT(28)
 #define VPP_OFIFO_SIZE 0x1d27
+#define		VPP_OFIFO_SIZE_MASK             GENMASK(13, 0)
+#define		VPP_OFIFO_SIZE_DEFAULT          (0xfff << 20 | 0x1000)
 #define VPP_FIFO_STATUS 0x1d28
 #define VPP_SMOKE_CTRL 0x1d29
 #define VPP_SMOKE1_VAL 0x1d2a
@@ -418,6 +423,8 @@
 #define VPP_HSC_PHASE_CTRL1 0x1d34
 #define VPP_HSC_INI_PAT_CTRL 0x1d35
 #define VPP_VADJ_CTRL 0x1d40
+#define		VPP_MINUS_BLACK_LVL_VADJ1_ENABLE BIT(1)
+
 #define VPP_VADJ1_Y 0x1d41
 #define VPP_VADJ1_MA_MB 0x1d42
 #define VPP_VADJ1_MC_MD 0x1d43
@@ -477,6 +484,7 @@
 #define VPP_PEAKING_VGAIN 0x1d92
 #define VPP_PEAKING_NLP_1 0x1d93
 #define VPP_DOLBY_CTRL 0x1d93
+#define VPP_PPS_DUMMY_DATA_MODE (1 << 17)
 #define VPP_PEAKING_NLP_2 0x1d94
 #define VPP_PEAKING_NLP_3 0x1d95
 #define VPP_PEAKING_NLP_4 0x1d96
diff --git a/drivers/gpu/drm/meson/meson_vpp.c b/drivers/gpu/drm/meson/meson_vpp.c
index bfee30fa6e34..c2aaf81b0101 100644
--- a/drivers/gpu/drm/meson/meson_vpp.c
+++ b/drivers/gpu/drm/meson/meson_vpp.c
@@ -57,7 +57,7 @@ static void meson_vpp_write_scaling_filter_coefs(struct meson_drm *priv,
 {
 	int i;
 
-	writel_relaxed(is_horizontal ? BIT(8) : 0,
+	writel_relaxed(is_horizontal ? VPP_SCALE_HORIZONTAL_COEF : 0,
 			priv->io_base + _REG(VPP_OSD_SCALE_COEF_IDX));
 	for (i = 0; i < 33; i++)
 		writel_relaxed(coefs[i],
@@ -82,7 +82,7 @@ static void meson_vpp_write_vd_scaling_filter_coefs(struct meson_drm *priv,
 {
 	int i;
 
-	writel_relaxed(is_horizontal ? BIT(8) : 0,
+	writel_relaxed(is_horizontal ? VPP_SCALE_HORIZONTAL_COEF : 0,
 			priv->io_base + _REG(VPP_SCALE_COEF_IDX));
 	for (i = 0; i < 33; i++)
 		writel_relaxed(coefs[i],
@@ -97,20 +97,22 @@ void meson_vpp_init(struct meson_drm *priv)
 	else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu")) {
 		writel_bits_relaxed(0xff << 16, 0xff << 16,
 				    priv->io_base + _REG(VIU_MISC_CTRL1));
-		writel_relaxed(0x20000, priv->io_base + _REG(VPP_DOLBY_CTRL));
-		writel_relaxed(0x1020080,
+		writel_relaxed(VPP_PPS_DUMMY_DATA_MODE,
+			       priv->io_base + _REG(VPP_DOLBY_CTRL));
+		writel_relaxed(0x108080,
 				priv->io_base + _REG(VPP_DUMMY_DATA1));
 	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
 		writel_relaxed(0xf, priv->io_base + _REG(DOLBY_PATH_CTRL));
 
 	/* Initialize vpu fifo control registers */
 	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
-		writel_relaxed(0xfff << 20 | 0x1000,
+		writel_relaxed(VPP_OFIFO_SIZE_DEFAULT,
 			       priv->io_base + _REG(VPP_OFIFO_SIZE));
 	else
-		writel_relaxed(readl_relaxed(priv->io_base + _REG(VPP_OFIFO_SIZE)) |
-				0x77f, priv->io_base + _REG(VPP_OFIFO_SIZE));
-	writel_relaxed(0x08080808, priv->io_base + _REG(VPP_HOLD_LINES));
+		writel_bits_relaxed(VPP_OFIFO_SIZE_MASK, 0x77f,
+				    priv->io_base + _REG(VPP_OFIFO_SIZE));
+	writel_relaxed(VPP_POSTBLEND_HOLD_LINES(4) | VPP_PREBLEND_HOLD_LINES(4),
+		       priv->io_base + _REG(VPP_HOLD_LINES));
 
 	if (!meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
 		/* Turn off preblend */
@@ -138,10 +140,15 @@ void meson_vpp_init(struct meson_drm *priv)
 	writel_relaxed(0, priv->io_base + _REG(VPP_OSD_SC_CTRL0));
 	writel_relaxed(0, priv->io_base + _REG(VPP_OSD_VSC_CTRL0));
 	writel_relaxed(0, priv->io_base + _REG(VPP_OSD_HSC_CTRL0));
-	writel_relaxed(4 | (4 << 8) | BIT(15),
+
+	/* Set horizontal/vertical bank length and enable video scale out */
+	writel_relaxed(VPP_VSC_BANK_LENGTH(4) | VPP_HSC_BANK_LENGTH(4) |
+		       VPP_SC_VD_EN_ENABLE,
 		       priv->io_base + _REG(VPP_SC_MISC));
 
-	writel_relaxed(1, priv->io_base + _REG(VPP_VADJ_CTRL));
+	/* Enable minus black level for vadj1 */
+	writel_relaxed(VPP_MINUS_BLACK_LVL_VADJ1_ENABLE,
+		       priv->io_base + _REG(VPP_VADJ_CTRL));
 
 	/* Write in the proper filter coefficients. */
 	meson_vpp_write_scaling_filter_coefs(priv,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
