Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 556C217F4CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQygyTvgri9JJHMZOB9ZBXRUvd4nP2PKVnMGEpFSxoM=; b=I4XX2MqsBKbuaw
	h2Fd97F6l/qqTup4CcZrC4Al/wd5LY7grWyLuOqnQmeTwQyp/emaiZcohKiJE825A+77NRXj7pqMz
	J8ozjeykZfO2aehf1+tJNomAoEzSAzOweFKQ/eXa6ddaSahc976K7j5UCHXSNN/5IjHGN3HjijQPj
	E8YA/vRKc6VHuFb76Qckkn8+yFPvk0fEFe2vq/2REsagmROpyfOW8nfzFzD4RyS0h8UNfglfRW/pG
	nbdQFY06Lv/VHVPNW3GNeVa8lt/VyWqEtUcQyuWgcecZPLWOEvmqOg0X0D46WUP0c6t3oOM53W/G4
	FGwI8cEhariSy98mPLhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbur-0004Ep-9X; Tue, 10 Mar 2020 10:15:13 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbtm-0003ga-L1
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 10:14:13 +0000
Received: by mail-lf1-x142.google.com with SMTP id i19so4426188lfl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 03:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H41EK6fFWsu7lc3SctFKC6jvmteBRlGuxbpCpld6vno=;
 b=g8ZD6JIS5Nbi5VQkoVKI9M/R0asumknvg+5tJnMpLTrwLqopBa459G+Q/XQzcwPv1A
 dnFXMhqtT5oJqRaM0Kwk034c0qEj7/G4f0UyF3vC+FunNgutepJnWbUIIsGWNMpGPrij
 jCA2K6vv24K2GdNo8Kj6muOUhaj5wLjo7+xZTE36a18WvipB2aBXdQTWg0csU9DCnIdr
 zMRrnaF4sdNWdxAyrCOzLDh60CE54BVAevIoJBTwsg102Mg3I3iWoDVg8tiNJ8LskBgt
 3Uik+QIPptsu2Tb68aLInTso3Nwoo+3e8nPPA+WZWFbBl4GCkwQ4O6CZhst/1TtrprRx
 aaXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H41EK6fFWsu7lc3SctFKC6jvmteBRlGuxbpCpld6vno=;
 b=ScTbc63/px2DbwWyzh6E2REVxSjibBtUG0MvIPDYpJxHOcMpkiU/tg+BCxeeEl6D3u
 9nsv2ENgEkDy0HY3OIqNBUIQg2khE/uslhqIIAlQk5bGBX0nr6jRD28szToU2MtEbF9a
 KiSzSZe24uNlM5yBJSzYvjR42arbL+7HfrJ2fKGvBll4tCpk4K6Ini/z7l1REH7URLgZ
 Fy0zFvw7caZm7hXRkZetK3b5nLMNz/laL1kvxs7f/IEervin97vJcfoqAh7nD26mQ8+u
 1Dl4FlFZnIDGt5SoKvsAcfcJp7MejOSfARhodiDXv+2bcVQM0m3lHNr6F96cU95QhFw9
 O6vA==
X-Gm-Message-State: ANhLgQ2ZIvfz7r8bb/CwYuL4B8SFDdgoHmjazmQulbK6jmMMnGjs9AKm
 8XaV4CXHPVFhewutqjYIfBoO6xeDgW0XM5682HWQc+fCxE8=
X-Google-Smtp-Source: ADFU+vsQgLEAeKs3QBpJxub3atlz11c+n+Pl9FnwgZlDHA1wgeUPgTtZl/KRIlugnXJikY9VrxzECcYh0hftZrqU0oQ=
X-Received: by 2002:a19:f615:: with SMTP id x21mr325697lfe.47.1583835244537;
 Tue, 10 Mar 2020 03:14:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <CAMuHMdVyy3v24zBxJFe5hYdnzdj80dvE2Z9GO4=AC1N8fD64pw@mail.gmail.com>
 <CAAfSe-spu2oNmfEYt+WQvRQy1bCC0e1MFjbUyBAFzghd5XNBfw@mail.gmail.com>
 <CAMuHMdV1qQZF-kAwbcxhHQZZ9hs0dG-OTZ2NcB25Jtra6ii5iA@mail.gmail.com>
 <CA+H2tpEzFAbfzMuUGMfW3BqCKv2+kk+cLL5gWpR-zJZFYwWKqw@mail.gmail.com>
 <CAMuHMdUKD5Ob_o4E3bH9wx=6r2PU+7U3RQ_GVRj7ZQc-e5Y4TA@mail.gmail.com>
In-Reply-To: <CAMuHMdUKD5Ob_o4E3bH9wx=6r2PU+7U3RQ_GVRj7ZQc-e5Y4TA@mail.gmail.com>
From: Orson Zhai <orsonzhai@gmail.com>
Date: Tue, 10 Mar 2020 18:13:51 +0800
Message-ID: <CA+H2tpFaEp0Wbna=Z-A0bnno5hymVrSDE-397-Jdp6Uqsm0+qQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: change ARCH_SPRD Kconfig to tristate
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_031406_713006_0F149345 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [orsonzhai[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Android Kernel Team <kernel-team@android.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 5:52 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Orson,
>
> On Tue, Mar 10, 2020 at 10:41 AM Orson Zhai <orsonzhai@gmail.com> wrote:
> > On Mon, Mar 9, 2020 at 6:32 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Mon, Mar 9, 2020 at 9:32 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > On Mon, 9 Mar 2020 at 16:03, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > > > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > > > >
> > > > > > The default value of Kconfig for almost all sprd drivers are the same with
> > > > > > ARCH_SPRD, making these drivers built as modules as default would be easier
> > > > > > if we can set ARCH_SPRD as 'm', so this patch change ARCH_SPRD to tristate.
> > > > > >
> > > > > > Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > > >
> > > > > Can you actually boot a kernel on a Spreadtrum platform when all platform
> > > > > and driver support is modular?
> > > >
> > > > Yes, even if all drivers are modular.
> > >
> > > Cool. No hard dependencies on e.g. regulators that are turned off when
> > > unused?
> > >
> > > > But I hope serial can be builtin, then I can have a console to see
> > > > kernel output before loading modules.
> > >
> > > No dependency on the clock driver?
> > > Oh, I see you have a hack in the serial driver, to assume default
> > > values when the serial port's parent clock is not found.  That may
> > > limit use of the other serial ports, depending on the actual serial
> > > hardware.
> >
> > There is an function named "sprd_uart_is_console()" in the driver
> > code. So the hack could be only applied when the
> > port is identified as console. And other ports might return
> > PROBE_DEFER until the clock is ready.
> >
> > Could it work out of the limitation?
>
> Yes, that could work.  You also have only a single SPRD_DEFAULT_SOURCE_CLK,
> which makes it simple to handle.
> For other SoCs, there may be a variation of possible values, depending on
> SoC and/or board.

Ok, thanks.

-Orson

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
