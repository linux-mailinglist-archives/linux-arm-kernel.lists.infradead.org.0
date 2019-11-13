Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9996EFA71F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 04:18:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhNSIwr50+eSYPBkO3jdodCdECL2ugGcatL9boWCdGs=; b=qFiXSbWvzRBjbp
	eFn5VolqGPaXEaUTXCRoipWNT0hYbgdXMEkp++BmL0WcGY+CdhIp+Nne9Dm3n95kbTGubPtAqDhuQ
	AWuduzJRcSPQpuKN+bA7sfTZjBREbOVdVEptUHPA7/tmqNKMWEVVhcYH7UTPOSyxyXwghnhkRFMp/
	p9wWn+z+zALIwgnQZPoheSjXK9x5RetBoEKf8JwsPATdJb0GWy25N7O4g0rpRAHqV7Nbed9U1sJvh
	BOTa82/C96YzHeNeizD9Z0lG4Z/TX1N484puiiQH+WdmOnxULCefT77kzg5pYzV3/IWvl+ImdJW2A
	EQXQUH+J7sd+pEv5vedQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjB2-0003Mq-Ii; Wed, 13 Nov 2019 03:18:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjAs-0003Li-QJ; Wed, 13 Nov 2019 03:18:32 +0000
X-UUID: e6c6cea4ddbd4e33b6951a39a34f3eb3-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=1PTVv09MJjB2RKE9rgKvj5d7tEfBX8IFX331P3cJgFc=; 
 b=tBIcmgqJaEc0Gy26g3KLy0gQtohKXEKRom3/g+Edm/Ie2VO3BLK2COJ9RlKUSFsqweK4K62avpFgM65cOd0OcfpKib4KHzGpCJFiRIySqssgyfIsxz62ZfmtmrjWWqA1mI4+CW4C+EBQsfqDt45Lz7FDtXggpJ5pBMlUC9dUA8Q=;
X-UUID: e6c6cea4ddbd4e33b6951a39a34f3eb3-20191112
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1532790040; Tue, 12 Nov 2019 19:18:24 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 19:18:24 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 13 Nov 2019 11:18:21 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 13 Nov 2019 11:18:21 +0800
Message-ID: <1573615102.7173.9.camel@mhfsdcap03>
Subject: Re: [PATCH v4 11/11] arm64: dts: mt2712: use non-empty ranges for
 usb-phy
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Wed, 13 Nov 2019 11:18:22 +0800
In-Reply-To: <c23531cd-432d-1857-1e99-48d87956338e@gmail.com>
References: <1573547796-29566-1-git-send-email-chunfeng.yun@mediatek.com>
 <1573547796-29566-11-git-send-email-chunfeng.yun@mediatek.com>
 <c23531cd-432d-1857-1e99-48d87956338e@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4A04EC74D93A3F15A39E1C1ED84053571B8EBB86F8A73CC07646E046490CADBC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_191830_859181_EEBA29D7 
X-CRM114-Status: GOOD (  14.85  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-11-12 at 14:12 +0100, Matthias Brugger wrote:
> 
> On 12/11/2019 09:36, Chunfeng Yun wrote:
> > Use non-empty ranges for usb-phy to make the layout of
> > its registers clearer;
> > Replace deprecated compatible by generic
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v3~v4: no changes
> > 
> > v2: use generic compatible
> > ---
> >  arch/arm64/boot/dts/mediatek/mt2712e.dtsi | 42 ++++++++++++-----------
> >  1 file changed, 22 insertions(+), 20 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
> > index 43307bad3f0d..e24f2f2f6004 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
> > @@ -697,30 +697,31 @@
> >  	};
> >  
> >  	u3phy0: usb-phy@11290000 {
> > -		compatible = "mediatek,mt2712-u3phy";
> > -		#address-cells = <2>;
> > -		#size-cells = <2>;
> > -		ranges;
> > +		compatible = "mediatek,mt2712-tphy",
> > +			     "mediatek,generic-tphy-v2";
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> 
> At a first glance I don't understand why you change address and size cells.
> Commit message doesn't explain it and AFAIS it's not part of the binding changes.
When Ryder sent DTS patch for mt7629, Rob suggested to use 1 cell,
non-empty ranges and provide the offset for v2 tphy which hasn't shared
registers between sub-phys, it'll make layout more clear.

See: https://patchwork.kernel.org/patch/10850925/


> 
> Can you explain why we need that, and update the commit message accordingly?

Just want to take it as an example when support other platforms.

> 
> Regrads,
> Matthias
> 
> > +		ranges = <0 0 0x11290000 0x9000>;
> >  		status = "okay";
> >  
> > -		u2port0: usb-phy@11290000 {
> > -			reg = <0 0x11290000 0 0x700>;
> > +		u2port0: usb-phy@0 {
> > +			reg = <0x0 0x700>;
> >  			clocks = <&clk26m>;
> >  			clock-names = "ref";
> >  			#phy-cells = <1>;
> >  			status = "okay";
> >  		};
> >  
> > -		u2port1: usb-phy@11298000 {
> > -			reg = <0 0x11298000 0 0x700>;
> > +		u2port1: usb-phy@8000 {
> > +			reg = <0x8000 0x700>;
> >  			clocks = <&clk26m>;
> >  			clock-names = "ref";
> >  			#phy-cells = <1>;
> >  			status = "okay";
> >  		};
> >  
> > -		u3port0: usb-phy@11298700 {
> > -			reg = <0 0x11298700 0 0x900>;
> > +		u3port0: usb-phy@8700 {
> > +			reg = <0x8700 0x900>;
> >  			clocks = <&clk26m>;
> >  			clock-names = "ref";
> >  			#phy-cells = <1>;
> > @@ -760,30 +761,31 @@
> >  	};
> >  
> >  	u3phy1: usb-phy@112e0000 {
> > -		compatible = "mediatek,mt2712-u3phy";
> > -		#address-cells = <2>;
> > -		#size-cells = <2>;
> > -		ranges;
> > +		compatible = "mediatek,mt2712-tphy",
> > +			     "mediatek,generic-tphy-v2";
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +		ranges = <0 0 0x112e0000 0x9000>;
> >  		status = "okay";
> >  
> > -		u2port2: usb-phy@112e0000 {
> > -			reg = <0 0x112e0000 0 0x700>;
> > +		u2port2: usb-phy@0 {
> > +			reg = <0x0 0x700>;
> >  			clocks = <&clk26m>;
> >  			clock-names = "ref";
> >  			#phy-cells = <1>;
> >  			status = "okay";
> >  		};
> >  
> > -		u2port3: usb-phy@112e8000 {
> > -			reg = <0 0x112e8000 0 0x700>;
> > +		u2port3: usb-phy@8000 {
> > +			reg = <0x8000 0x700>;
> >  			clocks = <&clk26m>;
> >  			clock-names = "ref";
> >  			#phy-cells = <1>;
> >  			status = "okay";
> >  		};
> >  
> > -		u3port1: usb-phy@112e8700 {
> > -			reg = <0 0x112e8700 0 0x900>;
> > +		u3port1: usb-phy@8700 {
> > +			reg = <0x8700 0x900>;
> >  			clocks = <&clk26m>;
> >  			clock-names = "ref";
> >  			#phy-cells = <1>;
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
