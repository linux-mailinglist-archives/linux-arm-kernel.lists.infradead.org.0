Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD121ACAB3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnK8v1b+rraca+SfU1I//xdN0YSVwmcVCTlioUlZHPI=; b=Tf+KjFZdQAiXIn
	F9s811qD9Qr3nYUuw89qFEiao6VLV5PimmDR/f0/ewWfGSE8cwvkl1lm2a2wd/2ADeNNdItN/vJH3
	zvSdnnZ/dGvveIy9ia2MQBOdENjXFhbv/2XD1PARHMQp7JlVFqnWGpKQczNVAb7dcSIfx4X7QVVBd
	2SHX6JxqiSNFlGYyKvjwestnkY54PKBh17wvTcuITjfLK0Pqhu9CzcQl7nixe6wsnfKJzl8WV5XOp
	ltFkMzOlN3ij2iR5E38RQo4IKlbhcLo/an3MxLfgq7a4P3LF7DRAZeXgSvz1RKaHrYMMVMLcXet/U
	YPkiuvN4RLw/taWT/NPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6ax-0001MB-DN; Thu, 16 Apr 2020 15:38:27 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6aq-0001Lj-Cd
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:38:21 +0000
Received: by mail-ot1-f66.google.com with SMTP id w12so3362740otm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 08:38:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lw132FJ1IkHMDhBaUz9OoWvHN6gIUc3nGCLM6oGU1MU=;
 b=cgpC0u7awMcjwHY3rBWK1gFDYCl/NpVOcwIoPsMefTZVDHN23viPM64rOLvebaijv0
 vLA8Pw3jIcJyQk2uneidKAkgdF/4Y8ZS00MXRuIaUfBlVR99NaeLxRJyDOuc3znYsWcN
 Ma1ZcHecFg3xNnKNWP37ADtK1L2MrCWfSDBzsXqfSEjzLe1biwKSvAlTZInSl31r1V/q
 tzloxWNOjQBA4rwt+ACo1ey8k+sQ//EOOdqfUGNj4A+D3Rukb/69Bucnew+94omYtWGr
 Fm+J1UjGHjhohLN18K0rL0dVhyVuzIAD1yh/XV3iqo0L7AyZkzGdUlBQTdtYDOKth6TM
 JiVA==
X-Gm-Message-State: AGi0PuaEWv4p2ewnj4b9Z4Thx+Za5IhxzuvV2BnP19q/sUhN8CTrQZyI
 usMcBy2Rxt7SnXS7i+Feubz0xUDOKt4ydQEs1Mo=
X-Google-Smtp-Source: APiQypI12iXIrm8mtmSb+XKSEPYhA1HFJq3oTSPTAEFz3A7lZAnTnLkLIG43fWAGSkgC9em1kdGMDMbBxLJi/Z6CDKA=
X-Received: by 2002:a9d:76c7:: with SMTP id p7mr26140182otl.145.1587051498619; 
 Thu, 16 Apr 2020 08:38:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200416115658.20406-1-geert+renesas@glider.be>
 <20200416115658.20406-3-geert+renesas@glider.be>
 <20200416125630.GF4987@lakrids.cambridge.arm.com>
In-Reply-To: <20200416125630.GF4987@lakrids.cambridge.arm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Apr 2020 17:38:07 +0200
Message-ID: <CAMuHMdWRW4+YLR8fz0hUTAPupRkM4Y5c82XHuOWSvNYOh-BZ0A@mail.gmail.com>
Subject: Re: [PATCH 2/2] [RFC] arm64: Add dependencies to vendor-specific
 errata
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_083820_428023_2E41E41B 
X-CRM114-Status: GOOD (  21.40  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Wei Xu <xuwei5@hisilicon.com>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andy Gross <agross@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Thu, Apr 16, 2020 at 2:56 PM Mark Rutland <mark.rutland@arm.com> wrote:
> On Thu, Apr 16, 2020 at 01:56:58PM +0200, Geert Uytterhoeven wrote:
> > Currently the user is asked about enabling support for each and every
> > vendor-specific erratum, even when support for the specific platform is
> > not enabled.
> >
> > Fix this by adding platform dependencies to the config options
> > controlling support for vendor-specific errata.
> >
> > Note that FUJITSU_ERRATUM_010001 is left untouched, as no config symbol
> > exists for the Fujitsu A64FX platform.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> I'm not su1re that it makes sense to do this in general, becaose the
> ARCH_* platform symbols are about plactform/SoC support (e.g. pinctrl
> drivers), and these are (mostly) CPU-local and/or VM-visible.
>
> I think that it makes sense for those to be independent because:
>
> * future SoCs in the same family might not need the same CPU errata
>   workarounds, and it's arguably just as confusing to have the option
>   there.

True.  But at least the dependency restricts the confusion to a smaller
audience.

> * It prevents building a minimal VM image with all (non-virtualized)
>   platform support disabled, but all possible (VM-visible) errata
>   options enabled. I do that occassionally for testing/analysis, and I
>   can imagine this is useful for those building images that are only
>   intended to be used in VMs.

Oh, you also want to build a "generic" guest kernel, with all ARCH_*
symbols disabled. Let's hope a maleficent user cannot disable errata
mitigations in the guest kernel and break the host ;-)
And perhaps you do want to enable some platform-specific drivers for
VFIO pass-through?  Hence having ARCH_* dependencies on those drivers
means they cannot be enabled :-( Hmm...

> I think the change to SOCIONEXT_SYNQUACER_PREITS makes sense given
> that's a platform-level detail. Arguably that should be moved into
> drivers/irqchip/Kconfig.

OK, makes sense.

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
