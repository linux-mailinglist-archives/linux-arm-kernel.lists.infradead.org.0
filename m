Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FF711002B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:31:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmWG0T7WH+TE6gPi9wT+wXEEWxRup/SdMbjJN6MhjtE=; b=YMvhNfsbmQZN2I
	4T2+5YxU/uEiMvGh8qaqo68e2C/Fqsw6cSLLWRGonhG4XOw0keVFmUy4HELgnglzn0OL8UKKmTjOP
	BnB9MsXAN177kiQ1fJQW/gVgpNTE8ZMxtHDnOXJIX+1Gth1L87LyEbb5t1+a9Ep8+Z8c1L1rK9Ite
	VVv2Gc4J8BH/NQxf6BV2C8lmdOVxSdTtjSTBX+Imgw2zlwAiu3Ow0w1sCV8QBCe14Uo7G6YCPW0GZ
	d5bAkrLZZQFk9BBVhzg5xyrdlKeTWS5GQbNwbbJe+8N93cylUcsHAMQqctrBEfX/wfADmv9BIK2wo
	sEJUU3J4lwIsw0EukmNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9DD-00026D-Tb; Tue, 03 Dec 2019 14:31:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9D6-00021u-AA
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:31:29 +0000
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
 [209.85.219.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C84092080A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Dec 2019 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575383487;
 bh=paDjy7hZsmQkcUp7jKSH70ftPLffSgdTsEFpUetgz24=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KZ3PkNnslqc7BEkuj8s892JHiyp111mpjo13oyKF2LEIsAAcH/hc5JifebD94uck3
 nvVaUSye1Jaz8ajRoUANeZarO5PaXCebynHCFsWg9UsJyvHq5vbTBbBh+fkKJlWy4n
 ygD9D5lhomlPo1jbX8Cgfpm0LyJHYR996Q4klzU0=
Received: by mail-qv1-f45.google.com with SMTP id y8so1563612qvk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 06:31:27 -0800 (PST)
X-Gm-Message-State: APjAAAWafqiByYFSeNYie8gRsb20AN+y1h2R0j/0P/OZ1FhqEWO5UfGF
 B/ZGfxrBZUSh5E0y/J18YYoQKgtF/BBaCRzM+A==
X-Google-Smtp-Source: APXvYqxDBnGQNKjTk3qSKKiOvMvxPKQPV7m6ur08FqhiSl9j9w8DAHBF3481M9puWdGG8hXS2X7yJKuiKlMAjUfp4E0=
X-Received: by 2002:a05:6214:11ac:: with SMTP id
 u12mr5420247qvv.85.1575383483847; 
 Tue, 03 Dec 2019 06:31:23 -0800 (PST)
MIME-Version: 1.0
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
 <3da2492c244962c27b21aad87bfa6bf74f568f1d.1575376664.git-series.andrew@aj.id.au>
In-Reply-To: <3da2492c244962c27b21aad87bfa6bf74f568f1d.1575376664.git-series.andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 3 Dec 2019 08:31:10 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+3qXJbTu9G42g11PLJH-A0XeSQmJKj0obO32QFna3dEA@mail.gmail.com>
Message-ID: <CAL_Jsq+3qXJbTu9G42g11PLJH-A0XeSQmJKj0obO32QFna3dEA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: ipmi: aspeed: Introduce a v2 binding for
 KCS
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_063128_392206_5C5984B3 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Dec 3, 2019 at 6:36 AM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The v2 binding utilises reg and renames some of the v1 properties.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt | 20 +++++---
>  1 file changed, 14 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> index d98a9bf45d6c..76b180ebbde4 100644
> --- a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> +++ b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> @@ -1,9 +1,10 @@
> -* Aspeed KCS (Keyboard Controller Style) IPMI interface
> +# Aspeed KCS (Keyboard Controller Style) IPMI interface
>
>  The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
>  (Baseboard Management Controllers) and the KCS interface can be
>  used to perform in-band IPMI communication with their host.
>
> +## v1
>  Required properties:
>  - compatible : should be one of
>      "aspeed,ast2400-kcs-bmc"
> @@ -12,14 +13,21 @@ Required properties:
>  - kcs_chan : The LPC channel number in the controller
>  - kcs_addr : The host CPU IO map address
>
> +## v2
> +Required properties:
> +- compatible : should be one of
> +    "aspeed,ast2400-kcs-bmc-v2"
> +    "aspeed,ast2500-kcs-bmc-v2"
> +- reg : The address and size of the IDR, ODR and STR registers
> +- interrupts : interrupt generated by the controller
> +- slave-reg : The host CPU IO map address

aspeed,slave-reg

>
>  Example:
>
> -    kcs3: kcs3@0 {
> -        compatible = "aspeed,ast2500-kcs-bmc";
> -        reg = <0x0 0x80>;
> +    kcs3: kcs@24 {
> +        compatible = "aspeed,ast2500-kcs-bmc-v2";
> +        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;

What are the other registers in this address space? I'm not so sure
this is an improvement if you end up with a bunch of nodes with single
registers.

>          interrupts = <8>;
> -        kcs_chan = <3>;
> -        kcs_addr = <0xCA2>;
> +        slave-reg = <0xca2>;
>          status = "okay";
>      };
> --
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
