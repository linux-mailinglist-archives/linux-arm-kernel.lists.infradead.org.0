Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D793DFDA74
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 11:05:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6+RG+n7sa80YWGTZFSnZ6XMdPPl2+6WZm0JKCMpnmgo=; b=Uc04MxlV2sAhBE
	RYowhQAxLlP0bGAUeMyzxxQLIcOcYaoitf0BCZD5R0+mEELi3LUV2AoiLBgeQGqhBg7ynqPrW9QJL
	+/PxzgGOUa5A18vxhY2gzFNEAFtQ0NQSSX1UGsXddckT7TqjePGqhIb49pq69lehSUdhKZXrU/YCd
	QYfNQU+T/lhewouMOdMETMsBeqJzjIO65gjxXjihOPPgJ0D11RkgvNRFgETXA3evBVX+Dv6oA5yqW
	GVFN4Ocb8yU1luH++lX+Kb1dG6rGewJe8pY2g6FB1neNwqOqVE1myfRozk0Y4CIwWowK/NkYi3q0W
	zhBHlxaPDBt5W3EcoUPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYTc-0002MF-BT; Fri, 15 Nov 2019 10:05:16 +0000
Received: from 60-251-196-230.hinet-ip.hinet.net ([60.251.196.230]
 helo=ironport.ite.com.tw)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYTE-0002KS-Td; Fri, 15 Nov 2019 10:04:54 +0000
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
 by ironport.ite.com.tw with ESMTP; 15 Nov 2019 18:04:44 +0800
Received: from csbcas.internal.ite.com.tw (csbcas1.internal.ite.com.tw
 [192.168.65.46]) by mse.ite.com.tw with ESMTP id xAFA4gwv031714;
 Fri, 15 Nov 2019 18:04:42 +0800 (GMT-8)
 (envelope-from allen.chen@ite.com.tw)
Received: from allen-VirtualBox.internal.ite.com.tw (192.168.70.14) by
 csbcas1.internal.ite.com.tw (192.168.65.45) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Fri, 15 Nov 2019 18:04:42 +0800
From: allen <allen.chen@ite.com.tw>
To: 
Subject: [PATCH v4 0/4] IT6505 cover letter
Date: Fri, 15 Nov 2019 17:52:16 +0800
Message-ID: <1573811564-320-1-git-send-email-allen.chen@ite.com.tw>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [192.168.70.14]
X-MAIL: mse.ite.com.tw xAFA4gwv031714
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_020453_090893_8C964912 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.7 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.3 TO_NO_BRKTS_DYNIP      To: lacks brackets and dynamic rDNS
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
 "open list:DRM
 DRIVERS" <dri-devel@lists.freedesktop.org>, "open list:DRM DRIVERS FOR
 NVIDIA TEGRA" <linux-tegra@vger.kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Pi-Hsun Shih <pihsun@chromium.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>, "moderated
 list:ARM/Mediatek SoC support" <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The IT6505 is a high-performance DisplayPort 1.1a transmitter, fully compliant with DisplayPort 1.1a, HDCP 1.3 specifications. The IT6505 supports color depth of up to 36 bits (12 bits/color) and ensures robust transmission of high-quality uncompressed video content, along with uncompressed and compressed digital audio content.

This series contains document bindings, revert commit, add vendor prefix, Kconfig to control the function enable or not.

Allen Chen (2):
  dt-bindings: Add binding for IT6505.
  drm/bridge: add it6505 driver

allen (2):
  dt-bindings: Add vendor prefix for ITE Tech. Inc.
  Revert "drm/tegra: Move drm_dp_link helpers to Tegra DRM"

 .../bindings/display/bridge/ite,it6505.txt         |   28 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 drivers/gpu/drm/bridge/Kconfig                     |    7 +
 drivers/gpu/drm/bridge/Makefile                    |    1 +
 drivers/gpu/drm/bridge/ite-it6505.c                | 2697 ++++++++++++++++++++
 drivers/gpu/drm/drm_dp_helper.c                    |  128 +
 drivers/gpu/drm/tegra/Makefile                     |    1 -
 drivers/gpu/drm/tegra/dp.c                         |  876 -------
 drivers/gpu/drm/tegra/dp.h                         |  177 --
 drivers/gpu/drm/tegra/dpaux.c                      |    1 -
 drivers/gpu/drm/tegra/sor.c                        |    1 -
 include/drm/drm_dp_helper.h                        |   16 +
 12 files changed, 2879 insertions(+), 1056 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ite,it6505.txt
 create mode 100644 drivers/gpu/drm/bridge/ite-it6505.c
 delete mode 100644 drivers/gpu/drm/tegra/dp.c
 delete mode 100644 drivers/gpu/drm/tegra/dp.h

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
