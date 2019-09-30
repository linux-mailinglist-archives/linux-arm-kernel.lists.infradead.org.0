Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525A3C21BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOJQSxf2ehDao5ve0T2ihEh0v9VJqfd56YIO0+FEc5E=; b=kZelPj1EHVfpu6
	ITLmWKqGJiZqp1VI2wIs2+9vEHpvUICT0L/bxm19bslwPQ0xGkGDfpNdcNSoNlijsBzT11TObwvBh
	36q9QnixKIZTIiuFRP2AUf2bik/n2mQ3VMU5Om8DNk7A1dSL0V1vO+Jfh8AkiTc5YjiHIrUa75Tgi
	ZuodWa0bfy3NBeeve1JOG0qixZHJhZQ26yPo6tpWyerqvbMdxH+YECWBXZhqyBOPTYQqEt4TzLpHE
	0nKOh3VzsNJV/uwWta7pvsvWWCJgNGGr6IU66LiMvuxrOdt1oCjGZUYPTM7JDTTdHI2fCb/VYGDJZ
	0b4PbMPGnNBnI8uQh3Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvaT-0001wu-QV; Mon, 30 Sep 2019 13:19:37 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvaJ-0001wP-1V
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:19:28 +0000
Received: by mail-oi1-x243.google.com with SMTP id k20so11075890oih.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 06:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tvF2rhjIU40oHZTkD8AiJlAuhk6N45ACdpW2yo/HLqU=;
 b=PO3eOfC/q3wl/KRr0kWCAelNHERyjJNf3sYliZiXHahyxh4ZRx2ySTuhPxn1dLYQtz
 Ye7DkO0wnQTjwjmUaxO8t8JgHdk/PerRiFSCyrNFh5SbjlOxqUbk17JiIevIdEtWEmqn
 D+03S22BPz+8zeYwZv2Bei/nLUk1RNyudNjaeErSn+O9FIlqczoufsYOsZOoGm5F3MtH
 oAOfw9c/il8g2OxXfN5HbM+5V+PC16ESN+8dUaf3o354nFgG9uXH+SoowTtN6gelXjGF
 2f7a0ilmT8oGOJV2PKIB+OsJ1h0c3lxdDtGuZ78Fa7qJuhxDICK5hsWj3CFXe07wW8IK
 nuJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tvF2rhjIU40oHZTkD8AiJlAuhk6N45ACdpW2yo/HLqU=;
 b=gN6N0qdybzGOg2TyZVoIOzaS0NZFjHpUXvWeRoK7DnumHVEzf2KQxlLQQY1tMn05TC
 RK9pXv+ksz08rBIrRBE6ne10jbOEUyfqOwtEwAZWfw3EPaokVA7OnkMz/A8+nzYinXkV
 638NzR/4xXBHaNXPUlRTReLQGR3ZqLJ2Xi/dr9fwJQdKUO1tVA1PZ9VOaojD+h/9d505
 9fPXWFMha3YvNC+Iq92istqfpImCMV9e8L448l2BVMTWowbKjDz4OUyZF1jYMzKLrQhS
 ytUhfRTZicPyPPG1IrmMO4hUoV7QEo9UEh8lEYiNBE0rwokfa72sy35yqxIqvFx9pKMn
 /0tQ==
X-Gm-Message-State: APjAAAUfEXTLwKZRQlGSuP5RjsTGPeMV5jn/wdoyo/iuMRa6wOZYIacX
 jz2/tSoF12YJZaIQztm8aFP2FvicLrLG9zxb2jr8kA==
X-Google-Smtp-Source: APXvYqxkDA2j7mElW4UnsVMO8OvEuYOnFf4j7HG8KejxC44MOi2OBa9meGhMJ+mXVoFqHVS5fsi1jnMYUOeVkuK8Ih4=
X-Received: by 2002:aca:b48a:: with SMTP id d132mr18336111oif.98.1569849565968; 
 Mon, 30 Sep 2019 06:19:25 -0700 (PDT)
MIME-Version: 1.0
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
 <1569338511-3572-8-git-send-email-guoheyi@huawei.com>
In-Reply-To: <1569338511-3572-8-git-send-email-guoheyi@huawei.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Mon, 30 Sep 2019 14:19:15 +0100
Message-ID: <CAFEAcA9ZHs=GdJ-_Ap1PWdgDjSDBnnRqG1UkMGx_FiqCJ5ZyGw@mail.gmail.com>
Subject: Re: [RFC PATCH 07/12] arm/sdei: override qemu_irq handler when
 binding interrupt
To: Heyi Guo <guoheyi@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_061927_086788_2B5C5D09 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 QEMU Developers <qemu-devel@nongnu.org>, kvmarm@lists.cs.columbia.edu,
 qemu-arm <qemu-arm@nongnu.org>, James Morse <james.morse@arm.com>,
 wanghaibin.wang@huawei.com, Dave Martin <Dave.Martin@arm.com>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 at 16:23, Heyi Guo <guoheyi@huawei.com> wrote:
>
> Override qemu_irq handler to support trigger SDEI event transparently
> after guest binds interrupt to SDEI event. We don't have good way to
> get GIC device and to guarantee SDEI device is initialized after GIC,
> so we search GIC in system bus when the first SDEI request happens or
> in VMSTATE post_load().
>
> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
> Cc: Peter Maydell <peter.maydell@linaro.org>
> Cc: Dave Martin <Dave.Martin@arm.com>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com>


> +static void override_qemu_irq(QemuSDEState *s, int32_t event, uint32_t intid)
> +{
> +    qemu_irq irq;
> +    QemuSDE *sde;
> +    CPUState *cs;
> +    int cpu;
> +
> +    /* SPI */
> +    if (intid >= GIC_INTERNAL) {
> +        cs = arm_get_cpu_by_id(0);
> +        irq = qdev_get_gpio_in(s->gic_dev,
> +                               gic_int_to_irq(s->num_irq, intid, 0));
> +        if (irq) {
> +            qemu_irq_intercept_in(&irq, qemu_sdei_irq_handler, 1);
> +        }

I'm not sure what this code is trying to do, but
qemu_irq_intercept_in() is a function for internal use
by the qtest testing infrastructure, so it shouldn't be
used in 'real' QEMU code.

> +        sde = get_sde_no_check(s, event, cs);
> +        sde->irq = irq;
> +        put_sde(sde, cs);
> +        return;
> +    }

> @@ -1042,6 +1152,17 @@ void sdei_handle_request(CPUState *cs, struct kvm_run *run)
>          return;
>      }
>
> +    if (!sde_state->gic_dev) {
> +        /* Search for ARM GIC device */
> +        qbus_walk_children(sysbus_get_default(), dev_walkerfn,
> +                           NULL, NULL, NULL, sde_state);
> +        if (!sde_state->gic_dev) {
> +            error_report("Cannot find ARM GIC device!");
> +            run->hypercall.args[0] = SDEI_NOT_SUPPORTED;
> +            return;
> +        }
> +    }

Walking through the qbus tree looking for particular devices
isn't really something I'd recommend either.

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
