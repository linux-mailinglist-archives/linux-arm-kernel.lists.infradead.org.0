Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 355FC1FBBFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dA9qz0MtUp6q/of107N0SbA6N85kluiIBIqd0m3z7M=; b=hRZgXMfSaOXmm7
	8uiyPC7BaEEMQKAv99R0uOybgEQoGEEsv/ItTKDoD1gjKIo3RfBcZ0176Najl2Ngw6LJyEYORNCcI
	HEZdhaorVDbLrNEZt2x7+O+nzYJef3gc8Pt9UCfLNBE7ez8nGNA79KrzQ//d+KupELvbYuwSt3Sak
	uNnUs9Le3zWxhxQvBt+M9wGMhymkbZDxQqy5uFKkDrDPGaWMNkkzM5G9U/IjQOLb4vn/V9Vin5EL0
	kmuBIt2gyjf+eJEstjUQADAC9pPNkRP7HD4jXFfk7841DTAKZ07tKE+MS9wAHVomm7dqg0VgtpJiO
	huypk9AOKeQe5TnXsAIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEfr-00029t-JJ; Tue, 16 Jun 2020 16:42:59 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEfg-00029I-5p
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:42:49 +0000
Received: by mail-ej1-x641.google.com with SMTP id w16so21709033ejj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 09:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U75s1/DgVO31tjDRbi+5x+wK5V8qYOvXMAdqETFOy+8=;
 b=m20kWeThV5U50KSLAH60Q7FYz2TxFl5Lvk3qa4535j3W+aHdHFOr2Bu+bfnmNgWHR7
 USp7buT/tEQSy9Trxn/viSzNwtHyNT1cMzSwIkN2JVX7ffMYaXVUbpzF7CbdIbMuQ8cx
 PxNL+TQBcwD4fC5bCtyJzApCfOheWx5tW2c43cPFGYv22y3lIctKMMG91QInIhSkjpOE
 6nnZ8CnNXhAV41CjihZ/3mUBl+bHa2YvrZI46T06PcgN845nIiLkFYptyAOYYb+ny20/
 WX8qA4nZEDTkNCfrvu8MQTI8+1Dqzsgjri0/8JzPfyMIjzqa34CJAld/n0kSg0Ie06qB
 FpAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U75s1/DgVO31tjDRbi+5x+wK5V8qYOvXMAdqETFOy+8=;
 b=YlyUk6eaFzJ+EPZYyC3Q5sZBb1GrRY7k6o0Zr6vEB4ph2MvXLFU90wcKOkBYAD7/z8
 jMNzuWSyBzECDDc/CmtB/Vbv3jccD3biISF9T0BGNHKrDaP4pPlZJkPt2Bxc4NFNQYFm
 jvDaw5S0va7iVV6/el3uLxPCFQjKJ8ZVVZUEg4C19pA162ZbtXMQsmQKNxStG1WOAVQy
 l/gVvmlyvcSMQgGC4T1zTk2K1vlTsUtz2JeOHF9dIGcXDTrjHexHMHZmZJ36DM2wGUXH
 izoh3CQjt3qDx4TRdDURBJkGtY+cUjLf9Z899GfKQClIzlFrXQAQddZQ6YC3ydJmVJKg
 YPdw==
X-Gm-Message-State: AOAM532mJpoTKgjcKGlNoAeehFHtgKdVbH+14Blj0qXhgjr8hFlk+uL0
 VOx91USWJZa4Oxyt+QCXTmGnuXZG56yJppXZYDsOYA==
X-Google-Smtp-Source: ABdhPJwCnYD5APW+4OhftsoUEnqH4u2IIvwCJwNK3HU5Xk9oC/d3BgxB0PRH9PKNQV2Fzo/00CDI2vQC2aYcKk8xvCg=
X-Received: by 2002:a17:906:1d41:: with SMTP id
 o1mr3732247ejh.477.1592325766712; 
 Tue, 16 Jun 2020 09:42:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200616045441.27483-1-saiprakash.ranjan@codeaurora.org>
In-Reply-To: <20200616045441.27483-1-saiprakash.ranjan@codeaurora.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 16 Jun 2020 17:42:35 +0100
Message-ID: <CAJ9a7Vgh-WTC1cBi8VLCWcwgT2w=uaXQcGO-J_iAExgiZaaGxA@mail.gmail.com>
Subject: Re: [PATCH] coresight: tmc: Fix TMC mode read in
 tmc_read_unprepare_etb()
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_094248_222684_C984C6C9 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jun 2020 at 05:55, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Reading TMC mode register without proper coresight power
> management can lead to exceptions like the one in the call
> trace below in tmc_read_unprepare_etb() when the trace data
> is read after the sink is disabled. So fix this by having
> a check for coresight sysfs mode before reading TMC mode
> management register in tmc_read_unprepare_etb() similar to
> tmc_read_prepare_etb().
>
>   SError Interrupt on CPU6, code 0xbe000411 -- SError
>   pstate: 80400089 (Nzcv daIf +PAN -UAO)
>   pc : tmc_read_unprepare_etb+0x74/0x108
>   lr : tmc_read_unprepare_etb+0x54/0x108
>   sp : ffffff80d9507c30
>   x29: ffffff80d9507c30 x28: ffffff80b3569a0c
>   x27: 0000000000000000 x26: 00000000000a0001
>   x25: ffffff80cbae9550 x24: 0000000000000010
>   x23: ffffffd07296b0f0 x22: ffffffd0109ee028
>   x21: 0000000000000000 x20: ffffff80d19e70e0
>   x19: ffffff80d19e7080 x18: 0000000000000000
>   x17: 0000000000000000 x16: 0000000000000000
>   x15: 0000000000000000 x14: 0000000000000000
>   x13: 0000000000000000 x12: 0000000000000000
>   x11: 0000000000000000 x10: dfffffd000000001
>   x9 : 0000000000000000 x8 : 0000000000000002
>   x7 : ffffffd071d0fe78 x6 : 0000000000000000
>   x5 : 0000000000000080 x4 : 0000000000000001
>   x3 : ffffffd071d0fe98 x2 : 0000000000000000
>   x1 : 0000000000000004 x0 : 0000000000000001
>   Kernel panic - not syncing: Asynchronous SError Interrupt
>
> Fixes: 4525412a5046 ("coresight: tmc: making prepare/unprepare functions generic")
> Reported-by: Mike Leach <mike.leach@linaro.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  drivers/hwtracing/coresight/coresight-tmc-etf.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> index 36cce2bfb744..6375504ba8b0 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> @@ -639,15 +639,14 @@ int tmc_read_unprepare_etb(struct tmc_drvdata *drvdata)
>
>         spin_lock_irqsave(&drvdata->spinlock, flags);
>
> -       /* There is no point in reading a TMC in HW FIFO mode */
> -       mode = readl_relaxed(drvdata->base + TMC_MODE);
> -       if (mode != TMC_MODE_CIRCULAR_BUFFER) {
> -               spin_unlock_irqrestore(&drvdata->spinlock, flags);
> -               return -EINVAL;
> -       }
> -
>         /* Re-enable the TMC if need be */
>         if (drvdata->mode == CS_MODE_SYSFS) {
> +               /* There is no point in reading a TMC in HW FIFO mode */
> +               mode = readl_relaxed(drvdata->base + TMC_MODE);
> +               if (mode != TMC_MODE_CIRCULAR_BUFFER) {
> +                       spin_unlock_irqrestore(&drvdata->spinlock, flags);
> +                       return -EINVAL;
> +               }
>                 /*
>                  * The trace run will continue with the same allocated trace
>                  * buffer. As such zero-out the buffer so that we don't end
>
> base-commit: 3d439a6c349778f129de19595db564a8366c3634
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>

Tested OK on my DB410c / Linux 5.8-rc1

Tested-by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
