Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8D98FE67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 10:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Tm6BPshI15eBtgCwN7SMQFQ0rRdeZttLihRfJQKGzg=; b=a8JFAoo6SVW561NPfzSKIntAN
	N0Adu1yCa4VoN/D/sND2h06niegIK1PbwFrd0FpwHv3CAe1lJytgZzB1+DjOXwnjqWG1OB50tr4xo
	cKZHPUmBzetc5YS9wxCAeSlkB4SQwCGf+8MngGExSvF9pKGCEeIzo5Kb2Ci6yROnse90U48b/M0UF
	Tx3GWMm4FZyLMeWrrGYBRV69rOsA6rM3/IhHaWcpo5JgQFs98z9uhIHp/L2Iz542Axh3epzBSn8Yo
	9U22qpus7MRPTTgm3I8s1/S0xdqfYDLbWGxcif0ueKuVkzZZF/zFMDH9SLTdNHkPcaC11r9y6QUmG
	m8hzsCP0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXoD-0001TC-Cb; Fri, 16 Aug 2019 08:42:05 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXo2-0001SQ-3y
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 08:41:55 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 15731BB44AE410066264;
 Fri, 16 Aug 2019 16:41:50 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Fri, 16 Aug 2019
 16:41:40 +0800
Subject: Re: [PATCH] gpio: pl061: Fix the issue failed to register the ACPI
 interruption
To: Linus Walleij <linus.walleij@linaro.org>
References: <5D514D6F.4090904@hisilicon.com>
 <CACRpkdbi21mV5quTmur6egb6FJMFrD-Lg1EUKtk+HejyWjzmUA@mail.gmail.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5D566C44.5080106@hisilicon.com>
Date: Fri, 16 Aug 2019 16:41:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdbi21mV5quTmur6egb6FJMFrD-Lg1EUKtk+HejyWjzmUA@mail.gmail.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_014154_326053_9434185E 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Tangkunshan <tangkunshan@huawei.com>, John Garry <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 huangdaode <huangdaode@hisilicon.com>, Jonathan
 Cameron <jonathan.cameron@huawei.com>, "Liguozhu
 \(Kenneth\)" <liguozhu@hisilicon.com>, Zhangyi ac <zhangyi.ac@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On 2019/8/14 17:04, Linus Walleij wrote:
> Hi Wei,
>
> thanks for your patch!
>
> This doesn't apply for my "devel" branch, can you rebase
> on this:
> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/log/?h=devel
>
> We have moved some ACPI headers around recently.

Thanks to review!
I just sent out the v2 based on that.

> On Mon, Aug 12, 2019 at 1:28 PM Wei Xu <xuwei5@hisilicon.com> wrote:
>
>> Invoke acpi_gpiochip_request_interrupts after the acpi data has been
>> attached to the pl061 acpi node to register interruption.
> Makes sense.
>
>> Fixes: 04ce935c6b2a ("gpio: pl061: Pass irqchip when adding gpiochip")
> I doubt this is a regression since I haven't seen anyone use this
> gpiochip with ACPI before.
>
> Please rename the patch "gpio: pl061: Add ACPI support" unless
> you can convince me it worked without changes before.

In the v2, I attached the log on QEMU v3.0.0 and Linux kernel v5.2.0-rc7 
and
the pl061 driver can register ACPI interruption.
Based on that, I did not rename the patch but I am OK to rename it if 
you have
any doubt.

> Please include some ACPI people on review of this. From
> MAINTAINERS:
> ACPI
> M:      "Rafael J. Wysocki" <rjw@rjwysocki.net>
> M:      Len Brown <lenb@kernel.org>
> L:      linux-acpi@vger.kernel.org
>
> I would also include Andy Shevchenko and Mika Westerberg for
> the GPIO aspects.
Copied to all of them in the v2.
Thanks!

Best Regards,
Wei

> Thanks!
> Linus Walleij
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
