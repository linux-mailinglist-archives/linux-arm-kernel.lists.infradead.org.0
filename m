Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B0117EF93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 05:19:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rs79YnoS3TRsJVmLY2b00xfZvXuImXBUM89f5XAIURU=; b=sPnBolKaaw5AET
	Vuvn8478mLlxEBOhaM1fHoi/fNeB5/U+0beTuDsHCtBBgrevq7plsC9uDo2D4+UQ7lNxxNjFMZm3/
	NYodh6J9Dcaa/RKtqOFImX9S4LO3p54CE6f+6kP2/hh3ckIcwx3PYVa3bv8tNn0+Rxw+k6I5sxJxA
	g6VRsV+HJLA2vUzmPohlhuxDGHxTzbIapPd0Y3NIoXYiasn/nPhKNMyra2AgyhTzYS/fuFmUf10Kn
	JTsgNuI3j/Y2Ch1a7gCCYVB4c/NrydqOHxLijegQJ75pgGwHY/NvvjVy3ADphYwcckorUgdfHLBoz
	02gbsYtSxw75Z5yeNTPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBWMP-00040v-7i; Tue, 10 Mar 2020 04:19:17 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBWMD-00040Z-LD
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 04:19:07 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a16so883075pju.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 21:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/nvpQDa2s0MPVMjqN65EPRdkP1shvWxs57ggK4I2Mg4=;
 b=UezJBUd8UBFyj3bKah7Qw2Wo2AtojekX2ufF2g3ZSYIv0sEUqPhtk3IYefMBkbFntK
 niMJRQRYZqV+HvnHSDhBuzfxA+FDgFL2zorgk2mt8cw8NOd0wRXCkT9vIlXB1FMqh7tj
 OhCrI5/4S94tcBaKvKOHcE0C0xEd3yz7AxbBO8utT20BqpRcb95IClwp8iF3E/mhmNJK
 k8idTur7D8G3lVXh5CbfP5dUkZ6EqQd2BZuBB/nPHy90/EYLxBe4DkL80Qym9ZhPji7G
 ssk8cc4aoVvAed8Eu92Mtdan/qI7hNq+tSfTBhm3aUKgMB/B9ntD3C9Elj0xr6AtGbp3
 ozHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/nvpQDa2s0MPVMjqN65EPRdkP1shvWxs57ggK4I2Mg4=;
 b=NJIE7SjHgPg9zwLc9B5XE3j7N4eYKMfozO/ab3o9HGfvAgxu3RS4Njcb3gTUJ5bpeW
 G+wfETV956m/xxxIQELyAQ0S9YFM/JxyP4Ttw8gmiHRp3mIYZf0d8Rd8CEJZuYER37GA
 JY5W4vEYYutwcF1hzlb8yvk2jYaTyD5UP9bMZZGQ2W74NyoW6Sa+EbazLt0V17h97rJv
 ONvVtKpZqFX8bSNtgrPoXzHlHxlmcoCVEq/q1b4ItHCtRcUZ8tRW8ZXlIES5XLrjreL5
 v/Ny35Ek96BKveSN0BzACyzMlSVPFvG6VhppXhKCdpoWNtg/ATeJKSH8gQBmAeifXaHC
 J3VA==
X-Gm-Message-State: ANhLgQ0Fo1ikJPWyEY2LCeYskWy/q/LDqHRLCKJmZrSQFIn07DvPCCrF
 miNEvZ7KoWmSFPnUCOJanmthTw==
X-Google-Smtp-Source: ADFU+vutaDK0+h41+jM+ieqjovHYAnMwRD0e/via06npv351pht7qAqbdVGySjzm9/g9/OXDlq5GNA==
X-Received: by 2002:a17:902:ab8e:: with SMTP id
 f14mr18389189plr.339.1583813944702; 
 Mon, 09 Mar 2020 21:19:04 -0700 (PDT)
Received: from localhost ([2620:15c:211:0:fb21:5c58:d6bc:4bef])
 by smtp.gmail.com with ESMTPSA id 128sm33508515pfe.163.2020.03.09.21.19.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 21:19:03 -0700 (PDT)
Date: Mon, 9 Mar 2020 21:19:03 -0700
From: Sandeep Patil <sspatil@android.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 1/2] arm64: change ARCH_SPRD Kconfig to tristate
Message-ID: <20200310041903.GA260998@google.com>
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <CAMuHMdVyy3v24zBxJFe5hYdnzdj80dvE2Z9GO4=AC1N8fD64pw@mail.gmail.com>
 <CAAfSe-spu2oNmfEYt+WQvRQy1bCC0e1MFjbUyBAFzghd5XNBfw@mail.gmail.com>
 <CAMuHMdV1qQZF-kAwbcxhHQZZ9hs0dG-OTZ2NcB25Jtra6ii5iA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdV1qQZF-kAwbcxhHQZZ9hs0dG-OTZ2NcB25Jtra6ii5iA@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_211905_722930_078DB853 
X-CRM114-Status: GOOD (  23.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>, saravanak@google.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
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

On Mon, Mar 09, 2020 at 11:32:06AM +0100, Geert Uytterhoeven wrote:
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

I'm curious, are there any problems that we should be aware of? We know about
the regulator sync state and consumer-supplier dependencies. [1]

(Adding Saravana inline)

Thanks,
- ssp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
