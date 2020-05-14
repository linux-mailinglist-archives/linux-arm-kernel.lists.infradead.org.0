Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30B91D368D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZahyAYATA2Ej7Vl0ID4yWkKUVgKRlxABcCzk0LeHG0=; b=MSdTi25olJnJjD
	2TOUWHc0buBwHpe3A+dBVnsXmi8T1uREyJ7OYzv6rskcf+IOilZRvnWu0Ke1PCBoaVtb7V2H5z7CR
	zGdqwDSAfq9pa+IxhMrSAen/1f/QpNSOKt8aDNyao1mOVoMrsXTWI1xL1TRKfTpO3MRwXXk2PtJBh
	ufyq6SFpScaEkbsJldN9vgy+CW4UNFlqtVp1VgEi7s+RxQ3Rv1A2/isIwOypPCqmRWRMUxEtNg1Bz
	w6IRLQb+rxoVeutdhdiT/AMXUbBXzoOzjtjC+8Oi7l67lye2ty/2wEffN4BKd3hz72Ps9KSYQeukH
	G/S9dnnDznVnd7OJYceQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGox-0005M4-9z; Thu, 14 May 2020 16:34:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGok-0005Ld-Hk
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 16:34:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id j21so1456398pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 09:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HWFeoUCCAGrwFNZxgc3//5BRvEIhNROwr+Wf1EbQfmY=;
 b=UvPlZl0iOaSxRCrz4fSlO6xyQ4m5RIN2qw1rZtiYNuvBFSSNHUv+z6jsScDG2JkoLZ
 9KPzqq9Yz+Xek9thEBwb1hxG4RE2BMXein7EOEaNp8aruvGk13N+6glTTIgL7iBjci/B
 OvS5nH3CBDh2XG23YTlRN04vrysWYTmp0OAqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HWFeoUCCAGrwFNZxgc3//5BRvEIhNROwr+Wf1EbQfmY=;
 b=bc5vSLCht7fZO9+2MbIlRBT6M/xR82ZEr+tjnS7YRvkOv0ymhOJEBBorR7LvFA3kZX
 HTZTYSgxtxBaXYCQrU8TRlassr+8svoTqvhtcPKOjSo7wBkIfX9f0UdIRUmGCTAK+XWL
 JVUQ4TwHRtyCuSwR1AdaZRq+LjIOgdU5b+RBW1nwhxq2iWkZ6/CFwqHJ+nIal+bnY2Am
 csv6JSVknuQ39zvPnPdFY/D/AB2e5CQTqNKyRyoG3GE92T0XVdut7vxW1G72M2vSmoha
 xCOB0YVXbBoxKrrT/Xxkqhk6ZISPPyz4AYVONnTl3iQFMkgE99Cbp8rLMcZVJrwtO7HR
 iRgg==
X-Gm-Message-State: AOAM530rUygnIB6KZdYgV+QGjyary7lMiApyBu/phJiUfzEx75timgxp
 dRVa2DUmOk+N7gR2nCV957nt+JIT4kA=
X-Google-Smtp-Source: ABdhPJy7n3o+fLD6OrDbmUtG9JAiyI0yMYYVbyEfxMc8X3njIGUu1jxmPBy8jh7CoHgFIwEEsV9a7Q==
X-Received: by 2002:a63:b146:: with SMTP id g6mr4630780pgp.396.1589474081576; 
 Thu, 14 May 2020 09:34:41 -0700 (PDT)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com.
 [209.85.214.174])
 by smtp.gmail.com with ESMTPSA id cv21sm18730032pjb.23.2020.05.14.09.34.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 May 2020 09:34:40 -0700 (PDT)
Received: by mail-pl1-f174.google.com with SMTP id g11so1369633plp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 09:34:39 -0700 (PDT)
X-Received: by 2002:a67:bd07:: with SMTP id y7mr4374233vsq.109.1589474077707; 
 Thu, 14 May 2020 09:34:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200507200850.60646-1-dianders@chromium.org>
 <20200514162109.6qt5drd27hpilijh@holly.lan>
In-Reply-To: <20200514162109.6qt5drd27hpilijh@holly.lan>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 14 May 2020 09:34:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X+t_Wg5KadZBTGHMSEXY3c-t6DZAtdaLXys31QJJpGGA@mail.gmail.com>
Message-ID: <CAD=FV=X+t_Wg5KadZBTGHMSEXY3c-t6DZAtdaLXys31QJJpGGA@mail.gmail.com>
Subject: Re: [PATCH v4 00/12] kgdb: Support late serial drivers; enable early
 debug w/ boot consoles
To: Daniel Thompson <daniel.thompson@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_093442_589857_9DDCD76A 
X-CRM114-Status: GOOD (  29.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, jinho lim <jordan.lim@samsung.com>,
 Andy Gross <agross@kernel.org>,
 Pawan Gupta <pawan.kumar.gupta@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Allison Randal <allison@lohutok.net>, Juergen Gross <jgross@suse.com>,
 Sumit Garg <sumit.garg@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Jason Wessel <jason.wessel@windriver.com>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, May 14, 2020 at 9:21 AM Daniel Thompson
<daniel.thompson@linaro.org> wrote:
>
> On Thu, May 07, 2020 at 01:08:38PM -0700, Douglas Anderson wrote:
> > <snip>
> >
> > My first attempt was to try to get the existing "ekgdboc" to work
> > earlier.  I tried that for a bit until I realized that it needed to
> > work at the tty layer and I couldn't find any serial drivers that
> > managed to register themselves to the tty layer super early at boot.
> > The only documented use of "ekgdboc" is "ekgdboc=kbd" and that's a bit
> > of a special snowflake.  Trying to get my serial driver and all its
> > dependencies to probe normally and register the tty driver super early
> > at boot seemed like a bad way to go.  In fact, all the complexity
> > needed to do something like this is why the system already has a
> > special concept of a "boot console" that lives only long enough to
> > transition to the normal console.
> >
> > <snip>
> >
> > The devices I had for testing were:
> > - arm32: rk3288-veyron-jerry
> > - arm64: rk3399-gru-kevin
> > - arm64: qcom-sc7180-trogdor (not mainline yet)
> >
> > These are the devices I tested this series on.  I tried to test
> > various combinations of enabling/disabling various options and I
> > hopefully caught the corner cases, but I'd appreciate any extra
> > testing people can do.  Notably I didn't test on x86, but (I think) I
> > didn't touch much there so I shouldn't have broken anything.
>
> I have tested a slightly earlier version using qemu and will test this
> set before it moves forwards.
>
>
> >  .../admin-guide/kernel-parameters.txt         |  20 ++
> >  Documentation/dev-tools/kgdb.rst              |  24 ++
> >  arch/arm64/Kconfig                            |   1 +
> >  arch/arm64/include/asm/debug-monitors.h       |   2 +
> >  arch/arm64/kernel/debug-monitors.c            |   2 +-
> >  arch/arm64/kernel/traps.c                     |   3 +
> >  arch/x86/Kconfig                              |   1 +
> >  drivers/tty/serial/8250/8250_early.c          |  23 ++
> >  drivers/tty/serial/amba-pl011.c               |  32 +++
> >  drivers/tty/serial/kgdboc.c                   | 268 ++++++++++++++++--
> >  drivers/tty/serial/qcom_geni_serial.c         |  32 +++
> >  include/linux/kgdb.h                          |   4 +
> >  kernel/debug/debug_core.c                     |  52 +++-
> >  lib/Kconfig.kgdb                              |  18 ++
> >  14 files changed, 436 insertions(+), 46 deletions(-)
>
> Any thoughts on how best to land these changes?
>
> AFAICT the arm64

I was hoping to get an Ack from Will or Catalin for my most recent
arm64 patch [1] and then it could land in your tree.  However, it
wouldn't be the end of the world if that landed later.  "kgdbwait"
would be broken if you used it together with "kgdb_earlycon" but
overall we'd still be in a better place than we were.


> and 8250/amba-pl011/qcom_geni_serial code
> could be applied independently of the kgdb changes

Right, that would be OK.  Nobody would actually be able to use
"kgdb_earlycon" until those landed but there would be no problem with
those two landing separately.


> (though we must keep
> changes to drivers/tty/serial/kgdboc alongside the kgdb changes).
>
> I can hoover them up but I'd need a solid set of acks and
> I don't think we've got that yet.

It would be nice for it to be explicit, but "get_maintainer" says that
Greg KH is the maintainer of serial drivers.  Git log confirms that he
also has been the one landing changes to these files.  Early-on he
provided his Reviewed-by for the series as a whole, so he's aware of
it and maybe would be fine w/ the serial changes landing through the
kgdb tree?

Greg: is that correct?


> I'd also be happy to ack where needed and let someone else pick it up
> (the other changes queued for kgdb this cycle are pretty small so we
> shouldn't see much conflict in kernel/debug/ ).

It feels to me that the kgdb tree is the best destination for all
these patches if possible.


[1] https://lore.kernel.org/r/20200513160501.1.I0b5edf030cc6ebef6ab4829f8867cdaea42485d8@changeid

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
