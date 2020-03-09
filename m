Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FDF17DAF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:33:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q75eptDCqepgvtc+5MzKiDisiN5TM6nqUYUpe1sRfac=; b=s3rPKuU00LNRz3
	kvUDXhy+qUvOzOgRdGQIalHJesuNKjRaPpXT0Px5GPXGlxzMNimlhI2/SKRKYnRGtxVzxJJB/IxQu
	NvmcpEuQB3SvPPZsKJ9x3h/1DiAOxvOyrTUWxRozTHr4YZhhygmbtS1QU+Guumb92wdXUb1oMdZXP
	tkW/2qd6A6GIPrhZ5RMvqXUimPfVBPvlSCVDNM45tdlQvPLMxWgcx4/NuVgfeCcXfKLQb9/80tNNB
	1hCPCUiAiMEu7wbj59mJeJ9hjqo36RqYBASCQC23Mn+6EzrGF6iolGrdmnONL8atsRCtgrEi+vfb6
	6tKZlNvZiZa/6EfBsuVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDqH-0001Do-Ja; Mon, 09 Mar 2020 08:32:53 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDq7-0001DN-5T
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:32:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id m9so848878wro.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 01:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=af2cfZjf9x1S9FZ9MDXkYOztGP6qP0GOneEhB/eEIC0=;
 b=Avi03q8clgrFOrP5q3tRQewNL0Fw0MR443djbetfTNlO/BnS3HlkfETHL3Tu63qtNv
 gvsi9LD2DzFzpVf0OPveF87+GFgPH4S16hoDLA+KSBIhEpn+v56HrnhqkgWcnzwpcvs0
 xzcKX1XCRmZUfGbbDPLo5wyOzbQ6H8f6Ieo8y4XmMs+tN1NWsU8gvW4yOLLK39rBcji8
 yqan3UVUJ9K/wW4TknQtHZ5r/iuBzOqAxVNMQHHG8VtjKlnfOv0OHlqVW595w/AWK7rP
 K2D6GjaTeqgQ6o99g8I6aOPQ/Jbc/HVZlJ24l+VrsYYumIbiXLL69FiR7dwrVhrCGWsC
 kPKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=af2cfZjf9x1S9FZ9MDXkYOztGP6qP0GOneEhB/eEIC0=;
 b=QdIyvvvtA1ilcT1Ju8Vv9RuWqq7+anqagKpJwFVlGqi2zqbGSczoWNGVcI1A8i0TBv
 EpuvCJsAxIuNwYF1Rdc7+/sGtrxPmp6ZBc4y/7g/KhHaQcNiriLP50Wgd1ySifhPtjDz
 KUnIS8NJyGMfLTgm5oAZWDrhbTjDMniricdwxAt9AcBnfYzWGw8ioa8sOi88MSn1m1lM
 nDqMCV0GzLkKkteuQhczFjYor7HGl4UqoLGGX7+NzPu6AiPVyFASLBs3T6U63xY7XNMd
 wldPagYx1LN2z6iwweOCJpvdpR08wjWM/Ww5Vi7xa0Xd5hBmxJvKxqTC2y8hqa2CKGIW
 Umpg==
X-Gm-Message-State: ANhLgQ2HbkBKYeft8YKh6IUXOixmltlZ3+kfhtLN2U/8SUrIp1mjvS75
 U/o5J+WK9o33RGEwp4nYCHAfz2M0EFgyqNDIUoE=
X-Google-Smtp-Source: ADFU+vse2mrhpQWQ46FGqAThVW5dYVYVNTdtnUQxbnZFtx6sP4gIg5N4+80B7pi4VKVVc7UzQq04sWlnL39gJJ/hXbs=
X-Received: by 2002:adf:e408:: with SMTP id g8mr20764712wrm.198.1583742761475; 
 Mon, 09 Mar 2020 01:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <CAMuHMdVyy3v24zBxJFe5hYdnzdj80dvE2Z9GO4=AC1N8fD64pw@mail.gmail.com>
In-Reply-To: <CAMuHMdVyy3v24zBxJFe5hYdnzdj80dvE2Z9GO4=AC1N8fD64pw@mail.gmail.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Mon, 9 Mar 2020 16:32:04 +0800
Message-ID: <CAAfSe-spu2oNmfEYt+WQvRQy1bCC0e1MFjbUyBAFzghd5XNBfw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: change ARCH_SPRD Kconfig to tristate
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_013243_234767_270B56D5 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-team@android.com, Catalin Marinas <catalin.marinas@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Mon, 9 Mar 2020 at 16:03, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Chunyan.
>
> On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> >
> > The default value of Kconfig for almost all sprd drivers are the same with
> > ARCH_SPRD, making these drivers built as modules as default would be easier
> > if we can set ARCH_SPRD as 'm', so this patch change ARCH_SPRD to tristate.
> >
> > Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
>
> Can you actually boot a kernel on a Spreadtrum platform when all platform
> and driver support is modular?

Yes, even if all drivers are modular.
But I hope serial can be builtin, then I can have a console to see
kernel output before loading modules.
Also, this's what Google GKI [1] asked :)

Regards,
Chunyan

[1] https://arstechnica.com/gadgets/2019/11/google-outlines-plans-for-mainline-linux-kernel-support-in-android/

>
> > +++ b/arch/arm64/Kconfig.platforms
> > @@ -249,7 +249,7 @@ config ARCH_TEGRA
> >           This enables support for the NVIDIA Tegra SoC family.
> >
> >  config ARCH_SPRD
> > -       bool "Spreadtrum SoC platform"
> > +       tristate "Spreadtrum SoC platform"
> >         help
> >           Support for Spreadtrum ARM based SoCs
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
