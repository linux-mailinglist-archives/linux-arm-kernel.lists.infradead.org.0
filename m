Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FC9E5EC1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 20:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tJTSo3+Gi0xIbjy9M9Q5SyFg8HeSQffOyU/vpGpt3A=; b=Fu/7mDduzQxAqG
	MKhZCX5y/qrLuCeeAbm9AYSqRUrh4An57dbE+Y9OjxcAmhGxa72sQHhelrvK1oXyZ5EOLYH3IuD8b
	S+kTqgLifI3UD0Zi660QTqCNAB1Ly5Xw7VIsLnpv+epQlMJrEXQ7yozJsZCB2l+tY9r7+la0KXLv4
	qJfvrex6xUwv7LQXkDsR1ez8W7LOJGGI/qW+CX2hWvu4rjLyPSgQQjLjSylV4CaWemrGQwbfhpHfH
	55XP4vCW6H+pfrEF9rufPMfgYBwomXsp6Ma0piIMNvL7A7ebQFMZYI2rhgOo5gPNKmgKLv6mrYlT8
	hp2UFB3r6sNe3792nxXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOREj-0003TO-CP; Sat, 26 Oct 2019 18:56:29 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOREV-0003SP-A7; Sat, 26 Oct 2019 18:56:17 +0000
Received: by mail-io1-xd42.google.com with SMTP id h9so6186966ioh.2;
 Sat, 26 Oct 2019 11:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x7cDLkomUpCufb0t+qyZB5k3lTMumkzgQK5hQePCbK8=;
 b=IiNuPZq9yOuXf1VfOCRxN3XTRjVfgIswJpmackxKJ+RenfnfpCjtW1Ud7cxLQ/lBxr
 VpI6Sb4Mno24tjICFANt0nuXewNbHbnxYmwxMWhhsOiRrWBVY9I4wIjxsxiBXNaWV5rk
 rCmzNvFfcIjLRR0ErYIbxMxsIKnNvawWFgc8sqXzEpAW9K0uIk0tfs+JvvFt3eXIx8NT
 2BAUYTL7CuoU/KGV9bFCRpbr3RnjDJrVUvgeQreLI35JhfXU7sujKcKOtsNqCzmqtIC6
 FV9QzTmoR8FXyR2d8s22Xy/UmGjxuB5FXFsPqdi+GmlVA3BtgHrnhrw4wjOdHOuXCU0W
 JALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x7cDLkomUpCufb0t+qyZB5k3lTMumkzgQK5hQePCbK8=;
 b=aRmcKFDAySITveL6FwokRBHa8U6KHUeeTcYlpoNK3xy3pAXYJSBi9BPBCZC62WStVm
 oLz8jr51oMzkrIPJw1nmDX4d/frHHt6wePwOibIWWvBBACaAPDTJ3Of2FHE1CIcKOjyq
 ZT1agPEt+9FBaEu/0/UzuIwPy0BOUkrWnZT1hPVqzE3zDgE5OiHYXzDIGSxObS9gNFBm
 xnBqoOKV9IE0495XFneH6+RfUyalOUc+igtGlx5UWgULCuGahr2A1I/CJ00beXnkNA04
 9hxUI13KHlQL7ceiGqZTbyC6pf4rhl1yA6oPXXjLUw47LiSdecVqgUcF4HfpQEpwBl/9
 zhcA==
X-Gm-Message-State: APjAAAVLwCQI4XY5RK6D8gx5yZN/UJFahzBlXSTLzUMGvo0/t6kAjPrM
 zweDTCC4/b4xWjGnxzkmyfuXG8RNU++hwNFuiZQ=
X-Google-Smtp-Source: APXvYqzEzHENdTMD+ax5PmTOJZRJGHZ3jBXmGRZx4Ns2ZkiyQpg1AuGK59Jx4vizK/5iI3mJBXN8JFdlL94rgqOd9ag=
X-Received: by 2002:a05:6602:2428:: with SMTP id
 g8mr10205784iob.246.1572116174047; 
 Sat, 26 Oct 2019 11:56:14 -0700 (PDT)
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
 <1a98c5f0-de8a-53bc-cfb7-c9b3255667c6@baylibre.com>
 <CANAwSgRD-Vd-D1H5cDYMyTLRMfzdkrFuiy4KfXYt6S+0goF-2w@mail.gmail.com>
In-Reply-To: <CANAwSgRD-Vd-D1H5cDYMyTLRMfzdkrFuiy4KfXYt6S+0goF-2w@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 27 Oct 2019 00:26:03 +0530
Message-ID: <CANAwSgRKO2trabH635HhNR34mbL3n+4cs+Gg4GO_Zc6vuYW5JA@mail.gmail.com>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_115615_355128_02016789 
X-CRM114-Status: GOOD (  28.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, 21 Oct 2019 at 21:11, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Neil,
>
> On Mon, 21 Oct 2019 at 19:55, Neil Armstrong <narmstrong@baylibre.com> wrote:
> >
> > Hi Anand,
> >
> > On 21/10/2019 16:11, Anand Moon wrote:
> > > Hi Martin,
> > >
> > > On Fri, 18 Oct 2019 at 23:40, Martin Blumenstingl
> > > <martin.blumenstingl@googlemail.com> wrote:
> > >>
> > >> Hi Anand,
> > >>
> > >> On Fri, Oct 18, 2019 at 4:04 PM Anand Moon <linux.amoon@gmail.com> wrote:
> > >> [...]
> > >>>> Next step it to try narrow down the clock causing the issue.
> > >>>> Remove clk_ignore_unused from the command line and add CLK_INGORE_UNUSED
> > >>>> to the flag of some clocks your clock controller (g12a I think) until
> > >>>>
> > >>>> The peripheral clock gates already have this flag (something we should
> > >>>> fix someday) so don't bother looking there.
> > >>>>
> > >>>> Most likely the source of the pwm is getting disabled between the
> > >>>> late_init call and the probe of the PWM module. Since the pwm is already
> > >>>> active (w/o a driver), gating the clock source shuts dowm the power to
> > >>>> the cores.
> > >>>>
> > >>>> Looking a the possible inputs in pwm driver, I'd bet on fdiv4.
> > >>>>
> > >>>
> > >>> I had give this above steps a try but with little success.
> > >>> I am still looking into this much close.
> > >> it's not clear to me if you have only tested with the PWM and/or
> > >> FCLK_DIV4 clocks. can you please describe what you have tested so far?
> > >>
> > > Sorry for delayed response.
> > >
> > > I had just looked into clk related to SD_EMMC_A/B/C,
> > > with adding CLK_IGNORE/CRITICAL.
> > > Also looked into clk_summary for eMMC and microSD card,
> > > to identify the root cause, but I failed to move ahead.
> > >
> > >> for reference - my way of debugging this in the past was:
> > >> 1. add some printks to clk_disable_unused_subtree (right after the
> > >> clk_core_is_enabled check) to see which clocks are being disabled
> > >> 2. add CLK_IGNORE_UNUSED or CLK_IS_CRITICAL to the clocks which are
> > >> being disabled based on the information from step #1
> > >> 3. (at some point I had a working kernel with lots of clocks with
> > >> CLK_IGNORE_UNUSED/CLK_IS_CRITICAL)
> > >> 4. start dropping the CLK_IGNORE_UNUSED/CLK_IS_CRITICAL flags again
> > >> until you have traced it down to the clocks that are the actual issue
> > >> (so far I always had only one clock which caused issues, but it may be
> > >> multiple)
> > >> 5. investigate (and/or ask on the mailing list, Amlogic developers are
> > >> reading the mails here as well) for the few clocks from step #4
> > >>
> > >
> > > Thanks for you valuable suggestion. I have your patch to debug this
> > > [0]  https://patchwork.kernel.org/patch/9725921/mbox/
> > >
> > > So from the fist step I could identify that all the clk were getting closed
> > > after some core cpu clk was failing. Here is the log.
> > >
> > > step1: [1] https://pastebin.com/p13F9HGG
> > >
> > > so I marked these clk as CLK_IGNORE_UNUSED and finally
> > > I made it to boot using microSD card.
> > >
> > > After this just I converted these CLK to CLK_IS_CRITICAL
> > > as mostly these are used the CPU clk for now.
> > > Here is boot log successful for as of now.
> > >
> > > Finally: [2]  https://pastebin.com/qB6pMyGQ
> > >
> > > I know clk maintainer are against marking flags as *CLK_IS_CRITICAL*
> > > But this is just the step to move ahead.
> >
> > Thanks for the extensive debug.
> >
> > >
> > > Attach is my local clk and dts patch.Just for testing.
> > > [3] clk_critical.patch
> >
> >
> > Could you test with only the following changes:
> > diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
> > index ea4c791f106d..f49f5463363e 100644
> > --- a/drivers/clk/meson/g12a.c
> > +++ b/drivers/clk/meson/g12a.c
> > @@ -298,6 +298,7 @@ static struct clk_regmap g12a_fclk_div2 = {
> >                         &g12a_fclk_div2_div.hw
> >                 },
> >                 .num_parents = 1,
> > +               .flags = CLK_IS_CRITICAL,
> >         },
> >  };
> >
> > @@ -672,7 +673,7 @@ static struct clk_regmap g12b_cpub_clk = {
> >                         &g12a_sys_pll.hw
> >                 },
> >                 .num_parents = 2,
> > -               .flags = CLK_SET_RATE_PARENT,
> > +               .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> >         },
> >  };
> >
>
I am blocked with my eMMC is not working with latest u-boot so that
I could not verify that nothing break with this changes.

Could you send this patch upstream with adding my.

Tested-by: Anand Moon <linux.amoon@gmail.com>

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
