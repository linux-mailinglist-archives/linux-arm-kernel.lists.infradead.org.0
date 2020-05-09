Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1841B1CBC55
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 04:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vkSWa48JvP2rsb9FFjq2la2Bk/AZ+deEC216f3a1kKY=; b=WRiALzVTSCq1sb
	e96NXCXZjqVYTY7PDjMbNrmUO6F1kS+rPvfAC1nNiB+arERVhNTx4eNh8l+6H8/bF+H7exkuCN0Tx
	oaZ2rxOX3HK4rkB6+rlRMtwNppcWEg83nlsHkSNuWYX87ar1OVwY1IGjpptf8gIJbXL7W6ZU9zTjw
	Q60XzIsQSzrekTvmDUbiOCOm4ojzsdARFEQ4kCZN983IcRHYdFeadZc6Gkq3oMS4hh7L/RYHcUg23
	PrnCMyrqOB+H3WrTvwe3Uyb2LPABTCE52Oec8EIs68K+QsXOMFQvUH3epXi/fvDkn0VMFmD2Swxul
	DKtpaSe6hX19DKGC+8rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXEwV-0001rj-78; Sat, 09 May 2020 02:10:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXEwC-00017p-Gl; Sat, 09 May 2020 02:10:03 +0000
X-UUID: f97ec90435d743c2bc57d1ed1fb37359-20200508
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=1B+choKMEWf5xgsDH1Xvz4r98si4Toef2xxzNstIEMc=; 
 b=WVPofjpp0VLBguQpJu5sO7PG4xp585zhHL5kaY5GN4ax6yZyup7ckNf1CfzJCQp/XLQthBFtWydoIccdvERs23acVXpSpUglCYB8UH7mrTzk761XMMrKpPJbKs76zGETv/kNtGgEyB5KaCYcKNJXhpsh9zjT5mi3gzPS7/aqn4o=;
X-UUID: f97ec90435d743c2bc57d1ed1fb37359-20200508
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 403766129; Fri, 08 May 2020 18:09:49 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 19:09:36 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 10:09:23 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 9 May 2020 10:09:17 +0800
From: Fengping Yu <fengping.yu@mediatek.com>
To: Marco Felsch <m.felsch@pengutronix.de>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: [PATCH v6] Add mtk matrix keypad driver for keypad on MTK SoC
Date: Sat, 9 May 2020 10:04:56 +0800
Message-ID: <20200509020458.8359-1-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_191000_556749_7187CFE9 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change since v5:
- remove unnecessary include files
- remove redundant comments and newlines
- use local irqnr variable instead of member variable of mtk_keypad struct
- use regmap to read and write registers
- drop kpd_get_dts_info directly into probe function
- use devm_add_action_or_reset to avoid goto error handling when do clk setting
- use devm_request_threaded_irq api to request irq
- remove platform_set_drvdata

fengping.yu (3):
  dt-bindings: Change keypad documentation schema
  drivers: input: keyboard: Add mtk keypad driver
  configs: defconfig: Add CONFIG_KEYBOARD_MTK_KPD=y

 .../devicetree/bindings/input/mtk-kpd.txt     |  61 -------
 .../devicetree/bindings/input/mtk-kpd.yaml    |  93 +++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/input/keyboard/Kconfig                |   5 +-
 drivers/input/keyboard/mtk-kpd.c              | 151 ++++++++----------
 5 files changed, 163 insertions(+), 148 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
 create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.yaml

--
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
