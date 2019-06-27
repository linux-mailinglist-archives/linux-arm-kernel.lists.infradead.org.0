Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BE557D22
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 09:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnKRnGy3RxkGsQ2Pa7vEIodrmhimlkjPpMqVv2GUebc=; b=kY1PPxBk4Kzd43
	LkfdvDPri9nVmFoAIJiEgG8SKoW+/qnRB+7uBwflw30XCWnkQA9jViBMSefGcadpHuOpZRcf8oVT7
	VtGxjU7XlP22olAk75MNZXWyGGu7AAme6zjvRPuqQcwAur6inrQMAe0n0K60jjCvD4HTqFJ1HuA5Y
	lFbkvG2pm0PBYX1xg5DFMhNKIk7/NjYqBc37NKHQ3yshNQ76103e62tM3B06A58LPmPlo7T5HTduK
	mJeMn2dx1Aj8Dp5A5xlr5Hi7pTpycNzD2dvA5AR+6sTwroicqPe4CQaYc+RF5JkTqBk3M2r6GJG70
	AN4D2EijB2Ug4WNebcFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOnG-00081m-4D; Thu, 27 Jun 2019 07:26:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgOmz-00080i-2n; Thu, 27 Jun 2019 07:25:50 +0000
X-UUID: 6535ad019e8341bab7b5ff41e81c64a2-20190626
X-UUID: 6535ad019e8341bab7b5ff41e81c64a2-20190626
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1214892574; Wed, 26 Jun 2019 23:25:31 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Jun 2019 00:25:30 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 27 Jun 2019 15:25:27 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 27 Jun 2019 15:25:27 +0800
Message-ID: <1561620327.12217.27.camel@mhfsdcap03>
Subject: Re: [PATCH v2 1/2] dt-bindings: i3c: Document MediaTek I3C master
 bindings
From: Qii Wang <qii.wang@mediatek.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Date: Thu, 27 Jun 2019 15:25:27 +0800
In-Reply-To: <20190626182339.0c6301a2@collabora.com>
References: <1561527388-4829-1-git-send-email-qii.wang@mediatek.com>
 <1561527388-4829-2-git-send-email-qii.wang@mediatek.com>
 <20190626182339.0c6301a2@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_002549_133007_E5AE8E99 
X-CRM114-Status: GOOD (  19.67  )
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
 bbrezillon@kernel.org, leilk.liu@mediatek.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, liguo.zhang@mediatek.com,
 linux-mediatek@lists.infradead.org, xinping.qian@mediatek.com,
 matthias.bgg@gmail.com, linux-i3c@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-26 at 18:23 +0200, Boris Brezillon wrote:
> On Wed, 26 Jun 2019 13:36:27 +0800
> Qii Wang <qii.wang@mediatek.com> wrote:
> 
> > Document MediaTek I3C master DT bindings.
> > 
> > Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> > ---
> >  .../devicetree/bindings/i3c/mtk,i3c-master.txt     |   47 ++++++++++++++++++++
> >  1 file changed, 47 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt b/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> > new file mode 100644
> > index 0000000..3fd4f17
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> > @@ -0,0 +1,47 @@
> > +Bindings for MediaTek I3C master block
> > +=====================================
> > +
> > +Required properties:
> > +--------------------
> > +- compatible: shall be "mediatek,i3c-master"
> > +- reg: physical base address of the controller and apdma base, length of
> > +  memory mapped region.
> > +- reg-names: should be "main" for controller and "dma" for apdma.
> > +- interrupts: interrupt number to the cpu.
> 
> Depending on the interrupt controller, each interrupt cell might
> contain more than just the interrupt number.
> 

ok, I will modify it as "the interrupt line connected to this I3C
master"

> > +- clocks: clock name from clock manager.
> 
> This property does not contain clock names but clk references.
> 

ok, I will modify it as "shall reference the i3c and apdma clocks"

> > +- clock-names: must include "main" and "dma".
> > +
> > +Mandatory properties defined by the generic binding (see
> > +Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> > +
> > +- #address-cells: shall be set to 3
> > +- #size-cells: shall be set to 0
> > +
> > +Optional properties defined by the generic binding (see
> > +Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> > +
> > +- i2c-scl-hz
> > +- i3c-scl-hz
> > +
> > +I3C device connected on the bus follow the generic description (see
> > +Documentation/devicetree/bindings/i3c/i3c.txt for more details).
> > +
> > +Example:
> > +
> > +	i3c0: i3c@1100d000 {
> > +		compatible = "mediatek,i3c-master";
> > +		reg = <0x1100d000 0x100>,
> > +		      <0x11000300 0x80>;
> > +		reg-names = "main", "dma";
> > +		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_LOW>;
> > +		clocks = <&i3c0_ck>, <&ap_dma_ck>;
> > +		clock-names = "main", "dma";
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +		i2c-scl-hz = <100000>;
> > +
> > +		nunchuk: nunchuk@52 {
> > +			compatible = "nintendo,nunchuk";
> > +			reg = <0x52 0x80000010 0>;
> 
> reg is wrong here, should be
> 
> 			reg = <0x52 0x0 0x10>;
> 
> While at it, can you send a patch to fix the example in the cadence
> binding doc?
> 

ok, I will do it. Thanks for your review.

> > +		};
> > +	};
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
