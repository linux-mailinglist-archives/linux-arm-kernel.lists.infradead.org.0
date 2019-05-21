Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F47625731
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 20:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8japMlY3voTXgk/iWxPvAD+lyMc+jTwx9AIVYovllA=; b=rIXKuef2nfm6HK
	nRi3TxR2j0VF576u9+Ig2ClYVIOMwmmzMn/33KhyIgrYSHrmhWo0Ug9HS/kLBtjKgdZ0a2GTzpLTb
	EerWucs3pzoxraWe8J2p8MdQTGSFUEb+8+rCuhApmKyewPmvRkor8KfAs0LdlSNpWygF1Gcm6HTX1
	I4Xl/Out6l8k/PHrHG5f/psDgJmmca3/FtN/AYGCg7avlMYpiiIXwito7ffAK9neNPrPbKZZGIj1n
	+Ur5edYdN25jp6SRCqpiA5XHcUTGMT048szogH92wxLHQzv7ljvQDRremCmJiRigOaDCl2NLUjEO0
	rkbk8qFccLbYC1Mu5k8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT95Y-0001Qi-D1; Tue, 21 May 2019 18:02:12 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT95P-0001PR-Ox; Tue, 21 May 2019 18:02:05 +0000
Received: by mail-ot1-x342.google.com with SMTP id g18so17149285otj.11;
 Tue, 21 May 2019 11:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vjWxpHH3RznZUOqoTJZzK9OefaWQHmm+6EF8eel7zaI=;
 b=fCTbBab53Rb/T5/XOyrfV9aXwuFPA8aJCgNesV9ZYjTy2R2SeRzgE5zVvjRV2d7NrV
 W96B1ax1cJnk8+D4B5xVKYBn0d22Dpn71HE6Nply3n+bCBt6ul5Go8zGCiHEd0hfsYck
 xDO56q31L4b7WIoKUpkeStjZZGpjL357ji16/Zs9EhetntVCemnO5yK0GMoNuFk3dtCk
 0eZQB8UQm0qOa+CRQiVv9NNP52v0+/a56lCF8i70AHXvRc/d4hv3nFP1U0KCt2dkhU4U
 qOvOluWUwk0SCkNtPknnJDrMchCSzDPAc1EWOLJYky29sKUoZduhzz2xNDWF+NmEbuVN
 YwWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vjWxpHH3RznZUOqoTJZzK9OefaWQHmm+6EF8eel7zaI=;
 b=jbnbVAlHB0woHtlZBcn97qkGUZyFi8aEmtVNxkG4MbVILpouVOyJhmyZ9CFkVSgWOQ
 VtgFtdx6F2Qsg9OSQiw5jWKGy2X7BYm0d2Lpj+wxF7oZOm+7VOUfcgtnau6D+VsL5g0V
 03ZyBkhoIxUvx8KdyodkI4jWUQj992uYmWCk5q8/wQjRjGgMqPtUR1kIVeuS0jME04nt
 2ENOeFeTNiTRHF9JfihxuilgOj4SbtcAPIpdzbNjeVHXXd0PaR6nl3KrZ4ToCAsG9P3j
 eC6gxQlOpinMcDMipXYnsJquof4k+eI2queG6w2B0I/9twp2K2FX8Nr++gCg+bWxnfmJ
 f3eg==
X-Gm-Message-State: APjAAAWLs6Oiv+vIIYoBURTCG9swkzRPu/QP07Z/ReV2r8HQb7FNR+eP
 JuMR5stv0DhSZl65AsG7nDQPccp5OO5xZqb+jes=
X-Google-Smtp-Source: APXvYqxIY/HpMv45ibunXIFlX3sF5mN0iADq/vx0dJX2bVB1EzbElUuxq9OuQBIvCivd25vNdd1d39c6pIL8y0lMaGg=
X-Received: by 2002:a9d:2f08:: with SMTP id h8mr49623983otb.42.1558461722700; 
 Tue, 21 May 2019 11:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190521151952.2779-1-narmstrong@baylibre.com>
 <20190521151952.2779-4-narmstrong@baylibre.com>
In-Reply-To: <20190521151952.2779-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 21 May 2019 20:01:51 +0200
Message-ID: <CAFBinCDzvroNfzhZHhDdvc+VR1eQNg5JMJ7F9=++hdWKcEXSOw@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: meson: Add minimal support for
 Odroid-N2
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_110203_813866_BCC3F350 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Tue, May 21, 2019 at 5:20 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> +       hub_5v: regulator-hub_5v {
> +               compatible = "regulator-fixed";
> +               regulator-name = "HUB_5V";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +               vin-supply = <&vcc_5v>;
> +
> +               gpio = <&gpio GPIOH_5 GPIO_ACTIVE_HIGH>;
I missed this in the review of v1:
according to the schematics GPIOH_5 is routed to GL3523 (soldered down
USB hub) CHIP_EN signal.
The datasheet [0] mentions that this will "Disable whole chip and keep
hub in lowest power state (standby mode)"

do you know if this is a similar case as GPIOH_4 (USB hub reset line,
we configure this using a gpio-hog)?

[...]
> +&ext_mdio {
> +       external_phy: ethernet-phy@0 {
> +               /* Realtek RTL8211F (0x001cc916) */
> +               reg = <0>;
> +               max-speed = <1000>;
> +               eee-broken-1000t;
are we in the same situation that we have on the X96 Max where network
dies without eee-broken-1000t?

[...]
> +&usb2_phy0 {
> +       phy-supply = <&usb_pwr_en>;
is usb_pwr_en really the phy-supply or is it the vbus-supply of the
USB top control block (&usb node)?

if these three questions are answered then you can add my:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>


Regards
Martin


[0] https://datasheet.lcsc.com/szlcsc/GL3523-OV3S1_C157363.pdf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
