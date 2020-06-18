Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31621FE98F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 05:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8ZzIMhBLjFTlLcGrGOIeT/xUoc5Ni90Yxx9wzhqgfo=; b=kt3iO/JS7906dx
	D3woavDiQFSRlTpQ4/74rKuBhDi0k8mXwE4GC+G6IthMYlEmQkyub6oTSP1c3CQ3VvriGnV594Lou
	6L/7lSafQA1WTgsL0t6Fd9nGCHbnhcF7xRxFWBVy+xxgxzLAhZHK00f7efK2AR1b2mmp892rtuzD8
	fGyDOC7N3RAx+ARtmmNDcyhMiNO7xbBL0Eczw88XqQK97yA0SEdordztM7k0d7+pyRrHvBONZy7+E
	KPfGA3K0Zn5KzFop4cxdTW+MQ2D2mJw717Pd/gyeZJkNb+q0SNToTid1uR0yH+iP5hRV2kJi/jM9d
	6FzlCmCusNg10Kt1RCEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jllSG-0002dz-QT; Thu, 18 Jun 2020 03:43:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jllS5-0002c4-UL; Thu, 18 Jun 2020 03:42:59 +0000
X-UUID: f028bdd505e34a80973fcb25899d2a27-20200617
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=i4jSTDSTh0GaOSOIPc+y2DdxkaaCQiUZ9e4P/5TV8Tc=; 
 b=uwL64kzbKtCqafMZJaBJO8Dg+HDeUyDHDTrUpi6lT6q0IVvr9OXI2lFFS+87Ms+NfaOvfTD6ZIS0l4p90+mQv8+bKJrxXYuHg/3fTcT0eYmJ1DoeRgU7VcxLDxThlK/r6K3Sii1s9H4FZ3p4wBfGeEr4rwPYNm2enP7Tz4tuwkI=;
X-UUID: f028bdd505e34a80973fcb25899d2a27-20200617
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1946055112; Wed, 17 Jun 2020 19:42:49 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 20:42:49 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 18 Jun 2020 11:42:47 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 18 Jun 2020 11:42:45 +0800
Message-ID: <1592451616.15355.25.camel@mhfsdcap03>
Subject: Re: [PATCH v8 11/14] media: dt-bindings: Add jpeg enc device tree
 node document
From: Xia Jiang <xia.jiang@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 18 Jun 2020 11:40:16 +0800
In-Reply-To: <20200521160046.GJ209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-12-xia.jiang@mediatek.com>
 <20200521160046.GJ209565@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E100C0680B0A813F09A9DC10EAB829B13E2B394890EB73037F1C971D096F1A762000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_204257_981281_AE2E2B3A 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, yong.wu@mediatek.com,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-21 at 16:00 +0000, Tomasz Figa wrote:
> Hi Xia,
> 
> On Fri, Apr 03, 2020 at 05:40:30PM +0800, Xia Jiang wrote:
> > Add jpeg enc device tree node document
> > 
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > ---
> > v8: no changes
> > 
> > v7: no changes
> > 
> > v6: no changes
> > 
> > v5: no changes
> > 
> > v4: no changes
> > 
> > v3: change compatible to SoC specific compatible
> > 
> > v2: no changes
> > ---
> >  .../bindings/media/mediatek-jpeg-encoder.txt  | 37 +++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> > 
> 
> Thank you for the patch. Please see my comments inline.
Dear Tomasz,

Sorry for missing this message. Replied below.
> 
> > diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> > new file mode 100644
> > index 000000000000..fa8da699493b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> > @@ -0,0 +1,37 @@
> > +* MediaTek JPEG Encoder
> > +
> > +MediaTek JPEG Encoder is the JPEG encode hardware present in MediaTek SoCs
> > +
> > +Required properties:
> > +- compatible : should be one of:
> > +               "mediatek,mt2701-jpgenc"
> > +               ...
> 
> What does this "..." mean?
"..." means that compatible name is not just "mediatek,mt2701-jpgenc",
different project has different compatible name(for example the MT8173's
compatible name may be "mediatek,mt8173-jpgenc").
> 
> > +               followed by "mediatek,mtk-jpgenc"
> > +- reg : physical base address of the JPEG encoder registers and length of
> > +  memory mapped region.
> > +- interrupts : interrupt number to the interrupt controller.
> > +- clocks: device clocks, see
> > +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> > +- clock-names: must contain "jpgenc". It is the clock of JPEG encoder.
> 
> nit: In principle the clocks should be named after the function the clock
> performs on the consumer side, i.e. the JPEG block in this case, I guess
> here it's just a generic clock that does everything, but I guess it comes
> from somewhere. Is it the AHB clock or something? In that case it would
> normally be called "ahb".
I have confirmed with hardware designer that the jpeg clock is not AHB
clock,it follows subsys clock(because 2701 is the old IC,I didn't get
the source name).It has the same source with venc clock.We can see that
the clocks = <imgsys CLK_IMG_VENC>, Should I name it "venc" or the
orignal "jpgenc"?
> 
> > +- power-domains: a phandle to the power domain, see
> > +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> > +- mediatek,larb: must contain the local arbiters in the current SoCs, see
> > +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> > +  for details.
> 
> I believe this isn't necessary anymore, because larbs are added
> automatically by the MTK IOMMU driver using device links. +CC Yong who
> worked on that.
Yes,I have confirmed with Yong that he will help me to modify this.Is it
ok that I keep the orignal larb code?

Best Regards,
Xia Jiang
> 
> > +- iommus: should point to the respective IOMMU block with master port as
> > +  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> > +  for details.
> > +
> > +Example:
> > +	jpegenc: jpegenc@1500a000 {
> > +		compatible = "mediatek,mt2701-jpgenc",
> > +			     "mediatek,mtk-jpgenc";
> > +		reg = <0 0x1500a000 0 0x1000>;
> > +		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_LOW>;
> > +		clocks =  <&imgsys CLK_IMG_VENC>;
> > +		clock-names = "jpgenc";
> > +		power-domains = <&scpsys MT2701_POWER_DOMAIN_ISP>;
> > +		mediatek,larb = <&larb2>;
> 
> Ditto.
> 
> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
