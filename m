Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECDAF51CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcLbFv/O9ab51WriMKCi8LPDILoQsoarQ2TQ9rokipU=; b=PghxtRSCcUh4Fi
	empSiJBz4WV4wwBkIQpnP6Dk0LeP9WZvEM9eZOeIkxY5GwmAbyZQcRhdrSBmgmy0BfHYuvvOOg871
	Wul5qwibo/zhFZUZs3UDLw77LiLAPaGT7h6CBJW3uLp+t4+hFEjVfvdlWgxCULWLSdTWHGAguObZ0
	gpcDFBoYij9CSV01fNPu1OcTrgOMDQRT3b8/M5kBhBX0PVR/vuqxVwKksYLHtV6BHM80PXe0V35ZP
	YrU9RCnkv8z6N1g14tzyPNDDSww2hAwGu0u7n4PV3/kVUY04KHDY/HjoyJcAkgP6MUIJn7NIe9ghV
	3NEy7sgLmjpiaHzRx38A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7c0-00042Q-DA; Fri, 08 Nov 2019 16:59:52 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7bp-00041e-3Q
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:59:42 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA8GxU25130556;
 Fri, 8 Nov 2019 10:59:30 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573232370;
 bh=1xUXTJidoS5zS0H9fZF60DudiW5gkFrHGsRnq4l/Zzo=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=rYrCnBYAyJOlR3fxp9rU1t+7JRETaxBoNSZkqRysPcnilAbQ32+NfZMiLyPNGMizM
 k/ID3Uo/7diNAX15r83I38SETLqVMCiKHzpaANfYrXm+kMDHcZBHFF8GfuoTqF3qr/
 4/9Jlt/DzRI9BQjCgEbvdG6ostxSWOcGVKWeetFk=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA8GxUWi115506
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 8 Nov 2019 10:59:30 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 8 Nov
 2019 10:59:13 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 8 Nov 2019 10:59:29 -0600
Received: from ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with SMTP id xA8GxTCs028528;
 Fri, 8 Nov 2019 10:59:29 -0600
Date: Fri, 8 Nov 2019 11:02:31 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [Patch v2 3/5] ARM: dts: dra7: add vpe clkctrl node
Message-ID: <20191108170231.ubwfu2nvcwjfabas@ti.com>
References: <20191104203841.3628-1-bparrot@ti.com>
 <20191104203841.3628-4-bparrot@ti.com>
 <20191108165554.GF5610@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108165554.GF5610@atomide.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_085941_231294_6352AC5E 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tony Lindgren <tony@atomide.com> wrote on Fri [2019-Nov-08 08:55:54 -0800]:
> Hi,
> 
> * Benoit Parrot <bparrot@ti.com> [191104 20:39]:
> > Add clkctrl nodes for VPE module.
> 
> Can you please add a comment describing that we currently need to
> use custom node names here instead of the standard naming?

Tony, what do you mean "custom node name" here?
I followed the exact same syntax that was already there... confused..

Benoit

> 
> I can queue this and other dts change once I have an immutable clock
> changes branch from Tero.
> 
> Or if Tero wants to also pick up the clock node dtsi patch I can ack it,
> up to Tero.
> 
> Regards,
> 
> Tony
> 
> 
> > Signed-off-by: Benoit Parrot <bparrot@ti.com>
> > ---
> >  arch/arm/boot/dts/dra7xx-clocks.dtsi | 18 ++++++++++++++++--
> >  1 file changed, 16 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/dra7xx-clocks.dtsi b/arch/arm/boot/dts/dra7xx-clocks.dtsi
> > index 93e1eb83bed9..d1c2406ec71c 100644
> > --- a/arch/arm/boot/dts/dra7xx-clocks.dtsi
> > +++ b/arch/arm/boot/dts/dra7xx-clocks.dtsi
> > @@ -1591,10 +1591,10 @@
> >  
> >  	rtc_cm: rtc-cm@700 {
> >  		compatible = "ti,omap4-cm";
> > -		reg = <0x700 0x100>;
> > +		reg = <0x700 0x60>;
> >  		#address-cells = <1>;
> >  		#size-cells = <1>;
> > -		ranges = <0 0x700 0x100>;
> > +		ranges = <0 0x700 0x60>;
> >  
> >  		rtc_clkctrl: rtc-clkctrl@20 {
> >  			compatible = "ti,clkctrl";
> > @@ -1603,6 +1603,20 @@
> >  		};
> >  	};
> >  
> > +	vpe_cm: vpe-cm@760 {
> > +		compatible = "ti,omap4-cm";
> > +		reg = <0x760 0xc>;
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +		ranges = <0 0x760 0xc>;
> > +
> > +		vpe_clkctrl: vpe-clkctrl@0 {
> > +			compatible = "ti,clkctrl";
> > +			reg = <0x0 0xc>;
> > +			#clock-cells = <2>;
> > +		};
> > +	};
> > +
> >  };
> >  
> >  &cm_core {
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
