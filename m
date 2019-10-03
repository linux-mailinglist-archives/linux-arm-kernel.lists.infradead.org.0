Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11AAC9D00
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7q+8kFCTdA/ygMMBjwkyuZTXCp/L/6aWqdZVSgcFNGQ=; b=meshte2AHMxlobQOj0diUMcwx
	QVww23X4YQgxTH+yBt9b20JBC+DLUk6T0K+LUUE0lHeA99uz9b8Ktm6eXhQ8AMpNsmYkzIGdq62+c
	Wg+BH6RyBkxox5Z2Wived3xpr3tCo7IEoVQ9k1RvbP0mtgPQsKHup3xqaTDQ9K4aSrw/ZH6bKcvDV
	k4mVq2aQAT39fdYLTaC5h0nbGm+nG/rgxaHot5A5DBaFo+LEibiFcmuZ3PsYM4eDeCDaxUawML85g
	s6V4w02Um135hVfvd64FSIwh3TY5sPKPnKeq44+OwmZNGDB23wzXnAFiETKTR6NBlRVu5PStmeo7i
	KBM1Vesew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFz5N-0001eu-Cy; Thu, 03 Oct 2019 11:15:53 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFz5F-0001eB-T6
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:15:48 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B6B522487246D09D5E84;
 Thu,  3 Oct 2019 19:15:38 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 3 Oct 2019 19:15:37 +0800
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
To: Anders Roxell <anders.roxell@linaro.org>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
 <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
Date: Thu, 3 Oct 2019 12:15:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_041546_535253_88862D8D 
X-CRM114-Status: GOOD (  19.57  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Olof
 Johansson <olof@lixom.net>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/10/2019 08:40, Anders Roxell wrote:
> On Tue, 1 Oct 2019 at 16:04, John Garry <john.garry@huawei.com> wrote:
>>
>> On 26/09/2019 20:30, Anders Roxell wrote:
>>> When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
>>> CONFIG_CPU_BIG_ENDIAN gets enabled. Which tends not to be what most
>>> people wants.
>>
>> Today allmodconfig does not enable CONFIG_ACPI due to BE config, which
>> is quite unfortunate, I'd say.
>
> right.
>
>>
>>>
>>> Rework so that we disable CONFIG_CPU_BIG_ENDIAN in the defcinfig file so
>>
>> defconfig
>
> thanks.
>
>>
>>> it doesn't get enabled when building allmodconfig kernels. When doing a
>>> 'make savedefconfig' CONFIG_CPU_BIG_ENDIAN will be dropped.
>>
>> So without having to pass KCONFIG_ALLCONFIG or do anything else, what
>> about a config for CONFIG_CPU_LITTLE_ENDIAN instead? I'm not sure if
>> that was omitted for a specific reason.
>
> Oh, I tried to elaborate on the idea in the cover letter, that using
> the defconfig
> as base and then configure the rest as modules is to get a bootable kernel
> that have as many features turned on as possible. That will make it possible
> to run as wide a range of testsuites as possible on a single kernel.
>
> Does that make it clearer ?

Hi Anders,

Yeah, I got the idea.

So when you say "'make savedefconfig' CONFIG_CPU_BIG_ENDIAN will be 
dropped", I don't know what the rules are in terms of resyncing the 
common defconfig (I was under the impression that it's done per release 
cycle by the arm soc maintainers, but can't find evidence as such), but 
your change may be easily lost in this way.

Thanks,
John

>
> Cheers,
> Anders
>
>
>>
>> Thanks,
>> John
>>
>>>
>>> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
>>> ---
>>>  arch/arm64/configs/defconfig | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>>> index 878f379d8d84..c9aa6b9ee996 100644
>>> --- a/arch/arm64/configs/defconfig
>>> +++ b/arch/arm64/configs/defconfig
>>> @@ -855,3 +855,4 @@ CONFIG_DEBUG_KERNEL=y
>>>  # CONFIG_SCHED_DEBUG is not set
>>>  CONFIG_MEMTEST=y
>>>  # CONFIG_CMDLINE_FORCE is not set
>>> +# CONFIG_CPU_BIG_ENDIAN is not set
>>>
>>
>>
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
