Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D707A48F6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 13:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bB3IIRK5ijz/G0fQQ8zA+UG4EUFjLuHaD5J7qtrklCk=; b=nZozjSyTXN0Rf2
	VE4LWpoRYgF530mHqZsx3pnK0UAJQAU5xVQ0bhIESTHOAwvakQ8jdTlSuaexyTxbQrAC7V8xgRzOH
	4rhRZOUgVtlubEv6MwSQUYv7P84//Q0mZG/i+XKKcXxXZLNPC9IO8a2g1P5IvtY/19AG4FTaMeZOL
	A5VAhRSKAfilw13gnIU5zUhuXLQbXyVnj3AM38j8u1oYUyRWm7h1oiNnivkki1s9JfLpvHkTDyYmL
	TTLHPbP21N85xJKv7iYj7/UR8mcvETaz8fh8amSgBePjzJS7z4WBHyTJgyicBuhjuO8s5AYE7dHXH
	eX2i7aqRynTKw4BvGVpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4OID-0006BA-D4; Sun, 01 Sep 2019 11:45:13 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4OHy-00069R-Rh; Sun, 01 Sep 2019 11:45:00 +0000
Received: by mail-ot1-x342.google.com with SMTP id c7so11175837otp.1;
 Sun, 01 Sep 2019 04:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N5SW0h/ksHed7i/eHFWIqXI6qoMGR2BQIv5D3teJr74=;
 b=vhanXbkPhCASy7yp6E70RWXSIea3XKgBgpX4J0cjIOAXFMJTvv4io0WvNACb2Q3NHI
 KqPzpdfJDGsN3hcbHseg56/IVIqd+TCUKLGLCVlBCgoaBA3+DcXamXY36nT+rtVt/7UH
 z0Sx87ePMve/U0njqJexwh8+c8PfcU7rKefFregulzCaq0LKPs65DamwrPTnAZQ0/xmK
 +cduO/uBYFyqO1xVjiFqng6rNs1rMw21ZKXzSKn2lRN3OuElmSbwlOv+bg6vTiymyDXa
 J8X6pRqog59PPe0G6EpFNcdUq0OlIcD6RqJttG9cIFjx7MaQ92QUm2Lw13rLH5OmKldY
 wSAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N5SW0h/ksHed7i/eHFWIqXI6qoMGR2BQIv5D3teJr74=;
 b=WjKTn2x62O9/9Ivnm44kyVMzGoo0mT5XD5VsYdPkzydgUYsbe3MndRSEOKBUbDtJ/r
 grNP9Rsi8vecX+AEt/Aul7+zqwEEchbweJmezAt/01nLWuo8JqFKY+XWZ+vpLhvYhtIe
 d5zvmXVh8MyS+A6TWOonKDxyaU4BxuMvWkbb1YaiwrAURfmPVJCe8o7RnXFf3oBh6sy2
 JPDuPNYevyxc+SzgtDuP6ZH2Qqk47pkF1zM7oaXcJbO5PTAmjsOtXIozHt+b5RyKi2Yw
 xey0pqNz3+yOjarjQNsWSGm9YY/skedytZuv8gVVnh2xBv9rTmgI/R1VnVhUZfXh87XX
 0xlQ==
X-Gm-Message-State: APjAAAX+A6yphX0O6JGNOWAIKmySc5Y3wpHj7kWvBEG7Q9XUtZ8Q0DPL
 ZotoIo/t5WYwMK1agya26bCLjKkYgjp+9X29EgA=
X-Google-Smtp-Source: APXvYqxLmXiuv+TRf/3RDHS6aD3eo3thHXEQG33YbJzqOL7vyoTqfUAXob2N+E96QZArxo0XcqUwg5ritXmDRv0E4k0=
X-Received: by 2002:a9d:1d5:: with SMTP id e79mr19768337ote.98.1567338295280; 
 Sun, 01 Sep 2019 04:44:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190828202723.1145-1-linux.amoon@gmail.com>
 <20190828202723.1145-4-linux.amoon@gmail.com>
In-Reply-To: <20190828202723.1145-4-linux.amoon@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 1 Sep 2019 13:44:44 +0200
Message-ID: <CAFBinCB9NPtncyJCMWDbbzJnQafeaY5U3XHh=NuRZSCNDdO=Hg@mail.gmail.com>
Subject: Re: [PATCHv1 3/3] arm64: dts: meson: odroid-c2: Add missing regulator
 linked to HDMI supply
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_044458_906310_119FEACD 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

On Wed, Aug 28, 2019 at 10:27 PM Anand Moon <linux.amoon@gmail.com> wrote:
>
> As per shematics HDMI_P5V0 is supplied by P5V0 so add missing link.
typo: "schematics"

> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> index a078a1ee5004..47789fd50415 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> @@ -213,6 +213,8 @@
>         status = "okay";
>         pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
>         pinctrl-names = "default";
> +       /* AP2331SA-7 */
> +       hdmi-supply = <&p5v0>;
>  };
my understanding based on odroid-c2_rev0.1_20150930.pdf is that:
- there's a (fixed) hdmi_p5v0 regulator using p5v0 as input
- the hdmi_p5v0 is the hdmi-supply

it doesn't change the functionality of this patch (since both supplies
are fixed regulators anyways)
you are already doing a nice cleanup with this series, so it would be
a shame to take a shortcut here


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
