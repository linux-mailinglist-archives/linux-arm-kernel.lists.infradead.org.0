Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDCD91B96
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 05:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ep4uMM2bzaAHvcwdf6iMDWaZQMbUuMcqNE56A4YQ1f8=; b=Jq5Iif1NYcPxEJ
	51IxAoAzbbpwwFLnCeb7WCqrPZKkOWoVKYWDgpuaC+qnAbD4hwC5g7CdFeCPKp7O//LLO8Qx8FEFL
	pHC8PcbZ9TaWLEKNQPco/DauvP7AjGizv9LD3yS67ADhO4Vd/KqgL4jTQYTInCNilobxcaiPC4Rod
	4Kt5SLgBmtyuCWPTqPdzmJ7vpyvNoatyaFyrZlv8INB8D3IVUF7YRCo3iHDCKZu2Q4A2+ZtfrYyPY
	fLveQsqztTuPVG1wbrwJqTAIZEg4iTFC/CLumq0yDps/Klm5tNPVC5UX7Y4ywB8typsMeV15SnQKv
	KHZAQ/NlFC8adpvzImFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzYbE-0001sg-3P; Mon, 19 Aug 2019 03:44:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzYaV-0001PE-37; Mon, 19 Aug 2019 03:44:08 +0000
X-UUID: de8bae8ddfa54b0994c7d66af9579f52-20190818
X-UUID: de8bae8ddfa54b0994c7d66af9579f52-20190818
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1565114613; Sun, 18 Aug 2019 19:43:56 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 18 Aug 2019 20:43:55 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 11:43:53 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 19 Aug 2019 11:43:52 +0800
From: <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <sakari.ailus@linux.intel.com>, <drinkcat@chromium.org>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <bingbu.cao@intel.com>
Subject: [V3, 0/2] media: Add support for OV02A10 sensor
Date: Mon, 19 Aug 2019 11:43:29 +0800
Message-ID: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_204407_132455_DFB5BCD5 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This patch adds driver and bindings for Omnivision's OV02A10 2 megapixel CMOS 1/5" sensor,
which has a single MIPI lane interface and output format of 10-bit Raw.

The driver is implemented wth V4L2 framework.
1. Async registered as a V4L2 I2C sub-device.
2. A media entity that can provide several source pads and sink pads to link with other device like Seninf, ISP one after another
   to create a default overall camera topology, image frame or meta-data from sensor can flow through particular path to output
   preview or capture image or 3A info.

Changes of v3 are mainly addressing comments from Rob, Sakari, Bingbu.
 - Fix coding style errors in dt-bindings
 - Use macro flag to describle basic line 1224 when updating v-blanking
 - Remove unnecessary debug log in driver

Mainly changes of v2 are addressing the comments from Nicolas, Bingbu, Sakari, Rob,
including,
 - Put dt binding before driver in series
 - Add MAINTAINERS entries
 - Squash the MAINTAINERS entry and Kconfig to driver patch
 - Add rotation support for driver
 - Fix other reviewed issues in v1

Dongchun Zhu (2):
  media: dt-bindings: media: i2c: Add bindings for OV02A10
  media: i2c: Add Omnivision OV02A10 camera sensor driver

 .../devicetree/bindings/media/i2c/ov02a10.txt      |   54 ++
 MAINTAINERS                                        |    8 +
 drivers/media/i2c/Kconfig                          |   11 +
 drivers/media/i2c/Makefile                         |    1 +
 drivers/media/i2c/ov02a10.c                        | 1018 ++++++++++++++++++++
 5 files changed, 1092 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt
 create mode 100644 drivers/media/i2c/ov02a10.c

-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
