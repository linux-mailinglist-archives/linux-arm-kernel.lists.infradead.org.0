Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBC61BFC56
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twWLr5LgIzEyU1am/Hi0PWOlpivfOscrDN/3Jwa9y5k=; b=mac7EknAgszDeF
	Y8IMq8DW2KYREUEXpDG7RLDs1Sa/Kc8GEuVckBnDz9MLWqbymARubbJ7FFq7d3hhb6Q6j6jnRdEGa
	v9PxX6+wTGaS4YvGB9eyMvHYmoX+e3RaTomH3+GsUIJU1CzgRQr3u4u0Y+z6azMzFRtXElr/3GH1L
	Dx0X8Zp5J0uLJONC3796zwq6wvOvkeuYaVJvQ2Tdm0uL2SbiqGJ6HJvf3OjfAXBCztrw26O2Powmo
	kHVh1Wk7ecaBC+w/YTfFRoI4ZwEFBYv0M/caKEY8aoTEwdQUuDydcKBm1FB2nJ30YE2Qr8JSyPjar
	UYrXiklH/Ua1Q74+TuPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9oj-0000Yt-QU; Thu, 30 Apr 2020 14:05:33 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9oM-0008Lu-0f
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:05:11 +0000
Received: by mail-oi1-f195.google.com with SMTP id 19so5279524oiy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:05:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=btoVzhyY0wnUJEwfEjCbMjjPFevTpPi/O3/wVPiGFzY=;
 b=nHw4DFtuLOtVUTeQBmbxXY6RDl+KGS4C30cDcOl2WehJUW9+wOn/iquwIlT2/6mWn2
 e16Vr47PuDnAqOJEqTC1ydtyvOJ2OoPzoTKGUtGHPYeKmlwd0CqdNlCHvrHOg9iJ0Cqw
 CcSpFh+joYG2+U33rv5qwylH16XEgEyA/OR1JnUmD/gUqJ9EU6dCqhov0099j9krooTX
 VEX9kSz8FYvURkQWcpeuZvNCfwLQrN9Qy6dyaFV4sbPLzStPIijn1QdDUV6ZN/enXdvG
 1kR5slEi5p19O87kw630gPur6AHFaXv5YsXbq/eJiM65+Oq33j4FHEltlnyFdR8dhVVY
 2DeQ==
X-Gm-Message-State: AGi0PubZT427efke7IqLrdaunhrNGrnvILbye+Ch1TJYxzETW417dioq
 9Tj55casPYt/3g3UqCUEwyO+0pl9NocRzKfJLk0=
X-Google-Smtp-Source: APiQypJf2tz6nTts7ezicKf5ZObe2sWqHoXbLa3vjDS8ljB2NDD54mIOYa5s4UgwtTQTUZGm9HLHqKoVdv49zUTb29A=
X-Received: by 2002:aca:f541:: with SMTP id t62mr1777710oih.148.1588255509404; 
 Thu, 30 Apr 2020 07:05:09 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-10-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdWUYU6-S+EhzTKE4JeS2ExLQcsg_Bpy7RKD+cwhg55M8g@mail.gmail.com>
 <0002cb9c8b1f0f7a308dea06af14bb37@kernel.org>
In-Reply-To: <0002cb9c8b1f0f7a308dea06af14bb37@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 16:04:58 +0200
Message-ID: <CAMuHMdV-65MAgzVm=1_TAHgtp+T-ZxdUjAv79uopKMp3EQar8Q@mail.gmail.com>
Subject: Re: [PATCH 09/18] ARM: dts: r8a7742: Add IRQC support
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_070510_100419_7270FF8E 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 dmaengine <dmaengine@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Thu, Apr 30, 2020 at 4:01 PM Marc Zyngier <maz@kernel.org> wrote:
> On 2020-04-30 14:54, Geert Uytterhoeven wrote:
> > On Wed, Apr 29, 2020 at 11:58 PM Lad Prabhakar
> > <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> >> Describe the IRQC interrupt controller in the r8a7742 device tree.
> >>
> >> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >> Reviewed-by: Marian-Cristian Rotariu
> >> <marian-cristian.rotariu.rb@bp.renesas.com>
> >
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Can I safely assume that the irqchip DT updates will be routed via
> the arm-soc tree? If so, feel free to add my

Yes they will, eventually.

> Acked-by: Marc Zyngier <maz@kernel.org>
>
> to these patches.

Thanks!

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
