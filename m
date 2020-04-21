Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179991B2E76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 19:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAxc1I7Sd/xKM+npKYixigAxIU58AtO3VBufznm58sU=; b=B5Qnru8fo2+9sh
	KCcaXi+Pr8xPSnFOIr3Z3mY4GYm5WCbIH+/o4pzDgnudDr35EtU/wVSOoFfmy/3poLQp3x34IzmEs
	BtEBRZ82tSXRRxQaoneFCR7Gh6BmVvqNQUpMMtbhnIVloEdzMkIBJ+MqSFmjxs/D1aHBNa3hTS6fY
	Y5UKQAg0Xbk5Srz2TEkafvSw4EdBl2Tf3GqDhUzeKQ1B4IgURFqLZM9aV/SqpRfUjhR4ZUKKGyjfZ
	u+tPLRey+z2LTIsGFJn0B0GbmCDYTlKn05ngpIijV6QxgeKw+8+I0gzMYaKBsFN1QfEwSMC0CGqlV
	t9bubOzzMAL8zrPu3lZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwsF-0006lW-PX; Tue, 21 Apr 2020 17:39:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQws4-0006kb-Ls
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 17:39:46 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id C057C8081;
 Tue, 21 Apr 2020 17:40:29 +0000 (UTC)
Date: Tue, 21 Apr 2020 10:39:38 -0700
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Message-ID: <20200421173938.GZ37466@atomide.com>
References: <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
 <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
 <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
 <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
 <10969e64-fe1f-d692-4984-4ba916bd2161@gmail.com>
 <20200420073842.nx4xb3zqvu23arkc@gilmour.lan>
 <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
 <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
 <20200421141543.GU37466@atomide.com>
 <D9D4D057-A73D-485F-898D-5C05E89C16B7@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D9D4D057-A73D-485F-898D-5C05E89C16B7@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_103945_099694_72E90168 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-samsung-soc@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [200421 17:31]:
> > Am 21.04.2020 um 16:15 schrieb Tony Lindgren <tony@atomide.com>:
> > Note that on omaps there are actually SoC module specific registers.
> 
> Ah, I see. This is of course a difference that the TI glue logic has
> its own registers in the same address range as the sgx and this can't
> be easily handled by a common sgx driver.
> 
> This indeed seems to be unique with omap.
> 
> > And there can be multiple devices within a single target module on
> > omaps. So the extra dts node and device is justified there.
> > 
> > For other SoCs, the SGX clocks are probably best handled directly
> > in pvr-drv.c PM runtime functions unless a custom hardware wrapper
> > with SoC specific registers exists.
> 
> That is why we need to evaluate what the better strategy is.
> 
> So we have
> a) omap which has a custom wrapper around the sgx
> b) others without, i.e. an empty (or pass-through) wrapper
> 
> Which one do we make the "standard" and which one the "exception"?
> What are good reasons for either one?

The wrapper is already handled by the ti-sysc binding, the sgx
binding should be standard with optional clocks.

See for example the standard 8250 uart for am335x with:

$ git grep -B20 -A10 uart0 arch/arm/boot/dts/am33xx-l4.dtsi

The 8250 device configuration is described in the standard 8250
dts binding, and the am335x module in the ti-sysc binding.
The are separate devices :)

So for the sgx binding, you can just leave out TI specific
module wrapper completely from the example.

> It also allows to handle different number of clocks (A31 seems to
> need 4, Samsung, A83 and JZ4780 one) without changing the sgx bindings
> or making big lists of conditionals. This variance would be handled
> outside the sgx core bindings and driver.

Well if other SoCs implement genpd domains etc, that's then
again part of a separate binding and not part of the sgx binding.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
