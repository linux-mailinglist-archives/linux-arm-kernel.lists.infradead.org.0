Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EED9130DBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 07:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TMS2N2kIfnkbJ3TVQWOgFcVRPC8uJ1DFRU8bh5eqI8=; b=O+7JWH6aaw0iOh
	wNJNaCVJvpFr5MXObSle9SWFceZ1eYZB7coaB+hZAGZr9z8A+lxpgTy0+1w4zNfxwfZheYly0r3Ps
	tfJBSiqKc6L0Dyh2tqb7h5RoLP3wsMTMDt1MRPhucY7HCkXZUIZrcIHBmGUhP2zGob4TZvHTUB6aQ
	WAcZ/rOJgkp5D/2Ug0hcHySElksmyrlEfjIUdsczOiXCQGATNiidU6DVX5kGhTX1bSCKWXXY5Yrjs
	NAR+V9hM12M1ulyTkJGcDWfoKzwVxirKfL1j0gDLgiUO5UYIOahTWn/Axv5lZydITDzULbIJQFd1a
	hZso8fy7RuIObnnEOzFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioMIU-0006ZI-D0; Mon, 06 Jan 2020 06:55:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioMI8-0006HK-Ob
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 06:55:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id 4so26516288pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 22:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OdrXgm2hCs01du+T8UYcvLNB/t0F3MI2dMgKBoMDV58=;
 b=jASuboOcMoZrLoqU/58dsKJaW1ZpB5TQiGXmSHu6SuvnehwUeL1CJeFtoo9nQp0FEs
 CWESkJ0rOS4Qq0CalTbKpRblev+e3NOD+9gEi5VhN6HHSb3/ITuJAgpp+WZxZZr4IUJs
 Q0XLeHEEEKx5RnlTMXJZY9O/IjXblGdD9WS1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OdrXgm2hCs01du+T8UYcvLNB/t0F3MI2dMgKBoMDV58=;
 b=aZeUkD4dpVvQ5vM0IzualJKvhcSJknm7FHbaBvLnED+uuTiqd6ecur/H/rJ5rUHweO
 D05/dsDsCzLYaz0SlFSa1VDToR8/q4oPhJwZUankETQZ/7LSQEeeHOWKWsL4PudREKCU
 TlR9cEaToNp07ls1i5daugMQWHqfEAJzF4tZHWWlc6jr+XgyU6ANK/LbUI839kYKr4HI
 Bo/GpGW/Zo7BaL8Di7G6p5RiNNUMjdWi7fuqRpSrbbeXFhgi5xrSsU/GrpyTpWjY1sqx
 OmQcvAlDFgggpS62CXSna4ZTtjSJFAoejrYfPhPIMVo0Qw04iBXFbRSl76Za7zi8/EV9
 z8WQ==
X-Gm-Message-State: APjAAAVrYa1K6aIosjUG6YrrWEwRgTlpZ8ccYWV98fW3HvkR1LyFMjlA
 LT9dnzVztW8MvAqaFLsYR9Lxz2TTV4vlFajQS8tuRtR4
X-Google-Smtp-Source: APXvYqz+B08u8f36zlcVvGyFt7QmFTKQN1wZESA+ZjqGZOY2xqn3mk2uipltS6QD1UxNAL1a0DgbAgBtEUZjITcQB1Q=
X-Received: by 2002:a0c:ead1:: with SMTP id y17mr73914830qvp.210.1578293271759; 
 Sun, 05 Jan 2020 22:47:51 -0800 (PST)
MIME-Version: 1.0
References: <1577350475-127530-1-git-send-email-pengms1@lenovo.com>
In-Reply-To: <1577350475-127530-1-git-send-email-pengms1@lenovo.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 6 Jan 2020 06:47:39 +0000
Message-ID: <CACPK8XeY5dPHtRfFD55dLVHT0SF1gJEVf1DixsbJKpciLP2s5Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] ARM: dts: aspeed: update Hr855xg2 device tree
To: Andrew Peng <pengms1@lenovo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_225508_823538_714BB126 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Benjamin Fair <benjaminfair@google.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Yonghui Liu <liuyh21@lenovo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Derek Lin <dlin23@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Dec 2019 at 08:54, Andrew Peng <pengms1@lenovo.com> wrote:
>

When you have a list of things like below, it's sometimes a good hint
that you should be sending one patch for each bullet point. This makes
it easier to review.

> Update i2c aliases.
> Change flash_memory mapping address and size.
> Add in a gpio-keys section.
> Enable vhub, vuart, spi1 and spi2.
> Add raa228006, ir38164 and sn1701022 hwmon sensors.
> Remove some unuse gpio from gpio section.

unused?

>
> Signed-off-by: Andrew Peng <pengms1@lenovo.com>
> Signed-off-by: Derek Lin <dlin23@lenovo.com>
> Signed-off-by: Yonghui Liu <liuyh21@lenovo.com>

I got two copies of this. I think they are the same.

> ---
> v1: initial version
>
>  arch/arm/boot/dts/aspeed-bmc-lenovo-hr855xg2.dts | 557 ++++++++++++++++-------
>  1 file changed, 382 insertions(+), 175 deletions(-)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-lenovo-hr855xg2.dts b/arch/arm/boot/dts/aspeed-bmc-lenovo-hr855xg2.dts
> index 8193fad..e1386d4 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-lenovo-hr855xg2.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-lenovo-hr855xg2.dts
> @@ -15,14 +15,21 @@
>         compatible = "lenovo,hr855xg2-bmc", "aspeed,ast2500";
>

> -               flash_memory: region@98000000 {
> +               flash_memory: region@9EFF0000 {
>                         no-map;
> -                       reg = <0x98000000 0x00100000>; /* 1M */
> +                       reg = <0x9EFF0000 0x00010000>; /* 64K */

Do you really use 64K here, or was this a workaround for the lpc-ctlr
driver requiring a memory region?

If it's a workaround you can now drop the memory region phandle, as
the driver works without it.

> +&spi2 {
>         status = "okay";
>         pinctrl-names = "default";
> -       pinctrl-0 = <&pinctrl_txd1_default
> -                       &pinctrl_rxd1_default>;
> +       pinctrl-0 = <&pinctrl_spi2ck_default
> +                               &pinctrl_spi2cs0_default
> +                               &pinctrl_spi2miso_default
> +                               &pinctrl_spi2mosi_default>;
> +
> +               spidev@0 {
> +                               status = "okay";
> +                               compatible = "aspeed,spidev";
> +                               reg = < 0 >;
> +                               spi-max-frequency = <50000000>;
> +               };

This is for an out of tree driver? We discourage that, and prefer you
submit the driver upstream for review before adding it to the device
tree.

Please drop the sbidev bit from your next version.

> +
> +               flash@0 {
> +                               compatible = "jedec,spi-nor";
> +                               m25p,fast-read;
> +                               label = "fpga";
> +                               reg = < 0 >;
> +                               spi-max-frequency = <50000000>;
> +                               status = "okay";
> +               };
>  };

> +&vuart {
>         status = "okay";
> +       auto-flow-control;
> +       espi-enabled = <&syscon 0x70 25>;

Is this the same as the upstreamed aspeed,sirq-polarity-sense?

Please review https://git.kernel.org/torvalds/c/8d310c9107a2a3f19dc7bb54dd50f70c65ef5409.
I think you will find you can drop the espi-enabled property as
aspeed-g5.dtsi now contains the same information.

> +               pcie_slot12: i2c@4{
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +                               reg = <4>;
> +               };
> +
> +               switch0_i2c5:i2c@5{

a space after the :

> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +                               reg = <5>;
> +                               eeprom@54 {
> +                                               compatible = "atmel,24c04";
> +                                               pagesize = <16>;
> +                                               reg = <0x54>;
> +                               };
>                 };
>         };
>  };
> @@ -216,13 +377,43 @@
>         };
>
>         VR@45 {
> -               compatible = "pmbus";
> +               compatible = "raa228006";

Please send this change once you've had your pmbus driver accepted by
Guneter. In the mean time I suggest dropping it from v2 so we can
merge the other changes.

>                 reg = <0x45>;
>         };
>  };
>

> +       CPU0_VCCIN@60 {

Convention is to use lower case for node names.

> +               compatible = "raa228006";
> +               reg = <0x60>;
> +       };
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
