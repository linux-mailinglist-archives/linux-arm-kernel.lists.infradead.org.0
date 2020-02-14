Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFB715D2BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I7lcjlUumWI3fByf5gSd6ChKHDdtARbgC9q8HVooQLE=; b=Qt4MsQUcpn/yWT
	+akV5TjBmn/SzVJn2qgLJVCvI0KUYTxZao96MuJVxnkRXrWlcNyIyJ3HNujX3+TpLU/hzvlRXDXyN
	4YIBWVvh6WR5Wdligw0CkfqdWrVB4W001QgfdnbI1cDql39nPtnN/GT8iNA73zP5EMhoCHRSWelFX
	sLusyXbVYVKEu6zgHPBVG2vMomR8z6v/F8mPEAFaZoEIXXsoBNALhv+NuYo5tizF+s7r2nx4+Zadz
	iHwNWYALfPgguCjuq4fpAN0JRrM9excwLZ0zmrvdow0mjNVsXRzn9jzKLUzicEmIOh+Zg6S4DZCw4
	0QoHw0zFt1MAW+sU6rYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2VJY-0001Bh-WA; Fri, 14 Feb 2020 07:23:04 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2VJQ-0001BH-5C
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:22:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so8861095wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 23:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wqp7FXZGdyNZMXzPT/HqC66/7r3iN6tDAgdf0Kj/EjQ=;
 b=Rb532p+vwGihI6II3tkcjZ1gonBh9PJCyL12qmcB9dEn4UaBk9AN77iNZdXUhyGeGg
 gKURtAPIBiLF8WTkD7vJ370EbPQqPt2qw2rt9X0kRUk6N+7w5pV9+p7hR+P8Pu3+EBey
 e2REsTC9h9Cb9+B5HaVOnBxJp/S4Ggc2476LVVF/QsVJVHF5d5q19LyfcesTuNdPI6Fu
 Qkilen70LUm1pHsrRFCh+6SvDQqd70hp7O45VtZoKdjk5FoP+xmHftmIlQCgE3OYf+kC
 JGbLFOcQG9V/RRRMbo+Atj/wSF3BX4AZQdV7444DVEUH/su6RbOq5YBG7DdPwiyP8kvH
 BbOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wqp7FXZGdyNZMXzPT/HqC66/7r3iN6tDAgdf0Kj/EjQ=;
 b=B7mMsC8kclsp99fvhyDPQHkeocELXl/ZrKAuySK46VrgLSbJmFm+RCMN8KqAtsPngf
 mvrwcSpb6R/Mhd1/Pr2po/sWjJdqmbHBWaEeGz6VvAWyBezwywuZmKyRAup+m/ND42qn
 lgp6uDVK+vF5piktve5maIJDpq57l23eCZdtggrDMpK273FkutbnoTY84BPH6+FPko20
 DMICrDd8Yw3JTGm1iCajqclyoS3jPNMB8UVTdK49OIXGUeqh+5XUOPH7N5pCRrvnBdLS
 nUXvcQ6xdXT7Zk7oNS7ykclMtZXZscWuHoAXorEmoAbNXPq3iN9sDYnEfSyMKGqtr9vU
 Epsg==
X-Gm-Message-State: APjAAAXWJ1QDormjcdV0yT6OGlk84mLstW3409qqugBC3EBRSVukHbWL
 HaNngTLncxOLdXvRwh9AawU=
X-Google-Smtp-Source: APXvYqyJE23e/yYGTrQWJXpU5qwC9f+ZsEdab+u9F9YsHMjfTpVSPcnzVIZ/scZtt1AXR8MYN2nsSQ==
X-Received: by 2002:a1c:638a:: with SMTP id x132mr2849733wmb.43.1581664973575; 
 Thu, 13 Feb 2020 23:22:53 -0800 (PST)
Received: from localhost.localdomain (62-178-82-229.cable.dynamic.surfer.at.
 [62.178.82.229])
 by smtp.gmail.com with ESMTPSA id g15sm5677147wro.65.2020.02.13.23.22.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 23:22:52 -0800 (PST)
From: Christian Gmeiner <christian.gmeiner@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: multi_v7_defconfig: enable drm imx support
Date: Fri, 14 Feb 2020 08:22:18 +0100
Message-Id: <20200214072237.16633-1-christian.gmeiner@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_232256_202575_1D8D3278 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christian.gmeiner[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Tony Lindgren <tony@atomide.com>,
 shawnguo@kernel.org, s.hauer@pengutronix.de, Joel Stanley <joel@jms.id.au>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>, Lubomir Rintel <lkundrak@v3.sk>,
 Christian Gmeiner <christian.gmeiner@gmail.com>, linux-imx@nxp.com,
 Olof Johansson <olof@lixom.net>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Makes it possible to multi v7 defconfig for stm32 and imx based devices with
full drm support.

Signed-off-by: Christian Gmeiner <christian.gmeiner@gmail.com>
---
 arch/arm/configs/multi_v7_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 017d65f86eba..c5ff91211947 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -640,6 +640,7 @@ CONFIG_CEC_PLATFORM_DRIVERS=y
 CONFIG_VIDEO_SAMSUNG_S5P_CEC=m
 CONFIG_VIDEO_ADV7180=m
 CONFIG_VIDEO_ML86V7667=m
+CONFIG_IMX_IPUV3_CORE=m
 CONFIG_DRM=y
 # CONFIG_DRM_I2C_CH7006 is not set
 # CONFIG_DRM_I2C_SIL164 is not set
@@ -655,6 +656,11 @@ CONFIG_ROCKCHIP_ANALOGIX_DP=y
 CONFIG_ROCKCHIP_DW_HDMI=y
 CONFIG_ROCKCHIP_DW_MIPI_DSI=y
 CONFIG_ROCKCHIP_INNO_HDMI=y
+CONFIG_DRM_IMX=m
+CONFIG_DRM_IMX_PARALLEL_DISPLAY=m
+CONFIG_DRM_IMX_TVE=m
+CONFIG_DRM_IMX_LDB=m
+CONFIG_DRM_IMX_HDMI=m
 CONFIG_DRM_ATMEL_HLCDC=m
 CONFIG_DRM_RCAR_DU=m
 CONFIG_DRM_RCAR_LVDS=y
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
