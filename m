Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4F79E510
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWK/DapGJwX4Oc6QIItHvOs/QeSx1xQq0h4VGiO+wU0=; b=DeyZupmxP4G9xu
	asXD+jN3Z2DQBRu/MN+sH2T3A8ULRvbOeN0wSaNVPy1dXaDHtBa6kHw4bbS+NnfRpcDEgnxUMGkjX
	Ie2s8yDmeU4DK9f5dReOzWXQNUYhWTmHIfduAE2epwMIlmAWFx8+Tpk253KVjRQ2FQaWQUcB4MSEu
	twPnbXRbAu2G9606fpd9ARVU1/SrFpygSCucUhdqvcz35AZnrCJy0UUHxAaBYisKCS8RcdYYYI34d
	5CRV5wQ92DxkldQ/k3CeBn8yaXzo3HxFfwebsVpGJxRUS0ki2M5a+mMzsNsLaodx663IpZc+B8eYz
	YKlyZ3uxBxvva0ZGEIeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YFr-0001CH-V1; Tue, 27 Aug 2019 09:59:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YFC-0000wu-4n
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:58:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id z1so18132893wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 02:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e3MX6dJTEQsQ89HsRB1zdZlcheUaoM7pF8lBBmIX570=;
 b=Ugl/8zrolmxov83L5GM9xV8mmhNk/xvoT9Qx80voxCM0e8fyHjKUfK9EPT9dzOC14H
 hDRkEM8GqCtOPBom0oTAthFAT/kEh2l/myItSPKeMeNTkl/qfNLQ/lIvkyxw4YvUBcom
 LaMQoNUJEJ+bdvvurb05C58eDEp2KNhjg9m46jQoNSAYu+zFKVgBhKQHPKp1+fSHpp9P
 7obFgm0tdMoEyEKKO10dgDvTaWnz2rUrvbU0EDVHVaNwJoLLfSHFCwM/dvDk113dUAP7
 Q5czgoZ3XfZXqGwFrWn/2hJjvjMMeYoj7TgAu5ru27WSD46DDJpRCHBZ2Pbsd2BIlHhK
 nJtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e3MX6dJTEQsQ89HsRB1zdZlcheUaoM7pF8lBBmIX570=;
 b=nNaHBxF6zo/Je87UDw6w4y97c+Iq5tWdRjmFEnGnLQpKIHv1+/GEX6siXD/CAE4sq1
 38bBLEkHVpp2BifLXtwdLNg7bb8AeebI7xjlmOIunAi3xo3G3A7By6xSpINxspEvvQn6
 /1mtM1F0R+Ca7tTL8QpXXEVJxFn+bmx36lwcZ/NniPObLaQjwqcpYkjZc3+QJ/eIX85A
 IeIPZ0Qkq+jyH6ojvs4X2Xfo19dYos6mO8FvWSvo/ctRfKe/qj/bbaUdJ9tBT6Xye/1x
 xtBzf7Y++CdHs1DXOEvlPoDnCDqCPzViMtSg+h/rRKl9jFSPExvsv4J74YSu8TMIdNWK
 Melw==
X-Gm-Message-State: APjAAAUx4FK3iN6D04I5+wqNQCICw7TruhUdTIM1wlio562l936/88gE
 exBou8PTWwKvSZwyFKiCDqaJAw==
X-Google-Smtp-Source: APXvYqy4ZYB2/q/DqDVQb0WL+EPpli8OSFxCaqbkjlDMpmc/cnWWUqiSdxK0DJT+0XlCte2VBKjc4Q==
X-Received: by 2002:a5d:66c8:: with SMTP id k8mr28230101wrw.7.1566899908606;
 Tue, 27 Aug 2019 02:58:28 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m6sm10862084wrq.95.2019.08.27.02.58.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 02:58:28 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 1/2] drm/meson: dw_hdmi: add resume/suspend hooks
Date: Tue, 27 Aug 2019 11:58:24 +0200
Message-Id: <20190827095825.21015-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827095825.21015-1-narmstrong@baylibre.com>
References: <20190827095825.21015-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_025830_187964_FC9E23D3 
X-CRM114-Status: GOOD (  15.14  )
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
Cc: khilman@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the suspens and resume hooks to:
- reset the whole HDMI glue and HDMI controller on suspend
- re-init the HDMI glue and HDMI controller on resume

The HDMI glue init is refactored to be re-used from the resume hook.

It makes usage of dw_hdmi_resume() to recover a functionnal DDC bus.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_dw_hdmi.c | 110 ++++++++++++++++++--------
 1 file changed, 76 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index df3f9ddd2234..a722ddbfbede 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -799,6 +799,47 @@ static bool meson_hdmi_connector_is_available(struct device *dev)
 	return false;
 }
 
+static void meson_dw_hdmi_init(struct meson_dw_hdmi *meson_dw_hdmi)
+{
+	struct meson_drm *priv = meson_dw_hdmi->priv;
+
+	/* Enable clocks */
+	regmap_update_bits(priv->hhi, HHI_HDMI_CLK_CNTL, 0xffff, 0x100);
+
+	/* Bring HDMITX MEM output of power down */
+	regmap_update_bits(priv->hhi, HHI_MEM_PD_REG0, 0xff << 8, 0);
+
+	/* Reset HDMITX APB & TX & PHY */
+	reset_control_reset(meson_dw_hdmi->hdmitx_apb);
+	reset_control_reset(meson_dw_hdmi->hdmitx_ctrl);
+	reset_control_reset(meson_dw_hdmi->hdmitx_phy);
+
+	/* Enable APB3 fail on error */
+	if (!meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
+		writel_bits_relaxed(BIT(15), BIT(15),
+				    meson_dw_hdmi->hdmitx + HDMITX_TOP_CTRL_REG);
+		writel_bits_relaxed(BIT(15), BIT(15),
+				    meson_dw_hdmi->hdmitx + HDMITX_DWC_CTRL_REG);
+	}
+
+	/* Bring out of reset */
+	meson_dw_hdmi->data->top_write(meson_dw_hdmi,
+				       HDMITX_TOP_SW_RESET,  0);
+
+	msleep(20);
+
+	meson_dw_hdmi->data->top_write(meson_dw_hdmi,
+				       HDMITX_TOP_CLK_CNTL, 0xff);
+
+	/* Enable HDMI-TX Interrupt */
+	meson_dw_hdmi->data->top_write(meson_dw_hdmi, HDMITX_TOP_INTR_STAT_CLR,
+				       HDMITX_TOP_INTR_CORE);
+
+	meson_dw_hdmi->data->top_write(meson_dw_hdmi, HDMITX_TOP_INTR_MASKN,
+				       HDMITX_TOP_INTR_CORE);
+
+}
+
 static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
 				void *data)
 {
@@ -922,40 +963,7 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
 
 	DRM_DEBUG_DRIVER("encoder initialized\n");
 
-	/* Enable clocks */
-	regmap_update_bits(priv->hhi, HHI_HDMI_CLK_CNTL, 0xffff, 0x100);
-
-	/* Bring HDMITX MEM output of power down */
-	regmap_update_bits(priv->hhi, HHI_MEM_PD_REG0, 0xff << 8, 0);
-
-	/* Reset HDMITX APB & TX & PHY */
-	reset_control_reset(meson_dw_hdmi->hdmitx_apb);
-	reset_control_reset(meson_dw_hdmi->hdmitx_ctrl);
-	reset_control_reset(meson_dw_hdmi->hdmitx_phy);
-
-	/* Enable APB3 fail on error */
-	if (!meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
-		writel_bits_relaxed(BIT(15), BIT(15),
-				    meson_dw_hdmi->hdmitx + HDMITX_TOP_CTRL_REG);
-		writel_bits_relaxed(BIT(15), BIT(15),
-				    meson_dw_hdmi->hdmitx + HDMITX_DWC_CTRL_REG);
-	}
-
-	/* Bring out of reset */
-	meson_dw_hdmi->data->top_write(meson_dw_hdmi,
-				       HDMITX_TOP_SW_RESET,  0);
-
-	msleep(20);
-
-	meson_dw_hdmi->data->top_write(meson_dw_hdmi,
-				       HDMITX_TOP_CLK_CNTL, 0xff);
-
-	/* Enable HDMI-TX Interrupt */
-	meson_dw_hdmi->data->top_write(meson_dw_hdmi, HDMITX_TOP_INTR_STAT_CLR,
-				       HDMITX_TOP_INTR_CORE);
-
-	meson_dw_hdmi->data->top_write(meson_dw_hdmi, HDMITX_TOP_INTR_MASKN,
-				       HDMITX_TOP_INTR_CORE);
+	meson_dw_hdmi_init(meson_dw_hdmi);
 
 	/* Bridge / Connector */
 
@@ -991,6 +999,34 @@ static const struct component_ops meson_dw_hdmi_ops = {
 	.unbind	= meson_dw_hdmi_unbind,
 };
 
+static int __maybe_unused meson_dw_hdmi_pm_suspend(struct device *dev)
+{
+	struct meson_dw_hdmi *meson_dw_hdmi = dev_get_drvdata(dev);
+
+	if (!meson_dw_hdmi)
+		return 0;
+
+	/* Reset TOP */
+	meson_dw_hdmi->data->top_write(meson_dw_hdmi,
+				       HDMITX_TOP_SW_RESET, 0);
+
+	return 0;
+}
+
+static int __maybe_unused meson_dw_hdmi_pm_resume(struct device *dev)
+{
+	struct meson_dw_hdmi *meson_dw_hdmi = dev_get_drvdata(dev);
+
+	if (!meson_dw_hdmi)
+		return 0;
+
+	meson_dw_hdmi_init(meson_dw_hdmi);
+
+	dw_hdmi_resume(meson_dw_hdmi->hdmi);
+
+	return 0;
+}
+
 static int meson_dw_hdmi_probe(struct platform_device *pdev)
 {
 	return component_add(&pdev->dev, &meson_dw_hdmi_ops);
@@ -1003,6 +1039,11 @@ static int meson_dw_hdmi_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct dev_pm_ops meson_dw_hdmi_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(meson_dw_hdmi_pm_suspend,
+				meson_dw_hdmi_pm_resume)
+};
+
 static const struct of_device_id meson_dw_hdmi_of_table[] = {
 	{ .compatible = "amlogic,meson-gxbb-dw-hdmi",
 	  .data = &meson_dw_hdmi_gx_data },
@@ -1022,6 +1063,7 @@ static struct platform_driver meson_dw_hdmi_platform_driver = {
 	.driver		= {
 		.name		= DRIVER_NAME,
 		.of_match_table	= meson_dw_hdmi_of_table,
+		.pm = &meson_dw_hdmi_pm_ops,
 	},
 };
 module_platform_driver(meson_dw_hdmi_platform_driver);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
