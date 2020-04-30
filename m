Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3041BF271
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kgm+DXpqWbYudws6XJZLuHDbkuxNoCTV5YSGGYAtXXs=; b=J5HZDdwfAmSmEW
	I83toC9HvhwSWjSjLafZn6PaXOt4Hw2d0eNaxBf1IGXLbzrrHhUEkLH1kIKVnAyUiHgMw5hn4Nf1A
	jR2tFi8DROy/ADjzm3UY67LQ0iguCSDTFyK+0em/yZn3P4GWZMKFgvgK1sOP5MDOWKitG/TYCNI6i
	3+u2sr+fPwMeCes3mAmyhZDkdC/0mca9JqtykHi0x6lyARFa6HX+wEAb9lSKsCBDPBzLvckT+l20c
	2/hIXk5wu4JPbJa+O2Ub6NWlZuijVeOHfZaxuHvcLlbDcmyVsYBpLs2IimRg2SAov8/MR0ldhwBqP
	sXQQmJ6fadgSXLR6LGZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4Mm-0007oM-8u; Thu, 30 Apr 2020 08:16:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4MX-0007kg-Br; Thu, 30 Apr 2020 08:16:07 +0000
X-UUID: 4cd2f6eb6ed847b084737f692e9c5942-20200430
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=OkjZA2Q16Y2OmU712BHLCUtFHRvElOB0/IOIcZcoXc0=; 
 b=MOsOj+mO36UD2gW/IoesPdcv7Eukm/LXZ67JSnGV14P4SkjHUeyMjbfJOJJsyC+RXX0g4yC7yPWBKOXbcUTWYBrLvF3qlhw4t6NGyTL7RmIhJPXUaVsMiZ+MhWx9geFkwn3HQGLSBR19vBzf0klIAt5CehEjlx9ljm5baNXUTd0=;
X-UUID: 4cd2f6eb6ed847b084737f692e9c5942-20200430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 776373109; Thu, 30 Apr 2020 00:15:46 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 01:10:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 16:10:19 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 30 Apr 2020 16:10:18 +0800
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <linus.walleij@linaro.org>, <bgolaszewski@baylibre.com>,
 <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [V7, 0/2] media: i2c: Add support for OV02A10 sensor
Date: Thu, 30 Apr 2020 16:09:22 +0800
Message-ID: <20200430080924.1140-1-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_011605_413089_775EF8FD 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series adds DT bindings in YAML and V4L2 sub-device driver for Omnivision's
OV02A10 2 megapixel CMOS 1/5" sensor, which has a single MIPI lane interface
and output format of 10-bit RAW.

The driver is implemented with V4L2 framework.
 - Async registered as a V4L2 sub-device.
 - As the first component of camera system including Seninf, ISP pipeline.
 - A media entity that provides one source pad in common and two for dual-cam.

Changes of v7 mainly address comments from Rob, Tomasz, Andy, Sakari.
 - Rebase onto 5.7-rc1
 - Use DT bindings in YAML to replace of old text documentation
 - Document optional property "ovti,mipi-tx-speed" and "rotation" 
 - Refine driver more simply
 
Previous versions of this patch-set can be found here:
 v6: https://lore.kernel.org/linux-media/20191211112849.16705-1-dongchun.zhu@mediatek.com/
 v5: https://lore.kernel.org/linux-media/20191104105713.24311-1-dongchun.zhu@mediatek.com/
 v4: https://lore.kernel.org/linux-media/20190907092728.23897-1-dongchun.zhu@mediatek.com/
 v3: https://lore.kernel.org/linux-media/20190819034331.13098-1-dongchun.zhu@mediatek.com/
 v2: https://lore.kernel.org/linux-media/20190704084651.3105-1-dongchun.zhu@mediatek.com/
 v1: https://lore.kernel.org/linux-media/20190523102204.24112-1-dongchun.zhu@mediatek.com/

Changes of v7 mainly address comments from Rob, Tomasz, Andy, Sakari.
 - Rebase onto 5.7-rc1
 - Use DT bindings in YAML to replace of old text documentation
 - Document optional property "ovti,mipi-tx-speed" and "rotation"
 - Refine driver more simply

Please review.
Thanks.

Dongchun Zhu (2):
  media: dt-bindings: media: i2c: Document OV02A10 bindings
  media: i2c: ov02a10: Add OV02A10 image sensor driver

 .../bindings/media/i2c/ovti,ov02a10.yaml           |  148 +++
 MAINTAINERS                                        |    8 +
 drivers/media/i2c/Kconfig                          |   11 +
 drivers/media/i2c/Makefile                         |    1 +
 drivers/media/i2c/ov02a10.c                        | 1090 ++++++++++++++++++++
 5 files changed, 1258 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
 create mode 100644 drivers/media/i2c/ov02a10.c

-- 
2.9.2
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
