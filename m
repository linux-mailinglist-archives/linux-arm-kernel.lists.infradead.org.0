Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E8B61CC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 12:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CeCnM/ykN698RKCbc/c7AArn3PzSaIeq/VFIogmNALo=; b=U8aWexQimlbqNI
	3fSg+D2nJu19sjUcjdEIxMsJfKvjfLEHgJKr+OFett8JPFX7voTwVWaeJYJa8N8ne10/J5wLmMzMZ
	MQaGrW/5lLLcYC9mmJMaB0wdUtKeXxxNaL9qm/K7c8VTpX44WpnAEj+N7w9V76dtOUDI2CYdhIhbv
	WNcmAnPmdqH41wBID0UuF2G/rhSDF2MZrQRne+u+ONLa0EIhyGCjD+tKvjcYSXxrTe0BKY4SDsw0S
	2Gz5h2y5Pp4Ra6HmkrLiGe9B7u1V+BptJQTTYt0XeyV1doMYaQkzIUodhjw/cRZ6iYz5LSzvzHdCa
	v3+QVzsyKJ0K+i1UxZTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkQdN-0007QQ-5P; Mon, 08 Jul 2019 10:12:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkQcv-0007Oo-C8; Mon, 08 Jul 2019 10:12:07 +0000
X-UUID: 96599951e7fe47be8fe58275256019af-20190708
X-UUID: 96599951e7fe47be8fe58275256019af-20190708
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1464616109; Mon, 08 Jul 2019 02:11:56 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 03:11:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 18:11:53 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 8 Jul 2019 18:11:52 +0800
From: <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <matthias.bgg@gmail.com>, <sakari.ailus@linux.intel.com>,
 <tfiga@chromium.org>, <bingbu.cao@intel.com>
Subject: [PATCH 0/2] media: add support for DW9768 VCM driver
Date: Mon, 8 Jul 2019 18:06:39 +0800
Message-ID: <20190708100641.2702-1-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_031205_419410_D2E510F1 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

Add a v4l2 sub-device driver for Dongwoon's DW9768 lens voice coil.
This is a voice coil module using the i2c bus to control the focus position.

The DW9768 can control the position with 10 bits value and
consists of two 8 bit registers show as below:
register 0x04(DW9768_REG_POSITION):
    +---+---+---+---+---+---+---+---+
    |D07|D06|D05|D04|D03|D02|D01|D00|
    +---+---+---+---+---+---+---+---+
register 0x03:
    +---+---+---+---+---+---+---+---+
    |---|---|---|---|---|---|D09|D08|
    +---+---+---+---+---+---+---+---+

This driver support :
 - set DW9768 to standby mode once suspend and turn it back to active if resume
 - set the position via V4L2_CID_FOCUS_ABSOLUTE ctrl

Dongchun Zhu (2):
  media: i2c: dw9768: Add DT support and MAINTAINERS entry
  media: i2c: dw9768: Add DW9768 VCM driver

 .../bindings/media/i2c/dongwoon,dw9768.txt         |   9 +
 MAINTAINERS                                        |   8 +
 drivers/media/i2c/Kconfig                          |  10 +
 drivers/media/i2c/Makefile                         |   1 +
 drivers/media/i2c/dw9768.c                         | 458 +++++++++++++++++++++
 5 files changed, 486 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
 create mode 100644 drivers/media/i2c/dw9768.c

-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
