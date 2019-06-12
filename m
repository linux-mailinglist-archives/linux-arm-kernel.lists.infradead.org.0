Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C06242FA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 21:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehba39YY48BJVEo7cs4ZP4Rr0hdY/pN6b2XPZysMiiQ=; b=mf3hywZ4A3I8D5
	iv5n42Z4FnOpV+5ig1d3FF/BEo7wIiOma4FSetoDst0wXtduoXOQhQ1rKSuzCoTc1gekurAakWmX9
	rFy44RSlgwtbs2E6fOQPzjURPhJetAHef1meNWJiDwAKUQUs/sge8VbnkScmJGdzaiN+rVo2UctEf
	iP5GO5JDnoueognNPtna+/wfQsy0yCAeUIMK15aLgX4a5RI7klxBs2VRMvs6TFkhl5aQrd4/02Bzo
	jXAlhYInFG23kMb889cRL3io5bJH2raaJ5HdddEdnBtiRg6JYqACymYCt1srOuKcF6LP4URGYLzl3
	klFxFvr+fRntNd26F/KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb8fr-0004oi-VD; Wed, 12 Jun 2019 19:12:44 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb8fc-0004mv-9a; Wed, 12 Jun 2019 19:12:29 +0000
Received: by mail-oi1-x243.google.com with SMTP id y6so12551674oix.2;
 Wed, 12 Jun 2019 12:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sfLPcL25crERXrHmndKdN43HIkrSYCz0GOmOHCLrbTE=;
 b=ulhd5qz+prqvRTlbEb33O83a8dJZJItyzAOFrAUu3qDrKHWht7BK1Pz0cTuQ3rlOot
 2oxjZoPmXhooSS9W7VtVDWGm1BFzamAwNbSSfjM/pXF04rZ4meJ8D10Dq6X9o86cXgho
 mc4iWqGCqZX/6AWPmo5M4+dnUBaHr685eYyUmxN/pQzfPI1qXJqqlG9EiE6ynSEJOmbb
 WKm73I+W83G1gtEckWP4i0LOeq/CZ8kegVEBEvQeCH0dtHAVCVYGcM4cYLzfZIyGI75b
 2yPqbQPEtDTGqt2i9ZMpliCmi4PWVK0DWXL+iuP9yfoUszCtj9oyO/1tqJctfeyjc1Il
 vkkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sfLPcL25crERXrHmndKdN43HIkrSYCz0GOmOHCLrbTE=;
 b=l4BVC+O/kn6229+6qcPE9g5PqzRBYW0CjAwSGayNuXMnHAZxE/Y5oPucDVwPMhDXsU
 NHsFE2Y5JSs5HKJJbWigtXRFMZj55HIJPCLvODWY5XCMO7iwdrz5Q0SKNuWUdgDEbpI5
 I6J7yL8JWXeyCfO8ssyOUGRp7AQ1a3C9jaWJohM61FqVwBVnMGc2d1nVcjoOs9YXaUWP
 elsiTdPeShZwi42KfRHMraZiMCG3VQ9i3b1be6lHaDlLFwGLfxujQnUcwZ2zGmnXsLa0
 m8zG6payzx+XFbrGHWRdJ07VsHPSv3rb5Fq2b6WAjj7P7LFKit/u1AF6AfLhyPeE+OOR
 bT2w==
X-Gm-Message-State: APjAAAUFr/K0gzILkoijGpspByTWOrkZFmcOXtm4AZ71v39AERZoNw8i
 VTP+4qPwt8OvFMEhnqI3hSMMzlwbEZaRv5YXyO4=
X-Google-Smtp-Source: APXvYqy1dUlZ1GjSxaAhR2GBYxG+eBb73qatzfmqC3RzvvJ0mVsraiypMKNRkXEumiF39w8vn4DIrw2Km7vMogL4Qho=
X-Received: by 2002:aca:4ad2:: with SMTP id x201mr501939oia.129.1560366747250; 
 Wed, 12 Jun 2019 12:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190611135842.8396-1-narmstrong@baylibre.com>
 <CAFBinCAkwjf9oDV6AGPi2PzzQ2KNTXXDHW6FTfN3kXpDT6cFpg@mail.gmail.com>
 <8950adde-0942-5f04-0ce6-922a9886c440@baylibre.com>
In-Reply-To: <8950adde-0942-5f04-0ce6-922a9886c440@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 12 Jun 2019 21:12:16 +0200
Message-ID: <CAFBinCBaBBv1buJ=U022GyHN+UJdfA+DC0t7wkSEt5aqvjdG-g@mail.gmail.com>
Subject: Re: [PATCH] usb: dwc3: meson-g12a: Add support for IRQ based OTG
 switching
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_121228_340121_932F01DC 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Wed, Jun 12, 2019 at 5:13 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> >> @@ -436,6 +452,19 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
> >>         /* Get dr_mode */
> >>         priv->otg_mode = usb_get_dr_mode(dev);
> >>
> >> +       if (priv->otg_mode == USB_DR_MODE_OTG) {
> >> +               /* Ack irq before registering */
> >> +               regmap_update_bits(priv->regmap, USB_R5,
> >> +                                  USB_R5_ID_DIG_IRQ, 0);
> > I assume that either the IRQ line is:
> > - always enabled
> > - enabled when (USB_R5_ID_DIG_EN_0 | USB_R5_ID_DIG_EN_1 |
> > USB_R5_ID_DIG_TH_MASK) are set (which we already do in
> > dwc3_meson_g12a_usb_init)
>
> Can't say... I suspect the (USB_R5_ID_DIG_EN_0 | USB_R5_ID_DIG_EN_1 |
> > USB_R5_ID_DIG_TH_MASK) enables the detection.
> The regmap_update_bits(USB_R5_ID_DIG_IRQ) is only here to make sure the "current"
> irq event is masked, whatever the previous init.
>
> Or I misunderstood question ?
that perfectly answers my question - thank you!

> >
> >> +               irq = platform_get_irq(pdev, 0);
> > do we need to check the IRQ before trying to request it?
> > drivers/gpu/drm/meson/meson_dw_hdmi.c and drivers/usb/dwc3/host.c for
> > example error out if irq number is lower than 0
>
> No, devm_request_threaded_irq() will fail if -1 is given, I've using this scheme
> for a while now !
OK, it wasn't obvious to me when I looked at devm_request_threaded_irq.
thank you for clarifying this


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
