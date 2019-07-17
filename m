Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E668E6BCEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 15:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92TS3+hNdpY3Ad99Q/xlrDqhCo214irhphPapcG6EIs=; b=npCPHOG3Uu+PhZ
	hc3Y9IJ9tx9bFJPZIRqWnspSg4//O5N4KBFNq12IpdLKQxctkJ4NsvGPSaJNyKtGeYTbsuVEMJrA4
	KNbqXVnnkkHfIsTh57ES0WW85N5bGONqLGhYkjKENClZd+dJiOuimp5isvllEmjP4+t+wDWV8phJM
	7LfXoPlDvZ5XzTmIP/h0YdUhCxoZZY/KfEtqtwidhQ2jOWT16U8OvpjIg2RT+OYjyhH2nEQn6+unH
	cEGn/xPe0lpiG39UBTP2vlLAuAA30unZ8TrQPwGIGGuWeA6oVgL9uRZhFc78z0jlOlaoV55lXft4C
	TurZ9OrXl0V2yzVF6dYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnju9-0005pT-EZ; Wed, 17 Jul 2019 13:23:33 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjtw-0005p3-3Y
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 13:23:21 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 108B9A476263B25CB74D;
 Wed, 17 Jul 2019 21:23:13 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Wed, 17 Jul 2019
 21:23:12 +0800
From: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
To: Will Deacon <will@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
 <20190703134028.6aru52r2zd2jnpm4@willie-the-truck>
 <CAKv+Gu9bCuXxJ54WMt=GcsRhkbwn_jXnjwJGuopS-7V3dHipLw@mail.gmail.com>
 <20190710122117.kk5xgei56r7vfmmj@willie-the-truck>
Message-ID: <6225a9a2-9174-b3ad-74b1-c24cec6af17e@huawei.com>
Date: Wed, 17 Jul 2019 21:23:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190710122117.kk5xgei56r7vfmmj@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_062320_382205_AB3C991C 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan
 Glauber <jglauber@marvell.com>, Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[resend for that the previous email seems didn't hit linux-arm-kernel mailing list]

On 2019/7/10 20:21, Will Deacon wrote:
> On Wed, Jul 03, 2019 at 08:12:12PM +0200, Ard Biesheuvel wrote:
>> There was a lot of pushback against the use of refcount_t in the
>> beginning, given that the checked flavor was slower than unchecked
>> atomic_t, and IIRC, it was mainly the networking folks that opposed
>> it. So the whole idea is that the code performs as closely to atomic_t
>> as possible, which is why the code is simply the atomic_t asm
>> implementations, but with a -s suffix added to the arithmetic
>> instructions so they set PSTATE, and one or two conditional branch
>> instructions added.
>>
>> Your approach is going to require one or two additional compare
>> instructions, increasing the instruction count. This may not matter on
>> fast OoO cores, but it probably will affect somebody's benchmark
>> somewhere.
>>
>> However, I'd be in favour of switching to your code, since it is much
>> simpler and more maintainable, so if you spin it as a proper patch, we
>> can do some comparative analysis of the performance.
> 
> I'll post the patches after the merge window, but I've pushed them here in
> the meantime in case anybody gets a chance to take them for a spin:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=refcount/full

Hmm, tested with Jan's test case on a 96 cores ARM server, I can
see 5% better performance than Ard's patch for 16, 32, 48 cores,
and even 9% better for 72 cores and 96 cores (48 cores per socket,
24 cores per CPU die, two CPU dies in the same socket, and the latency
from socket to socket is higher than the latency between CPU dies in
the same socket). I tested this for two rounds and the test result is
stable. Not sure why it's better than Ard's patch, maybe it's related
our fast OoO cores :)

Anyway,

Tested-by: Hanjun Guo <guohanjun@huawei.com>

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
