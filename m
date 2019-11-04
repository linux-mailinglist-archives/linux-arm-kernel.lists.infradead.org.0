Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AA3EE597
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:10:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOeoML8PbIFsiWDT6bCggz4A9x4IWx6fk2hLiWKVn1c=; b=ryoZzG0C3px8OR
	2nnKnsRmcZv0lxBJcw12pU6n4haXn4JfIs/Vti+RtO6OEnwCSVnPayUrXVvt6Pdnf0+BU+pKy2KV5
	1SjZfhlXMXpdPun+MYB3owK97KDPCSYWiZmC7q1miuWzw5Qd9G6wsCZplaY9oZPVOeGo5Tlig8EDr
	bfDDPA3QEeb3NWX1P++VhBemdR2xni8smM2swsP5E3Lw4glekgyFcGc1ELT+DwTfHREWgp1CU6zGI
	FHr+dwyUWzD06bkDI2IHkCZ09AJPZ5L3fWB9QX5P50+apo6lBD8A2zgbIJYGNboCC/JeXNw3cumqN
	8TPsMFk+ZsKwS2F1BWyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfre-0006JJ-Jb; Mon, 04 Nov 2019 17:10:02 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfrU-0006Ii-J2; Mon, 04 Nov 2019 17:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572887381;
 bh=Xw/Eqili2ZJJLIqrlq0Jd7xa4tm2K2gAhNFHp6fip9o=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=U0XZKqtiv7v+Mu6yV1DFfP8K+sJwt97ZUnA75Z0pAGlhMvtZsMCsr2P+DVRoNPvZ2
 oYFF6ja1kFdc/Tb1oonTDYMSIecjtUTAP8u5RkijXjmp4bvczuyl0lU8rfk1SPPkN+
 K9Jg6YB27YiX7qGCkVTMuKJVc24JG4MgSwLPkRN4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.164] ([37.4.249.112]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mf078-1hzjh90FMA-00gaTN; Mon, 04
 Nov 2019 18:09:41 +0100
Subject: Re: [PATCH 1/2] ARM: dts: bcm2711: force CMA into first GB of memory
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, catalin.marinas@arm.com, 
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>
References: <20191104135412.32118-1-nsaenzjulienne@suse.de>
 <20191104135412.32118-2-nsaenzjulienne@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <588d05b4-e66c-4aa0-436e-12d244a6efd8@gmx.net>
Date: Mon, 4 Nov 2019 18:09:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191104135412.32118-2-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:HUCChti8pYqeZ0jxOW5Kmz2kyPjLn97dBAj9Og47A75h/r17rVL
 8noEfKIPcCLhbr31Pmgru/D9r/FfgQCKP/n1auxhCJflW1WIxlD2QAlVtZtKiYmkjo9HOHD
 38nltXoEvu3flP9mlV6tJ6b0+9rKvOl9Q/8qNexhVxpQ6zsbgsswa7S+grNJhGul4BJBBBt
 MBdo/U9qUFlTxY5pjuAiw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MmF7hCF6RgI=:fAH0j5PwkaBViB+yDfOEgb
 Pbz0an8tBAk/Hy4e+T665KOJ3bAeqCXqjWXG+VMtk9Dc8GzWVbE8tATq4d5hRDXae9cpb0WbO
 mBbmXCLHNNHXCx3OMYRTNpQi0cg8bQYPFvqidDAK0zTKdt0aucpFk4Pd9MF4VU9jiixVDpg0o
 0Sz6EQhPHuwBkYcpNqXd4MrfcqVz4EYgo5lyOv1TQ5o5tZmk3ldKGjnCwWqgt0Sv2ZIdMj7D0
 UX8BILlLWWY5H/uls06cWUDlh40TYguxHYc9ty6L0bASy5IldBi3q1354ccUZwYdmFelpIz01
 gOj/AFED7/QESBTpXghGelhw/EyymwsABQlOaL0wp3H8xfdJNhcfArDn6RJ+91fP4hwz4pCCs
 vO6qDnl87UKjiz8GyPjCv9ee0BMCe5SCaXVsnkC6XnQgIJf/dNTMswbwG0LYCKOUGfjLIUVn+
 1k0RvWM4K44ZxBa+Ws32c5GNAPVWUm1cfZjJ+WdyvbJ9Fga8WcJa6L0ITiN4BolPdUL7zocD2
 Y3qs3uYtukOme77dp4/OcUz6mDMLnobO2MaNEWza6Au4q0KMurHOAyM0cj7PKdCYWlVf8OHMs
 P7wo5iVbyZbdwuHX/b1Zix+VmkuLtoyoXabctzkuYyaGBAn3iHJnerbOejgCHYBQoR8fbc1v5
 0qSKEEeFBo0k/mhGGyy2W4jEK+BVAAomZDFX5xYJLatkrBQkCmoCValghsfc5cMm6hqzldSnB
 rns7MkIOazdWp71sYZ9YhKguP3MJzSpkgYBFxVzQPzUpuG32PcNiPX3BdEMgLe7RPxh0am4Fb
 B7imTVyMlb83T//YJIIrgMHcq5u1uCRvyWCABNgYGj9Jxpuhg9VncLKY9WchaARtrgI2G20Q9
 WTqvTQ5mJgBc9iG/FAJgo//nr5oFvpbJClrLWg+i0AT3/rp/M+a7msExDLcZrT9HGozXx0zcK
 5MG09uUIOAi2Gg8o8W/DOsq+a97IPESgdwhqQciCh/S/Ym23xhBcBUebOs/uAelc4p5X9Cu1m
 h8oJ8XBacBf9rv9ECaflaQs3MgdnWIsWYfqu3undBBxQsq7jiXqYq4Af9RnFE6EDvgXFWe9fg
 xQ+C6lDOUbzzCihQDjx/10Z5WzI9D9t9a3eAGDrF08zeeZBgfKn1Zoip6uCNOaiT9ADZZzT+r
 SaKsAkQctI0nqxwGkWmt8aXbCyCA1xRFqO/orwCOQ6eqJpmmOQ21Z7ZFnlVSVQb7NU4YFxofP
 2eQlLTQRBk5eDLGwsXsasGE28LV6q6YhHkyykJKABa5v5mAr84tmTefERtCU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_090952_921059_309FD867 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 04.11.19 um 14:54 schrieb Nicolas Saenz Julienne:
> arm64 places the CMA in ZONE_DMA32, which is not good enough for the
> Raspberry Pi 4 since it contains peripherals that can only address the
> first GB of memory. Explicitly place the CMA into that area.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

do you want this in Linux 5.5 via devicetree/fixes? In this case please
add an fixes tag.

Otherwise this will be queued for Linux 5.6.

> ---
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> index cccc1ccd19be..3c7833e9005a 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> @@ -19,6 +19,25 @@
>  		reg = <0 0 0>;
>  	};
>
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		/*
> +		 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
> +		 * that's not good enough for the Raspberry Pi 4 as some
> +		 * devices can only address the lower 1G of memory (ZONE_DMA).
> +		 */
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			size = <0x2000000>; /* 32MB */
> +			alloc-ranges = <0x0 0x00000000 0x40000000>;
> +			reusable;
> +			linux,cma-default;
> +		};
> +	};
> +

i think this is a SoC-specific issue not a board specifc one. Please
move this to bcm2711.dtsi

Thanks
Stefan

>  	leds {
>  		act {
>  			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
