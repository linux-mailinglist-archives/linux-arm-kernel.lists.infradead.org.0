Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DD617F3E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 10:41:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVP7bVK1O1ANEvKnp19ZpZ9LocGgR81KLlZE049RcEQ=; b=indOwVb1xV9Rud
	DJkYWjhJVa09g2+0RpEfT53823eYimfIixgZkIvnZ3OfmN+flNoX+4m4HIEO2wSSmONGrcXrNDg6x
	M9Dg1sAoBym09xcrozfTTXDcjVuUlA9HIamgRU+iGKznPreysflXX4dKckYxbxnDzo9d9BwBnqUjL
	xuivlI6P+NwFttb9ZlDnJXfwKWPbZq4DQolnPpa8qqbAWMe28C/PnDU/LKYNfQI7cbSYrwPRP8Cv3
	dNQlASk66wrD2FexhsffNT41cG0Be3i3dBmObLthpf36nbjJUlHSgMjrfGJntimEkVLS1Io3/xp4H
	DMu9LRbFFB7bF1wmXoEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbOL-00034E-FT; Tue, 10 Mar 2020 09:41:37 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbOC-00033W-Mk
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 09:41:30 +0000
Received: by mail-lj1-x241.google.com with SMTP id d12so13329882lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 02:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YaRVVvZe82f7PICjBJhATGndS8gB7Og7ojx2leFE1C8=;
 b=qmgqsy1VrS/eXemTV3L1tff6TLx+hApE+cDMEYWENUlA6Av/G7trT0ltO5rIGfkQJJ
 OXvdTrGt/0U40hM4O7FqrYhV3r5umIg14moWgX9nIgdV/Xsw8+NPTLNoylDs9IO4KFJL
 E2yAhSSaSCPeOgNeWS2+XC0J/ov0dh179PkFTN52VQDsuZNrKvzgLVA1nRBLp6aaYafH
 4DH6ou71NI1ibntcUjiAHDUjMi3fysWfyCxQ748ycUqtSlC/qrR59MqLk4wBIsaLoPJq
 qF10hhSm/blyptIxwZ/XV/poEwkFUkX4V7qdXxMdRUU7hEcbusG2pbixW74lC13GuIuk
 oK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YaRVVvZe82f7PICjBJhATGndS8gB7Og7ojx2leFE1C8=;
 b=JkJiwYFj74CGQW6Sz0h/Qz/NFQX9tfbnN8so1M4fndybWdJKrwC6mUwAfGobmYLtKb
 bCVEKg7p06TrpBX+kwr8LhklqMlxBavyCx6XHr8uXX5GF51ntGvJqbBn0kCfLNSTjbE2
 dqY01jQ5muRuPmdYJcvODrJ1CXjGD2rJZbHmWrmTXVnFBoVaIKYfs7c/wnPr/sHVTSC7
 C9RO64rDFjgEe1WEuYLC4gwpDYwaglt55gAHzynwbn3pw3TEjd2lCQVOLhniez7AMVqP
 wpUHgTrcRai+4monZCsQWJ6gB60nPLlqN3eZ1TlXDbPdjUgGUfnXrZLTZaitAiFyQDgN
 tQIg==
X-Gm-Message-State: ANhLgQ2pn1FnyE6ADerCcOw4df3t0cGLwa00S+E/7L83i70AUfWkQmZJ
 oc86ngXTIIBik1Q4g8Hp44Zu7cygTALyyWs0GsA=
X-Google-Smtp-Source: ADFU+vtRC8LeiEKpj+k2mKLQ0pmXFHNR7wTfcHTUGrxFaLczWpylo9qeN63FCf2joLyGJrDrt/Jrju/Zs/E9NzKJKug=
X-Received: by 2002:a2e:8699:: with SMTP id l25mr4602504lji.148.1583833286522; 
 Tue, 10 Mar 2020 02:41:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <CAMuHMdVyy3v24zBxJFe5hYdnzdj80dvE2Z9GO4=AC1N8fD64pw@mail.gmail.com>
 <CAAfSe-spu2oNmfEYt+WQvRQy1bCC0e1MFjbUyBAFzghd5XNBfw@mail.gmail.com>
 <CAMuHMdV1qQZF-kAwbcxhHQZZ9hs0dG-OTZ2NcB25Jtra6ii5iA@mail.gmail.com>
In-Reply-To: <CAMuHMdV1qQZF-kAwbcxhHQZZ9hs0dG-OTZ2NcB25Jtra6ii5iA@mail.gmail.com>
From: Orson Zhai <orsonzhai@gmail.com>
Date: Tue, 10 Mar 2020 17:41:14 +0800
Message-ID: <CA+H2tpEzFAbfzMuUGMfW3BqCKv2+kk+cLL5gWpR-zJZFYwWKqw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: change ARCH_SPRD Kconfig to tristate
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_024128_745602_A6AAC880 
X-CRM114-Status: GOOD (  24.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

Hi Geert,

On Mon, Mar 9, 2020 at 6:32 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Chunyan,
>
> On Mon, Mar 9, 2020 at 9:32 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > On Mon, 9 Mar 2020 at 16:03, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > >
> > > > The default value of Kconfig for almost all sprd drivers are the same with
> > > > ARCH_SPRD, making these drivers built as modules as default would be easier
> > > > if we can set ARCH_SPRD as 'm', so this patch change ARCH_SPRD to tristate.
> > > >
> > > > Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > >
> > > Can you actually boot a kernel on a Spreadtrum platform when all platform
> > > and driver support is modular?
> >
> > Yes, even if all drivers are modular.
>
> Cool. No hard dependencies on e.g. regulators that are turned off when
> unused?
>
> > But I hope serial can be builtin, then I can have a console to see
> > kernel output before loading modules.
>
> No dependency on the clock driver?
> Oh, I see you have a hack in the serial driver, to assume default
> values when the serial port's parent clock is not found.  That may
> limit use of the other serial ports, depending on the actual serial
> hardware.

There is an function named "sprd_uart_is_console()" in the driver
code. So the hack could be only applied when the
port is identified as console. And other ports might return
PROBE_DEFER until the clock is ready.

Could it work out of the limitation?

-Orson

> And on Sharkl64, the serial port's clock is a fixed-clock anyway, so
> you don't even need the hack.
>
> But in general you cannot rely on that, especially if your SoC has clock
> and/or power domains.
>
> BTW, what about the watchdog driver? That one does need a clock, and
> loading it too late will reboot your system.
>
> > Also, this's what Google GKI [1] asked :)
> >
> > Regards,
> > Chunyan
> >
> > [1] https://arstechnica.com/gadgets/2019/11/google-outlines-plans-for-mainline-linux-kernel-support-in-android/
>
> Let's see how having everything modular works out on an SoC where all
> hardware is part of a clock and power domain.
>
> Thanks!
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
