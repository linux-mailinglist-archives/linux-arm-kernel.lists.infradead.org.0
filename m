Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B62A9BAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y3SligDPC0bofFTDIbvZzYhXrvgVOKuVtn01liCac6Y=; b=djMfrHnDV0MMsp
	HSnzNqvaBom2GJwmqlf0wPW49GAkMn39VeXg00yj6k/WdOad3rjn//3Q/JBNwo2CLs1qE0E6k1nMu
	nN5EpB+hR86rYLyzwUXdn2xNbrDE8LJ9/Va2NojGbjAtCtEmNKrUFxUVMpJq1mV1QygYB+VI7iwmx
	A6Vc8PHDalgR6mqQSTS/ht+lzaO6iiv12084oQeB4fstyAURqKfYPRmEmaVBOaXiMzQxny3V+gMHm
	/vC89FuPeSfJJdwCc8V/oXoy64lRf4Q9oYS0hzqbEkVNT5b+j7sGDGqoXd71YOwfD+RDbjGUs+D3i
	5och89s39VS2rLmZQjSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5m6G-00026d-Uv; Thu, 05 Sep 2019 07:22:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5m5i-0001pG-63; Thu, 05 Sep 2019 07:22:03 +0000
X-UUID: fb99889b985e4c598737398ac79eb3d4-20190904
X-UUID: fb99889b985e4c598737398ac79eb3d4-20190904
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1271784923; Wed, 04 Sep 2019 23:21:50 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 00:21:48 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 15:21:47 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 15:21:46 +0800
From: <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [V2, 0/2] media: i2c: add support for DW9768 VCM driver
Date: Thu, 5 Sep 2019 15:21:40 +0800
Message-ID: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_002202_230768_6704779E 
X-CRM114-Status: UNSURE (   8.02  )
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
 sam.hung@mediatek.com, linux-arm-kernel@lists.infradead.org,
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
consists of two 8 bit registers show as below.
register 0x04(DW9768_REG_POSITION):
     +---+---+---+---+---+---+---+---+
     |D07|D06|D05|D04|D03|D02|D01|D00|
     +---+---+---+---+---+---+---+---+
register 0x03:
     +---+---+---+---+---+---+---+---+
     |---|---|---|---|---|---|D09|D08|
     +---+---+---+---+---+---+---+---+

This driver supports:
 - set DW9768 to standby mode once suspend and turn it back to active if resume
 - set the position via V4L2_CID_FOCUS_ABSOLUTE ctrl

Mainly changes of v2 are addressing the comments from Tomasz, Bingbu, Andy,
including,
 - Use i2c_smbus_write_byte_data/i2c_smbus_write_block_data to write I2C register
 - Adopt the runtime PM suspend/resume callbacks to powering off/on
 - Check the PM runtime status before powering off in dw9768_remove function
 - Add one more regulator vin for the I2C interface
 - Remove or refine redundant log print
 - Fix other reviewed issues in v1

Dongchun Zhu (2):
  media: i2c: dw9768: Add DT support and MAINTAINERS entry
  media: i2c: Add DW9768 VCM driver

 .../bindings/media/i2c/dongwoon,dw9768.txt         |   9 +
 MAINTAINERS                                        |   8 +
 drivers/media/i2c/Kconfig                          |  10 +
 drivers/media/i2c/Makefile                         |   1 +
 drivers/media/i2c/dw9768.c                         | 349 +++++++++++++++++++++
 5 files changed, 377 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
 create mode 100644 drivers/media/i2c/dw9768.c

-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
