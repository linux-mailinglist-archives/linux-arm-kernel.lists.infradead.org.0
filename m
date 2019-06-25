Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F09D54C9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 12:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HROjs74KSXn++QQTugWyDr2HY+kOL6EIwf46W5exDWE=; b=t+sIFGO68lCkKCB2WG0vJ3ahn
	6sX8Sx2uVWkB1/0uOU1r+QHTKMRlpvMkLv3lg9o18nnyMMSDVfxa/e9rcOshlFMFLyAxgFGmDfbMf
	5dacT6cMP1vS53ADWt+bGeo3raWIMvbr6VhspzYgQEdCOfDPzkbfM3zjxcWGUuX5Ce4v5L2gyADvL
	VAQt3Z0e6vEVslDl7EE0wydyTpMjz/OqsP0AsU96HUKJQHEpWNqiZB2sck7VAB7A4k1dyHq2DElsY
	Ark1cgKd7NFKJF7fZMvH5bH4W9IdYB122W+BP73t6X91WeRiA/8CF2DPU9X//0U51gYQ7bEhmEEAP
	4fITE4vAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiwo-0003ZS-Tt; Tue, 25 Jun 2019 10:45:10 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiwX-0003WX-P5
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 10:44:55 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 12EA0BDC5EEDA6055D6F;
 Tue, 25 Jun 2019 18:44:45 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 25 Jun 2019 18:44:33 +0800
Subject: Re: [GIT PULL] Hisilicon fixes for v5.2
To: Wei Xu <xuwei5@hisilicon.com>, <arm@kernel.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 <arnd@arndb.de>
References: <b89ef8f0-d102-7f78-f373-cbcc7faddee3@hisilicon.com>
 <afaddac3-4f9c-c09d-09d1-9c3e71beaf7b@hisilicon.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <1dc5a7b1-5476-d732-74ba-d044e63706fa@huawei.com>
Date: Tue, 25 Jun 2019 11:44:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <afaddac3-4f9c-c09d-09d1-9c3e71beaf7b@hisilicon.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_034454_123396_834FD035 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Tangkunshan <tangkunshan@huawei.com>, linux-pci@vger.kernel.org,
 rjw@rjwysocki.net, linuxarm@huawei.com,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 huangdaode <huangdaode@hisilicon.com>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, bhelgaas@google.com,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>, Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/06/2019 11:39, Wei Xu wrote:
> Hi ARM-SoC team,
>
> Sorry, I forgot to mention that one or two patches in this patch set
> are not pure fix.
> We are also OK to queue for v5.3.
> Thanks!
>

Yes, specifically patch "lib: logic_pio: Enforce LOGIC_PIO_INDIRECT 
region ops are set at registration" is a minor tidy/optimisation.

Others are fixes or required for fixes.

And adding for v5.3 is fine, then we can ensure that the necessary is 
backported to stable when in mainline.

Thanks,
John

> Best Regards,
> Wei
>
> On 6/25/2019 11:23 AM, Wei Xu wrote:
>> Hi ARM-SoC team,
>>
>> Please consider to pull the following changes.
>> Thanks!
>>
>> Best Regards,
>> Wei
>>
>> ---
>>
>> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>>
>>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>>
>> are available in the Git repository at:
>>
>>   git://github.com/hisilicon/linux-hisi.git tags/hisi-fixes-for-5.2
>>
>> for you to fetch changes up to 07c811af1c00d7b4212eac86900b023b6405a954:
>>
>>   lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set at registration (2019-06-25 09:40:42 +0100)
>>
>> ----------------------------------------------------------------
>> Hisilicon fixes for v5.2-rc
>>
>> - fixed RCU usage in logical PIO
>> - Added a function to unregister a logical PIO range in logical PIO
>>   to support the fixes in the hisi-lpc driver
>> - fixed and optimized hisi-lpc driver to avoid potential use-after-free
>>   and driver unbind crash
>>
>> ----------------------------------------------------------------
>> John Garry (6):
>>       lib: logic_pio: Fix RCU usage
>>       lib: logic_pio: Avoid possible overlap for unregistering regions
>>       lib: logic_pio: Add logic_pio_unregister_range()
>>       bus: hisi_lpc: Unregister logical PIO range to avoid potential use-after-free
>>       bus: hisi_lpc: Add .remove method to avoid driver unbind crash
>>       lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set at registration
>>
>>  drivers/bus/hisi_lpc.c    | 43 ++++++++++++++++++++----
>>  include/linux/logic_pio.h |  1 +
>>  lib/logic_pio.c           | 86 +++++++++++++++++++++++++++++++++--------------
>>  3 files changed, 99 insertions(+), 31 deletions(-)
>>
>
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
