Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DC3272A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 00:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KOCTBQtljdsAnGPymU6ikT6oKp3e7caITfSzpeGyFHw=; b=NDZ
	T2oweFq37UMf27l0NLwlsmCmG/oKoB7WFWBPv+t7DmqkyWvkFh+BLVHK4SIyozA/ZQGSQZWP8Duv4
	RbttL/j6MweDYMTDFW0c9kdL1YH95YpZdWDeBdrOMIInNWjDhNEWlGVeq16hbUZfWST6KH2CurK1I
	BdFkc1Z0p5GCe+6LdO91T3rzI+4eDVrTaApcIMy5qESbGn4LEweLK22OTAFRwXDW26gU2xdQoyJub
	k7hZWSIRb90VBtVJdpK+B0flxNBt+cBZZ2RXVqHY3GPzK6JzLZiTi8POrTvjkHe8Ho6/yp8FZJ8BC
	y82U4FECuLaSU8oIban5xmrHwMrcnJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTa7G-00041e-6O; Wed, 22 May 2019 22:53:46 +0000
Received: from outgoing4.flk.host-h.net ([188.40.0.90])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTa76-00040R-Lw; Wed, 22 May 2019 22:53:39 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam1-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hTa6n-0000bT-Bw; Thu, 23 May 2019 00:53:18 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hTa6c-0007fD-EJ; Thu, 23 May 2019 00:53:06 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] drm/rockchip: dw_hdmi: add basic rk3228 support
Date: Wed, 22 May 2019 22:46:29 +0000
Message-Id: <20190522224631.25164-1-justin.swartz@risingedge.co.za>
X-Mailer: git-send-email 2.11.0
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear (ClamAV 0.100.3/25457/Wed May 22 09:57:31 2019)
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.000718690605145)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0fHWENUdqj+4JDN3TQDP3eCpSDasLI4SayDByyq9LIhVur86TwL7jsv5
 m6+fjp/sxETNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0h/RxVysY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGfWrcbYvelpuN/Pk
 qhBpvAyWwieZyauFYqHkIbFa+ipF21HJWO60ZqrvKy/1AXUV5oXt6ymoFHaG7BQtEYvFCSo5O9aO
 OPCZx1b2uMC/zMc3aAOV7ICS29ZskdEzgnmWc6FyCw2oLKHJClAYHcXyktNZ2XmZE6Ulo3Sg6/fH
 CWNxoaEnuBtnt6GUDDzwi0xE9ujBdjBi/EW6wTMO5aPWRLvv8qeRWs1kOo/p5GKJkWYAO3Aa5n+U
 cgHka3/viXjzcoj1m7f+vTE4JStv6WwSOoIjjjxJx7TjfIl9lT02e+bLG5tY/17Am1+3t6saIBBg
 jLL9CBTChXJpl1nl23cKb/28qAHF3ayYxbGdFos0fpCN/Zqe7k8tOuyC0ezetWWw8nL3mjAyuRnY
 YfqoF0qwBaWr31abV7tmT2g84edke3MdOkNjooab3HXOpUJdeB9FrcmwwJhZoFj1JrH8+3dIKm8T
 aJbF/DJ9xG35AyqkelXaj1B5NGYLZCD5qc9WTEIS3cJCoM1jZKVSdLKiMKeae175VNiXOYUQ+bYR
 OTnFZniyHwlqvaI+zok/BsKQK4gft9MTokp23oPCMeUu86GfQl/coNq5LDsD+gmtrHR34ik+dbYb
 9IXfYGRpVS/0hA4MwqmkYLLjcD7HaYjxiQBclDtVrfG8Zd+nzbonxrsMSs4uYqsuNEW45+y/2kiU
 pWy9c+XovTjsJstHtBoNlKIuslv0d6pyfV7QOE1hL9j5OVSXNVTcvF4bYNCxBEiOkhGolglPmh6a
 ILJqM6WsXf7aQnmpO2ydeyFd1pMxtzaLrgiAa1jZ449c5QOSXHeR3E0E19yXIdNHJDPRcm8rLb1r
 h0PyzIaTXD+uKJkHA4nFPinpYeLTxNigHOV5GQgWJq64bnCnflZnbjDB2+RGRgaXth0ZHRqQruFr
 G/GlTGRDUHWt54s410cgWo1fMD6i15+WgVsQdC9uGg5IeWmPBYt4N47WgJgyTfy73B/Plf7FmTDV
 qY+pQN3pVbMWvtuGUnEh3DwJWw42swm4bO6gacpMpzKjPCVKQvBNmkphbV+6LqpSOVpogBsPfG5h
 jLRjd6kxWF4VLgIZIkTm0juO6rHlP/TihjA708Lg3Y2gXyaf+rItBxw1SWz0NFi7GeT33MAvp0E4
 hZvaIK8zWrz4lb7RoCsWna0PdfWBYPgYUN6vj8NApCcRaz+idK1HZy9Txmtmp2+U8T3Kfj7tHuHD
 vXqVSlU=
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_155336_721786_102B8913 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.40.0.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Justin Swartz <justin.swartz@risingedge.co.za>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Like the RK3328, RK322x SoCs offer a Synopsis DesignWare HDMI transmitter
and an Innosilicon HDMI PHY.

Add a new dw_hdmi_plat_data struct, rk3228_hdmi_drv_data.
Assign a set of mostly generic rk3228_hdmi_phy_ops functions.
Add dw_hdmi_rk3228_setup_hpd() to enable the HDMI HPD and DDC lines.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 .../bindings/display/rockchip/dw_hdmi-rockchip.txt |  1 +
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        | 53 ++++++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
index 39143424a..703503103 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
@@ -12,6 +12,7 @@ following device-specific properties.
 Required properties:
 
 - compatible: should be one of the following:
+		"rockchip,rk3228-dw-hdmi"
 		"rockchip,rk3288-dw-hdmi"
 		"rockchip,rk3328-dw-hdmi"
 		"rockchip,rk3399-dw-hdmi"
diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 4cdc9f86c..182a852af 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -23,6 +23,14 @@
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_vop.h"
 
+#define RK3228_GRF_SOC_CON2		0x0408
+#define RK3228_HDMI_SDAIN_MSK		BIT(14)
+#define RK3228_HDMI_SCLIN_MSK		BIT(13)
+#define RK3228_GRF_SOC_CON6		0x0418
+#define RK3228_HDMI_HPD_VSEL		BIT(6)
+#define RK3228_HDMI_SDA_VSEL		BIT(5)
+#define RK3228_HDMI_SCL_VSEL		BIT(4)
+
 #define RK3288_GRF_SOC_CON6		0x025C
 #define RK3288_HDMI_LCDC_SEL		BIT(4)
 #define RK3328_GRF_SOC_CON2		0x0408
@@ -325,6 +333,25 @@ static void dw_hdmi_rockchip_genphy_disable(struct dw_hdmi *dw_hdmi, void *data)
 	phy_power_off(hdmi->phy);
 }
 
+static void dw_hdmi_rk3228_setup_hpd(struct dw_hdmi *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
+
+	dw_hdmi_phy_setup_hpd(dw_hdmi, data);
+
+	regmap_write(hdmi->regmap,
+		RK3228_GRF_SOC_CON6,
+		HIWORD_UPDATE(RK3228_HDMI_HPD_VSEL | RK3228_HDMI_SDA_VSEL |
+			      RK3228_HDMI_SCL_VSEL,
+			      RK3228_HDMI_HPD_VSEL | RK3228_HDMI_SDA_VSEL |
+			      RK3228_HDMI_SCL_VSEL));
+
+	regmap_write(hdmi->regmap,
+		RK3228_GRF_SOC_CON2,
+		HIWORD_UPDATE(RK3228_HDMI_SDAIN_MSK | RK3228_HDMI_SCLIN_MSK,
+			      RK3228_HDMI_SDAIN_MSK | RK3228_HDMI_SCLIN_MSK));
+}
+
 static enum drm_connector_status
 dw_hdmi_rk3328_read_hpd(struct dw_hdmi *dw_hdmi, void *data)
 {
@@ -370,6 +397,29 @@ static void dw_hdmi_rk3328_setup_hpd(struct dw_hdmi *dw_hdmi, void *data)
 			      RK3328_HDMI_HPD_IOE));
 }
 
+static const struct dw_hdmi_phy_ops rk3228_hdmi_phy_ops = {
+	.init		= dw_hdmi_rockchip_genphy_init,
+	.disable	= dw_hdmi_rockchip_genphy_disable,
+	.read_hpd	= dw_hdmi_phy_read_hpd,
+	.update_hpd	= dw_hdmi_phy_update_hpd,
+	.setup_hpd	= dw_hdmi_rk3228_setup_hpd,
+};
+
+static struct rockchip_hdmi_chip_data rk3228_chip_data = {
+	.lcdsel_grf_reg = -1,
+};
+
+static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
+	.mode_valid = dw_hdmi_rockchip_mode_valid,
+	.mpll_cfg = rockchip_mpll_cfg,
+	.cur_ctr = rockchip_cur_ctr,
+	.phy_config = rockchip_phy_config,
+	.phy_data = &rk3228_chip_data,
+	.phy_ops = &rk3228_hdmi_phy_ops,
+	.phy_name = "inno_dw_hdmi_phy2",
+	.phy_force_vendor = true,
+};
+
 static struct rockchip_hdmi_chip_data rk3288_chip_data = {
 	.lcdsel_grf_reg = RK3288_GRF_SOC_CON6,
 	.lcdsel_big = HIWORD_UPDATE(0, RK3288_HDMI_LCDC_SEL),
@@ -422,6 +472,9 @@ static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
 };
 
 static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
+	{ .compatible = "rockchip,rk3228-dw-hdmi",
+	  .data = &rk3228_hdmi_drv_data
+	},
 	{ .compatible = "rockchip,rk3288-dw-hdmi",
 	  .data = &rk3288_hdmi_drv_data
 	},
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
