Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC2AD5B11
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ub69O8eHajy/mahW3CWiLdog5/7dbvK8hlM4pemX36Y=; b=at6O6tQbophV+B
	+DEW6Q7e+ilXtAu0QQGOM+gLWQt0D8qWuVuyMJwu4CY+43Jjy4vOvAg23JHWBVQWjinAvZbPAMKtO
	Pi/8Ok7Y233Xu7/SqIWyXQ7vTA2xtCubSiIeK/vsisWVkQ7gExK0fonfmYAW8QfxKC8GqOTEgCTfs
	wCiFzp0P1ZlR5uIowwv75Wu9ZSrEgIE0BxDIjoyx3RZUygEPQDWDzcpUcAqIxVInv+2tizpe3vOg8
	3r/51+neg5ZLPzuVoW1ZSDhdXUhQAAYM0aldAb1yY+S+sYcWlighEP6qRdQ2yZf8pcH1VpOnDUIGM
	owBA9dDNjTx3DFRLUm8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJtbl-0004Hd-UK; Mon, 14 Oct 2019 06:13:29 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJtbd-0004GW-LO
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:13:23 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 92DBC18C626919661A6C;
 Mon, 14 Oct 2019 14:13:11 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Mon, 14 Oct 2019
 14:13:03 +0800
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
To: Arnd Bergmann <arnd@arndb.de>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
 <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
 <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
 <CAK8P3a0kBz1-i-3miCo1vMuoM39ivXa3oxOE9VnCqDO-nfNOxw@mail.gmail.com>
 <20191011102747.lpbaur2e4nqyf7sw@willie-the-truck>
 <73701e9f-bee1-7ae8-2277-7a3576171cd4@huawei.com>
 <CAK8P3a1C8cFB6DS9eVXTEiTQu1kPzy65JvL=BxqEe5MTkds8sQ@mail.gmail.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <e6df09ba-a016-65c0-5b56-f7b91a7c9dd8@huawei.com>
Date: Mon, 14 Oct 2019 14:12:03 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1C8cFB6DS9eVXTEiTQu1kPzy65JvL=BxqEe5MTkds8sQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_231321_872270_3C34FE35 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 2019/10/12 22:05, Arnd Bergmann wrote:
> On Sat, Oct 12, 2019 at 9:33 AM Hanjun Guo <guohanjun@huawei.com> wrote:
>>
>> On 2019/10/11 18:27, Will Deacon wrote:
>> [...]
>>>
>>> Does anybody use BIG_ENDIAN? If we're not even building it then maybe we
>>> should get rid of it altogether on arm64. I don't know of any supported
>>> userspace that supports it or any CPUs that are unable to run little-endian
>>> binaries.
>>
>> FWIW, massive telecommunication products (based on ARM64) form Huawei are using
>> BIG_ENDIAN, and will use BIG_ENDIAN in the near future as well.
> 
> Ok, thanks for the information -- that definitely makes it clear that
> it cannot go
> away anytime soon (though it doesn't stop us from change the
> allmodconfig default
> if we decide that's a good idea).

I agree with you.

> 
> Do you know if there are currently any patches against mainline to
> make big-endian
> work in products, or is everything working out of the box?

We are not using mainline kernel for product, but LTS 4.4 is working
fine, and also we tested LTS 4.19 kernel without any other big-endian
patches, the latest big-endian bug we found is this:

a6002ec5a8c6 arm64: opcodes.h: Add arm big-endian config options before including arm header

The running kernel code covered but Huawei's telecommunication products
is limited, but I think ARM64 arch code is working fine for big-endian.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
