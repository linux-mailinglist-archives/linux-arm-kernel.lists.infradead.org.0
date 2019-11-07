Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AECF28A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fl2VN8HzKbsQaXGTryNDqL1bsjP+K2UHlVup+cPiPBA=; b=dYPkfm8Wdn8Tn8
	DrSWpxeBOFxQChtU4KJ/X1NagaPN6KrhDixSrcto7gGj3fCGFqkBeIFDBay17dUyCeTxJOT2k1X8y
	D+SZTJUNeZH8HqlAkSpCYgyiyyFYaofBQBrsH5g0+6iw78g0ehQkPROl1UYTqdbF5Z4Zidxsgzzje
	EXHK2/vby3g3/LUrOCb3+wMor9l6MuN/ww3RQvGUHQNhQg1X6Kpyi+oUEZ9hJmYpWfCk7HQPve0W+
	NsrqFKGNGHWDm+YP/vvlhx5GjX1bkzO5DiN2yomJFNeDzqUIEsBPws1kEdWp9KOmyQMbZJBBPfGo1
	qPWyJaVKaG3pCwUrtiag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iScmM-0001At-CG; Thu, 07 Nov 2019 08:04:30 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iScmD-0001AV-Di
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:04:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id m9so1155515ljh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 00:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Icvs9OZ2xWXC5UPn4WjTDzsRSqv4ABuStVj0mfFJ9ZA=;
 b=F/SLkeZfh9tn1C1SOcqQGA7uI8T6cB6x6lBr5R+HR4WuNbOlV4NPR9FoJasE9xAtv6
 myuCAP/bRD1Vvyzg8Ht5V9SEOvVDBbEU7ewy7WXFpiZ1HLhB8P2oZeUPl3Cmzz8jHTBx
 +JfsjtF9sx1XLM12jsSW1Us+ebt3dG7MeFhJRiWZ9vvFjb/pYX1Z67xgojDhwliUFwWq
 wc+FCq3m2Kv4+LogclzGNz9+4IIpJKrUjtvRQecQJusMeZQtaRp1A4lh4MEQGcSjyORu
 POQGNcpHNLzdj9lNrwEoO14rI7QHovnPphY92fDo2F1f8ufzcgSnOLHhOCHrewzyFfUV
 TcfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Icvs9OZ2xWXC5UPn4WjTDzsRSqv4ABuStVj0mfFJ9ZA=;
 b=SE5UeWqOQg2rd4I1N9cjBjROXNqNrp7JGNLNjDdicBinJi6ce/jsIstaHuspwAE4oI
 RbwrcJElyWbHhD0i8XRPpyCGiPcTjkZ+gVhc72/LGtYlbtXIJ2pQ85jRaX1x/7y2NbP0
 Wy+kkWxMuL2nkYe347fcDhrUYw4jm9/uYxr/H0Ph5QR9TM1qa5M0H+4kjA4ksDAYjDxi
 rSePhXt/SueuShBv9HFKf/x3vX2J236xWwX3tyNS3tcKNxvHM9/bMRJhJLG4IsXImMOz
 m2pBDjB6aNziQFoa4GiAMm0xKM0Uc4Jgdvr6fHyP4OijEnfRhvHKa6GvUiCzI5VebXnQ
 fjTw==
X-Gm-Message-State: APjAAAVEQ+mxiHLxwGUjPtn/B9pNatjsEF4drxOcq5/Pv3TM/ROVCxEG
 FJ/CjQWl7BwnC2IbhQuzm8OTaR7hEBXiEVgFUfrtXw==
X-Google-Smtp-Source: APXvYqwyLBON2IrM1MH7zrGDSUoOt7eH91Ktx6j7qYfJSSZHJ7k8s5gOCs6qkRwBV0ORbE/D4fJNFUcmt5X6vjZzWp0=
X-Received: by 2002:a2e:161b:: with SMTP id w27mr1297296ljd.183.1573113860059; 
 Thu, 07 Nov 2019 00:04:20 -0800 (PST)
MIME-Version: 1.0
References: <5dc3460a.1c69fb81.bfae4.adf1@mx.google.com>
 <e2ba3c23-4b85-f83b-0ba4-dc0db1b8dd0f@collabora.com>
In-Reply-To: <e2ba3c23-4b85-f83b-0ba4-dc0db1b8dd0f@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 7 Nov 2019 09:04:08 +0100
Message-ID: <CACRpkdYA9TgBWb2TQzSVtV1CWy6ZOXA1=8NjSg5bksrNM1C=NA@mail.gmail.com>
Subject: Re: next/master boot bisection: next-20191106 on r8a7795-salvator-x
To: Guillaume Tucker <guillaume.tucker@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_000421_466050_56197EFC 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Branden <sbranden@broadcom.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Scott Branden <scott.branden@broadcom.com>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Matt Hart <matthew.hart@linaro.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, mgalka@collabora.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 11:27 PM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
> On 06/11/2019 22:15, kernelci.org bot wrote:
> > +static const struct of_device_id bcm_iproc_gpio_of_match[] __initconst = {
> > +     { .compatible = "brcm,iproc-gpio-cca" },
> > +     {}
> > +};
> > +MODULE_DEVICE_TABLE(of, bcm_iproc_gpio_of_match);
> > +
> > +static struct platform_driver bcm_iproc_gpio_driver = {
> > +     .driver = {
> > +             .name = "iproc-xgs-gpio",
> > +             .owner = THIS_MODULE,
> > +             .of_match_table = bcm_iproc_gpio_of_match,
> > +     },
> > +     .probe = iproc_gpio_probe,
> > +     .remove = iproc_gpio_remove,
> > +};
>
> There's a fix for this which Mark sent yesterday[1] and should
> have now been applied, by removing __initconst for the
> of_device_id table.  So this regression should not be present in
> the next linux-next tag.

Confirmed, I pushed a new for-next branch with this fix in it.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
