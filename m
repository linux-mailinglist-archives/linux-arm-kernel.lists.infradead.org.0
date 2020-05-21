Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B6D1DC965
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 11:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cqH8Vllq9MeIK86XdC+CAGruE76CCkpykf43wIHwiGs=; b=t8o6WWHhiLDRi5
	l7cFbzqmUgLpxFq+gDq5WfYD6j/Wss94L9WgKW7wef8kSWtylEzX8JtiumovKjFAZ9voavBT4dRSE
	mGkSHh3GdNvEIn10vID8TS87Rq1pQHkPINpT1Roj2x9izxYGOcxqRTNrCOyQIOhKWLNNZjre0Zwu9
	hKlympgl7s+TamC9/5mpWoA5yy3nOSGybXBQTqCfjwoN/wVh1cGYOR5SXhZXENyjdXMx3Iz5x8OVm
	998mF/T4IxZePRCpSW8NCdEutu9pFZ13YRCY5TMFrBzdKQWk6qrHOBPUjsEwJ8Yq0VZJ+IAhDF1Pm
	jgxxhzULj1uzWotLnkfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhAz-0003dj-55; Thu, 21 May 2020 09:07:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhAI-00038T-MZ; Thu, 21 May 2020 09:07:01 +0000
X-UUID: c832d5ba6eaa43489dfdd5c3c5614446-20200521
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=7jb495E0gp5iA5G5xPrOIXGz/+nrJXvmp3hVaXHcEPo=; 
 b=dJBKlaQn9u46rf0zS38olBIDCfeky4gS1I33DWJ4jT57u1mQjphMELKdX/BBBjgnmKlIj7xUAHy2AjOgL5SNWDxnoMiKUYUvZoOY4PQPHpqsyb4/vFCJMs6xOS29xvXa7eBHdcOcxAYhHeSO2051DY55iajYaaCY5pCYkMwVj3Q=;
X-UUID: c832d5ba6eaa43489dfdd5c3c5614446-20200521
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1885240385; Thu, 21 May 2020 01:06:54 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 02:06:30 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 17:06:28 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 21 May 2020 17:06:28 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Nicolas Boichat <drinkcat@chromium.org>, "Rob
 Herring" <robh@kernel.org>, Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v15 00/11] Mediatek MT8183 scpsys support  
Date: Thu, 21 May 2020 17:06:13 +0800
Message-ID: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_020658_764457_D9FFDA8D 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is based on v5.7-rc1

changes since v14:
- fix commit message typo
- use property name "mediatek,smi" for smi phandle

changes since v13:
- document optional property "smi-comm"
- move defines in scpsyc.h to mtk-scpsys.c directly
- minor coding sytle fixes

change since v12:
- separate the fix of comma at the end into a new patch [PATCH 09/11]

changes since v11:
- re-order patches "Remove infracfg misc driver support" and "Add multiple step bus protection"
- add cap MTK_SCPD_SRAM_ISO for extra sram control
- minor coding sytle fixes and reword commit messages

changes since v10:
- squash PATCH 04 and PATCH 06 in v9 into its previous patch
- add "ignore_clr_ack" for multiple step bus protection control to have a clean definition of power domain data
- keep the mask register bit definitions and do the same for MT8183

changes since v9:
- add new PATCH 04 and PATCH 06 to replace by new method for all compatibles
- add new PATCH 07 to remove infracfg misc driver
- minor coding sytle fix

changes since v7:
- reword in binding document [PATCH 02/14]
- fix error return checking bug in subsys clock control [PATCH 10/14]
- add power domains properity to mfgcfg patch [PATCH 14/14] from
  https://patchwork.kernel.org/patch/11126199/

changes since v6:
- remove the patch of SPDX license identifier because it's already fixed

changes since v5:
- fix documentation in [PATCH 04/14]
- remove useless variable checking and reuse API of clock control in [PATCH 06/14]
- coding style fix of bus protection control in [PATCH 08/14]
- fix naming of new added data in [PATCH 09/14]
- small refactor of multiple step bus protection control in [PATCH 10/14]

changes since v4:
- add property to mt8183 smi-common
- seperate refactor patches and new add function
- add power controller device node


Weiyi Lu (11):
  dt-bindings: mediatek: Add property to mt8183 smi-common
  dt-bindings: soc: Add MT8183 power dt-bindings
  soc: mediatek: Add basic_clk_name to scp_power_data
  soc: mediatek: Remove infracfg misc driver support
  soc: mediatek: Add multiple step bus protection control
  soc: mediatek: Add subsys clock control for bus protection
  soc: mediatek: Add extra sram control
  soc: mediatek: Add MT8183 scpsys support
  soc: mediatek: Add a comma at the end
  arm64: dts: Add power controller device node of MT8183
  arm64: dts: Add power-domains property to mfgcfg

 .../mediatek,smi-common.txt                   |   2 +-
 .../bindings/soc/mediatek/scpsys.txt          |  21 +-
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      |  63 ++
 drivers/soc/mediatek/Kconfig                  |  10 -
 drivers/soc/mediatek/Makefile                 |   1 -
 drivers/soc/mediatek/mtk-infracfg.c           |  79 --
 drivers/soc/mediatek/mtk-scpsys.c             | 706 ++++++++++++++----
 include/dt-bindings/power/mt8183-power.h      |  26 +
 include/linux/soc/mediatek/infracfg.h         |  39 -
 9 files changed, 672 insertions(+), 275 deletions(-)
 delete mode 100644 drivers/soc/mediatek/mtk-infracfg.c
 create mode 100644 include/dt-bindings/power/mt8183-power.h
 delete mode 100644 include/linux/soc/mediatek/infracfg.h
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
