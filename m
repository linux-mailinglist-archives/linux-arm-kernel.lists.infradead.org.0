Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ED7927FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJXvssQWw3EVM6TMdgXbf1FhbWHndtM2qFhKpqIQXm8=; b=NwBeC7vyIWb1jy
	LC8MFz9k81Bz+VspLp0SZqVivF09HpXxFvQl/QSI0BuoCmov9uR07AQ6TvNq6DP69NZ81psSDY3Uv
	JyIhnpoK+WNi7IoCaYqcbZ5Lmq+0CrZJMMChjZVpLXZHp0dOj5Eix33Jqu1YDUhlO+aCMBBRWun8l
	1Q0GjPRym9goqvlyhgbVkwS6E53jCRKLqkkZ3gnGsjvnSTXugziKN0KoNVN+ON2EevX7qibQpLI1A
	d76JVO4WCIyh1HzlcYv6iJFhgkGm05SK/ckky+WqTvFne/gIs8YiC+cUw4L5SDJ5eSoJ8tBPfcnp6
	PNlWXCvsStJY8HQKFQFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjGG-0000d1-Em; Mon, 19 Aug 2019 15:07:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjG8-0000cI-Lu
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:07:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so1381347pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 08:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hd5r0WEwP797Bcjl677J0kfX+yGFvnC6jJRdRPfYUHE=;
 b=e9IwPue31vXYimlp3bK+fSUjE5BQzSNQp/qoupT2K3YzseSWcP6spDQqQQKfszOaUa
 YAMWS0gJEfcqnZYNyg0wTeBKR5M807tlc7ZJ4aXgKDZU/EmJNxY4tQbQ6jSXsgsNF4GC
 On/XGCZWJOZDcKDRfG+qE5q6rKkB2NtcdpeGerUoYQs9Ihf5IoFe/dWu2e9tW96DieWQ
 90B+V0Frr8Muqoa7+aNwswRoHdTW2y3GaHgsC9OhyfPRzuXWs3TE7QcgQgZd8i64VSEp
 evY/zt/IN2I5HNfszQ+laplxQR7hvApo+TGHEqtf2OoFLQGUBKj52YX3FQT90CjsH01/
 tqpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hd5r0WEwP797Bcjl677J0kfX+yGFvnC6jJRdRPfYUHE=;
 b=prqdw3BhesOlgyDuQRzFJ/UxOCTiPZ+cyBLZlQeprF2lc1ulXWMNZekSJHd5fqMGMh
 l+877Tukm9bFybHMpDwKF67R/a8TesrGHseAOBOpfn9PT3cQ9F4mA3rNyZecL8L4Xqfk
 5XLk7HZIEZcF6BFT/+iTeYoux1bUt6XvrJO6Ki672842qo51C3BKFA6GUQEZY0X9Vhhy
 0hpjynqe+DmAL3JyFJnnh8wbn+RCjd0db4ChT1DoUMwnbs3GEmHceEPOs8sMdu02WB2Y
 YqbqejOhLQuorlrAcpj4eV+w2pHN6PCLnjvo99aSUuYydPr7iIrn5vnBqvZxw5kLfRyO
 +Amw==
X-Gm-Message-State: APjAAAXUosuSndK4UPrC6yeZxWMIl7Oa4brbezK+uSZb8Xm0rltmTg5x
 /ezW8HTiRzzFDwOs7dZ3dqeh63oDis+5uz4KDT8=
X-Google-Smtp-Source: APXvYqyf1tTOFKwnnkjydQxzYuwsYNGgVwWGdJg3bsxdR2Vpue/v9ezEdgyTsR26yvKaDBUO4BjeDfHOeIWF/viDWIo=
X-Received: by 2002:a63:e54f:: with SMTP id z15mr20272610pgj.4.1566227266644; 
 Mon, 19 Aug 2019 08:07:46 -0700 (PDT)
MIME-Version: 1.0
References: <1566221225-5170-1-git-send-email-xuwei5@hisilicon.com>
In-Reply-To: <1566221225-5170-1-git-send-email-xuwei5@hisilicon.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 19 Aug 2019 18:07:34 +0300
Message-ID: <CAHp75Vct3qtR5bDF6iALmduKEEq+gNL-btmzQVuWq_hYsmxKhw@mail.gmail.com>
Subject: Re: [PATCH v3] gpio: pl061: Fix the issue failed to register the ACPI
 interrtupion
To: Wei Xu <xuwei5@hisilicon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_080748_717194_BFA78200 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Linus Walleij <linus.walleij@linaro.org>, John Garry <john.garry@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Shiju Jose <shiju.jose@huawei.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 4:29 PM Wei Xu <xuwei5@hisilicon.com> wrote:
>
> Invoke acpi_gpiochip_request_interrupts after the acpi data has been
> attached to the pl061 acpi node to register interruption.
>
> Otherwise it will be failed to register interruption for the ACPI case.
> Because in the gpiochip_add_data_with_key, acpi_gpiochip_add is invoked
> after gpiochip_add_irqchip but at that time the acpi data has not been
> attached yet.
>
> Tested with below steps:
>
>         qemu-system-aarch64 \
>         -machine virt,gic-version=3 -cpu cortex-a57 \
>         -m 1G,maxmem=4G,slots=4 \
>         -kernel Image -initrd rootfs.cpio.gz \
>         -net none -nographic  \
>         -bios QEMU_EFI.fd  \
>         -append "console=ttyAMA0 acpi=force earlycon=pl011,0x9000000"
>
> The pl061 interruption is missed and the following output is not in the
> /proc/interrupts on the v5.3-rc4 compared with the v5.2.0-rc7.
>
>          43:          0  ARMH0061:00   3 Edge      ACPI:Event

The proper fix is to revert the culprit since we call
acpi_gpiochip_request_interrupts() for all controllers.
Linus, please re-do the approach with IRQ handling, it seems broadly
regress with ACPI enabled platforms.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
