Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1627DA7843
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 03:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/Ww7PTzrhjIV3Io2yCAzM9qzoDUEy2Ez0hjtGaELmE=; b=Hoqv62NA4vyIdz
	SmjjTdKhYzW0qcK/4Na7VfCzl5ITq66HtOjgRx0BPK+bfuEjm8BGBdzw4lALD2bO3LYZVQEf2QBZB
	PjTSoMkhnKZpogEiERpuhLefZy2MgzcOV5imFNrVyzYKdAOmzm0rtmRO/hD2QzmDford1yPaKWodv
	b6BU8D3GDvyi+VZ5FYi/npmyHBLkNxoP9uX99O1dl7OToYHqh/t2pyBj27WAbKj5Q+lyiCOUHTlvx
	E/y+6tzKRticoa7xEw16eKk+emfFL+YcXCaPbmlQuQG75hlZGuiOJ9Y2TrQ7ItiNwoQMpKeAImi9w
	kUzhv8mIPtDuJDtpzPLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5KVW-00016m-1U; Wed, 04 Sep 2019 01:54:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5KVJ-00015w-1j; Wed, 04 Sep 2019 01:54:39 +0000
X-UUID: c006510b69f44041bf35ea8a18f38636-20190903
X-UUID: c006510b69f44041bf35ea8a18f38636-20190903
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1196118531; Tue, 03 Sep 2019 17:54:31 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 18:54:30 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32N2.mediatek.inc
 (172.27.4.72) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 4 Sep 2019 09:54:27 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Sep 2019 09:54:26 +0800
Message-ID: <1567562067.7317.52.camel@mhfsdcap03>
Subject: Re: [PATCH v3 0/7]  add support USB for MT8183
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed, 4 Sep 2019 09:54:27 +0800
In-Reply-To: <1567150854-30033-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1567150854-30033-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F991245A4BC6770D93164A2C1C559180A8AF081783FD3FC646A068AD51059FF02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_185437_096156_B76E6570 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,


  Please don't try to pick up this series, the dependent ones are still
under public review, I'll fix build warning and send out new version
after the dependent ones are applied
  Sorry for inconvenience

Thanks

On Fri, 2019-08-30 at 15:40 +0800, Chunfeng Yun wrote:
> This series support USB DRD controller and enable it's remote
> wakeup functoin for MT8183, they depend on the following
> series patches:
> 
> 1. this series add support MT6358 PMIC
>   [v5,01/10] mfd: mt6397: clean up code
>   https://patchwork.kernel.org/patch/11110487/
> 
> 2. this series add support pericfg syscon
>   [v2,1/2] dt-bindings: clock: mediatek: add pericfg for MT8183
>   https://patchwork.kernel.org/patch/11118183/
> 
> 3. add property mediatek,discth for tphy
>   [06/11] phy: phy-mtk-tphy: add a property for disconnect threshold
>   https://patchwork.kernel.org/patch/11110695/
> 
> v3 changes:
>   1. changes micros define
>   2. remove #reset-cell
>   3. update dependent series
> 
> v2 changes:
>   add patch [7/7]
> 
> Chunfeng Yun (7):
>   dt-bindings: usb: mtu3: support USB wakeup for MT8183
>   dt-bindings: usb: mtk-xhci: support USB wakeup for MT8183
>   usb: mtu3: support ip-sleep wakeup for MT8183
>   usb: mtk-xhci: support ip-sleep wakeup for MT8183
>   arm64: dts: mt8183: add usb and phy nodes
>   arm64: dts: mt8183: enable USB remote wakeup
>   arm64: dts: mt8183: tune disconnect threshold of u2phy
> 
>  .../bindings/usb/mediatek,mtk-xhci.txt        |  1 +
>  .../devicetree/bindings/usb/mediatek,mtu3.txt |  1 +
>  arch/arm64/boot/dts/mediatek/mt8183-evb.dts   | 23 +++++++
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 63 +++++++++++++++++++
>  drivers/usb/host/xhci-mtk.c                   | 14 ++++-
>  drivers/usb/mtu3/mtu3_host.c                  | 14 ++++-
>  6 files changed, 114 insertions(+), 2 deletions(-)
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
