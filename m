Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFC5AEB1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 15:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lv+CfsjXRQyBolJ3pqAno2/uofOkPHp6/63Vk6R/kmg=; b=GEfh2YalLKaGmw
	/gPVQOMz171LvVL9yPio31MP4AjM4iEWBD2aINVevngGNXh2PfdbBQHCQg3CESsHLAWtO4iI2Evhh
	+CNcVwQdNR8YCvaytfXSOu/LKbqoqplCdJ81smeV5AAJ1mWLUwOVS4E1Lgj8OYrGyKoNmbq8QKIln
	p5t5jOiLLXgT3sh8e0spfXZVgFKRwkMoGqhGTwfjvi2clFk3NOw2yC/s5+uiQd9SK8omXJnRGR7Re
	5WdD8x7LFnKcAMa4djkeoUOMSEszObBBk0h26ydekhDN0tIoBxxf7bvas2nSFit6xmZF7ZSgC+8cI
	brRyp2eEeVlHilVmL1mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fqM-0000HP-3m; Tue, 10 Sep 2019 13:06:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fpS-0007bP-ER; Tue, 10 Sep 2019 13:05:07 +0000
X-UUID: 75e0eecd810644e38172d2ed3a16806e-20190910
X-UUID: 75e0eecd810644e38172d2ed3a16806e-20190910
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1411458494; Tue, 10 Sep 2019 05:05:03 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 06:05:02 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 21:04:48 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Sep 2019 21:04:47 +0800
From: <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [V2, 0/2] media: ov8856: DT bindings and sensor mode improvements
Date: Tue, 10 Sep 2019 21:04:44 +0800
Message-ID: <20190910130446.26413-1-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <media: ov8856: DT bindings and sensor mode improvements>
References: <media: ov8856: DT bindings and sensor mode improvements>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_060506_493698_9FF7D1C1 
X-CRM114-Status: UNSURE (   8.09  )
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

This series adds DT bindings and some more sensor modes for users to use.

From the latest ov8856 datasheet, it is proposed to adopt the resolution
of 1632*1224 and 3264*2448, together with Bayer Order of BGGR.
Thus here we try to provide two more scenarios.

In addition, the hardware revision of ov8856 is checked from one OTP SRAM register R700F.
PLL register R3614 requires to be correspondingly updated.
For instance, 0x20 is preferred for 1B module revision.

Mainly changes of v2 are addressing the comments from Sakari, Tomasz,
including,
 - Add clock-frequency and link-frequencies in DT
 - Re-define some macros like R3614, R3d84, n_shutdn
 - Rename OV8856_MCLK to OV8856_XVCLK per datasheet
 - Refine ov8856_update_otp_reg, ov8856_configure_regulators and ov8856_cal_delay
 - Set the bayer order in the mode struct, and directly links to register R3808, R3809
 - Remove or refine redundant log print
 - Fix other reviewed issues in v1

Dongchun Zhu (2):
  media: dt-bindings: media: i2c: Add bindings for ov8856
  media: i2c: Add more sensor modes for ov8856 camera sensor

 .../devicetree/bindings/media/i2c/ov8856.txt       |  51 ++
 MAINTAINERS                                        |   1 +
 drivers/media/i2c/ov8856.c                         | 654 ++++++++++++++++++++-
 3 files changed, 691 insertions(+), 15 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.txt

-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
