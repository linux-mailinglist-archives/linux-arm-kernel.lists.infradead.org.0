Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190D411F4F5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 23:55:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=el+MARUpdPJgKxEJp7BUBPjqQlroxr2iKp4IQbprx1A=; b=FLptFMU0vVholr
	b5o1Q0d2bPivfkygmkO5YLylVQwNQQLH3nd6Jw3qd6SheMqhscm+S6bICdFQRde6llBEdprV0kEUH
	don4JHyso4zC5SMnopx/8911W5fw6aEoh4SdKwWZN37MW+587pFY0LBN5bi9i3WfanKSkDNhCQg16
	WsgHd4lJeqxWeqzqjcBh7gA8UQaKU2lJEHVSA2iaIEJXWD4h0wi9IptnE1Om5efjKyb0wfz7EZYkv
	TP3yyHZc3Vn8GZOyEFh8AoSMJigO5zJOHJ3Dv0H8PCzA5GV0ExKllbezNtBV+hGK3J+zUpctjCtqS
	PUPs68tQfjQ/G3/fZ8fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igGJc-0003qO-FV; Sat, 14 Dec 2019 22:55:12 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igGJK-0003pe-DA
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 22:54:55 +0000
Received: by mail-il1-x142.google.com with SMTP id f5so2488852ilq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Dec 2019 14:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3MujR8FfbJzHtT+aBckUizKYtCSDNNUeyrMJ7cLcF5U=;
 b=M1obTVWLaQDE6qtaco9B3b7mlHrimuMdflFH1CAL1a6RectKuMgw8HiNA7WaLix/lx
 UBVrv/WdxsMLlnJx0c4xccy4KjEN0TVcucv8KFHjsffaO+0K9YA9oHEcjHiJ8flQ2KaM
 Avqcg2++AQTgdQhe+ZPZ6c5feEf5Bs4pDMmFCHgfZ335S3yBvctKeOh+P27RMVs4QwhG
 80mN2+cwDk4+J4Y0KhMrtobb0S7vx9brbN7swucxU+TyrUkHnqrkWiwXniHuPst0mgC9
 JuV1zYVSVfNnOmw9QKtQyhNdUpx5//F7TM4U+I44mfGebMnsHB9CP9LIh7bKdmsGMqbZ
 TXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3MujR8FfbJzHtT+aBckUizKYtCSDNNUeyrMJ7cLcF5U=;
 b=FJ2pCG71L3Ze7u6SJEQXDyWo/pZU4rabs/db4B1CMCJTjX8NzB9ozEDmCoy7iG38rl
 bSo4QO977DBmRzNvx6shufDvczZnW9sSVOehNt65dcvCARl1qBlthKTzIRIQ1YFN4pKb
 rENEpjVHCunQSdBT/dygZio3G5acMwJeRudWZGkqpjdSmx5sZXtXrg10e/s9LQaIIBiA
 0zQsN8mYjSyGBihWFf5N9YyKVzMnFwez5wK7Mw6f4FLRkStxp2320eZCAtK/UDCcI8ON
 1lgacEPaI0K41c2KmfPusijy+Gyraw/hYkSmfZPTKqR000wSWRYszIGJIhw4DjEW8zvA
 uh3w==
X-Gm-Message-State: APjAAAVoBMgnUVtn2DnVpE4jie+MdF3+rnsFiHxAdLGHeSMiNDcOx3SW
 39ag0Z6TqBXkKrKw0K//f9kmph5c5AZCJax2m+8=
X-Google-Smtp-Source: APXvYqyW8kYXeXlRGN9OHdYtxcpfDE0pcapG0w46G+fIMkP1J0/wLckoqSm53Hj4MIITyQybvnyeyKXeW+uyTDZEkVs=
X-Received: by 2002:a92:89c2:: with SMTP id w63mr6011279ilk.252.1576364091887; 
 Sat, 14 Dec 2019 14:54:51 -0800 (PST)
MIME-Version: 1.0
References: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
 <20191023044737.2824-1-navid.emamdoost@gmail.com>
In-Reply-To: <20191023044737.2824-1-navid.emamdoost@gmail.com>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Sat, 14 Dec 2019 16:54:41 -0600
Message-ID: <CAEkB2ETvi=Zryh+3UnSddrprnB+MzSObAbsms+6LHHLuiRwZjw@mail.gmail.com>
Subject: Re: [PATCH] clocksource/drivers: Fix error handling in
 ttc_setup_clocksource
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_145454_470851_241730FC 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Navid Emamdoost <emamd001@umn.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-arm-kernel@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Would you review this patch, please?

On Tue, Oct 22, 2019 at 11:47 PM Navid Emamdoost
<navid.emamdoost@gmail.com> wrote:
>
> In the implementation of ttc_setup_clocksource() when
> clk_notifier_register() fails the execution should go to error handling.
> Additionally, to avoid memory leak the allocated memory for ttccs should
> be released, too. So, goto error handling to release the memory and
> return.
>
> Fixes: e932900a3279 ("arm: zynq: Use standard timer binding")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/clocksource/timer-cadence-ttc.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-cadence-ttc.c
> index 88fe2e9ba9a3..035e16bc17d3 100644
> --- a/drivers/clocksource/timer-cadence-ttc.c
> +++ b/drivers/clocksource/timer-cadence-ttc.c
> @@ -328,10 +328,8 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
>         ttccs->ttc.clk = clk;
>
>         err = clk_prepare_enable(ttccs->ttc.clk);
> -       if (err) {
> -               kfree(ttccs);
> -               return err;
> -       }
> +       if (err)
> +               goto release_ttccs;
>
>         ttccs->ttc.freq = clk_get_rate(ttccs->ttc.clk);
>
> @@ -341,8 +339,10 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
>
>         err = clk_notifier_register(ttccs->ttc.clk,
>                                     &ttccs->ttc.clk_rate_change_nb);
> -       if (err)
> +       if (err) {
>                 pr_warn("Unable to register clock notifier.\n");
> +               goto release_ttccs;
> +       }
>
>         ttccs->ttc.base_addr = base;
>         ttccs->cs.name = "ttc_clocksource";
> @@ -363,16 +363,18 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
>                      ttccs->ttc.base_addr + TTC_CNT_CNTRL_OFFSET);
>
>         err = clocksource_register_hz(&ttccs->cs, ttccs->ttc.freq / PRESCALE);
> -       if (err) {
> -               kfree(ttccs);
> -               return err;
> -       }
> +       if (err)
> +               goto release_ttccs;
>
>         ttc_sched_clock_val_reg = base + TTC_COUNT_VAL_OFFSET;
>         sched_clock_register(ttc_sched_clock_read, timer_width,
>                              ttccs->ttc.freq / PRESCALE);
>
>         return 0;
> +
> +release_ttccs:
> +       kfree(ttccs);
> +       return err;
>  }
>
>  static int ttc_rate_change_clockevent_cb(struct notifier_block *nb,
> --
> 2.17.1
>


-- 
Navid.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
