Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FAA95AFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 11:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O9H/vPdHJ69AnIEZk1FDfVCx9NVCgey1eJW/N6NSrCo=; b=mnUmfg3vjU1aHsNqR/yBPbh72
	euLtU/439BgdH0ngB4Z1/izbXFLJ5mMSWShDgWRCe+VAB7jkSXAZxqpoahk8F/vTxLyGwhXyxL8z6
	rIcpyQJ5hFmjEKmX7YozPwdFIrxOmgWCWl7yTt5G5c/9XcNlF2NjwSG6gauHW8+rn6JImy/+429cp
	FY3Gp7SMJL/3UC7Dwcw557RxOQJ9iwcnHDgKNperAcDHrJMyfEtZAwkfvdAoFjJ9akGxhh7+9y3im
	kjJxO/9xlEFrffno9VAcYBIh9/ton7r3YdvpHtfpPophikcs0OX1B9mUNIW+0E+uoIS1C8f34UR7w
	hTRHprU/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00RC-0002f6-Ry; Tue, 20 Aug 2019 09:28:23 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i00Qs-0002aG-0X
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 09:28:03 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2D54676D1AECF0BE440E;
 Tue, 20 Aug 2019 17:27:57 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Tue, 20 Aug 2019
 17:27:49 +0800
Subject: Re: [PATCH v3] gpio: pl061: Fix the issue failed to register the ACPI
 interrtupion
To: Linus Walleij <linus.walleij@linaro.org>
References: <1566221225-5170-1-git-send-email-xuwei5@hisilicon.com>
 <CACRpkdZFwANp-+fSmPPENLoh2Za2-fyf+aZ0VK79AnyRJs1H3A@mail.gmail.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5D5BBD15.4030507@hisilicon.com>
Date: Tue, 20 Aug 2019 17:27:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdZFwANp-+fSmPPENLoh2Za2-fyf+aZ0VK79AnyRJs1H3A@mail.gmail.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_022802_268413_A449AA0A 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Tangkunshan <tangkunshan@huawei.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 John Garry <john.garry@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>, Len Brown <lenb@kernel.org>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On 2019/8/20 16:01, Linus Walleij wrote:
> On Mon, Aug 19, 2019 at 3:29 PM Wei Xu <xuwei5@hisilicon.com> wrote:
>
>> Invoke acpi_gpiochip_request_interrupts after the acpi data has been
>> attached to the pl061 acpi node to register interruption.
>>
>> Otherwise it will be failed to register interruption for the ACPI case.
>> Because in the gpiochip_add_data_with_key, acpi_gpiochip_add is invoked
>> after gpiochip_add_irqchip but at that time the acpi data has not been
>> attached yet.
> We need to fix this problem in gpiochip_add_data_with_key() instead.
Thanks!

Best Regards,
Wei

> Yours,
> Linus Walleij
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
