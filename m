Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E5EE3D14
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ylXTQ7nmZOclH3oCW6E3UPZbLpLf4s/IdG1hYe3FVE8=; b=BuuMKGb0UiE+lC
	L1xXYUjDlnqNEiuyyvFhT0dNj1Dxxh/9qHcAfUzUp+SK0f9XOEOD5qaPoud1tss+kIam9vOM/u1+Z
	KB6SZcEWCUo0k+sgEIPydMQ8zoJiktQ/9LI6XkcFxuoG28nmwbF8fe7GwcpTKtuglN6jHUQJjpf1w
	CBCGxazooe9Cdk7631EPHcA+S+NekZunsqsl0POdcls16hRLcbv8yS+rg0viYZzZVqu2YkWCUvCY3
	NOK4EfEXYYk3IZ5v+ACPPGQASQNVlN03SWDoDercQUvUzRaERTBlqbb3WcqcyiIGSWvTur2Ld8r92
	yiUf7SEZ7pPbrcj1IbGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjb6-0005fs-Vm; Thu, 24 Oct 2019 20:20:41 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjav-0005fH-Co; Thu, 24 Oct 2019 20:20:31 +0000
Received: by mail-oi1-x242.google.com with SMTP id x3so21821162oig.2;
 Thu, 24 Oct 2019 13:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=It61OojkGpwBR4FS4phB+Jtpjryl2QDg9lEM2L8kypw=;
 b=grUjTgESz2e8e+WknNShVkcsmVLbC3RLlzkivGUMvjpG41LEEyOmD0w4k5lmin/HkO
 ZBsNiwcd5tEhzWkgVb1yNPt9467e12h/vrq5zSQEI9iH0NJhR5U7f36EGFHIzgHuKSWS
 hMCBQGnDWDcCdXbPO67pe6wb8HkwXDVZf8Euf/NbT3fNlzr0oiK1dsCKQcO8LVO7qCu4
 SGyEIXoE3ToaOcSiibun/aktTFQRQ8eqbul0EUXEEEPllMsr5DbUJv2cas3Yf6cnnDQC
 sxIIt4QLZ3sgAFkLuApxQWyIyMHHtMkZAQLCvJf8VGItzEeU2IJLgXVRSZcHQayu1Leu
 R1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=It61OojkGpwBR4FS4phB+Jtpjryl2QDg9lEM2L8kypw=;
 b=GGyu/eKwUHDj929cyQpgaN3whkdM4opN7hT/9EwHJPt2sHBX5n9FAGB7/ZcLJT+MEz
 qCi6ToVtR++H6nNlk+68xZ8IYjjoNugOQxmhrNqXl7Sa4jUWPh7dL5Uvm9dJeUU5w0eN
 onE0dcniez9uPMi2OYl+IXS4l/9UgQLYFsSKgSnfS/nB1RogG0BDnoqo3vc1k/kDTNpL
 s9lXW5XOBSGfD/lDG9ZGYlV/4TheEu+4bM6v+zk0zfpHpPgqRUEu6J6fDjk5F2tTn721
 1dCr/N+nD8lIwcXkG28/Px2Q0QL4kIyk5bRVKs2fgEGyXEmKCmAxjkRPj/Squa7ncaAB
 DzSw==
X-Gm-Message-State: APjAAAWkJwZwr/EcAXb+g4qNptUObg/7c4+bm9BXUYOGqDY63foo283V
 GNvYTaBA4RZe4szFZNhh6/qo7yhfberDLEJbQ/k=
X-Google-Smtp-Source: APXvYqznT7UPPax1j4qYHvpODpisoa2Aa5cEUeURF/FQ5fRuIS363xnHD1+tvBYMI2x4sTClndxZYxfHTgFFv6YSnik=
X-Received: by 2002:aca:1b18:: with SMTP id b24mr6291732oib.15.1571948428082; 
 Thu, 24 Oct 2019 13:20:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-6-linux.amoon@gmail.com>
 <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
 <7hsgo4cgeg.fsf@baylibre.com>
 <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com>
 <CAFBinCA6ZoeR4m4bhj08HF1DqxY1qB5mygpaQCGbo3d8M+Wr9Q@mail.gmail.com>
 <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
 <1jwode9lba.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgSoK4X3_QbO3YpZRXNTpPJ+zVeid=w93f14Eyk8Dd32EQ@mail.gmail.com>
 <CAFBinCBdwqxA2kLMAA9gtOcXevYK-J4x12odHwpQOAWakgWiEg@mail.gmail.com>
 <CANAwSgRs2DUXwvhJD5qpXg04qEdP_Nt-wQqRbD2FpY2SWnHpAA@mail.gmail.com>
In-Reply-To: <CANAwSgRs2DUXwvhJD5qpXg04qEdP_Nt-wQqRbD2FpY2SWnHpAA@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 24 Oct 2019 22:20:16 +0200
Message-ID: <CAFBinCB4Gb5wZnZ-R8suS1Knx0_ijBGKAQw8TS1PsDwZ7H3VqQ@mail.gmail.com>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_132029_464158_D2336FA4 
X-CRM114-Status: GOOD (  32.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

On Mon, Oct 21, 2019 at 4:11 PM Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Martin,
>
> On Fri, 18 Oct 2019 at 23:40, Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
> >
> > Hi Anand,
> >
> > On Fri, Oct 18, 2019 at 4:04 PM Anand Moon <linux.amoon@gmail.com> wrote:
> > [...]
> > > > Next step it to try narrow down the clock causing the issue.
> > > > Remove clk_ignore_unused from the command line and add CLK_INGORE_UNUSED
> > > > to the flag of some clocks your clock controller (g12a I think) until
> > > >
> > > > The peripheral clock gates already have this flag (something we should
> > > > fix someday) so don't bother looking there.
> > > >
> > > > Most likely the source of the pwm is getting disabled between the
> > > > late_init call and the probe of the PWM module. Since the pwm is already
> > > > active (w/o a driver), gating the clock source shuts dowm the power to
> > > > the cores.
> > > >
> > > > Looking a the possible inputs in pwm driver, I'd bet on fdiv4.
> > > >
> > >
> > > I had give this above steps a try but with little success.
> > > I am still looking into this much close.
> > it's not clear to me if you have only tested with the PWM and/or
> > FCLK_DIV4 clocks. can you please describe what you have tested so far?
> >
> Sorry for delayed response.
>
> I had just looked into clk related to SD_EMMC_A/B/C,
> with adding CLK_IGNORE/CRITICAL.
> Also looked into clk_summary for eMMC and microSD card,
> to identify the root cause, but I failed to move ahead.
I learned to be aware of the decisions that I make when finding a bug somewhere
instead of following the initial problem that I see I ask myself "is
there any proof that this initial problem is the actual root cause".
I can then make the decision to do some experiments to rule out a
problem - until I come to a point where I ask myself again "am I still
going in the right direction - how does this bring me to the root
cause of the problem"
unfortunately that's harder than it seems - but it keeps me from
spending time going in the wrong direction

> > for reference - my way of debugging this in the past was:
> > 1. add some printks to clk_disable_unused_subtree (right after the
> > clk_core_is_enabled check) to see which clocks are being disabled
> > 2. add CLK_IGNORE_UNUSED or CLK_IS_CRITICAL to the clocks which are
> > being disabled based on the information from step #1
> > 3. (at some point I had a working kernel with lots of clocks with
> > CLK_IGNORE_UNUSED/CLK_IS_CRITICAL)
> > 4. start dropping the CLK_IGNORE_UNUSED/CLK_IS_CRITICAL flags again
> > until you have traced it down to the clocks that are the actual issue
> > (so far I always had only one clock which caused issues, but it may be
> > multiple)
> > 5. investigate (and/or ask on the mailing list, Amlogic developers are
> > reading the mails here as well) for the few clocks from step #4
> >
>
> Thanks for you valuable suggestion. I have your patch to debug this
> [0]  https://patchwork.kernel.org/patch/9725921/mbox/
>
> So from the fist step I could identify that all the clk were getting closed
> after some core cpu clk was failing. Here is the log.
>
> step1: [1] https://pastebin.com/p13F9HGG
>
> so I marked these clk as CLK_IGNORE_UNUSED and finally
> I made it to boot using microSD card.
nice, congrats for finding this!

> After this just I converted these CLK to CLK_IS_CRITICAL
> as mostly these are used the CPU clk for now.
> Here is boot log successful for as of now.
>
> Finally: [2]  https://pastebin.com/qB6pMyGQ
>
> I know clk maintainer are against marking flags as *CLK_IS_CRITICAL*
> But this is just the step to move ahead.
>
> Attach is my local clk and dts patch.Just for testing.
> [3] clk_critical.patch
>
> Plz share your thought on this.
interesting, the clock driver for the 32-bit SoCs
(driver/clk/meson/meson8b.c) sets CLK_IS_CRITICAL for meson8b_cpu_clk.
you have something similar in your patch for the G12A/B CPU clocks
I guess that also explains why changing CONFIG_PWM_MESON from =m to =y
"fixes" it:
- as long as the PWM driver is not loaded the VDDCPU regulator does
not probe either
- this goes on for the initial boot process
- now the PWM driver is still not loaded and the common clock
framework tries to disable the unused clocks
- it disables the CPU clock and the system now stops working
- (only later it would load the PWM driver and allow the cpufreq
subsystem to come up)

with CONFIG_PWM_MESON=y you get:
- PWM driver is built-in so the VDDCPU regulator shows up
- the cpufreq subsystem comes up and enables the clock (in reality it
only increments the refcount because the clock is already enabled)
- the common clock framework tries to disable the unused clocks - it
doesn't disable the CPU clock this time because it's used (according
to the ref count/enable count)
- ...


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
