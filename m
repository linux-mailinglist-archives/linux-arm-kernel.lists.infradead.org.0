Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3F1E6E8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 09:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qht62v8CyWih8R+D5pGdSKc7ocqjxO4HPNet81ELWD0=; b=ZdW9eMDhOcXXVf
	3GiKX5R9fPqRB6EUX9IQNZRP84Zq0oCNWzP3/BudxePaQ6t+s2fFHDibe7sAA4Ox5LH8GQcz7KoK1
	lIdBVuzh/qlL39dJMZKvRkFv43/UnQHZyaPIrA3rTK59ceXIkT3bcwdmJf7kj0R2H960uyVYFtbMQ
	RFQzoogp98tV5MTC98wpNBplTZ/UXqWP9ZdZwULGXjfJe688cIGe6hgq9G6LvApCdwHgzRV7CZlGz
	osixvXsk0h2vrCbUVVA9AARmctgH6duR1+VgUmrrNA7eu8lggPKMYelOAWcgHJmQjxM86Flcv9qzk
	mKI5QuKF0mvPnm3LXnAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP0mr-00031w-Bf; Mon, 28 Oct 2019 08:54:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP0mf-00031R-OY
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 08:53:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D916A1FB;
 Mon, 28 Oct 2019 01:53:50 -0700 (PDT)
Received: from [192.168.1.103] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C0F0B3F71E;
 Mon, 28 Oct 2019 01:53:49 -0700 (PDT)
Subject: Re: arm version of generic VDSO?
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <CAK8P3a2RDBTnKZ-yOJkqY5+2LBeeqvGJ3AMnf+cnqbDVPeUf6g@mail.gmail.com>
 <df19494e-589b-fbf5-bf19-8e8752b5e5be@arm.com>
 <20191025191735.GE25745@shell.armlinux.org.uk>
 <20191025192843.GF25745@shell.armlinux.org.uk>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <04c4f3bf-95b5-025c-5da2-8f0df40b2a4d@arm.com>
Date: Mon, 28 Oct 2019 08:55:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025192843.GF25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_015353_836225_9811B1E1 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: y2038 Mailman List <y2038@lists.linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On 10/25/19 8:28 PM, Russell King - ARM Linux admin wrote:
> On Fri, Oct 25, 2019 at 08:17:36PM +0100, Russell King - ARM Linux admin wrote:
>> On Thu, Oct 24, 2019 at 01:47:24PM +0100, Vincenzo Frascino wrote:
>>> Hi Arnd,
>>>
>>> On 10/24/19 1:34 PM, Arnd Bergmann wrote:
>>>> Hi Vinvenzo,
>>>>
>>>> I'm looking through some of the remaining y2038 work, and noticed
>>>> that arch/arm64 has the new generic vdso implementation, but arch/arm
>>>> does.
>>>>
>>>
>>> This is correct, arch/arm does not have support for the generic vDSO library.
>>>
>>>> Do you patches for using the same code on arch/arm?
>>>>
>>>
>>> The patches were send for review together with the arm64 ones and the rest of
>>> the architectures supported but they did not get merged yet and I do not know why.
>>
>> I think you've forgotten, you didn't read the email from the patch
>> system, or the "Regression in 5.3-rc1 and later" email thread on the
>> mailing lists.
>>
>>   https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8868/1
>>   https://lore.kernel.org/lkml/faaa3843-09a6-1a21-3448-072eeed1ea00@googlemail.com/
>>
>> Basically, I couldn't merge for the last merge window without causing
>> a regression, so it's delayed until the next merge window.
> 
> Okay, having discussed with Arnd what the current situation is, he
> points out that he needs an additional patch to solve some further
> build issues with the generic VDSO patches - caused by the Kconfig
> changes in your first patch.
> 
> I'd rather that gets fixed up before I apply the patches, rather
> than applying a set of patches and a fix on top.
> 
> Please re-spin with Arnd's Kconfig changes included.
> 

No problem, I will re-spin the patches.

> Thanks.
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
