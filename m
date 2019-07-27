Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AED3777DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 11:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mtTDZOzcYNq1Y8xdUd9OCe0IoAJphuV8GmJxWovWQc=; b=YLQ0JsxJPxQsCV
	jfftTX5pNuBhI1JxmF4qgpwvcJgOgoNdWtLX8CCJgBACWlxcRLZiLqHNMcAKFtapO3WCdd/2izzBM
	rvQjU4PqtzswIkElmqgm+SJmpftIz3GEwx2zgGThgSMuI1HfTwax+HfcuyXXi+WYU5ik2zAZ/ENGZ
	DdmZEz+6+qbraIRAbvktQGaTIe6VpPc5DRZTdU0JeYl9xuaVuct3OAQeYBybzi2Lk0d+wWjbtguRG
	rb+CuF9CEbBuclNBzVvoqVCn9E2j0MfzFjBr7+Rb3Ga/ZHFz2wyFbq7h2uVwH3KYIDI8cTltow+Dx
	VGJRE6HSyZ3zSmO3nNNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrIsA-0004oP-5u; Sat, 27 Jul 2019 09:20:15 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrIr7-0004n3-LW; Sat, 27 Jul 2019 09:19:12 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6A01527DC68;
 Sat, 27 Jul 2019 10:19:03 +0100 (BST)
Date: Sat, 27 Jul 2019 11:18:59 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: i3c: Document MediaTek I3C master
 bindings
Message-ID: <20190727111859.315994c3@collabora.com>
In-Reply-To: <1564190613.24702.11.camel@mhfsdcap03>
References: <1562677762-24067-1-git-send-email-qii.wang@mediatek.com>
 <1562677762-24067-2-git-send-email-qii.wang@mediatek.com>
 <20190724202119.GA26566@bogus>
 <1564190613.24702.11.camel@mhfsdcap03>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_021910_003741_11FBE749 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 leilk.liu@mediatek.com, bbrezillon@kernel.org, linux-kernel@vger.kernel.org,
 liguo.zhang@mediatek.com, linux-mediatek@lists.infradead.org,
 xinping.qian@mediatek.com, matthias.bgg@gmail.com,
 linux-i3c@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 27 Jul 2019 09:23:33 +0800
Qii Wang <qii.wang@mediatek.com> wrote:

> On Wed, 2019-07-24 at 14:21 -0600, Rob Herring wrote:
> > On Tue, Jul 09, 2019 at 09:09:21PM +0800, Qii Wang wrote:  
> > > Document MediaTek I3C master DT bindings.
> > > 
> > > Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> > > ---
> > >  .../devicetree/bindings/i3c/mtk,i3c-master.txt     |   48 ++++++++++++++++++++
> > >  1 file changed, 48 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> > > 
> > > diff --git a/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt b/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> > > new file mode 100644
> > > index 0000000..d32eda6
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> > > @@ -0,0 +1,48 @@
> > > +Bindings for MediaTek I3C master block
> > > +=====================================
> > > +
> > > +Required properties:
> > > +--------------------
> > > +- compatible: shall be "mediatek,i3c-master"  
> > 
> > Needs to be SoC specific.
> >   
> 
> We hope that the SOCs will use the same driver and try to avoid big
> changes. If there are inevitable changes in the future, then we will
> modify the compatible to be SoC specific. cdns,i3c-master.txt is not SoC
> specific either.

The cadence case is a bit different I think. When the driver was
developed there was no SoC integrating this IP. I guess Mediatek knows
already which SoC(s) will embed the I3C master block.

> 
> > > +- reg: physical base address of the controller and apdma base, length of
> > > +  memory mapped region.
> > > +- reg-names: shall be "main" for master controller and "dma" for apdma.
> > > +- interrupts: the interrupt line connected to this I3C master.
> > > +- clocks: shall reference the i3c and apdma clocks.
> > > +- clock-names: shall include "main" and "dma".
> > > +
> > > +Mandatory properties defined by the generic binding (see
> > > +Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> > > +
> > > +- #address-cells: shall be set to 3
> > > +- #size-cells: shall be set to 0
> > > +
> > > +Optional properties defined by the generic binding (see
> > > +Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> > > +
> > > +- i2c-scl-hz
> > > +- i3c-scl-hz
> > > +
> > > +I3C device connected on the bus follow the generic description (see
> > > +Documentation/devicetree/bindings/i3c/i3c.txt for more details).
> > > +
> > > +Example:
> > > +
> > > +	i3c0: i3c@1100d000 {
> > > +		compatible = "mediatek,i3c-master";
> > > +		reg = <0x1100d000 0x1000>,
> > > +		      <0x11000300 0x80>;
> > > +		reg-names = "main", "dma";
> > > +		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_LOW>;
> > > +		clocks = <&infracfg CLK_INFRA_I3C0>,
> > > +			 <&infracfg CLK_INFRA_AP_DMA>;
> > > +		clock-names = "main", "dma";
> > > +		#address-cells = <3>;
> > > +		#size-cells = <0>;
> > > +		i2c-scl-hz = <100000>;
> > > +
> > > +		nunchuk: nunchuk@52 {
> > > +			compatible = "nintendo,nunchuk";
> > > +			reg = <0x52 0x0 0x10>;
> > > +		};
> > > +	};
> > > -- 
> > > 1.7.9.5
> > >   
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
