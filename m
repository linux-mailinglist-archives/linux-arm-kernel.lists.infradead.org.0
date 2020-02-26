Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B705816F6E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 06:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=esoL6RGQErcXQCbEBwxY+GSVzVe47UTUVz/8pEjI5sk=; b=nieAGJTCX2IqFX
	Spnppjp8yByzLhZ0S/G0mudUR51GONujYteZKxYflMG2gtq2cxv5wvMZwHNplNd8W3rdAyCIigqJD
	WA1DRGfOOcAb3eqq70zB+RXuUVc/7EqtUxnN23IWTXm6se1YxbGnnqazrfVgF3DUEYLMRS8JVlWU0
	Qm6MaAYEo3oZl7Rz6kL5iDLmhfbbbHZ6i9Uor6rxIPmSo9XQdIUg+47bUh5LYBckK5dsezojRArcq
	NGUP8plwXq1HGoiDaqcHuocQjbQAXe7lQ8yNMy9JEIiRljbwHNcPU79J6EtEXDj7eZlPeuaiSu4wJ
	uru9LmGAiw9xGIx4apow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6p0n-0002n5-8E; Wed, 26 Feb 2020 05:13:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6p0d-0002mb-FC; Wed, 26 Feb 2020 05:13:25 +0000
X-UUID: 6c6e5381aa6a4fc58d4bb9d0c8965af0-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=nEHARF1NYyw5mdbN6rF7aICK/jenBfECNzSSvcS+Ztw=; 
 b=fnbKOOvYDgoYsdoejCFhalmhwXKR1To87CyFBMRetCkDT/MXvXrggnPbExmbueF5Q6BgTeH+kPLHiLH+SJ2e6y183r/xF0fWMpy2J1sN/KpYcKPrEZ8bNMTiUsRwlk/FVz6V/CGKUkzvqZJKi27fczYao820JsSVBfbapWNQ8IY=;
X-UUID: 6c6e5381aa6a4fc58d4bb9d0c8965af0-20200225
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1374859130; Tue, 25 Feb 2020 21:13:18 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 21:13:15 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 13:11:59 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 13:13:23 +0800
From: Ran Bi <ran.bi@mediatek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 0/4] Add Support for MediaTek MT2712 RTC
Date: Wed, 26 Feb 2020 13:12:59 +0800
Message-ID: <20200226051303.22560-1-ran.bi@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_211323_523059_87867910 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Flora
 Fu <flora.fu@mediatek.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, YT Shen <yt.shen@mediatek.com>,
 linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset add support to MT2712 RTC. MT2712 RTC is a SoC based RTC
with different architecture compared to MT7622 RTC.

Changes in V3:
1. change struct mt2712_rtc
2. use 100 as year offset
3. change irq handle thread
4. remove useless rtc time check
5. not modify struct rtc_time in set_time/set_alarm functions
6. modify rtc init function
7. add power lost flag for get_time/set_time functions
8. add .alarm_irq_enable callback
9. set rtc->range_min and rtc->range_max to do range checking
10. use fixed driver name

Changes in V2:
1. change minimum year from 1968 to 2000
2. fix lock usage
3. stop to calculate useless day of week
4. stop to set default date after init
5. change the prefix of functions
6. use devm_request_threaded_irq() to replace request_threaded_irq()
7. add mt2712 rtc related files into MAINTAINERS

Ran Bi (4):
  bindings: rtc: add bindings for MT2712 RTC
  rtc: add support for the MediaTek MT2712 RTC
  arm64: dts: add RTC nodes for MT2712
  MAINTAINERS: add MT2712 RTC files

 .../devicetree/bindings/rtc/rtc-mt2712.txt    |  14 +
 MAINTAINERS                                   |   2 +
 arch/arm64/boot/dts/mediatek/mt2712e.dtsi     |   6 +
 drivers/rtc/Kconfig                           |  10 +
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-mt2712.c                      | 422 ++++++++++++++++++
 6 files changed, 455 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt2712.txt
 create mode 100644 drivers/rtc/rtc-mt2712.c

-- 
2.25.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
