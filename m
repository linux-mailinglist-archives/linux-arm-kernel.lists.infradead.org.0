Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2961E16A334
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PhVDhy4p6GCky3hYKbcTY2R9iaXJ/v+7cfC9PjU9QQI=; b=Eja/BUlEKUsO9fZfyVjaPMOR1m
	oloLRJk4Y88VoIJEoakUcgc4BreySvWEHFMl0Wks8egOGok/dlJveZgUmyx2EeIZR5LwwD4lcQ98A
	YDB9/FVDddbIt4I/SrU3fl/GIP3/FmSG85B7B8i6DTDuKiBPy+PLbs9ywdu4zy8FvbJ8PAE64KYuF
	BuIW3p48DWbahQFngr2jnW2OS2Ild1LFTpmDP8K6czkyl9gkMD5EUMKtdS4oet22/4vZTVVc19i/P
	YF831qntlcHQ2VhIdHkhbonZbHSEwKS/DNiSeri9WUX3SxTit624yafmyt1+sqClBz6DQeCYmvWzu
	BLkF0CsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ARv-0000oe-Mj; Mon, 24 Feb 2020 09:54:51 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6A4v-0007si-Hb
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:31:08 +0000
Received: by mail-wm1-x333.google.com with SMTP id p17so8556677wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 01:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=YOte6mkbLz8vWB4XILdt5n/2oNrjFYd6rB4VsC43SZs=;
 b=LkScTrUJ1WRO4koGPH5T6yQVaJ/OAjh8lS3tJhPh6V8y0lH1xCydRzutbqRCYe7YkX
 6LLTRBr+r+C9S4l73An6he9drrVTqKpwJzpWa1OtuF68XVklQ/WCaHFqmdPtH/lHa02R
 bZ8c4UQgfobDpNloGFB1ahsWLkuaTVdBhvPc0Qoga/kfGKD01BdL4TGDToph7eEY7HrP
 vznp3bUWfpFS7RClFIgV6Bn7gt8Uvlc8Rp5JMwlKd+7aY8ADJ6DJNHCG8c+l7HRESLuc
 iZpnocdwelXCfeYzSjkL9abx7gx+LJgIOrob4VmGvA5ViD9up+PMrfJHwaKHHzch9bxk
 LlKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=YOte6mkbLz8vWB4XILdt5n/2oNrjFYd6rB4VsC43SZs=;
 b=NW4D86LpCrf9KUAi6EkImhso+nfNy2IKrqXuOGU07WtGTesr3xpNTVnIN581h9EdJj
 C/Mwuz6Gyoa5TnUQfGXaTJmurounfMcYk6OYgT6oi2fQdIEWpHMJbA3c/qKs+F8jRXWu
 TCksBe+92377lysglljY7Q36vYo7dSZKAeueinqdJsCm/n1cpMEXaZK24sgOLX4tI80z
 94lQWyl/1jMZL4VThD3Loc8Wlox4Pkhn1MFsF+WKQJvUDGxe5QkV+NvQBt9J33w4StNP
 +ikQnZJoA1e8Da+t/bzIYdYVG+gQYUfjz8toMYDok9+kCX+UaPdAzwAhAjFMKznbxtRv
 phag==
X-Gm-Message-State: APjAAAUoxfmR4xKGqQNQyR/7Tm0Ct2lzvCA11ZvjxyQJnz3zMRdkyMv0
 guYMi9t7Gw6oY+jO2wyhLgYdLg==
X-Google-Smtp-Source: APXvYqzpPJJc/gi2QDQZsmpxB1GGyiaXMyI3zKCeQIn/x5jdKbDBEK0RMFsxIzWortV5efOCDJJqpA==
X-Received: by 2002:a1c:a443:: with SMTP id n64mr20158521wme.141.1582536663181; 
 Mon, 24 Feb 2020 01:31:03 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 133sm18669254wme.32.2020.02.24.01.31.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 01:31:02 -0800 (PST)
References: <20200216173446.1823-1-linux.amoon@gmail.com>
 <20200216173446.1823-4-linux.amoon@gmail.com>
 <1jmu9hzlo2.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgSaQgU=H3h0S9deT11HA8z9R=Fhy5Kawii9tSBxKf2Wgw@mail.gmail.com>
 <CAFBinCCSosE1XfwbKZOR9G+DVYg8zFcKShmTNWUhh1e8W0VoAQ@mail.gmail.com>
 <CANAwSgRZy1K0GZq30cEoH2KiJfjX-5LvkMy79ZeM_aSEyrkD+g@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Anand Moon <linux.amoon@gmail.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCHv1 3/3] clk: meson: g12a: set cpu clock divider flags too
 CLK_IS_CRITICAL
In-reply-to: <CANAwSgRZy1K0GZq30cEoH2KiJfjX-5LvkMy79ZeM_aSEyrkD+g@mail.gmail.com>
Date: Mon, 24 Feb 2020 10:31:01 +0100
Message-ID: <1jo8togwmi.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_013105_705749_1169BEF9 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 23 Feb 2020 at 14:34, Anand Moon <linux.amoon@gmail.com> wrote:

> Hi Martin / Jerome / Neil,
>
> On Fri, 21 Feb 2020 at 02:45, Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
>>
>> Hi Anand,
>>
>> On Mon, Feb 17, 2020 at 2:30 PM Anand Moon <linux.amoon@gmail.com> wrote:
>> [...]
>> > > > @@ -681,7 +682,7 @@ static struct clk_regmap g12b_cpub_clk = {
>> > > >                       &g12a_sys_pll.hw
>> > > >               },
>> > > >               .num_parents = 2,
>> > > > -             .flags = CLK_SET_RATE_PARENT,
>> > > > +             .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
>> > >
>> > > Why not. Neil what do you think of this ?
>> > > If nothing is claiming this clock and enabling it then I suppose it
>> > > could make sense.
>> > >
>> > I would like core developers to handle this.
>> > Sorry for the noise.
>> can you please resend this patch with only the change to g12b_cpub_clk?
>> I have no G12B board myself so it would be great if you could take care of this!
>>
>>
>> Martin
>
> Thanks, yes I will try again, but I have a question.
>
> On eMMC module  *cpub_clk* is not getting enabled, see below is
> clk_summay of eMMC.

I'm sorry but I don't understand the link between the cpu clock of the
second cluster and MMC.

> [...]
>           fclk_div2_div               1        1        0   999999985
>         0     0  50000
>              fclk_div2                2        2        0   999999985
>         0     0  50000
>                 ff3f0000.ethernet#m250_sel       1        1        0
> 999999985          0     0  50000
>                    ff3f0000.ethernet#m250_div       1        1
> 0   249999997          0     0  50000
>                       ff3f0000.ethernet#fixed_div2       1        1
>     0   124999998          0     0  50000
>                          ff3f0000.ethernet#rgmii_tx_en       1
> 1        0   124999998          0     0  50000
>                 ffe07000.mmc#mux       1        1        0   999999985
>          0     0  50000
>                    ffe07000.mmc#div       1        1        0
> 199999997          0     0  50000
>                 cpub_clk_dyn1_sel       0        0        0
> 999999985          0     0  50000
>                    cpub_clk_dyn1       0        0        0   999999985
>          0     0  50000
>                       cpub_clk_dyn       0        0        0
> 999999985          0     0  50000
>                          cpub_clk       0        0        0
> 999999985          0     0  50000
>                             cpub_clk_div8       0        0        0
> 124999998          0     0  50000
>                             cpub_clk_div7       0        0        0
> 142857140          0     0  50000
>                             cpub_clk_div6       0        0        0
> 166666664          0     0  50000
>                                cpub_clk_trace_sel       0        0
>    0   166666664          0     0  50000
>                                   cpub_clk_trace       0        0
>   0   166666664          0     0  50000
>                             cpub_clk_div5       0        0        0
> 199999997          0     0  50000
>                                cpub_clk_apb_sel       0        0
>  0   199999997          0     0  50000
>                                   cpub_clk_apb       0        0
> 0   199999997          0     0  50000
>                             cpub_clk_div4       0        0        0
> 249999996          0     0  50000
>                             cpub_clk_div3       0        0        0
> 333333328          0     0  50000
>                                cpub_clk_atb_sel       0        0
>  0   333333328          0     0  50000
>                                   cpub_clk_atb       0        0
> 0   333333328          0     0  50000
>                             cpub_clk_div2       0        0        0
> 499999992          0     0  50000
>                                cpub_clk_axi_sel       0        0
>  0   499999992          0     0  50000
>                                   cpub_clk_axi       0        0
> 0   499999992          0     0  50000
>                             cpub_clk_div16_en       0        0
> 0   999999985          0     0  50000
>                                cpub_clk_div16       0        0
> 0    62499999          0     0  50000

I can't read that.

>
> After enable *cpub_clk* flags with
> .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> this clk is enabled on microSD card see clk_summary below.

Again, I don't get the relationship between cpub and sdcard (or eMMC)

> [...]
>          fclk_div2_div               1        1        0   999999985
>        0     0  50000
>              fclk_div2                3        3        0   999999985
>         0     0  50000
>                 ff3f0000.ethernet#m250_sel       1        1        0
> 999999985          0     0  50000
>                    ff3f0000.ethernet#m250_div       1        1
> 0   249999997          0     0  50000
>                       ff3f0000.ethernet#fixed_div2       1        1
>     0   124999998          0     0  50000
>                          ff3f0000.ethernet#rgmii_tx_en       1
> 1        0   124999998          0     0  50000
>                 ffe05000.sd#mux       1        1        0   999999985
>         0     0  50000
>                    ffe05000.sd#div       1        1        0
> 50000000          0     0  50000
>                 cpub_clk_dyn1_sel       1        1        0
> 999999985          0     0  50000
>                    cpub_clk_dyn1       1        1        0   999999985
>          0     0  50000
>                       cpub_clk_dyn       1        1        0
> 999999985          0     0  50000
>                          cpub_clk       1        1        0
> 999999985          0     0  50000
>                             cpub_clk_div8       0        0        0
> 124999998          0     0  50000
>                             cpub_clk_div7       0        0        0
> 142857140          0     0  50000
>                             cpub_clk_div6       0        0        0
> 166666664          0     0  50000
>                                cpub_clk_trace_sel       0        0
>    0   166666664          0     0  50000
>                                   cpub_clk_trace       0        0
>   0   166666664          0     0  50000
>                             cpub_clk_div5       0        0        0
> 199999997          0     0  50000
>                                cpub_clk_apb_sel       0        0
>  0   199999997          0     0  50000
>                                   cpub_clk_apb       0        0
> 0   199999997          0     0  50000
>                             cpub_clk_div4       0        0        0
> 249999996          0     0  50000
>                             cpub_clk_div3       0        0        0
> 333333328          0     0  50000
>                                cpub_clk_atb_sel       0        0
>  0   333333328          0     0  50000
>                                   cpub_clk_atb       0        0
> 0   333333328          0     0  50000
>                             cpub_clk_div2       0        0        0
> 499999992          0     0  50000
>                                cpub_clk_axi_sel       0        0
>  0   499999992          0     0  50000
>                                   cpub_clk_axi       0        0
> 0   499999992          0     0  50000
>                             cpub_clk_div16_en       0        0
> 0   999999985          0     0  50000
>                                cpub_clk_div16       0        0
> 0    62499999          0     0  50000
>                    cpub_clk_dyn1_div       0        0        0
> 999999985          0     0  50000
>
> Is this correct approach to set the flags to enable *cpub_clk*.
> .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
>
> What I meant is their *Dyn_enable[26]* field for enable/disable for
> HHI_SYS_CPU_CLK_CNTL0 and HHI_SYS_CPUB_CLK_CNTL clk controller.
> in the S922X datasheets which could help resolve this issue.
> Any thought on this.

I sorry but I'm just lost. I don't understand anything above so I can't
comment.

>
> -Anand


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
