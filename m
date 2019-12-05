Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E2C114644
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 18:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Z4B7C8RCVormnHmv1S6C6rRt17ai53WvaYAb+6B56A=; b=tWhfea2GbEDWeQ
	BhlVNT5s3y2+FVr8xqT5xQzG+2gwMZzaM12qKZjpA4+jjjyL84FaT3DeXQrbq4cXESiCbG/jpiVND
	AdCg57EjInXjkArxxePoRsQmHjeKn5Zkd+esn9sVHze+Q5f9R8OeVRsL2k6LLQeVdUUJKhIE8xDcp
	DLK/U8dmoCOztDUPOsHUg6V3ZdyssZ/KRKmK5CiW52SI/VbCf0/f/lsLx8ZyzALfphFKDRt+H5XHu
	p11GeJE3Ph839XqVU2UPbDiSQlPGukPW4uPjjRXLYm4JgHdIJuCXoX+BvSN+xXFvSsL0YKTkE1CdS
	MY5SMgSOrdCNlQmRbYuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvHJ-00052m-Dr; Thu, 05 Dec 2019 17:51:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvHB-000529-FO
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 17:50:55 +0000
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
 [209.85.219.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C48424653
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Dec 2019 17:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575568249;
 bh=IEqN5jALA/tA1YwYPL5ex66SSXu8AQtHWEUKdGhqRN4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jv3ZvTVd98uAIGB6m+6El9AuZjrji4nvWOsrKMNDD8TiCO5nT87xnA3Yf1QeziTxN
 lk5rB0wL3h59uQ5dhlTyHfKZ30ogmZebK3SrY2JPBgIediOyDtZPGo0FWQSZ4cDplx
 RsASs/RLUC1ViKTYH7YovnPzW8ckzMXRL5RuTDgg=
Received: by mail-qv1-f48.google.com with SMTP id o18so1620960qvf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 09:50:49 -0800 (PST)
X-Gm-Message-State: APjAAAUbZJUF+loMrbLuNX+qBNIk4P0czKjoJqO1aLyihreLD9hu5afB
 s46m+DmQxYCw9bqjGHi87h3aEWcDMOTvor1c/A==
X-Google-Smtp-Source: APXvYqxvPvfcZUTfd2X07Gu3YCHbfqmczpAcwIz+b4jGQZwl3ynTJkYLAYgYk4otbiDmIz2Cwk7T274xtOb2NDzSwfs=
X-Received: by 2002:ad4:450a:: with SMTP id k10mr8183566qvu.136.1575568248163; 
 Thu, 05 Dec 2019 09:50:48 -0800 (PST)
MIME-Version: 1.0
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
 <3da2492c244962c27b21aad87bfa6bf74f568f1d.1575376664.git-series.andrew@aj.id.au>
 <CAL_Jsq+3qXJbTu9G42g11PLJH-A0XeSQmJKj0obO32QFna3dEA@mail.gmail.com>
 <40d554c0-de62-4d45-bbcc-dd3a3aa12a65@www.fastmail.com>
In-Reply-To: <40d554c0-de62-4d45-bbcc-dd3a3aa12a65@www.fastmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 5 Dec 2019 11:50:36 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLgmU8m-zT8-K=peENshJx7Gx2Hn9RoZ-zbnqLUmqBQpw@mail.gmail.com>
Message-ID: <CAL_JsqLgmU8m-zT8-K=peENshJx7Gx2Hn9RoZ-zbnqLUmqBQpw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: ipmi: aspeed: Introduce a v2 binding for
 KCS
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_095053_561599_CEF411B5 
X-CRM114-Status: GOOD (  23.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, Joel Stanley <joel@jms.id.au>,
 openipmi-developer@lists.sourceforge.net,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 11:12 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Wed, 4 Dec 2019, at 01:01, Rob Herring wrote:
> > On Tue, Dec 3, 2019 at 6:36 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > The v2 binding utilises reg and renames some of the v1 properties.
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > ---
> > >  Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt | 20 +++++---
> > >  1 file changed, 14 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> > > index d98a9bf45d6c..76b180ebbde4 100644
> > > --- a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> > > +++ b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> > > @@ -1,9 +1,10 @@
> > > -* Aspeed KCS (Keyboard Controller Style) IPMI interface
> > > +# Aspeed KCS (Keyboard Controller Style) IPMI interface
> > >
> > >  The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
> > >  (Baseboard Management Controllers) and the KCS interface can be
> > >  used to perform in-band IPMI communication with their host.
> > >
> > > +## v1
> > >  Required properties:
> > >  - compatible : should be one of
> > >      "aspeed,ast2400-kcs-bmc"
> > > @@ -12,14 +13,21 @@ Required properties:
> > >  - kcs_chan : The LPC channel number in the controller
> > >  - kcs_addr : The host CPU IO map address
> > >
> > > +## v2
> > > +Required properties:
> > > +- compatible : should be one of
> > > +    "aspeed,ast2400-kcs-bmc-v2"
> > > +    "aspeed,ast2500-kcs-bmc-v2"
> > > +- reg : The address and size of the IDR, ODR and STR registers
> > > +- interrupts : interrupt generated by the controller
> > > +- slave-reg : The host CPU IO map address
> >
> > aspeed,slave-reg
>
> I don't agree, as it's not an aspeed-specific behaviour. This property
> controls where the device appears in the host's LPC IO address space,
> which is a common problem for any LPC IO device exposed by the BMC
> to the host.

Then document it as such. Common properties go into common binding documents.

> > >  Example:
> > >
> > > -    kcs3: kcs3@0 {
> > > -        compatible = "aspeed,ast2500-kcs-bmc";
> > > -        reg = <0x0 0x80>;
> > > +    kcs3: kcs@24 {
> > > +        compatible = "aspeed,ast2500-kcs-bmc-v2";
> > > +        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
> >
> > What are the other registers in this address space? I'm not so sure
> > this is an improvement if you end up with a bunch of nodes with single
> > registers.
>
> Put into practice the bindings give the following patch: on the AST2500:

Okay, that's an unfortunate interleaving, but seems fine.

>
> diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
> index e8feb8b66a2f..5d51f469cbf0 100644
> --- a/arch/arm/boot/dts/aspeed-g5.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g5.dtsi
> @@ -399,22 +399,22 @@
>                                         #size-cells = <1>;
>                                         ranges = <0x0 0x0 0x80>;
>
> -                                       kcs1: kcs1@0 {
> -                                               compatible = "aspeed,ast2500-kcs-bmc";
> +                                       kcs1: kcs@24 {
> +                                               compatible = "aspeed,ast2500-kcs-bmc-v2";
> +                                               reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
>                                                 interrupts = <8>;
> -                                               kcs_chan = <1>;
>                                                 status = "disabled";
>                                         };
> -                                       kcs2: kcs2@0 {
> -                                               compatible = "aspeed,ast2500-kcs-bmc";
> +                                       kcs2: kcs@28 {
> +                                               compatible = "aspeed,ast2500-kcs-bmc-v2";
> +                                               reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
>                                                 interrupts = <8>;
> -                                               kcs_chan = <2>;
>                                                 status = "disabled";
>                                         };
> -                                       kcs3: kcs3@0 {
> -                                               compatible = "aspeed,ast2500-kcs-bmc";
> +                                       kcs3: kcs@2c {
> +                                               compatible = "aspeed,ast2500-kcs-bmc-v2";
> +                                               reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
>                                                 interrupts = <8>;
> -                                               kcs_chan = <3>;
>                                                 status = "disabled";
>                                         };
>                                 };
> @@ -428,10 +428,10 @@
>                                         #size-cells = <1>;
>                                         ranges = <0x0 0x80 0x1e0>;
>
> -                                       kcs4: kcs4@0 {
> -                                               compatible = "aspeed,ast2500-kcs-bmc";
> +                                       kcs4: kcs@94 {
> +                                               compatible = "aspeed,ast2500-kcs-bmc-v2";
> +                                               reg = <0x94 0x1>, <0x98 0x1>, <0x9c 0x1>;
>                                                 interrupts = <8>;
> -                                               kcs_chan = <4>;
>                                                 status = "disabled";
>                                         };
>
> The aim is to fix these warnings which appear for every aspeed-based devicetree:
>
>         arch/arm/boot/dts/aspeed-g5.dtsi:376.19-381.8: Warning (unit_address_vs_reg): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs1@0: node has a unit name, but no reg property
>         arch/arm/boot/dts/aspeed-g5.dtsi:382.19-387.8: Warning (unit_address_vs_reg): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs2@0: node has a unit name, but no reg property
>         arch/arm/boot/dts/aspeed-g5.dtsi:388.19-393.8: Warning (unit_address_vs_reg): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs3@0: node has a unit name, but no reg property
>         arch/arm/boot/dts/aspeed-g5.dtsi:405.19-410.8: Warning (unit_address_vs_reg): /ahb/apb/lpc@1e789000/lpc-host@80/kcs4@0: node has a unit name, but no reg property
>         arch/arm/boot/dts/aspeed-g5.dtsi:376.19-381.8: Warning (unique_unit_address): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs1@0: duplicate unit-address (also used in node /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs2@0)
>         arch/arm/boot/dts/aspeed-g5.dtsi:376.19-381.8: Warning (unique_unit_address): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs1@0: duplicate unit-address (also used in node /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs3@0)
>         arch/arm/boot/dts/aspeed-g5.dtsi:382.19-387.8: Warning (unique_unit_address): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs2@0: duplicate unit-address (also used in node /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs3@0)
>         arch/arm/boot/dts/aspeed-g5.dtsi:405.19-410.8: Warning (unique_unit_address): /ahb/apb/lpc@1e789000/lpc-host@80/kcs4@0: duplicate unit-address (also used in node /ahb/apb/lpc@1e789000/lpc-host@80/lpc-ctrl@0)
>
> Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
