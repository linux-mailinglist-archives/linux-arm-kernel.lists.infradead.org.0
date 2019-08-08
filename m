Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5FB85E24
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MfOdclUaM6ncSw5mZhht8hhaGCHLMqZB/NbFsvlgERs=; b=YvZ27IHi7pjK9Q
	zDh6DPMENYmDOY9xvl0amV1944i0kUgYyioOd21UC3jLgGTlyHpCHHMr1prIM/wNcFXotQWTuryLj
	qX7XdD2W6nwjmvsBvD9N3NbZETKJbWK4AtlMckR/B5Ni8uc87G4NRj7GXH/nsOBQtwWqQlx9yxfUG
	HIMPNI0KAsn551D2cE+udyHxrMWrXAFBzK+/8z+YgqvIGBfzs+xatNsHfTpj8BJVeY/kJGKOIVPAQ
	NFuBvlTNT5l7Gj/mZodTQdoauXWUV5R1cC3rEHM//5Gf+LIliDcNF7E/aO0X9zLm5KEIznVkRTKQD
	/0ZJb6C8gWFxaJ/nR11Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvedL-00013u-Rx; Thu, 08 Aug 2019 09:22:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hved7-00012c-IW; Thu, 08 Aug 2019 09:22:42 +0000
X-UUID: bdcad89be76949b0a1d3ab7afab56b10-20190808
X-UUID: bdcad89be76949b0a1d3ab7afab56b10-20190808
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 479943235; Thu, 08 Aug 2019 01:22:28 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 8 Aug 2019 02:22:26 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 8 Aug 2019 17:22:25 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 8 Aug 2019 17:22:24 +0800
From: <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <sakari.ailus@linux.intel.com>, <drinkcat@chromium.org>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <bingbu.cao@intel.com>
Subject: [V1, 0/2] media: ov8856: DT bindings and sensor mode improvements
Date: Thu, 8 Aug 2019 17:22:13 +0800
Message-ID: <20190808092215.5608-1-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_022241_619375_8915D5EC 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

From: Dongchun Zhu <dongchun.zhu@mediatek.com>

Hello,

This series adds DT bindings and some more sensor modes for users to use.

From the latest ov8856 datasheet, it is proposed to adopt the resolution of 1632*1224 and 3264*2448,
together with Bayer Order of BGGR. Thus here we provide two more scenarios.

In addition, the hardware version of ov8856 is also distinguished from one OTP SRAM register R700F.
PLL register R3614 requires to be correspondingly updated.
For instance, 0x20 is suggested for 1B camera module.

It is emphasized that I2C still actives while device is to runtime suspended.
This makes ov8856_suspend function need to remove the operation of stoping streaming.

Finally, ARM and device tree matching were added as an alternative.

Dongchun Zhu (2):
  media: dt-bindings: media: i2c: Add bindings for OV8856
  media: i2c: Add more sensor mode for OV8856 camera sensor

 .../devicetree/bindings/media/i2c/ov8856.txt       |  41 ++
 MAINTAINERS                                        |   1 +
 drivers/media/i2c/ov8856.c                         | 624 ++++++++++++++++++++-
 3 files changed, 663 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.txt

-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
