Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D1E1E568A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 07:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dInS54BDcHz/ZPhaYfj7qEHOfR+J0Uq+gz1UL7LVYvY=; b=dZabIK+cfzIcpS
	jeralq/K7F28gLEbHzSEVOqVFRuAqsTgHi4Izj1pIZbBagPhNfaQ1zurZA77u87NQKQT7h4NXsBNe
	LkwOXefBrxgz/bFf1MlPAlbno413YhAcrPYK1zsu3djJfbLGz7VPeWPbYrGOyprCYSFjtIqg5uJiQ
	bJ+GdAEGkbC8dDOax3wmM7MkkEE2z0KJ+6rxEllpK9ENfzujt+hXEOjOQMqNqf+9vo2g1CKXbIPnB
	P+RqSe+v2NZQWUKGS/0FfC412PJFVKIs8KqKjEQZBjuUeN9QN0fvSNRS5S5HiQaHy18XMPiHz+kHC
	u78JcF7AAtRItCOQd/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeBBB-0003yS-Tn; Thu, 28 May 2020 05:34:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeBAy-0003x4-Ez; Thu, 28 May 2020 05:33:58 +0000
X-UUID: 494c48b896af4683b2544a6202130b82-20200527
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=k7l/1KKuS0PneqLC5ScPqQVqzmBSRYn81UVCXQrZrRU=; 
 b=di6cUFjdgiFD6josK149H5BbvLXaxiCIi1CCbEjMH2BTqaHNDMRT6Vb8/sfKS8q6hViLYeGnZhIUvpKbSrUL/YJyblNomxD7+AUexvOkTtQl5SvjPmJO7oqSFErJ60FP/FNYDDWA5/hMlPDqXAqZgPqgh8G5YQY432ild8InoHY=;
X-UUID: 494c48b896af4683b2544a6202130b82-20200527
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2129993462; Wed, 27 May 2020 21:33:52 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 27 May 2020 22:33:43 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 13:33:46 +0800
Received: from localhost.localdomain (10.15.43.140) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 28 May 2020 13:33:45 +0800
From: Fengping Yu <fengping.yu@mediatek.com>
To: Yingjoe Chen <yingjoe.chen@mediatek.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v10] Add matrix keypad driver support for Mediatek SoCs 
Date: Thu, 28 May 2020 13:33:41 +0800
Message-ID: <20200528053344.25936-1-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_223356_509908_DA2C3A10 
X-CRM114-Status: UNSURE (   6.70  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Change since v9:
- modify KEYBOARD_MTK_KPD config dependent item
- remove wakeup member of mtk_keypad struct
- remove default pinctrl state set
- modify request irq failed return value
- add space of kepad matching table
- modify align issue

fengping.yu (3):
  dt-bindings: Add keypad devicetree documentation
  drivers: input: keyboard: Add mtk keypad driver
  configs: defconfig: Add CONFIG_KEYBOARD_MTK_KPD=m

 .../devicetree/bindings/input/mtk-kpd.yaml    |  95 +++++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/input/keyboard/Kconfig                |  11 +
 drivers/input/keyboard/Makefile               |   1 +
 drivers/input/keyboard/mtk-kpd.c              | 201 ++++++++++++++++++
 5 files changed, 309 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.yaml
 create mode 100644 drivers/input/keyboard/mtk-kpd.c

-- 
2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
