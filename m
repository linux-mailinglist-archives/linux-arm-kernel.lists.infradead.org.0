Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD01712B0EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 05:06:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byPKgIvbGG7kgBtpwe0zyIaVIRpZH1EvOlQXBVFaF2U=; b=JlxUokoHHaaFwG
	nirZR1/eZheHKuqDwlKX/giMd/kS2IK9edHOMEENTUnGNBF/3dXo4J1DLYPy1gPbyIuNC+TuXzmlO
	ZRc1n2s/v48Y/eKZTbq3G2rTCSpfHxNJfa/3/xwYE33CDh5ZM9cn8KLvdaC67HgIZaaRWzpfES6H7
	q845Na5+Wy5T4gQDD2MNCwDew88anFLkZdvcnwv5OdsKwsuMS/sKTsTE91ioGp2LhqpRfUagjZbCS
	Y8EmqeoaHuOhKOzDPmfet+PkRMYZzK1mSaV7m55CalSYg9R1wrQMVimrJ+Q3vWwO98MaUIsinaq1w
	kZgsMmxzvgAt9EodeUeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikgtW-0005Ml-NT; Fri, 27 Dec 2019 04:06:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikgt6-00055y-5B; Fri, 27 Dec 2019 04:06:10 +0000
X-UUID: bed09d255bba456a9dcdb0186b201fb7-20191226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=iVUBPxdAAmqV9kehzbTw6Znseih6f2Me+aVvtfsmplg=; 
 b=q39g+fsc6DWoiqAOrrJp0Ah4JWGFl0RMD9oXy5KPx47+ot+Y+6OnbqpmNKSlT50LN6wbSfg5cV5tUP41DrFXJuT/5zag65PCbpicTctG/sXHGf/0S99Fo5kHQuMXs5z7NcMU+pZZUyvfbsbWqtvijjFSuB7qmJY6JWwuydhbRzE=;
X-UUID: bed09d255bba456a9dcdb0186b201fb7-20191226
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1198962481; Thu, 26 Dec 2019 20:05:59 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Dec 2019 18:23:15 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 09:42:55 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 09:42:28 +0800
Message-ID: <1577411015.12599.0.camel@mtksdaap41>
Subject: Re: [PATCH v11 00/10] Mediatek MT8183 scpsys support
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 27 Dec 2019 09:43:35 +0800
In-Reply-To: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
References: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 414ECEE29448B676CBD7514817D06CBDD641650F67A9872F26187195874D08222000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_200608_230817_A23C34B6 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, James Liao <jamesjj.liao@mediatek.com>,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Sascha Hauer <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri, 2019-12-20 at 11:45 +0800, Weiyi Lu wrote:

Hi Matthias,
Just gentle ping. Many thanks.


> This series is based on v5.5-rc1
> 
> changes since v10:
> - squash PATCH 04 and PATCH 06 in v9 into its previous patch
> - add "ignore_clr_ack" for multiple step bus protection control to have a clean definition of power domain data
> - keep the mask register bit definitions and do the same for MT8183
> 
> changes since v9:
> - add new PATCH 04 and PATCH 06 to replace by new method for all compatibles
> - add new PATCH 07 to remove infracfg misc driver
> - minor coding sytle fix
> 
> changes since v7:
> - reword in binding document [PATCH 02/14]
> - fix error return checking bug in subsys clock control [PATCH 10/14]
> - add power domains properity to mfgcfg patch [PATCH 14/14] from
>   https://patchwork.kernel.org/patch/11126199/
> 
> changes since v6:
> - remove the patch of SPDX license identifier because it's already fixed
> 
> changes since v5:
> - fix documentation in [PATCH 04/14]
> - remove useless variable checking and reuse API of clock control in [PATCH 06/14]
> - coding style fix of bus protection control in [PATCH 08/14]
> - fix naming of new added data in [PATCH 09/14]
> - small refactor of multiple step bus protection control in [PATCH 10/14]
> 
> changes since v4:
> - add property to mt8183 smi-common
> - seperate refactor patches and new add function
> - add power controller device node
> 
> Weiyi Lu (10):
>   dt-bindings: mediatek: Add property to mt8183 smi-common
>   dt-bindings: soc: Add MT8183 power dt-bindings
>   soc: mediatek: Add basic_clk_name to scp_power_data
>   soc: mediatek: Add multiple step bus protection control
>   soc: mediatek: Remove infracfg misc driver support
>   soc: mediatek: Add subsys clock control for bus protection
>   soc: mediatek: Add extra sram control
>   soc: mediatek: Add MT8183 scpsys support
>   arm64: dts: Add power controller device node of MT8183
>   arm64: dts: Add power-domains properity to mfgcfg
> 
>  .../memory-controllers/mediatek,smi-common.txt     |   2 +-
>  .../devicetree/bindings/soc/mediatek/scpsys.txt    |  20 +-
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi           |  63 +++
>  drivers/soc/mediatek/Kconfig                       |  10 -
>  drivers/soc/mediatek/Makefile                      |   3 +-
>  drivers/soc/mediatek/mtk-infracfg.c                |  79 ---
>  drivers/soc/mediatek/mtk-scpsys-ext.c              | 101 ++++
>  drivers/soc/mediatek/mtk-scpsys.c                  | 578 +++++++++++++++------
>  drivers/soc/mediatek/scpsys-ext.h                  |  95 ++++
>  include/dt-bindings/power/mt8183-power.h           |  26 +
>  include/linux/soc/mediatek/infracfg.h              |  39 --
>  11 files changed, 736 insertions(+), 280 deletions(-)
>  delete mode 100644 drivers/soc/mediatek/mtk-infracfg.c
>  create mode 100644 drivers/soc/mediatek/mtk-scpsys-ext.c
>  create mode 100644 drivers/soc/mediatek/scpsys-ext.h
>  create mode 100644 include/dt-bindings/power/mt8183-power.h
>  delete mode 100644 include/linux/soc/mediatek/infracfg.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
