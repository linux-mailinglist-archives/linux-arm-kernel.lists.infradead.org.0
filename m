Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE3A179AE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 22:28:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMnhhg8bY52K0FEFf3k6J57pEbYEmD9UIZjFNBoB2S4=; b=ULSoz5GjeVwO7K
	4heQTCkGIJst5TLi3sxwTD+S+EFNWBbFW5cAUOG6ykJwUEYXrT+HNvZ/S5BD51WwlEk9JtgYwQswJ
	fa6Tw4n59V82Qw2L4P9GyW7TdY2hkhULlF1XXwRUdv0FQuf10TKXpSXkaExWqRi/Ztt+rAQMnfANn
	cdLQFVBvNP7ynNBlmL4xaxKmx0VrbbJdib+JCW687wD/I8uThe/a39qf4svbyDw68F3Bi4tJmG9RJ
	wYfE1ZACw9zyiVRD3lp7ydUbNWUEHaVz8vLr7ytB5j6dXF0HOGw4h7YEve2VpsXNdTzU5WcHQveMj
	cBoguoSfkv2rN72BzhSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9bZ0-00010f-2a; Wed, 04 Mar 2020 21:28:22 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9bYk-0000zT-N2
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 21:28:08 +0000
X-Originating-IP: 90.76.143.236
Received: from localhost (lfbn-tou-1-1075-236.w90-76.abo.wanadoo.fr
 [90.76.143.236]) (Authenticated sender: antoine.tenart@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 1C0AE60002;
 Wed,  4 Mar 2020 21:27:38 +0000 (UTC)
Date: Wed, 4 Mar 2020 22:27:37 +0100
From: Antoine Tenart <antoine.tenart@bootlin.com>
To: Hanna Hawa <hhhawa@amazon.com>
Subject: Re: [PATCH v4 6/6] arm64: dts: amazon: add Amazon's Annapurna Labs
 Alpine v3 support
Message-ID: <20200304212737.GN3179@kwain>
References: <20200225112926.16518-1-hhhawa@amazon.com>
 <20200225112926.16518-7-hhhawa@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225112926.16518-7-hhhawa@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_132807_025616_99FAB978 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benh@amazon.com,
 antoine.tenart@bootlin.com, gregkh@linuxfoundation.org, jonnyc@amazon.com,
 linux-kernel@vger.kernel.org, hanochu@amazon.com, talel@amazon.com,
 robh+dt@kernel.org, dwmw@amazon.co.uk, Jonathan.Cameron@huawei.com,
 mchehab+samsung@kernel.org, ronenk@amazon.com, tglx@linutronix.de,
 eitan@amazon.com, davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 tsahee@annapurnalabs.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Sorry, I'm a bit late to the party...

On Tue, Feb 25, 2020 at 01:29:26PM +0200, Hanna Hawa wrote:
> diff --git a/arch/arm64/boot/dts/amazon/alpine-v3.dtsi b/arch/arm64/boot/=
dts/amazon/alpine-v3.dtsi
> +     arch-timer {                                                    =


Please use 'timer' instead.

> +             compatible =3D "arm,armv8-timer";                         =

> +             interrupts =3D <GIC_PPI 0xd IRQ_TYPE_LEVEL_LOW>,          =

> +                          <GIC_PPI 0xe IRQ_TYPE_LEVEL_LOW>,          =

> +                          <GIC_PPI 0xb IRQ_TYPE_LEVEL_LOW>,          =

> +                          <GIC_PPI 0xa IRQ_TYPE_LEVEL_LOW>;          =

> +     };

> +		gic: interrupt-controller@f0000000 {
> +			compatible =3D "arm,gic-v3";
> +			#interrupt-cells =3D <3>;
> +			#address-cells =3D <0>;

No need for this.

> +			interrupt-controller;
> +			reg =3D <0x0 0xf0800000 0 0x10000>,
> +			      <0x0 0xf0a00000 0 0x200000>,
> +			      <0x0 0xf0000000 0 0x2000>,
> +			      <0x0 0xf0010000 0 0x1000>,
> +			      <0x0 0xf0020000 0 0x2000>;

Please add comments here, see alpine-v2.dtsi (or other dtsi in
arch/arm64).

> +			interrupts =3D <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
> +		msix: msix@fbe00000 {
> +			compatible =3D "al,alpine-msix";
> +			reg =3D <0x0 0xfbe00000 0x0 0x100000>;
> +			interrupt-controller;
> +			msi-controller;
> +			al,msi-base-spi =3D <160>;
> +			al,msi-num-spis =3D <800>;
> +			interrupt-parent =3D <&gic>;
> +		};
> +
> +		uart0: serial@fd883000 {

Looking at the Alpine v2 dtsi, this node was put in an io-fabric bus. It
seems to me the Alpine v3 dtsi is very similar. Would it apply as well?

> +			compatible =3D "ns16550a";
> +			reg =3D <0x0 0xfd883000 0x0 0x1000>;
> +			clock-frequency =3D <0>;

Is the frequency set to 0 on purpose? Or is it set by a firmware at boot
time (if so please add a comment)?

> +			interrupts =3D <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
> +			reg-shift =3D <2>;
> +			reg-io-width =3D <4>;

Since you're enabling this node explicitly in the dts, you can set it to
disabled by default.

> +		};
> +
> +		pcie@fbd00000 {

Please order the nodes in increasing order.

> +			compatible =3D "pci-host-ecam-generic";
> +			device_type =3D "pci";
> +			#size-cells =3D <2>;
> +			#address-cells =3D <3>;
> +			#interrupt-cells =3D <1>;
> +			reg =3D <0x0 0xfbd00000 0x0 0x100000>;
> +			interrupt-map-mask =3D <0xf800 0 0 7>;
> +			/* 8 x legacy interrupts for SATA only */
> +			interrupt-map =3D <0x4000 0 0 1 &gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x4800 0 0 1 &gic 0 58 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x5000 0 0 1 &gic 0 59 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x5800 0 0 1 &gic 0 60 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x6000 0 0 1 &gic 0 61 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x6800 0 0 1 &gic 0 62 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x7000 0 0 1 &gic 0 63 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x7800 0 0 1 &gic 0 64 IRQ_TYPE_LEVEL_HIGH>;
> +			ranges =3D <0x02000000 0x0 0xfe000000 0x0 0xfe000000 0x0 0x1000000>;
> +			bus-range =3D <0x00 0x00>;
> +			msi-parent =3D <&msix>;
> +		};
> +	};
> +};

The rest of the series looks good.

Thanks!
Antoine

-- =

Antoine T=E9nart, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
