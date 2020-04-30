Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117201BFE7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwilYxyyZf0ylaNj1sbZwMYqEVKRRjUAC/tMA3dohLU=; b=s5bmh2oX57Mfwx
	llUwHHJFyL6W6jcHI2pkcwvi5Ubs25g2IK26xGMOC4qvQLTiNTyemUQ4BFin9VEdDu47o3qOlY0lL
	L0aBCOc8McuRynKPQx13Hd2k5gVhU1KK7y+BOSGROKHO9RH5wGy7mte0alGh3reePlG6+CS/+Xxln
	scd9446aN3DowwXdN4vqIlLM2wW+i8CemNqbMVu4KOjwPRx5x2RymHW9Yn2s1qfR856tPi4xR9zIt
	Frj6uYgg3InODQy/0yJPW8E7otRQBtlVC442ziA2KpVPt0iCyiqx/vih1ok+OgbjFiPsh6P7kmJ75
	5LuByWSFhbFqiMCgvloA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAJv-0007eY-SO; Thu, 30 Apr 2020 14:37:47 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAJl-0007dQ-UE
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:37:39 +0000
Received: by mail-qk1-f195.google.com with SMTP id h124so5847968qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:37:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vE3bI8i+KLba6V4Lh5f3hn0EFqTCTl7OhA34yJVC44g=;
 b=PUe/wo3jPquIOHMheIwdWfvo+eHTapQzf/SwIGflY+mIVI7KuPyOmZKGvLf81wM6qp
 nzoycjJdZtmSEbhhOCDb8zZCNcRF0DwLS19o2DBtpJpAHGxF7KZNkTemQ7+H6t6rVTBi
 h3JDopjdKIVJtqiq5lYa/N3+HRy8zc5dWGd+LSr6MJpyD/g/Pb0IhJ4orvX0rvEmPIFc
 gI3KP6aq0kZcoASCimBabf9WiBqduo/12HY7NBVh1OHrvEnAzI1xwcEJswsbWXpefOiB
 gk+bPbDJtOD/+6o4zprOz/8OfYloyLSGm+Y8ld3B4hLPLNw6akra/kDYLclrlLFJ+IGc
 N0oA==
X-Gm-Message-State: AGi0PuaVn2e4BwawBoWv1ivnnmX5/esyYdZeY9ljrobzUC05AFSXGJDi
 hbBTZYyvM2tPJZopihsbn3XLE8oNY9z4BbM0VhQ=
X-Google-Smtp-Source: APiQypL37xZXvZAZkCoF9EXedcHtgwTVhctRwzKsL1ZVVKLbbBWQgvPnJlTJbYuMAWHGev5mzNUqXta8lHehVpoaPJs=
X-Received: by 2002:a37:44a:: with SMTP id 71mr3875551qke.114.1588257456479;
 Thu, 30 Apr 2020 07:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-19-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-19-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 16:37:24 +0200
Message-ID: <CAMuHMdWXaKaUkAhQFG2=AQuMZSh4jRe_Hp3L=Eyjn5af49CvOQ@mail.gmail.com>
Subject: Re: [PATCH 18/18] ARM: dts: r8a7742: Add GPIO support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_073737_972669_47DA6785 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
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
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dmaengine <dmaengine@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 11:59 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Describe GPIO blocks in the R8A7742 device tree.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
