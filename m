Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265BFC0372
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 12:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BoB8rGH1sBJFk7+gx346wjHG3yp10XLjtvF6FYDV7GM=; b=BGBY4Icqx+gbc0
	Pm9wcNgX+wVz4m+Cz5/5tbsSFt9oWtluBAIZOHhLdZH+ldQjOHH1YXyjYxboBgmI0rw3YXnXM3aaW
	INjc6GYeDJUayTZyuWHzt8ClCRUnd1tOPZgiT1wCWewR7ZEDtQpKImtcHg0lPncTgwV+hiETn2RY7
	X29lfPFODgxX268dugw2gcYjusDvXQ5yc8GFfTUYn3UODLdZCpOuWODcURSypGkqJyEyI8bav/7vj
	Z+CniTz2Z8EM2ptn5q2SwSSrEv7iAroUFSvVW/gTBrVguCqZ7JQOR2Vy9c2YTCblt2a1IgsrazBMN
	KbuAThe9A8MdYGRgalxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDnYI-0002bB-IF; Fri, 27 Sep 2019 10:32:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDnXj-0002L6-Kc; Fri, 27 Sep 2019 10:32:09 +0000
X-UUID: c9f4c8e5ad3743e3aa6bd0657e403502-20190927
X-UUID: c9f4c8e5ad3743e3aa6bd0657e403502-20190927
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1774688595; Fri, 27 Sep 2019 02:32:01 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 03:32:00 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 18:31:58 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Sep 2019 18:31:57 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>, <mark.rutland@arm.com>, <robh+dt@kernel.org>,
 <linux@roeck-us.net>, <wim@linux-watchdog.org>
Subject: [PATCH v2 0/4] ASoC: mt8183: fix audio playback slowly after playback
Date: Fri, 27 Sep 2019 18:31:53 +0800
Message-ID: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9EC9B41ACD81D96D4657B1B000FF35A2B3D68B95758CA29C6DC62AD7B037718E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_033208_026629_DDB2066B 
X-CRM114-Status: UNSURE (   6.79  )
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
Cc: alsa-devel@alsa-project.org, yong.liang@mediatek.com, lgirdwood@gmail.com,
 jiaxin.yu@mediatek.com, perex@perex.cz, tzungbi@google.com,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series patches add reset controller for MT8183, and audio will use it in 
machine driver during bootup, they depend on the following patch:

1. this series add support reset-controller in infra
	[v5,2/2] clk: reset: Modify reset-controller driver
	https://patchwork.kernel.org/patch/11060419/

v2 changes:
	1. remove "WIP" that in the title of patches
	2. add hyper link for the patch that depends on

Jiaxin Yu (2):
  dt-bindings: medaitek: mt8183: add property "resets" && "reset-names"
  ASoC: mt8183: fix audio playback slowly after playback during bootup

yong.liang (2):
  dt-bindings: mediatek: mt8183: Add #reset-cells
  watchdog: mtk_wdt: mt8183: Add reset controller

 .../bindings/sound/mt8183-afe-pcm.txt         |   6 +
 .../devicetree/bindings/watchdog/mtk-wdt.txt  |   9 +-
 drivers/watchdog/Kconfig                      |   1 +
 drivers/watchdog/mtk_wdt.c                    | 110 +++++++++++++++++-
 .../reset-controller/mt8183-resets.h          |  13 +++
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c    |  15 +++
 6 files changed, 150 insertions(+), 4 deletions(-)

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
