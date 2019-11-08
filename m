Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9025F4FDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:36:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8E1ccMJrtWESOEUHqCABnELoydVRVPnqIwhS+YaGel8=; b=LfcoJMtpDCaXkj
	U1IE6JZW0UUuCy58ZB7aIHTXjahV/L+qRVDbgUhW9kZPEDySz/z7wzjQqWJS0b4DRgMpjREHeo63h
	WXO3ONmwILWEcQurlI803aAxoGBcbUTXBukgMF4LIog/Np4rJ6szD8sn/TDW5UDGyd3YU241hYYv5
	FUS0sNsDbtIq18VC4b5eL/Y0cJOcUpa7crCKQIunZZsozxpTDo+2JqYqCFKBZZxUKi6itzyEHIzEu
	VMlPwwZqy4W2Fc5aCzBVmH7poUc4GQDbwTVx1uLqHdmqbnpeSA7voFliiaoxiHnQAHsfcXi6MNRPQ
	ZsoJVWW+P/CKvymQNAYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6JL-0002XH-KG; Fri, 08 Nov 2019 15:36:31 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iT6JB-0002W5-Qw; Fri, 08 Nov 2019 15:36:23 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xA8Fa8BD019745,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xA8Fa8BD019745
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 8 Nov 2019 23:36:08 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCASV01.realtek.com.tw ([::1]) with mapi id 14.03.0468.000; Fri, 8 Nov
 2019 23:36:08 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
Thread-Topic: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
Thread-Index: AdWTrwRiu8TDC5guRneVMItRk6mPLwAihi8AAIJriSA=
Date: Fri, 8 Nov 2019 15:36:07 +0000
Message-ID: <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
In-Reply-To: <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.6.95]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_073622_000185_2721F6E8 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>, Marc Zyngier <marc.zyngier@arm.com>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>, Rob
 Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

Thank you for your review.

[...]
> Just to be sure: This is one cluster of 6 CPUs? Or is it some 4+2 big.LITTLE,
> DynamiQ or whatever multi-cluster configuration with different frequencies,
> power domains or something?
> 
Yes, it is one cluster of 6 CPUs.

[...]
> > +
> > +		l2: l2-cache {
> > +			compatible = "cache";
> > +			next-level-cache = <&l3>;
> > +
> > +		};
> > +
> > +		l3: l3-cache {
> > +			compatible = "cache";
> > +		};
> 
> Caches look weird - only cpu0 uses L2 and all others use L3 directly?
> 
Yes, only cpu0 uses L2 and others use L3 directly.

[...]
> Generic question also applying to my RTD1295/RTD1195 patches: Are you sure
> about GIC_CPU_MASK_RAW(0xf) or could this be GIC_CPU_MASK_SIMPLE(6)
> in this case? This here would seem equivalent of GIC_CPU_MASK_SIMPLE(8).
>
The GICv3 does not have affinity bitmap in the binding for PPI
interrupts. So remove the GIC_CPU_MASK_RAW() macro.

[...] 
> 
> And double-check whether you actually need <2> - compare rtd129x.dtsi using
> <1> because nothing went beyond 32-bit address space. It was a review
> request back then. Can RTD1619 have more than 2 GiB RAM, with a second
> RAM region in high mem, requiring two cells for memory nodes?
> 
The RTD1619 can support more than 2 GiB RAM.

[...]
> 
> Is the UART no longer behind an IRQ mux on RTD1619, or is the above the IRQ
> mux interrupt as a workaround for lack of in-tree irqchip driver?
> 
Yes, the UART no longer behind an IRQ mux on RTD1619.

[...] 
> Are you sure you don't have GICC, GICH, GICV and IRQ? No MBI support?
> 
The RTD1619 don't have GICC, GICH, GICV and no support MBI.

> For RTD1295 I extended the GICv2 node during review, and KVM initialized
> fine, although I'm not sure whether I've run an actual guest yet, given how
> many drivers were missing still.
> 
> (I'd also appreciate Realtek to review my RTD1195 patch's GIC [1] for whether
> we should have all four regions and some interrupt there - the OEM's U-Boot
> doesn't boot in HYP mode, so I can't test myself.)
> 
I will help with review.

[...]

Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
