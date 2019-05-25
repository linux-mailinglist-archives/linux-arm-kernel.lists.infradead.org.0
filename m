Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24F92A34D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 09:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oTVzvzB5VhR6dP174FgFgULhPXll0MIwMlUvuSXdvIo=; b=VpaWPA490dVHMi
	MVSSvxWHcx6F8lFdXQsEWY//9A24ZCEsvFF4KKD/u6uDWRZ/ZhH849oq4QU89wFIUyk0XnBTal7qj
	ljMXCOp4iIY00mzTJLU7GXQXHuY4b0JImi35tGuXgCWYp4j27U8da4fWVr9b5amoqyrKcos5t+KUF
	STyDKFjq7ZBHU+J1rgOf/1ViphSNHoGg6CmOb/2/WRYnjzatqUMBfuNNDXoVhszfukhOtEamqrTM0
	QGHLEMNlfNqgAiagmJwAuy+5QusLIlipb2ngtPVXZmNrDqZuRQwVcUAD+5QdNoJR3xjars2mraej1
	8hBx+PqhDq8mn3gKWzpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUR3U-0001d7-QJ; Sat, 25 May 2019 07:25:24 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUR3N-0001cn-FO
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 07:25:19 +0000
Received: by mail-pg1-x541.google.com with SMTP id a3so6268401pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 00:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=3/HXmCveeAbDHijcuKaxjc8S8ha3SNVf6PI9wjQHBaU=;
 b=iJGtl5ifVwJd8BjCR93hGbqtuqBchM1RWraUzeQUQoQ2O9vIRPkkaX9QRvxuuCr4Uc
 nQD2tWFlXUVRN+Qig2B3ShbJzo1YM4FdaCl3vEoU2LA25xV4K3POmnQM9RLw3b0RVF4L
 oC+iDk+pdJfldY2GLBfZhy6+jAuqsoLK8koBh0lwLGgX0CQz3ZtsocUEk6RDP1PhizlR
 D2Mg+l5vVefIdCFCLeGSphk4tzW+C2r3SUjG5HPYmk+YIiuBSH7BYAhJHnTW+H/57C6h
 n+b5SXSTPcPntvqtNyhhfOYSjTfMXxC3jqx+oiQ4RlfO5u9nPu6z+m9AZvq7IBWtgNIo
 1Wcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=3/HXmCveeAbDHijcuKaxjc8S8ha3SNVf6PI9wjQHBaU=;
 b=Du/Rn35hFXM2aptqTO/Yuis+H8RMKR30UlRTYr/YGaEuH9ZKphmWM7n7pyeGWq0nhH
 r7wFGjNP8VvYi5Qet5Gc6vFYAXlzTGgjbSK0fPCXtSvnpgsk9sZMp3CEvzufxMtk67Py
 DavoQMTVs3gOFUiJmqi13A/2whBXb+ov6qYBs3B6Uctx6JfdPGAXzc4n6U4Igq9+sk2E
 9OQbVEP9ryLcCjDI1GlAjEmta2T+xHKbniSHWGGftBvnz8GcoWJNy6rJta3ULL1O5qA0
 NzUiOTIDGGAuF2tf5g2kpEUTI15BeWnOD2d89OBarxJ1J9UIsNGMA4vCUgwRbJWsJqI8
 psfQ==
X-Gm-Message-State: APjAAAVY+HGwg2d1XL33C2IbAhIHaGTyusjS5vEGweM5SNwzb/0Tac/h
 EDL1AhtbYz2itUbBuFPStMA=
X-Google-Smtp-Source: APXvYqzI7XugKhrUD2ISKoSITMC4xDXu1F2+tRQ/O+1otSv26NNTnycbocgJEljBBIvtNXuOVEpEZg==
X-Received: by 2002:a65:4349:: with SMTP id k9mr22299168pgq.243.1558769114822; 
 Sat, 25 May 2019 00:25:14 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id w12sm3997009pgp.51.2019.05.25.00.25.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 00:25:14 -0700 (PDT)
Date: Sat, 25 May 2019 12:55:09 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/sun4i: fix warning PTR_ERR_OR_ZERO can be used
Message-ID: <20190525072509.GA6979@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_002517_540607_90E71EA9 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

fix below warnings reported by coccicheck

./drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c:174:1-3: WARNING:
PTR_ERR_OR_ZERO can be used
./drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c:236:1-3: WARNING:
PTR_ERR_OR_ZERO can be used
./drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c:285:1-3: WARNING:
PTR_ERR_OR_ZERO can be used
./drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c:142:1-3: WARNING:
PTR_ERR_OR_ZERO can be used
./drivers/gpu/drm/sun4i/sun4i_dotclock.c:198:1-3: WARNING:
PTR_ERR_OR_ZERO can be used

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/gpu/drm/sun4i/sun4i_dotclock.c      | 4 +---
 drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c  | 4 +---
 drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c      | 4 +---
 drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c | 4 +---
 drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c  | 4 +---
 5 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_dotclock.c b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
index 2a15f2f..e0fd19d 100644
--- a/drivers/gpu/drm/sun4i/sun4i_dotclock.c
+++ b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
@@ -195,10 +195,8 @@ int sun4i_dclk_create(struct device *dev, struct sun4i_tcon *tcon)
 	dclk->hw.init = &init;
 
 	tcon->dclk = clk_register(dev, &dclk->hw);
-	if (IS_ERR(tcon->dclk))
-		return PTR_ERR(tcon->dclk);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(tcon->dclk);
 }
 EXPORT_SYMBOL(sun4i_dclk_create);
 
diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c
index e826da3..1e74040 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c
@@ -139,8 +139,6 @@ int sun4i_ddc_create(struct sun4i_hdmi *hdmi, struct clk *parent)
 	ddc->m_offset = hdmi->variant->ddc_clk_m_offset;
 
 	hdmi->ddc_clk = devm_clk_register(hdmi->dev, &ddc->hw);
-	if (IS_ERR(hdmi->ddc_clk))
-		return PTR_ERR(hdmi->ddc_clk);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(hdmi->ddc_clk);
 }
diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
index 58e9d37..b72f9c7 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
@@ -282,10 +282,8 @@ static int sun4i_hdmi_init_regmap_fields(struct sun4i_hdmi *hdmi)
 	hdmi->field_ddc_sck_en =
 		devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
 					hdmi->variant->field_ddc_sck_en);
-	if (IS_ERR(hdmi->field_ddc_sck_en))
-		return PTR_ERR(hdmi->field_ddc_sck_en);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(hdmi->field_ddc_sck_en);
 }
 
 int sun4i_hdmi_i2c_create(struct device *dev, struct sun4i_hdmi *hdmi)
diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
index 2598741..389c1c5 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
@@ -233,8 +233,6 @@ int sun4i_tmds_create(struct sun4i_hdmi *hdmi)
 	tmds->div_offset = hdmi->variant->tmds_clk_div_offset;
 
 	hdmi->tmds_clk = devm_clk_register(hdmi->dev, &tmds->hw);
-	if (IS_ERR(hdmi->tmds_clk))
-		return PTR_ERR(hdmi->tmds_clk);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(hdmi->tmds_clk);
 }
diff --git a/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c b/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
index a4d31fe..d52f581 100644
--- a/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
+++ b/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
@@ -171,8 +171,6 @@ int sun8i_phy_clk_create(struct sun8i_hdmi_phy *phy, struct device *dev,
 	priv->hw.init = &init;
 
 	phy->clk_phy = devm_clk_register(dev, &priv->hw);
-	if (IS_ERR(phy->clk_phy))
-		return PTR_ERR(phy->clk_phy);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(phy->clk_phy);
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
