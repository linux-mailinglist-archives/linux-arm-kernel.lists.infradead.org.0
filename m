Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666901BA232
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zplcVFFYEPIbDam1L4+nJZkH/RTw4cs8r375sQXzd2g=; b=XCFPOyybnAOw/D
	3LWjXZ5Zu64KsJ158vLpPfree/Dv+7CL2xLfhS4Pe8bnwhbO7f34KLEUjv216zZi3ups0GvxsQqdh
	tVeNOsfG1MGFul8yyj4qGDPOkjaZCHt3flfAuwDdwFkX5nqx7VFFkq6stVzQmQ0czeJdMv5hl6eld
	QhOesl9zqP7PpIrMRXfBsfUbeeszGije64fIr6TGWOmcuRJVn9wHMxm6pSPKefepq0qks4YnhEbu+
	noK8mCvGx2ELL8/Y+lvjk48tvOBxO0KTmWcDjkEl9uUy0kFNacML2VmRoX6CmZfJI/21b6ZUmMJPb
	zxRoegdRA1NjFcp+hJ2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1my-0004Vg-Tl; Mon, 27 Apr 2020 11:19:04 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1mq-0004VA-47
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:18:57 +0000
Received: by mail-ot1-f66.google.com with SMTP id b13so25487784oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 04:18:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CXoIxJ0w84+gaX7lsp/3b8bY8viRFcnPlJWfzHbiZf8=;
 b=p5UhFXsjNQjmMC49CxUuP+2z9+SN6/tM1zLML07lswrXZZ9gCrCdKjpwYAsNCDBpCb
 qt+/RXxOlgTocTSiw5RivzY8MHKK3XO6qTxbZmoof8SP9l4wLGc9BYqfw291QN9+W48R
 /KqUOQmq/f8KWBBJcKZe+ssEyALuQI1O9pZcOcfxByfc9klD/f2PTG/X2nGteHu34uez
 eGqz6EJbS9Qqm3V50XnQgWdFJsJSRl6QnPDdECO+TBqgCpsob4Qhrqn1Vu7ohuXg00xi
 kt+SBgLHxca4ib2qWo2reSkc92Wb/l0mlVDuq/kQCV+8Y6V+xh2oPvFXlauItC/DUhN2
 fquw==
X-Gm-Message-State: AGi0Pua8N7iWCGd+ml/dCUahOhXjB0XWgUYZ0tEvrsw/XcODx/kH+48A
 /RIVXx7dFGhgseJ7IWCxT+dvrkvwp+jsz7Si1kw=
X-Google-Smtp-Source: APiQypL5O90eZiVP91Spazxw9kNLM/oUk/UxGHPayskHGw0X4cu3MGkQ9jx0LWUyAkboJxHXtR2bszWrIXRFKtjKifw=
X-Received: by 2002:a9d:564:: with SMTP id 91mr17871599otw.250.1587986335286; 
 Mon, 27 Apr 2020 04:18:55 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdXwsUAaeY+b6t-nqPE8kL-p+F4HqXE2mujP0eXPjrbooQ@mail.gmail.com>
 <CA+V-a8sH4sLN1XuRM+SgbbN5O38wrtMyk5QEXEPhV5tOkbchJw@mail.gmail.com>
In-Reply-To: <CA+V-a8sH4sLN1XuRM+SgbbN5O38wrtMyk5QEXEPhV5tOkbchJw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 13:18:44 +0200
Message-ID: <CAMuHMdXW1YQMUzzTGcyz2d=NxkcLtLasTqgZH0CRufQx=vfT0g@mail.gmail.com>
Subject: Re: [PATCH 00/10] Add RZ/G1H support.
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_041856_164165_CA398518 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Mon, Apr 27, 2020 at 12:31 PM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
> On Mon, Apr 27, 2020 at 10:28 AM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
> > <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > > This patch series aims to add support for Renesas RZ/G1H (r8a7742) SoC.
> > >
> > > RZ/G1H SoC is similar to R-Car Gen2 H2 SoC.
> > >
> > > This patch set is based on renesas-drivers/master-v5.7-rc1.
> >
> > Thanks for your series!
> >
> > Looks mostly OK to me.
> Thank you for the review. After fixing patch 8/10 shall I just post a
> v2 with a single patch or the entire series ?

A single v2 patch is fine.  The clock driver goes in through a different
tree anyway/

> > The missing code part seems to be the introduction of the main
> > CONFIG_ARCH_R8A7742 symbol?
> >
> I was planning to post them once these patches were reviewed, just
> didn't wanted to flood with too many patches.
>
> for enabling r8a7742 SoC in multi_v7_defconfig should this be only
> sent out wen its accepted in shmobile_defconfig or can it be part of
> same series as below ?
>
> 05ba50a4cf99 ARM: multi_v7_defconfig: Enable r8a7742 SoC
> 99b69d08729a ARM: shmobile: defconfig: Enable r8a7742 SoC
> 6b7bcd6635c7 ARM: debug-ll: Add support for r8a7742
> 1cf4e52e3a0e soc: renesas: Add Renesas R8A7742 config option

It can be part of the same series.

> > I assume you plan to submit the DTS for v5.8, too, so I'll have to be
> > careful and apply the binding definitions to a separate shared branch?
> >
> Yes I do plan to submit the DTS changes for v5.8.

Thanks. Looking forward to it!

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
