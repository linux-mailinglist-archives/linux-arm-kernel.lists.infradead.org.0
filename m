Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9353DA0FA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 04:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBv3n4QamyP3/ssLvYw5Kjn3oM8962hAVMWS+TQ6j3Y=; b=VAmjgrdggcEqXt
	wEmWVEC/seA7SHrgr/TmQwNNuGHBgOM0piSOYcmcxKIy6PYN8HI/zP5QPxIN+nTmmgLRvZi9Qj7eG
	f36xtEDm0uVnY/jaSaJ5FfX7cBvga1zinmq9QDj083IQ1sQTFLDgWEed0v4tzTMSFQr4apNXSDLlF
	S6Q3AsHhKXtWo/xu0HT2GI/892Er9keZ9Js6zwvmOLxuc4eHzHYK/a6rnR8bV45JVb+3jZjLrlXiU
	i9cWFuPTGsMeVuRKqNUm76ZotO7KNUJwxMdfACC3BswzgA+HJznb+hJCeQgLCt0rr4/HK6KZQvwRg
	rRPU0nn3Qnr8sBfqIDaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ASH-00034Z-Le; Thu, 29 Aug 2019 02:46:33 +0000
Received: from mail-eopbgr20060.outbound.protection.outlook.com ([40.107.2.60]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3AS8-00034E-2l
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 02:46:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cqCu8U1A+GXYYZpOYMCDpqB2hyLinidfIqmhnhr2jSanMqYheCvkZWxtcjeKzKPiIGGnykwOIIfsPC/fIPlm9JiS636uNbXruUpbYjt8w5fL15wnAn0Z2MlRIExkFvtbRqegVx37B6kLxhxMFY0L5+oaidRXhVmKtCYpKSNvj3gp7A4d3jI8ug/Wlr1fmez7ftVDVTbS40bKyV1ORF4u+45Cvsk6K/vG0Z9YbkAep/SypytdL/0qaZwxixXSzmLosWtS8xSl0HP5XmoL1ivwGDYiL9BvApvd2eWWLldRtL2Zqqc1vQ9YZiS9drLs/enlhsCzraQXXPLYMd+jIf5kSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7yWf7L2gQzxVkG10y4VJ/kAw1LB+1I9uUe7/qn1cW9k=;
 b=MVrKqjI4WnYfsRjbXxK/pwI/fo0UV0hpnYdZb7SHoVYRkSVG0UrznuvB07BNiiWtfy16pTOzT71kgtDTgNsgbpO7TRJWl1Djhy87UI4YDb63txaQkYTRjs8b9aY0HDZ7gQaFDmKri96ldPqLBy4CI5p/fOuk7Eje/JLY6U1saKj7aSn+ObO0c3Cbyh5Lufwq6Y1VgvyLiudBWaSQfveSzOnAvzrHxUgZDLQp2Lg1B7E3HiAPMp1O1R/9lyxbdP4BCn6d9gDB2JJEkE4Cfg7XBIOrbs1t0oJUzc+SYZ12PCvSuL5+9f8B+4hgdN/A4qihsNqj6+16QV5pZRQrfDYUaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7yWf7L2gQzxVkG10y4VJ/kAw1LB+1I9uUe7/qn1cW9k=;
 b=ovX/byAg0iQraa8vGDPlGZ8d9bChc2OqZn1aWR9Sa+FdNSHcDkmOphtV+uq8VJJz8ww/mnOkDlsHdMQjY/OcRJgfCsWQc0W3Ma/8JfR8R4as5xMW231q0iR0U6m2zvlKUoiFP34rcM+egvkt64bv03b+9y6Ylm9TTylIyfYne9I=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6755.eurprd04.prod.outlook.com (20.179.252.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 02:46:19 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Thu, 29 Aug 2019
 02:46:19 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Stefano Stabellini <sstabellini@kernel.org>
Subject: RE: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Topic: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Index: AQHVNi9zmpVhxJk2Z0aPUBEkePn3c6cPOA8AgADZ48CAARk7AIAAkAzw
Date: Thu, 29 Aug 2019 02:46:19 +0000
Message-ID: <AM0PR04MB4481C44313C450F8994AF4BC88A20@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190709083729.11135-1-peng.fan@nxp.com>
 <d70b3a5c-647c-2147-99be-4572f76e898b@arm.com>
 <AM0PR04MB4481386D2C54AEA6987E1B1588A30@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <alpine.DEB.2.21.1908281103290.25361@sstabellini-ThinkPad-T480s>
In-Reply-To: <alpine.DEB.2.21.1908281103290.25361@sstabellini-ThinkPad-T480s>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 596f9668-4705-49bb-9296-08d72c2b1207
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6755; 
x-ms-traffictypediagnostic: AM0PR04MB6755:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6755ACAF082E66E4713A9B9C88A20@AM0PR04MB6755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(366004)(396003)(376002)(189003)(199004)(8936002)(229853002)(256004)(8676002)(81156014)(14444005)(81166006)(33656002)(53546011)(76176011)(6506007)(26005)(7696005)(305945005)(7736002)(2906002)(186003)(102836004)(86362001)(74316002)(316002)(99286004)(66066001)(54906003)(478600001)(66556008)(76116006)(66946007)(66476007)(66446008)(6916009)(64756008)(446003)(11346002)(476003)(486006)(44832011)(6116002)(3846002)(53936002)(4326008)(25786009)(5660300002)(52536014)(6436002)(6246003)(14454004)(55016002)(71190400001)(71200400001)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6755;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M7WCWBDde4fnhsUfpj10HINnZWIgIbFH3vb/+2AcdMw0TFUHPn3Wtz4cyNfCh9eB9ePlLsWODe4Z9bGGPvVLDEFjPP16YoxRzjkI7TvOZuCOwIY/w6SElGIPoLtyJGK69eFxMSU5IHSGSBUZtSr1BdTmR/tt+RX+eZCbE1DDWABVqDbglBfvEP6Z9UjWjJoDUw5KrnJ6bQXSDNqFeA1VsYC9lhnjwr2Tf+OJpHCP4k30d/bZ924y9p9HBS8kAOx4B9YrufxSOZA5LsjutIIfEw2PyL4Oznaa5/pR6frtS1pzkz45BoX4J69xJiHSQX/GirYirEuP8svi0NCL4C/6PfOQLo2hhTYFNIcX9FepNn8htLPpjL2169XwJDVI6O/YjtRn4HH8xwoK2Hzus5LFBtcRJh3b1KGCturXxzd/VVs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 596f9668-4705-49bb-9296-08d72c2b1207
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 02:46:19.3067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kGv0b5yeEGah/DAXfPnLLlVHLdM5gS5+ubmK6samYq2+clZQQD+FOMJVfY17GIX8F90v8qKmIVCTEDUQcMoRgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_194624_127280_0837E411 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefano,

> Subject: RE: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
> 
> On Wed, 28 Aug 2019, Peng Fan wrote:
> > Hi Robin,
> >
> > > Subject: Re: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
> > >
> > > On 09/07/2019 09:22, Peng Fan wrote:
> > > > arm64 shares some code under arch/arm/xen, including mm.c.
> > > > However ZONE_DMA is removed by commit
> > > > ad67f5a6545("arm64: replace ZONE_DMA with ZONE_DMA32").
> > > > So to ARM64, need use __GFP_DMA32.
> 
> Hi Peng,
> 
> Sorry for being so late in replying, this email got lost in the noise.
> 
> 
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > ---
> > > >   arch/arm/xen/mm.c | 2 +-
> > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c index
> > > > e1d44b903dfc..a95e76d18bf9 100644
> > > > --- a/arch/arm/xen/mm.c
> > > > +++ b/arch/arm/xen/mm.c
> > > > @@ -27,7 +27,7 @@ unsigned long
> > > > xen_get_swiotlb_free_pages(unsigned
> > > > int order)
> > > >
> > > >   	for_each_memblock(memory, reg) {
> > > >   		if (reg->base < (phys_addr_t)0xffffffff) {
> > > > -			flags |= __GFP_DMA;
> > > > +			flags |= __GFP_DMA | __GFP_DMA32;
> > >
> > > Given the definition of GFP_ZONE_BAD, I'm not sure this combination
> > > of flags is strictly valid, but rather is implicitly reliant on only
> > > one of those zones ever actually existing. As such, it seems liable
> > > to blow up if the plans to add ZONE_DMA to arm64[1] go ahead.
> >
> > How about this, or do you have any suggestions?
> > diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c index
> > d33b77e9add3..f61c29a4430f 100644
> > --- a/arch/arm/xen/mm.c
> > +++ b/arch/arm/xen/mm.c
> > @@ -28,7 +28,11 @@ unsigned long xen_get_swiotlb_free_pages(unsigned
> > int order)
> >
> >         for_each_memblock(memory, reg) {
> >                 if (reg->base < (phys_addr_t)0xffffffff) {
> > +#ifdef CONFIG_ARM64
> > +                       flags |= __GFP_DMA32; #else
> >                         flags |= __GFP_DMA;
> > +#endif
> >                         break;
> >                 }
> >         }
> 
> Yes I think this is the way to go, but we are trying not to add any #ifdef
> CONFIG_ARM64 under arch/arm. Maybe you could introduce a static inline
> function to set GFP_DMA:
> 
>   static inline void xen_set_gfp_dma(gfp_t *flags)
> 
> it could be implemented under arch/arm/include/asm/xen/page.h for arm
> and under arch/arm64/include/asm/xen/page.h for arm64 using __GFP_DMA
> for the former and __GFP_DMA32 for the latter.

Thanks for your suggestion. I'll use this in V2.

Thanks,
Peng.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
