Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4067E27A4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HUjKuHH1E/WrE3DQ8vdkSjYfu30iTafcGpaQCXFD8NE=; b=r+y6AwFwZD9Ejd
	Vp98u8UMXfx8kpTeHk1vP92rh7gwhg/Tk0xkdpSEAek8v4Wt+mduqSKXN8t+cwiET4h5cj595yyzQ
	/e9GJ3bC2qmMwDZixmQhB5FpTp4xl+YoSbwJrPTFp2L300pI8TH6NfbC0u9EFSF0Zu0/ot7UUJ3xI
	G2tdH5yGCVGWaDnbDAqIa4S11s1GZWPPy0SbxVSxd2DZudSFuuLKESbR1LzKaV7ZOzoPYMG28c6fp
	kMsWwLZIxrAMkc1ORHMCpwfDVj1pmfQlj9IGNq1iM+3Ijc/gVmUy/eVdoSTVJtY5bY9tpygzF4iu7
	DtTFCiDyiEXElFur9rAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTks8-0001e4-Kf; Thu, 23 May 2019 10:22:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkrl-0001MS-JA; Thu, 23 May 2019 10:22:30 +0000
X-UUID: a4690ce02dcd4bb7939a6005c77b0efb-20190523
X-UUID: a4690ce02dcd4bb7939a6005c77b0efb-20190523
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1403006677; Thu, 23 May 2019 02:22:23 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 May 2019 03:22:21 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 May 2019 18:22:08 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 23 May 2019 18:22:07 +0800
From: <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <matthias.bgg@gmail.com>, <bingbu.cao@intel.com>
Subject: [PATCH 0/3] media: suppport ov02a10 sensor driver
Date: Thu, 23 May 2019 18:22:01 +0800
Message-ID: <20190523102204.24112-1-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_032229_631875_C21796E9 
X-CRM114-Status: UNSURE (   7.01  )
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 menghui.lin@mediatek.com, shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dongchun Zhu <dongchun.zhu@mediatek.com>

Hello,

This is the OV02A10 sensor driver, which would be used in camera features on CrOS application.

The driver is implemented wth V4L2 framework.
1. Async registered as a V4L2 I2C sub-device.
2. A media entity that can provide several source pads and sink pads to link with other device like Seninf, ISP one after another
   to create a default overall camera topology, image frame or meta-data from sensor can flow through particular path to output
   preview or capture image or 3A info.

Dongchun Zhu (3):
  media: i2c: ov02a10: Add ov02a10 camera sensor driver
  media: i2c: ov02a10: Add CONFIG_VIDEO_OV02A10
  media: dt-bindings: media: i2c: Add bindings for ov02a10

 .../devicetree/bindings/media/i2c/ov02a10.txt      |   43 +
 drivers/media/i2c/Kconfig                          |   12 +
 drivers/media/i2c/Makefile                         |    1 +
 drivers/media/i2c/ov02a10.c                        | 1067 ++++++++++++++++++++
 4 files changed, 1123 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt
 create mode 100644 drivers/media/i2c/ov02a10.c

-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
