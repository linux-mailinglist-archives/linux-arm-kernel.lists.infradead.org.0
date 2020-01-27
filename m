Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D384714A5BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFjk1A9ee6W19pRaG4oFIUwkAZLSKThW4FJNQ3MqI08=; b=Z81cnKMG2JENq7
	8c0w42qXUNIjTMWb2Puj4PT7+FVEx4KSKef0biVEECNHGSuOAhg2ftuLm+jqYpKqG5eUj+vITK2N1
	76/m3lk+2MUDI7/gYds8o/ANFhjCLMAgnG76yPNNdrCi853FAZt7mEOoqy6v1G8L18+yJWH8Ee0xf
	ZDwMlyJvc9iuCk4cvLMBjWJRbMw3EPo26aD+19FMAe2ujAoCVyGifOV6J8XrIkAhzQWF+qIS56rYC
	FonKrH47xzSSKOj3jkkCbMGG8bnjMX1a6f+yqhxb31izv3mr2LikwIz4YkdhTUYr+xyxsXzmpPrTp
	ypmgZEAi/gJkR6lsDP1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw54W-0000nZ-AO; Mon, 27 Jan 2020 14:09:00 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw54M-0000n3-W4
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:08:52 +0000
Received: by mail-oi1-f194.google.com with SMTP id d62so6696570oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 06:08:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5tsmFts7T7BI9vGyWUX2iu19lpSC8/BqHOFJ4HpyIlg=;
 b=RVYMUSLAkNs0CT8TqxqZFOuWyDCWVJCl6Ci6lW7SJvXcOBUySx7CfR36K6/7b3T9j5
 Wl7QXWaLgDBdxwr39TjZendwvLr7B1+kC7tqEERZL7BscAQpTK7ifbYS4C5GCwAIDTqk
 XNpOxXvZ3NYXnfGzqfR6hpNmmrdPqTRE6/MZd0CBLivJMs+FsjIaLLWPTwy9+c/xGO0B
 ovx9hJ9QXbzP7qorPsJrssyQjuI9qnik4xKPo973aK4SQNyNwgY3V+LxMl6ocS+iL7Sn
 HtJf5oD0QbpLM17InOrYXu56FcoGbrBjRWl6uDpATjaKAd3c2k8oR+PiHTh47PucQDru
 fWnA==
X-Gm-Message-State: APjAAAUQs7hMwW/YC3cCGhtdKIbcC1/XxYI5iyoPsnNtY+fl/X8VUu7U
 rrL1YjLtF9Vo2vjD3pHI2PcI60H7TGzYkhe4E3I=
X-Google-Smtp-Source: APXvYqyXcgXQJlvo6qqMaF08C0viKon2y0punbKg7jdZBGvbXL+AC2XFGIoByoZpNLHINnJMWkPEqX8udLowyjc/EjE=
X-Received: by 2002:aca:5905:: with SMTP id n5mr7649001oib.54.1580134129342;
 Mon, 27 Jan 2020 06:08:49 -0800 (PST)
MIME-Version: 1.0
References: <20200121192741.20597-1-geert+renesas@glider.be>
 <nycvar.YSQ.7.76.2001211437240.1655@knanqh.ubzr>
In-Reply-To: <nycvar.YSQ.7.76.2001211437240.1655@knanqh.ubzr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Jan 2020 15:08:37 +0100
Message-ID: <CAMuHMdVrCyjTgJoef4HE0COEKRNYTNKXkmtRVizv6gLi2rfL8w@mail.gmail.com>
Subject: Re: [PATCH] ARM: boot: Obtain start of physical memory from DTB
To: Nicolas Pitre <nico@fluxnic.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_060851_034465_B6FC4EA5 
X-CRM114-Status: GOOD (  26.09  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Tue, Jan 21, 2020 at 11:44 PM Nicolas Pitre <nico@fluxnic.net> wrote:
> On Tue, 21 Jan 2020, Geert Uytterhoeven wrote:
> > Currently, the start address of physical memory is obtained by masking
> > the program counter with a fixed mask of 0xf8000000.  This mask value
> > was chosen as a balance between the requirements of different platforms.
> > However, this does require that the start address of physical memory is
> > a multiple of 128 MiB, precluding booting Linux on platforms where this
> > requirement is not fulfilled.
> >
> > Fix this limitation by obtaining the start address from the passed DTB
> > instead, if available.  Note that for now this is limited to DTBs passed
> > explicitly by the boot loader.  DTBs appended to a zImage or uImage are
> > not inspected.  Fall back to the traditional method when needed.
> >
> > This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB of SDRAM
> > on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 space),
> > i.e. not at a multiple of 128 MiB.
> >
> > Suggested-by: Nicolas Pitre <nico@fluxnic.net>
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > Against arm/for-next.
> >
> > Tested with the following configurations:
> >   - zImage + DTB (r8a7791/koelsch): physical memory start address
> >     obtained from DT,
> >   - uImage + DTB (r8a73a4/ape6evm, r7s72100/rskrza1, r7s9210/rza2mevb):
> >     physical memory start address obtained from DT,
> >   - zImage with appended DTB (r8a7740/armadillo, sh73a0/kzm9g): physical
> >     memory start address obtained by masking, as before.
> >
> > An appended DTB is currently processed after the start of physical
> > memory is obtained.  Hence obtaining that address from an appended DTB
> > requires moving/copying that copy.  Given the complexity w.r.t. the
> > "restart" label, and the lack of a need for me to support this, I didn't
> > implement that part.
>
> Well, not exactly. You don't have to move anything. But more on that
> later.
>
> One important detail: you didn't set up the stack pointer. That means
> you're relying on whatever value left in sp by the bootloader. If you're
> lucky that might be fine, but it isn't a good idea to leave things to
> luck.
>
> Before calling the C code, you should probably do:
>
>         adr     r0, LC0
>         ldr     r1, [r0]
>         ldr     sp, [r0, #28]
>         sub     r0, r0, r1
>         add     sp, sp, r0
>
> But if there is an appended dtb then you'll overwrite it. So you need
> to look for one and account for its size.

Thank you very much for the very constructive feedback!

> Something like this:
>
>         adr     r0, LC0
>         ldr     r1, [r0]                @ get absolute LC0
>         ldr     sp, [r0, #28]           @ get stack location
>         sub     r1, r0, r1              @ compute relocation offset
>         add     sp, sp, r1              @ apply relocation
>
> #ifdef CONFIG_ARM_APPENDED_DTB
>         /*
>          * Look for an appended DTB. If found, use it and
>          * move stack away from it.
>          */
>         ldr     r6, [r0, #12]           @ get &_end

[r0, #12] is actually &_edata, not &_end.

>         add     r6, r6, r1              @ relocate it
>         ldmia   r6, {r0, r5}            @ get DTB signature and size
> #ifndef __ARMEB__
>         ldr     r1, =0xedfe0dd0         @ sig is 0xd00dfeed big endian
>         /* convert DTB size to little endian */
>         eor     r2, r5, r5, ror #16
>         bic     r2, r2, #0x00ff0000
>         mov     r5, r5, ror #8
>         eor     r5, r5, r2, lsr #8
> #else
>         ldr     r1, =0xd00dfeed
> #endif
>         cmp     r0, r1                  @ do we have a DTB there?
>         moveq   r8, r0                  @ use it if so

moveq r8, r6

>         addeq   sp, sp, r5              @ and move stack above it

Care must be taken to keep sp 64-bit aligned.

> #endif
>
>         bl      fdt_get_mem_start
>         ...
>
> This is a little involved but there is no way around that for a safe
> stack. Benefit is that you get appended DTB support with a single
> additional instruction.

True.

> Also one minor nit:
>
> > +             bl      fdt_get_mem_start
> > +             mov     r4, r0
> > +             cmn     r0, #1
>
> Please just use "cmp r0 #-1" here. The assembler will convert it for
> you.

OK, thanks.

Sent v2...

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
