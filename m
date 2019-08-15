Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AAD8EC70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFUXuq4yTic/cLcdtVfIHvjGgcN9u9SG8HuaKIc9/mE=; b=aU/+cqqtGG+aYO
	PTg1EQOMwLlqZy2FmP9OLLIxQHYT6hW19nnKsZecbU2rPY15hi61nAs3wmq6UIGmiiz/vKS3bZwDv
	Z4NpxaI1AAOqkHkeTxS0m+zQxgGm87NbImg3Ylk6ai6TI80tX/DuB8mj8a4hUc4GOfC4nJiHkgdbc
	Z0ndhYponaX5uqcOWSbebUNgzpdgCSN2JcxDCagwoiJM7CC4odn//JTIq6se8soboHBuoVUXLFdSj
	l0FkoKVaMKbAxoz6EaR4oO0NhiUxDp4tq3cvqocqJ+iE+T7iUyTMHAjq0V/bcDvO0XeCWeRixmpRA
	SXLBh8Grlj8o/+/2c6Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFWk-0003bK-NJ; Thu, 15 Aug 2019 13:10:50 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFWX-0003ab-HQ
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:10:41 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so1279043pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 06:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O7UsU+IB0EE7NVhDIGHpvj8aJpCdK3kTtUuGx3BwSGI=;
 b=gwFFNodooT/qbINiYVSeCDxk71mXjZiC7S+XJFZbRt1moD9TF+wTC//3cCZ6/gW7e2
 +GFwiNW47z0zBpVZX//63Au4UIdulWLXm/DQAOnR4MsJiW67WdTTSklMMeSwxBhb5JcO
 t0l6Ec2FpTnKg344AKoeu8+lrDnIRHI5ItTDxzG+Z7rFrRvkOJyIQfycFlBwI15/YKmv
 4/ia0TG1iMaObQpMJqDXIEPM4sSipwr51IWwAW4JWjrI01Mzg4kOzP+x7Qc0d+bN/Y+4
 f1PzORsZDI+3mI0MHPrAoHtD7KFd9HtvtOTp+i9clArOf/kp+wcamMYifFFuSEPGcq/Q
 P9ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O7UsU+IB0EE7NVhDIGHpvj8aJpCdK3kTtUuGx3BwSGI=;
 b=NoNVx4SnaWI2Tsi1qAcVyVMuP/R8G8Os/SrGbC0qEcWXm6gWKXlSHC3+zb2a145fCs
 Kg/zzIddQFie8Nuk6SYgyn8pR02LIe5ihobODIVFRjnQYF9Ju2x7K9KQoppEXuphT6pr
 UXe9MbYRoILJu0NQumxyLZlh/Nsy7K4p4EnhttvnyT0P6SY8MnQLN7Ex6+ws1pH99KfN
 gWg2+ikZAELVmq0NbMC+859hKNiecLDC73g/K7A0NX6pVk/Be7MqRjcJRT+5LbDk1o7D
 kkioayyyZDEHLC1KbQzxy3N7LY/UnUJ5n3M7rsWu5RrTzG31SM5mE+EKUu2C6ER8IW2/
 Op5Q==
X-Gm-Message-State: APjAAAWNPPydcyD746DE85RvlRb36e4w2XDccdMimPSAxdWsbd/IA5S7
 CI79BqquexlOfqx2FHM4r1ti9yDgS9XlBMyiK9w=
X-Google-Smtp-Source: APXvYqx8IquyCXVRV8V1mOek+yuM6k8+je0LcuDmJciyOCZuG5B1qZv11I1EODVf93jqY/FOYUV2IGqY6ihgUkQsk2Q=
X-Received: by 2002:a05:6a00:8e:: with SMTP id
 c14mr5173336pfj.241.1565874636467; 
 Thu, 15 Aug 2019 06:10:36 -0700 (PDT)
MIME-Version: 1.0
References: <5D514D6F.4090904@hisilicon.com>
In-Reply-To: <5D514D6F.4090904@hisilicon.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 15 Aug 2019 16:10:24 +0300
Message-ID: <CAHp75VcKNZeq80hw5qjKKuh8Qg=WUrXPSpcy6yx5h-_7RHah+g@mail.gmail.com>
Subject: Re: [PATCH] gpio: pl061: Fix the issue failed to register the ACPI
 interruption
To: Wei Xu <xuwei5@hisilicon.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_061037_605672_3802CDDC 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, Linus Walleij <linus.walleij@linaro.org>,
 John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 2:30 PM Wei Xu <xuwei5@hisilicon.com> wrote:
>
> Invoke acpi_gpiochip_request_interrupts after the acpi data has been
> attached to the pl061 acpi node to register interruption.
>
> Otherwise it will be failed to register interruption for the ACPI case.
> Because in the gpiochip_add_data_with_key, acpi_gpiochip_add is invoked
> after gpiochip_add_irqchip but at that time the acpi data has not been
> attached yet.
>
> Tested with below steps on QEMU v4.1.0-rc3 and Linux kernel v5.3-rc4,
> and found pl061 interruption is missed in the /proc/interrupts:
> 1.
> qemu-system-aarch64 \
> -machine virt,gic-version=3 -cpu cortex-a57 \
> -m 1G,maxmem=4G,slots=4 \
> -kernel Image -initrd rootfs.cpio.gz \
> -net none -nographic  \
> -bios QEMU_EFI.fd  \
> -append "console=ttyAMA0 acpi=force earlycon=pl011,0x9000000"
>
> 2. cat /proc/interrupts in the guest console:
> estuary:/$ cat /proc/interrupts
> CPU0
> 2:       3228     GICv3  27 Level     arch_timer
> 4:         15     GICv3  33 Level     uart-pl011
> 42:          0     GICv3  23 Level     arm-pmu
> IPI0:         0       Rescheduling interrupts
> IPI1:         0       Function call interrupts
> IPI2:         0       CPU stop interrupts
> IPI3:         0       CPU stop (for crash dump) interrupts
> IPI4:         0       Timer broadcast interrupts
> IPI5:         0       IRQ work interrupts
> IPI6:         0       CPU wake-up interrupts
> Err:          0
>
> Fixes: 04ce935c6b2a ("gpio: pl061: Pass irqchip when adding gpiochip")

Linus, I'm wondering if we can do this for all inside the GPIO library.
Thoughts?

--
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
