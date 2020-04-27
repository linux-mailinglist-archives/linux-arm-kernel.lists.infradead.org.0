Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EED21B9FEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=miClFPnd5kOEG0eisyf1vfnY4bqWehHSbrVSkRineUI=; b=UJCCE/+dUGiprL
	Iiv1yOdOqK3HDnsU0pcsf17++D/d4sSSTvtb/h+xA7TM/pqx4Qi8T/LwKbABgd/R009cnDQiJes8Y
	NX1vQfyrSH16kg7LqFF+CGgOWWPONeUL/ty92HsX6J3ljvj2W50gJ1zgZ31xX2SufyIJAwP3LCOJZ
	/Fr98N1RVRX2XC7P2oJVZfNqR5Gxbc3nKNuGLPWpnqK4Ya8To2ib46Vu4sXfAC/++r7vD7L8FYRMJ
	FQ4KFV+rV5bI61TdYI5I4mHax/aT0rYj2IIxuD76ncCF2VFOfmM58j6frO7u4Pvi5MOSwfXz+iHz5
	Hq/9O0K+L+LH/WcTtlUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT07h-0000gV-36; Mon, 27 Apr 2020 09:32:22 +0000
Received: from 60-251-196-230.hinet-ip.hinet.net ([60.251.196.230]
 helo=ironport.ite.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT07X-0000dl-Ap; Mon, 27 Apr 2020 09:32:13 +0000
IronPort-SDR: 03tNGgORm4fYJDbu4RNLVwBLIPVqQqd9fHfvk56lkvOModc0w26hJvlRnmRqBNxqFJ+g0Mmyrj
 12/d/rTrCqgg==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
 by ironport.ite.com.tw with ESMTP; 27 Apr 2020 17:32:05 +0800
Received: from CSBMAIL1.internal.ite.com.tw (csbmail1.internal.ite.com.tw
 [192.168.65.58]) by mse.ite.com.tw with ESMTP id 03R9W1f1045929;
 Mon, 27 Apr 2020 17:32:01 +0800 (GMT-8)
 (envelope-from allen.chen@ite.com.tw)
Received: from allen-VirtualBox.internal.ite.com.tw (192.168.70.14) by
 CSBMAIL1.internal.ite.com.tw (192.168.65.58) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Mon, 27 Apr 2020 17:32:00 +0800
From: allen <allen.chen@ite.com.tw>
To: 
Subject: [PATCH v9 0/3] IT6505 cover letter
Date: Mon, 27 Apr 2020 17:16:51 +0800
Message-ID: <1587979103-5630-1-git-send-email-allen.chen@ite.com.tw>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [192.168.70.14]
X-ClientProxiedBy: CSBMAIL1.internal.ite.com.tw (192.168.65.58) To
 CSBMAIL1.internal.ite.com.tw (192.168.65.58)
X-TM-SNTS-SMTP: FF59412277EA3E11F0A6463377A2F20CD0C999F653F3C73A7397EFBC782DDE7E2000:8
X-MAIL: mse.ite.com.tw 03R9W1f1045929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_023211_624519_4842D41C 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Stephan Gerhold <stephan@gerhold.net>,
 Jau-Chih Tseng <Jau-Chih.Tseng@ite.com.tw>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Linus Walleij <linus.walleij@linaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 open list <linux-kernel@vger.kernel.org>, "open list:DRM
 DRIVERS" <dri-devel@lists.freedesktop.org>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Pi-Hsun Shih <pihsun@chromium.org>, Allen Chen <allen.chen@ite.com.tw>,
 Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh@kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The IT6505 is a high-performance DisplayPort 1.1a transmitter, fully compliant with DisplayPort 1.1a, HDCP 1.3 specifications. The IT6505 supports color depth of up to 36 bits (12 bits/color) and ensures robust transmission of high-quality uncompressed video content, along with uncompressed and compressed digital audio content.

This series contains document bindings, revert commit, add vendor prefix, Kconfig to control the function enable or not.

Allen Chen (1):
  WIP: drm/bridge: add it6505 driver

allen (2):
  dt-bindings: Add vendor prefix for ITE Tech. Inc.
  WIP: dt-bindings: Add binding for IT6505.

 .../bindings/display/bridge/ite,it6505.yaml        |   91 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +-
 drivers/gpu/drm/bridge/Kconfig                     |    7 +
 drivers/gpu/drm/bridge/Makefile                    |    1 +
 drivers/gpu/drm/bridge/ite-it6505.c                | 3136 ++++++++++++++++++++
 5 files changed, 3236 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
 create mode 100644 drivers/gpu/drm/bridge/ite-it6505.c

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
