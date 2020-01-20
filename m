Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A8D1421B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 03:58:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vRuuI6Z8QekhuM7w5uU9jbXLk4JejzGgK2uyEo3OiiA=; b=jEJTMGLDy4RQYa
	VmvCQeQCF2MTlwpuo+zrLydOogmG9rvu86/tuKkGShd1GEPonWiYlCAzicHxhmYKy+ZWQiUEoQ4oB
	bhmIBNQEDITYHMgH+yuqzyDQTN+c/oEEpWpPjnZCkMZ3YhGOFeUq4Ml0Cgh82Bsvj72Pw+4R+nTF4
	3HuRdAOk7Dl2x7ZYr80nbfJDfKkAaTxbzL0lQhAdVIJyEjgN0LAJbMsLBn9oE6kC94z+5e+AlWpII
	Pk2hrBDvcrtt3R8vGaQuP2QbgVT/45+6cevE9Qr+tKyyTs/x329QWrvs9HrteVBQrS7ycdWQ3T0CY
	c0nwdKzxgUMY6NTKnJDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itNGE-0004R0-R6; Mon, 20 Jan 2020 02:57:54 +0000
Received: from 60-251-196-230.hinet-ip.hinet.net ([60.251.196.230]
 helo=ironport.ite.com.tw)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itNG5-0004Q4-1N; Mon, 20 Jan 2020 02:57:47 +0000
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
 by ironport.ite.com.tw with ESMTP; 20 Jan 2020 10:57:27 +0800
Received: from csbcas.ite.com.tw (csbmail1.internal.ite.com.tw [192.168.65.58])
 by mse.ite.com.tw with ESMTP id 00K2vOdJ078193;
 Mon, 20 Jan 2020 10:57:24 +0800 (GMT-8)
 (envelope-from allen.chen@ite.com.tw)
Received: from allen-VirtualBox.internal.ite.com.tw (192.168.70.14) by
 CSBMAIL1.internal.ite.com.tw (192.168.65.58) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Mon, 20 Jan 2020 10:57:24 +0800
From: allen <allen.chen@ite.com.tw>
To: 
Subject: [PATCH v6 0/4] IT6505 cover letter
Date: Mon, 20 Jan 2020 10:44:30 +0800
Message-ID: <1579488364-13182-1-git-send-email-allen.chen@ite.com.tw>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [192.168.70.14]
X-ClientProxiedBy: CSBMAIL1.internal.ite.com.tw (192.168.65.58) To
 CSBMAIL1.internal.ite.com.tw (192.168.65.58)
X-TM-SNTS-SMTP: 132E324B2C190125BF4CD17AA657309DCDA49816AC5BF96A26208749A5FB6E1A2000:8
X-MAIL: mse.ite.com.tw 00K2vOdJ078193
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_185746_188983_5D248B26 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: Maxime Ripard <mripard@kernel.org>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Jau-Chih Tseng <Jau-Chih.Tseng@ite.com.tw>, Allen Chen <allen.chen@ite.com.tw>,
 Jonas Karlman <jonas@kwiboo.se>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Pi-Hsun Shih <pihsun@chromium.org>, "open list:DRM DRIVERS FOR NVIDIA
 TEGRA" <linux-tegra@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh@kernel.org>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The IT6505 is a high-performance DisplayPort 1.1a transmitter, fully compliant
with DisplayPort 1.1a, HDCP 1.3 specifications. The IT6505 supports color depth
of up to 36 bits (12 bits/color) and ensures robust transmission of high-quality
uncompressed video content, along with uncompressed and compressed digital audio
content.

This series contains document bindings, revert commit, add vendor prefix,
Kconfig to control the function enable or not.

Allen Chen (1):
  WIP: drm/bridge: add it6505 driver

allen (3):
  dt-bindings: Add vendor prefix for ITE Tech. Inc.
  Revert "drm/tegra: Move drm_dp_link helpers to Tegra DRM"
  WIP: dt-bindings: Add binding for IT6505.

 .../bindings/display/bridge/ite,it6505.yaml        |   89 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 drivers/gpu/drm/bridge/Kconfig                     |    7 +
 drivers/gpu/drm/bridge/Makefile                    |    1 +
 drivers/gpu/drm/bridge/ite-it6505.c                | 2698 ++++++++++++++++++++
 drivers/gpu/drm/drm_dp_helper.c                    |  128 +
 drivers/gpu/drm/tegra/Makefile                     |    1 -
 drivers/gpu/drm/tegra/dp.c                         |  876 -------
 drivers/gpu/drm/tegra/dp.h                         |  177 --
 drivers/gpu/drm/tegra/dpaux.c                      |    1 -
 drivers/gpu/drm/tegra/sor.c                        |    1 -
 include/drm/drm_dp_helper.h                        |   16 +
 12 files changed, 2941 insertions(+), 1056 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
 create mode 100644 drivers/gpu/drm/bridge/ite-it6505.c
 delete mode 100644 drivers/gpu/drm/tegra/dp.c
 delete mode 100644 drivers/gpu/drm/tegra/dp.h

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
