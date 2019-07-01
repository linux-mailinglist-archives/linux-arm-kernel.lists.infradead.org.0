Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AA75B4F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 08:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZDFNFpQJKUlf7DBkMjPaL0Oh+N60bkOolieIAfv+t6w=; b=GsCB0ZV7LeEOXvthLGt5sHTSh
	9tKgH3ed48Kgocevo79t4oLc4Y7/AOdphFQG40BYPJSRQOXhXYEYb/uT9kOXdzqlf1VfUIPO+tY7H
	V57r4Om2l+Mi578d2yrL6Ue1fpGMvKx1njlC6wl1qGE0BueBEaa42WWPrxCzS82e91szYZ9lE3Lt0
	OSTLGuW89sOpFunVoRs3e+kGiGOZQAeVlDzS2sEC1oD2ViKhJFYOZcnkTuwq8S2LIrl9abxnY4tQl
	k6BBr479BcHWKpv9yNRte6jsPL32rFq9m6JIdHQpowbd80jpgIJBiyeOPi6snbO1GmuC9gHSFf9OQ
	LRMmxIK3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhpit-0004bf-3I; Mon, 01 Jul 2019 06:23:31 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhpif-0004aE-Nh
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 06:23:19 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 68DFBF79AA04DEFD7165;
 Mon,  1 Jul 2019 14:23:05 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Mon, 1 Jul 2019
 14:22:58 +0800
Subject: Re: [GIT PULL] Hisilicon fixes for v5.2
To: Olof Johansson <olof@lixom.net>, John Garry <john.garry@huawei.com>
References: <b89ef8f0-d102-7f78-f373-cbcc7faddee3@hisilicon.com>
 <20190625112148.ckj7sgdgvyeel7vy@localhost>
 <CAOesGMj+aNkOT1YVHTSBLkOfEujk7uer3R1AmE-sa1TwCijbBg@mail.gmail.com>
 <7e215bd7-daab-b6cf-8d0f-9513bd7c4f6d@huawei.com>
 <20190627021937.kk4lklv2uz3mogoq@localhost>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5D19A6C1.70104@hisilicon.com>
Date: Mon, 1 Jul 2019 14:22:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20190627021937.kk4lklv2uz3mogoq@localhost>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_232318_021448_1AC052A6 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
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
 Tangkunshan <tangkunshan@huawei.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>, huangdaode <huangdaode@hisilicon.com>,
 "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, Bjorn
 Helgaas <bhelgaas@google.com>, "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

On 2019/6/27 10:19, Olof Johansson wrote:
> On Tue, Jun 25, 2019 at 02:31:26PM +0100, John Garry wrote:
>> On 25/06/2019 14:03, Olof Johansson wrote:
>>>>> are available in the Git repository at:
>>>>>>>    git://github.com/hisilicon/linux-hisi.git tags/hisi-fixes-for-5.2
>>>>>>>
>>>>>>> for you to fetch changes up to 07c811af1c00d7b4212eac86900b023b6405a954:
>>>>>>>
>>>>>>>    lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set at registration (2019-06-25 09:40:42 +0100)
>>>>>>>
>>>>>>> ----------------------------------------------------------------
>>>>>>> Hisilicon fixes for v5.2-rc
>>>>>>>
>>>>>>> - fixed RCU usage in logical PIO
>>>>>>> - Added a function to unregister a logical PIO range in logical PIO
>>>>>>>    to support the fixes in the hisi-lpc driver
>>>>>>> - fixed and optimized hisi-lpc driver to avoid potential use-after-free
>>>>>>>    and driver unbind crash
>>>>> Merged to fixes, thanks.
>>> This broke arm64 allmodconfig:
>>>
>>>         arm64.allmodconfig:
>>> drivers/bus/hisi_lpc.c:656:3: error: implicit declaration of function
>>> 'hisi_lpc_acpi_remove'; did you mean 'hisi_lpc_acpi_probe'?
>>> [-Werror=implicit-function-declaration]
>>>
>>>
>> Uhhh, that's my fault - I didn't provide a stub for !ACPI. Sorry. I'll send
>> a fixed v3 series.
> No worries, it happens -- but it's good if maintainers do at least a few test
> builds before sending in pull requests so we don't catch all of it at our end.

Sorry for the late reply!
I had a trip last week and did the pull request in a hurry that forgot 
to do the some building
test like allmodconfig, allyesconfig and so on.
In the future, I will do more testing before sending out to avoid this 
kind fault.

Best Regards,
Wei

>
> -Olof
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
