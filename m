Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAAB56D8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 17:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B8scxVIrVgV1KNyoMR13tER+LyFjUjhlGcFNMreAR0w=; b=gMw60+SwvpgrRfyLWSSlQ8C1W
	IcesOIQOWVgf7+rxo5Ig3WrCXQgFvzvtIgotFv06HLAeZyt7ULjQBiB3QZ69tf7/4Fyl3XxhU+MMw
	a4e/bP0W9mNaULrOJqAU5PkBmoFn4HkbpY+v1aYsYdjy2dKpOR+UnAEMXzbNTxJTQWb8mu85cXr1y
	VKCqdkwBgt2muThOTyEWbJpieXd3nRExOfdcsYtAjg2/TEE2DaSRed8ZK588OxVoOWX3gayhwAmeK
	Fe/+4DtGtv0dXj4M+OOJ35YuDxMkhNy3kGRT3h/vaZqVIEVecYpoMK1RGDlhxSq5ZzdQjjenZ8gt/
	ayfNQTuig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9l0-0008Ir-I8; Wed, 26 Jun 2019 15:22:46 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9ko-0008H7-VY
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 15:22:36 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CED06C1ABC82D47A8304;
 Wed, 26 Jun 2019 23:22:13 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 26 Jun 2019 23:22:06 +0800
Subject: Re: [GIT PULL] Hisilicon fixes for v5.2
To: Olof Johansson <olof@lixom.net>, Wei Xu <xuwei5@hisilicon.com>
References: <b89ef8f0-d102-7f78-f373-cbcc7faddee3@hisilicon.com>
 <20190625112148.ckj7sgdgvyeel7vy@localhost>
 <CAOesGMj+aNkOT1YVHTSBLkOfEujk7uer3R1AmE-sa1TwCijbBg@mail.gmail.com>
 <7e215bd7-daab-b6cf-8d0f-9513bd7c4f6d@huawei.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <2e59728e-25fa-cc15-3c63-3566dc2ae69f@huawei.com>
Date: Wed, 26 Jun 2019 16:21:56 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <7e215bd7-daab-b6cf-8d0f-9513bd7c4f6d@huawei.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_082235_320220_328C42AB 
X-CRM114-Status: GOOD (  16.68  )
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

On 25/06/2019 14:31, John Garry wrote:
> On 25/06/2019 14:03, Olof Johansson wrote:
>>>> are available in the Git repository at:
>>>> > >
>>>> > >   git://github.com/hisilicon/linux-hisi.git tags/hisi-fixes-for-5.2
>>>> > >
>>>> > > for you to fetch changes up to
>>>> 07c811af1c00d7b4212eac86900b023b6405a954:
>>>> > >
>>>> > >   lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set
>>>> at registration (2019-06-25 09:40:42 +0100)
>>>> > >
>>>> > > ----------------------------------------------------------------
>>>> > > Hisilicon fixes for v5.2-rc
>>>> > >
>>>> > > - fixed RCU usage in logical PIO
>>>> > > - Added a function to unregister a logical PIO range in logical PIO
>>>> > >   to support the fixes in the hisi-lpc driver
>>>> > > - fixed and optimized hisi-lpc driver to avoid potential
>>>> use-after-free
>>>> > >   and driver unbind crash
>>> >
>>> > Merged to fixes, thanks.
>>
>> This broke arm64 allmodconfig:
>>
>>        arm64.allmodconfig:
>> drivers/bus/hisi_lpc.c:656:3: error: implicit declaration of function
>> 'hisi_lpc_acpi_remove'; did you mean 'hisi_lpc_acpi_probe'?
>> [-Werror=implicit-function-declaration]

As an aside, I find it a little strange that arm64 allmodconfig does not 
have CONFIG_ACPI set. It used to have it set, and this patch stopped that:

5bcd44083a082f314032969cd6db1eb8275ac77a is the first bad commit
commit 5bcd44083a082f314032969cd6db1eb8275ac77a
Author: AKASHI Takahiro <takahiro.akashi@linaro.org>
Date:   Mon Jul 23 10:57:29 2018 +0900

     drivers: acpi: add dependency of EFI for arm64

     As Ard suggested, CONFIG_ACPI && !CONFIG_EFI doesn't make sense on 
arm64,
     while CONFIG_ACPI and CONFIG_CPU_BIG_ENDIAN doesn't make sense either.

     As CONFIG_EFI already has a dependency of !CONFIG_CPU_BIG_ENDIAN, it is
     good enough to add a dependency of CONFIG_EFI to avoid any useless
     combination of configuration.

     This bug, reported by Will, will be revealed when my patch series,
     "arm64: kexec,kdump: fix boot failures on acpi-only system," is applied
     and the kernel is built under allmodconfig.

     Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
     Suggested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
     Signed-off-by: Will Deacon <will.deacon@arm.com>

That patch stopped many configs being set for allmodconfig.

With this change, CONFIG_EFI is not set. I think that this is because 
CONFIG_CPU_BIG_ENDIAN is set for arm64 allmodconfig.

Any opinion on this? Could we change CONFIG_CPU_BIG_ENDIAN to be unset 
for arm64?

>>
>>
>
> Uhhh, that's my fault - I didn't provide a stub for !ACPI. Sorry. I'll
> send a fixed v3 series.
>
>>
>> Please build and test your branches before you send pull requests, Wei.
>>
>> I've dropped the branch again; please re-submit when fixed. I think
>> it's probably 5.3 material now.
>>
>
> Thanks,
> John
>
>>
>> -Olof
>>
>> .
>>
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
