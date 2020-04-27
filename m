Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F021B9F9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSJCvDYXZvs7mIcGLBWXQZ8vCK6NgSj9VfTdFbO5GdE=; b=EEoeaSdAg2n2Rl
	xhQ/Mo/RWMutSPaVMoGVZA8JcFWEfVVeBDGm+AkISEdwa5mjtDtYWBSOoawDAqgltQ1rz535yf0jh
	ztlTm3WFr1cNsnUA9IXKdu+XtQtno9oqyoB+E5irJy8Q5QVpRw1HceiUWF1OLczalIV+7WpKn2Jcc
	7SqgMAkXHsBzIMNXBiWeD7LgEo7Z2L2vksvrVC/WPQnNCX8uLy2RIfB1/L15ZMVQPex/RatjdYIVK
	WQNr2aeNzQDgzeE/hGqGPFLvE5pd677CnjN1hb2Rr4AgTqh58oZPw9ZE/kB71xDuVDFU4WClMYd93
	Cr9MOaPoO8TiuXwR3nIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzsx-0004Z6-Fj; Mon, 27 Apr 2020 09:17:07 +0000
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzso-0004Yb-JC
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:16:59 +0000
Received: by mail-oo1-f66.google.com with SMTP id c83so3704257oob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 02:16:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R1QrTa/K0bMQ+b9dlA4C9LjJ8AunxEcf6O025vwbEug=;
 b=rUPz3Vlti767GcRI0l+trlunNhyS15kD/J4Ri1nMoKhGIwyiTLIwjVADuyPZ65MFhl
 8uEa98sWScKSaU4FPfDOcjE+XfyIDTwOcQm79GTXc904foYU1t4pfXlQWIPhzQvz8CJ5
 3pgeMVFs8grvM+r0L3CuC2RqWdinsK4lOo37hNl9+ihz3lyoH0IHQ+AHWG7T8x4L0XsM
 fkQgd45mkwcLg6xdnN+zto9R0LSCSNJhxzICVt5jPWCDLzBUKwUyGqVE+WvlSX7u5XNS
 LSfAU9v5CoJzKFYrg70a7toYRllJ+ZQ0iNp9pskBZNArtujU7dBMwa+b2kFPQV7QopCV
 Hv3Q==
X-Gm-Message-State: AGi0PuZ0Q38aXRZRg8HYuGDQQoNk2D8ahgG7wl33gDCsMaTlQolcadu2
 2E4FsSvH/SUWQCfrRBSoFp+lhekDapT7SMBn6OM=
X-Google-Smtp-Source: APiQypIJzSvNvEo1tYanaXMvgtTGblhKVBrP3rfeg0g85mtYT3VODWtMnFtSr9Hn+6l6aAPSGDtmk70AKFPX4WR0Z1o=
X-Received: by 2002:a4a:d44a:: with SMTP id p10mr11810739oos.11.1587979017681; 
 Mon, 27 Apr 2020 02:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-10-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-10-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 11:16:46 +0200
Message-ID: <CAMuHMdXyE+y00HCqS-2SnmVgeaeVQ2f6cKLKrm2njSi=V85+Nw@mail.gmail.com>
Subject: Re: [PATCH 09/10] ARM: shmobile: r8a7742: Basic SoC support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_021658_627618_05BA695B 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 <devicetree@vger.kernel.org>,
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Add minimal support for the RZ/G1H (R8A7742) SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.8.

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
