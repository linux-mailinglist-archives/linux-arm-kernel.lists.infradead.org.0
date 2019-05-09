Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A70851881B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 12:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PRHZoeiway7Imv8qgPjkHQ4rcp+gYmYOiVHhVylxds=; b=qxFyp6yHQOO1PS
	Znzve2Uf3Its7kzuVpJL91euosTYmPxLQ3b+kzYb6LiU8++qXnXhCxfut6GfOTLCCtf5fsVM10DiK
	Mn0NrcpAQ/KwKTNrpj3QshHdUS7V0hnXZd4FWHBEIsM1F94nUECn8wFy2WwMQ5vvZh64pQ8mv/exY
	IigpxSLONZZ+wFhzuHDtPHkUhuSzv1KMpIVK1C+nKmGg0rYqmgk7UdzStW+41F0xdTXbVhthjryiN
	3URRJ9w6ii2naEnnbSDgtyEs//eXuVwHFcBXPSHSZflYI1J5oswmdsiYhxIFwWb9liy8h6kn/QooS
	QbMddvQ7cc7bKNiNpcuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfrk-0001RJ-Pe; Thu, 09 May 2019 10:01:28 +0000
Received: from mail-vs1-f67.google.com ([209.85.217.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfrV-0001Qq-Ic
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 10:01:17 +0000
Received: by mail-vs1-f67.google.com with SMTP id g127so1030687vsd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 03:01:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DHaRkQ/2vn/U1UsP9TEsDMsu9/0P83T+ZbmCHCRIAYY=;
 b=dA5hbhuJqF99/DHmNi15P0BEy4X+9+EefEhvtjJky0+Ld0VouJjwbFyU+qwQQi3NL2
 NmgXiKEh+C/sA98hZTx5uyBm5gd5nMCHEJo3aXfTQaxFWQh+fkNclKl1aMcwzVnOqu4R
 0FdBIXUPqhpyr0Vsjy0QIwh4xJ0rSE7vDuCH969yGM+R+EW5h0HZ7pb3gLZ+J6D0dBwF
 GmxNn7ol1YBqP1fJC4F+fiRGWKmV8HutiMiacSMVX5zfeIWOi03rkC0jz0ITpl0FhiLM
 DzzOsBZEM5D1swDENGHr2EckMksp6XhrQc8FV5vdSsb+fv0iCRYfch5ufyLWJvUflWDt
 bJTA==
X-Gm-Message-State: APjAAAUK2TYXTHi341kbGZstdx9v9tGIXgHWDGY/4tS1ryZdQpUhfnC3
 IjqNP7R0nmY6xFyhv3RlZSvtgHAzLi6jDXMiJgk=
X-Google-Smtp-Source: APXvYqxkrBMDoQgl94Xq+EJrYL2SnG8siN7hmwEIbaivmkhjCTkqvNZX7XKZj4XQuWMLvqLnvAh96qBvcWcCdX8klx0=
X-Received: by 2002:a67:ba11:: with SMTP id l17mr1799664vsn.166.1557396072144; 
 Thu, 09 May 2019 03:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190508115605.13726-1-horms+renesas@verge.net.au>
 <CAMuHMdX3YW0NaDXvN1WjWeNrCH366LALa3UT41REqAHNJk-9JA@mail.gmail.com>
 <20190509095749.23b2jnvfks4enkpt@verge.net.au>
In-Reply-To: <20190509095749.23b2jnvfks4enkpt@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 May 2019 12:00:59 +0200
Message-ID: <CAMuHMdWG4o4EJ3WK1tFqGvQGvTDpSrA-i=fOZ9nJm9eihvJxtg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: renesas: r8a7795: Create thermal zone to
 support IPA
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_030113_613968_FDC99FC8 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

On Thu, May 9, 2019 at 11:57 AM Simon Horman <horms@verge.net.au> wrote:
> On Wed, May 08, 2019 at 03:20:03PM +0200, Geert Uytterhoeven wrote:
> > On Wed, May 8, 2019 at 1:56 PM Simon Horman <horms+renesas@verge.net.au> wrote:
> > > --- a/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> > > +++ b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> > > @@ -155,6 +155,7 @@
> > >                         power-domains = <&sysc R8A7795_PD_CA57_CPU0>;
> > >                         next-level-cache = <&L2_CA57>;
> > >                         enable-method = "psci";
> > > +                       dynamic-power-coefficient = <854>;
> >
> > The dynamic-power-coefficient property is a property of the CPU,
> > documented in Documentation/devicetree/bindings/arm/cpus.yaml,
> > and not directly related to thermal zones.
> >
> > Hence I think its addition should be done in a separate patch.
>
> Sure, can do. Should the coefficient be added to each CPU or only
> to a57_0 and a53_0, as is the case in this patch?
>
> I assume the latter because the A53 coefficient applies to all A53 cores
> and likewise for A57.

The latter, I think.

> > >                         clocks = <&cpg CPG_CORE R8A7795_CLK_Z>;
> > >                         operating-points-v2 = <&cluster0_opp>;
> > >                         capacity-dmips-mhz = <1024>;
> > > @@ -207,6 +208,8 @@
> > >                         power-domains = <&sysc R8A7795_PD_CA53_CPU0>;
> > >                         next-level-cache = <&L2_CA53>;
> > >                         enable-method = "psci";
> > > +                       #cooling-cells = <2>;
> > > +                       dynamic-power-coefficient = <277>;
> >
> > Likewise.
> >
> > >                         clocks = <&cpg CPG_CORE R8A7795_CLK_Z2>;
> > >                         operating-points-v2 = <&cluster1_opp>;
> > >                         capacity-dmips-mhz = <535>;

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
