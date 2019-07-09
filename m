Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7B763681
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=feodFw2sBAwr+kOOXSuoxBp3Peykmz8uytRVanpAikA=; b=b2LabXDtXW7dlO
	q8w+EM3GaqqdT7joeMpHqTy20zNxAJW6kEAOIMXUGBBgFoD52JrG058oY1CWuNGJfqr+yEtPk3Kvf
	O0mDtj15FpORr8pBfpZfR2sfEpTIQQXQH8p4YBOWUNReraRtzHZtO90arOIMEo38tGOJ52Zo/Y7yd
	UidsXaQhuWl2K5V3/WgMnJylV/kmlq177C1whF/eWvq2ymJPBp5xqYOIDVNIVpWdQzwNMI49SvV/0
	tGee7ZMqSih7q9sAOx8O9y8r9ClTUIwxIqMKUXhOeBKrLU7XqVj43YgA1a2Z+7SNj2+kz+z0vYrY0
	2UTo0H4bacwVgpcb8YOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpt6-00049H-P8; Tue, 09 Jul 2019 13:10:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpsX-0002mH-3C; Tue, 09 Jul 2019 13:09:54 +0000
X-UUID: 20412abf2791437ca2b97a01ef2c04a1-20190709
X-UUID: 20412abf2791437ca2b97a01ef2c04a1-20190709
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 974708136; Tue, 09 Jul 2019 05:09:47 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 06:09:46 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 21:09:44 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 21:09:44 +0800
From: Qii Wang <qii.wang@mediatek.com>
To: <bbrezillon@kernel.org>
Subject: [PATCH v3 0/2] Add MediaTek I3C master controller driver
Date: Tue, 9 Jul 2019 21:09:20 +0800
Message-ID: <1562677762-24067-1-git-send-email-qii.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_060953_138253_FDEB59F8 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, leilk.liu@mediatek.com, xinping.qian@mediatek.com,
 linux-kernel@vger.kernel.org, liguo.zhang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-i3c@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series are based on 5.2-rc1, we provide two patches to
support MediaTek I3C master controller.

Main changes compared to v2:
--modify the description of clock and interrupt in bindings
--use correct cells for I2C device in bindings

Main changes compared to v1:
--remove clock-div, let clock driver handle it
--let sample_cnt and step_cnt start from two

Qii Wang (2):
  dt-bindings: i3c: Document MediaTek I3C master bindings
  i3c: master: Add driver for MediaTek IP

 .../devicetree/bindings/i3c/mtk,i3c-master.txt     |   48 +
 drivers/i3c/master/Kconfig                         |   10 +
 drivers/i3c/master/Makefile                        |    1 +
 drivers/i3c/master/i3c-master-mtk.c                | 1239 ++++++++++++++++++++
 4 files changed, 1298 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
 create mode 100644 drivers/i3c/master/i3c-master-mtk.c

-- 
1.7.9.5

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
