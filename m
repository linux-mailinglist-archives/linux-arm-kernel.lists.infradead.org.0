Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30DF90344
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 15:41:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAeZUcdDpXBRQN55cra/nq8RwIZ1QaQuff94Q9pIlAc=; b=BjwG7a76w5uEmm
	RhvhMRtEot1+/lnAuouRKnRuDY1ezPBZRGhd8YoLVJlP/fZkyUSTw0ce7dO27QYPWiKgbfsHb2HqB
	oYmlugth2XYCCVRSHwAMHCKSijGtUIzXSdpL3cT/cqmDUBENOKN7+yiZcDnoon9N4b1naqYs+ENNf
	fpGheRIsjvNAVvL7d+I1E5t15US4pwif7UXa0+gaAN62kYwEGH9InlgWFn5KaqvJ3hQ2gm6NGA/jE
	dy3pHFTOqXReOFKo/1cmtB6I0O7tOKcyaJRhi40OeQ+ARtHPSnGQiFBZMBESuN5VvByumygWYgPEL
	BrGSkN0v5/Qp/iHVHz5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hycTZ-0007yk-KR; Fri, 16 Aug 2019 13:41:05 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hycTP-0007y5-9y
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 13:40:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id go14so2173381plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 06:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vDN0+dyr6DMJd4+K52kh69879Me//RnUZQzc4InlSuI=;
 b=pKlnlCGxRoVBUmrLdA9fApZTDvZ5DJq3I+0kCVBqienNx9Qn7pdopdYm+dyXTWCi4e
 ld85emkhKH4xYp5n5lnIHz47ik8yefKVI2kFdE03AHYTvMEkyOdF0qM2zLwuzXmxbadi
 brekO1yP9CUCjg8NFI4TeAbMfP4dggWQUssO3eCaHccAm79SCnyTosfUSTusDQrB+MSL
 PllpCHry3OMcTFyCmbgX4XBbKwsgBO9nNMI0HBqOOx3WPDHErJ0ylYPB9GhHg0m8PzYL
 sBSZhoHVSVTGIOc2Kr9FdHg8PZ7X02lzsJVJHvQFu3+mv6c91tDwRj4pd/E4WH0jwJPA
 HOvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vDN0+dyr6DMJd4+K52kh69879Me//RnUZQzc4InlSuI=;
 b=J/GvjngQE7j0uBMPoWYgnPnPOMyV72iwhsYcwhFWwh5p0ADIHSSMfB3jMgCqfeY58s
 zvJc9AbXghbvO7qwS3lil23xpb+lZ5BCqEm3L9pI9NCcs12PUnSSAT+TMd4h5rzI5kUF
 Tj4pGerWz784G5eG2yvN8i1HgVsbMDg9GWBZ4/+3iVElPCO1yOWcOZdkg8WsU9lmLDO5
 YvL0aIj9eq+buKidqclZLH90+oZm7cn4GZQAdi8bmtCYBfCWfy8GaoGlRgJeXFofeI+S
 S0+lCbiQyrileQfXpDEvAewI+4H48NPh7tVJt8ZXmtRqYpg5NjoO+/z+WZABj+FWIWdQ
 TLCA==
X-Gm-Message-State: APjAAAWTSikbGGAUPYHTCwVbwRSLJV3CZOXz0DLmWPPf7qjLj2vfqU1F
 A3VZjuWE2oOZCEyIcVnekrclDkEV2HCefdC+5YI=
X-Google-Smtp-Source: APXvYqyOqNRH0WBVdfxBLkaw7mQ2WBZbnECGUjAk75ks9d9mQcn1NWOwlq96XVwE8oEFizIMPWTo+W4QkBOhfTK99nE=
X-Received: by 2002:a17:902:e106:: with SMTP id
 cc6mr9230690plb.255.1565962852141; 
 Fri, 16 Aug 2019 06:40:52 -0700 (PDT)
MIME-Version: 1.0
References: <1565946336-20080-1-git-send-email-xuwei5@hisilicon.com>
In-Reply-To: <1565946336-20080-1-git-send-email-xuwei5@hisilicon.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 16 Aug 2019 16:40:40 +0300
Message-ID: <CAHp75VfjE4V7yY1b3JYd_Mk9-8RTok2WCN=-MMrUBw5NN90o2A@mail.gmail.com>
Subject: Re: [PATCH v2] gpio: pl061: Fix the issue failed to register the ACPI
 interrtupion
To: Wei Xu <xuwei5@hisilicon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_064055_372027_BD83E762 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: salil.mehta@huawei.com, jinying@hisilicon.com, tangkunshan@huawei.com,
 liguozhu@hisilicon.com, Linus Walleij <linus.walleij@linaro.org>,
 John Garry <john.garry@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 shameerali.kolothum.thodi@huawei.com, Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>, shiju.jose@huawei.com,
 Mika Westerberg <mika.westerberg@linux.intel.com>, zhangyi.ac@huawei.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 12:07 PM Wei Xu <xuwei5@hisilicon.com> wrote:
>
> Invoke acpi_gpiochip_request_interrupts after the acpi data has been
> attached to the pl061 acpi node to register interruption.
>
> Otherwise it will be failed to register interruption for the ACPI case.
> Because in the gpiochip_add_data_with_key, acpi_gpiochip_add is invoked
> after gpiochip_add_irqchip but at that time the acpi data has not been
> attached yet.

> 2. cat /proc/interrupts in the guest console:
>
>         estuary:/$ cat /proc/interrupts
>                    CPU0
>         2:         3228     GICv3  27 Level     arch_timer
>         4:           15     GICv3  33 Level     uart-pl011
>         42:           0     GICv3  23 Level     arm-pmu
>         IPI0:         0       Rescheduling interrupts
>         IPI1:         0       Function call interrupts
>         IPI2:         0       CPU stop interrupts
>         IPI3:         0       CPU stop (for crash dump) interrupts
>         IPI4:         0       Timer broadcast interrupts
>         IPI5:         0       IRQ work interrupts
>         IPI6:         0       CPU wake-up interrupts
>         Err:          0
>
> But on QEMU v3.0.0 and Linux kernel v5.2.0-rc7, pl061 interruption is
> there as below:
>
>         estuary:/$ cat /proc/interrupts
>                    CPU0
>           2:       2648     GICv3  27 Level     arch_timer
>           4:         12     GICv3  33 Level     uart-pl011
>          42:          0     GICv3  23 Level     arm-pmu
>          43:          0  ARMH0061:00   3 Edge      ACPI:Event
>         IPI0:         0       Rescheduling interrupts
>         IPI1:         0       Function call interrupts
>         IPI2:         0       CPU stop interrupts
>         IPI3:         0       CPU stop (for crash dump) interrupts
>         IPI4:         0       Timer broadcast interrupts
>         IPI5:         0       IRQ work interrupts
>         IPI6:         0       CPU wake-up interrupts
>         Err:          0

In above show only affected line.

> And the whole dmesg log on Linux kernel v5.2.0-rc7 is as below:

NO!
Please, remove this huge noise!

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
