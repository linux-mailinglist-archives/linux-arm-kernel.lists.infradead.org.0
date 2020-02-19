Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B01164D6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bfLviFg8htcWXTyb1pZft5JRXMOKwTKzswSlLQQtHI=; b=gN/FNK+DdU0ZHZ
	cZ/bP0u9UcfErwc7bH2n7UL40FP2jaWHtVxXV75VD8+BsEQlAsnGks7JMWSQ5+zbUXqp4MtzaOYwx
	yqQwvtDau/pQOYVT/oGybl8G8GD59+EVpDB09IFsbeTP7KMVPy0hPK//Ny3uuKeiDTMvkP7TEDCjB
	iIsKKZ4yMPKtW4ouBKoFeH0IODQpx+C8ZOv+v1FJHZ6swTin4cV/tDtEIFU7gDk5dWQmZAzZnBtvB
	UyLaiy7AzzQyv2LPm0ceE7eWll7rKaQ2YVe0RZ626tSNmXc3ffmK7O1zKz87Bt/1fEu7GHqqrwgNO
	UeBbyhepCyXngBDSmM/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Tox-0002Tm-Sw; Wed, 19 Feb 2020 18:11:39 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4TnS-0000OV-8K
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:10:08 +0000
Received: by mail-lj1-x241.google.com with SMTP id o15so1350105ljg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 10:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w8AByD+ELp+U0fkzTE0l2V9pOyhi/BIhszCAehVAQ1E=;
 b=mm4oywX2Nv0gEUy5q5BvavEnr/9cwOu5HwoESNSpYK9r5qLMd3qpGpucotlo0pJcKC
 bHsU5KbAYFVhaQRRgPJx6Cdn6diDXHkl5KsHi062Tp48Sz9XJaH5qpshjYYP9OvgTtPh
 vz+mVfsRNZZ4D86DoWA2h/RUpqhboXlxuYEJpXJfeXPuPmAP8MQzfqBR4fkF91h76dJ7
 XfCOSzF+gF7Ww7kbsxqJU+p+Ahq5oqM79Mym4v2xpMotE4w2iaxTzC1Ecd5UIRlXxAvf
 dZJUhriRCRKhcbEHYvnjaPXRTki6XPCvezD3RMJ6baXq/Im1N432midsBFMY/6muy9JH
 QtFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w8AByD+ELp+U0fkzTE0l2V9pOyhi/BIhszCAehVAQ1E=;
 b=B35aCAojNq3Fmi+Ri1GM7WshDotG3kqrX1vt9JnL/GUudRskkMWn6AWAEQeu//KDgO
 WGx+Nre74b2bkCpRKYoipnSx6gWpN3awzPCh63evSkFJg6zq4Ko2uKO1GuYBemHFQVXZ
 +gO3yx6hkX5DPyaXdNWEVCIR8vc8utVGKcJPV3S0yJ8/qsgixq5C73p6amgWaHlPkBJh
 yCwxRoTo6NnNE42rhA6VPLWLe4LLTZcGxxIZ6SsCEMBkOeQ9uM6udWquilO4fHwnaXUS
 Z3pl7vH4uum7zceD1G+Z1b22KmMzml9jbNkK9HoCeLKtIHfI/aaaKb5MXbvwPQK2zIbB
 HQzg==
X-Gm-Message-State: APjAAAVzFjp+DYorTSSL6+MHIZyVZFG/1vpIW2tpNtqQ4LK1jUufxaHt
 3od/wLlvXGqn/J1JNHaB7iw=
X-Google-Smtp-Source: APXvYqyoVOZJlYrqDiLelfLZ1O5stc2hez55EF10msHTP4C74OoJ7WA8VlAgqemf1FjjzI2fqSOVRA==
X-Received: by 2002:a2e:8702:: with SMTP id m2mr16967294lji.278.1582135804086; 
 Wed, 19 Feb 2020 10:10:04 -0800 (PST)
Received: from localhost.localdomain ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id 14sm183942lfz.47.2020.02.19.10.10.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 10:10:03 -0800 (PST)
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: mripard@kernel.org, wens@csie.org, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] drm/sun4i: tcon: Support LVDS output on Allwinner A20
Date: Wed, 19 Feb 2020 20:08:58 +0200
Message-Id: <20200219180858.4806-6-andrey.lebedev@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200219180858.4806-1-andrey.lebedev@gmail.com>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_101006_463488_AC175310 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrey Lebedev <andrey@lebedev.lt>, linux-sunxi@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Lebedev <andrey@lebedev.lt>

A20 SoC (found in Cubieboard 2 among others) requires different LVDS set
up procedure than A33. Timing controller (tcon) driver only implements
sun6i-style procedure, that doesn't work on A20 (sun7i).

Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 37 +++++++++++++++++++++++++++++-
 drivers/gpu/drm/sun4i/sun4i_tcon.h | 11 +++++++++
 2 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index b7234eef3c7b..09ee6e8c6914 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -114,6 +114,30 @@ static void sun4i_tcon_channel_set_status(struct sun4i_tcon *tcon, int channel,
 	}
 }
 
+static void sun4i_tcon_setup_lvds_phy(struct sun4i_tcon *tcon,
+				      const struct drm_encoder *encoder)
+{
+	regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
+		     SUN4I_TCON0_LVDS_ANA0_CK_EN |
+		     SUN4I_TCON0_LVDS_ANA0_REG_V |
+		     SUN4I_TCON0_LVDS_ANA0_REG_C |
+		     SUN4I_TCON0_LVDS_ANA0_EN_MB |
+		     SUN4I_TCON0_LVDS_ANA0_PD |
+		     SUN4I_TCON0_LVDS_ANA0_DCHS);
+
+	udelay(2); /* delay at least 1200 ns */
+	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
+			   SUN4I_TCON0_LVDS_ANA1_INIT,
+			   SUN4I_TCON0_LVDS_ANA1_INIT);
+	udelay(1); /* delay at least 120 ns */
+	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
+			   SUN4I_TCON0_LVDS_ANA1_UPDATE,
+			   SUN4I_TCON0_LVDS_ANA1_UPDATE);
+	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
+			   SUN4I_TCON0_LVDS_ANA0_EN_MB,
+			   SUN4I_TCON0_LVDS_ANA0_EN_MB);
+}
+
 static void sun6i_tcon_setup_lvds_phy(struct sun4i_tcon *tcon,
 				      const struct drm_encoder *encoder)
 {
@@ -1455,7 +1479,18 @@ static const struct sun4i_tcon_quirks sun6i_a31s_quirks = {
 	.dclk_min_div		= 1,
 };
 
+static const struct sun4i_tcon_quirks sun7i_a20_tcon0_quirks = {
+	.supports_lvds		= true,
+	.has_channel_0		= true,
+	.has_channel_1		= true,
+	.dclk_min_div		= 4,
+	/* Same display pipeline structure as A10 */
+	.set_mux		= sun4i_a10_tcon_set_mux,
+	.setup_lvds_phy		= sun4i_tcon_setup_lvds_phy,
+};
+
 static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
+	.supports_lvds		= false,
 	.has_channel_0		= true,
 	.has_channel_1		= true,
 	.dclk_min_div		= 4,
@@ -1508,7 +1543,7 @@ const struct of_device_id sun4i_tcon_of_table[] = {
 	{ .compatible = "allwinner,sun5i-a13-tcon", .data = &sun5i_a13_quirks },
 	{ .compatible = "allwinner,sun6i-a31-tcon", .data = &sun6i_a31_quirks },
 	{ .compatible = "allwinner,sun6i-a31s-tcon", .data = &sun6i_a31s_quirks },
-	{ .compatible = "allwinner,sun7i-a20-tcon0", .data = &sun7i_a20_quirks },
+	{ .compatible = "allwinner,sun7i-a20-tcon0", .data = &sun7i_a20_tcon0_quirks },
 	{ .compatible = "allwinner,sun7i-a20-tcon1", .data = &sun7i_a20_quirks },
 	{ .compatible = "allwinner,sun7i-a20-tcon", .data = &sun7i_a20_quirks },
 	{ .compatible = "allwinner,sun8i-a23-tcon", .data = &sun8i_a33_quirks },
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
index 2974e59ef9f2..cfbf4e6c1679 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
@@ -193,6 +193,13 @@
 #define SUN4I_TCON_MUX_CTRL_REG			0x200
 
 #define SUN4I_TCON0_LVDS_ANA0_REG		0x220
+#define SUN4I_TCON0_LVDS_ANA0_DCHS			BIT(16)
+#define SUN4I_TCON0_LVDS_ANA0_PD			(BIT(20) | BIT(21))
+#define SUN4I_TCON0_LVDS_ANA0_EN_MB			BIT(22)
+#define SUN4I_TCON0_LVDS_ANA0_REG_C			(BIT(24) | BIT(25))
+#define SUN4I_TCON0_LVDS_ANA0_REG_V			(BIT(26) | BIT(27))
+#define SUN4I_TCON0_LVDS_ANA0_CK_EN			(BIT(29) | BIT(28))
+
 #define SUN6I_TCON0_LVDS_ANA0_EN_MB			BIT(31)
 #define SUN6I_TCON0_LVDS_ANA0_EN_LDO			BIT(30)
 #define SUN6I_TCON0_LVDS_ANA0_EN_DRVC			BIT(24)
@@ -201,6 +208,10 @@
 #define SUN6I_TCON0_LVDS_ANA0_V(x)			(((x) & 3) << 8)
 #define SUN6I_TCON0_LVDS_ANA0_PD(x)			(((x) & 3) << 4)
 
+#define SUN4I_TCON0_LVDS_ANA1_REG		0x224
+#define SUN4I_TCON0_LVDS_ANA1_INIT			(0x1f << 26 | 0x1f << 10)
+#define SUN4I_TCON0_LVDS_ANA1_UPDATE			(0x1f << 16 | 0x1f << 00)
+
 #define SUN4I_TCON1_FILL_CTL_REG		0x300
 #define SUN4I_TCON1_FILL_BEG0_REG		0x304
 #define SUN4I_TCON1_FILL_END0_REG		0x308
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
