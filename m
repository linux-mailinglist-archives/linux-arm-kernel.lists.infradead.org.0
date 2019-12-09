Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBE611770A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WI6JSKKTO8Y+CjGmbyo4zMAPB43TET1U+ytyWrftDZk=; b=aionxj0nyk2s3A
	v89FBm3GY17YWBC+JCjVVGbhr2WYD7nPRb73aHRX2q7mLyKv4LRlLhZNiIVLyYMu1zmUMSZ0V6AHn
	WlWMia7YTLA4s2KfvspiXaJVk1n4+nsT4AMYyRrEejiyz1r3TXYBPuIyq/LjQpI7ZKXSdv111xOWl
	uldhgJXzN+bP/fjQM3Kveea4lrIrBfkzDSBbrFoayeOYOZ4Hb1HNMY5h2Iti5/hAKAFeVY/wQrbLs
	vFjZliU5wPDvUstsL9zRoRChmFec3hfg+z39LQZIHNhx0rBfwMf/Vbn0Agp+G6y2jyz3Z3hj2BWU+
	tAKVfEUccXrsj+mCAfPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePMG-0000BE-SZ; Mon, 09 Dec 2019 20:10:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePM6-0008FK-7L
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:10:07 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B75E214D8;
 Mon,  9 Dec 2019 20:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575922205;
 bh=Diy0RAMb2nmCr+FApInTdUlXJLEjOPXITAFoPxtK6Lw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sZFLl1YErRFnSKRSMXOxm4n5/u2qhnNLjtgxyrohyoLZ+o8nhFndXIBnXQsAU+MM2
 /0gsZJcFQhNPp305wZejd1Lh83xdrq+035ePlZU9W2siegqsB+I00VwRzR+OyCEFWq
 FERNlByejYl2Jd5EifpsZNDR2TjecUkM4vsyRe9g=
Date: Mon, 9 Dec 2019 20:37:29 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alistair Francis <alistair@alistair23.me>
Subject: Re: [PATCH] arm64: allwinner: Enable Bluetooth and WiFi on sopine
 baseboard
Message-ID: <20191209193729.jfw2z4iqlhrzohse@hendrix.lan>
References: <20191207192249.8346-1-alistair@alistair23.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207192249.8346-1-alistair@alistair23.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_121006_330968_5318F2D6 
X-CRM114-Status: GOOD (  15.23  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, wens@csie.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, alistair23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 07, 2019 at 11:22:49AM -0800, Alistair Francis wrote:
> The sopine board has an optional RTL8723BS WiFi + BT module that can be
> connected to UART1. Add this to the device tree so that it will work for
> users if connected.
>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  .../dts/allwinner/sun50i-a64-sopine-baseboard.dts  | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> index 920103ec0046..0a91f9d8ed47 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> @@ -214,6 +214,20 @@ &uart0 {
>  	status = "okay";
>  };
>
> +&uart1 {
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> +        status = "okay";
> +
> +        bluetooth {
> +                compatible = "realtek,rtl8723bs-bt";
> +                reset-gpios = <&r_pio 0 4 GPIO_ACTIVE_LOW>; /* PL4 */
> +                device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
> +                host-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
> +                firmware-postfix = "pine64";
> +        };
> +};
> +

Output from checkpatch:
total: 10 errors, 11 warnings, 0 checks, 20 lines checked

More importantly, that binding isn't documented, and doesn't have a
driver either.

I guess you want to have a look at:
https://www.spinics.net/lists/arm-kernel/msg771488.html

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
