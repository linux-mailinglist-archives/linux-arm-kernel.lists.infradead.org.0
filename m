Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8261613A91F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:19:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NJfeZB6leVrne7chaDSLRNY+4FHLs6XORpinIiNjQLc=; b=llDMYedVkDjBVi82E+AK0HIAv
	dZEZwE3kE19me37D4MYJXin8XpMD6VAPwh3zosaJKsvklROShp6A8KaJ4MWSqtkETdz+wsh5b/6yT
	QSVtAhQTHZazAkg/6+GhqQeE5yZ7wdSojqDpgfitxX98XvZwMqR+hJVY0bRYwd/KKMK+2V8VuQljB
	YttxHc8fLddWM3TE6b97UEmTw4v/u1oOrl3SrOwiwd+bP7u4EjAVY7Z8LRtcr9C02G7Mg0R8K7CLc
	NjBgXEPMBJS7iCEISD/ZtP42j8aKVUPE4yPyVIyfS2/Sw7qovDkBfuTvfUyNT1nk5xWIFCBPFr+DY
	lz+Jdo0fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irLA1-0001YD-Lk; Tue, 14 Jan 2020 12:19:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irL9r-0001Xl-DB
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 12:18:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B2C81435;
 Tue, 14 Jan 2020 04:18:52 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 42BD33F6C4;
 Tue, 14 Jan 2020 04:18:51 -0800 (PST)
Subject: Re: [PATCH v4] arm64: lib: accelerate do_csum
To: Shaokun Zhang <zhangshaokun@hisilicon.com>, Will Deacon <will@kernel.org>
References: <1573006806-12037-1-git-send-email-zhangshaokun@hisilicon.com>
 <20200108172040.GA20541@willie-the-truck>
 <def6ee59-cc90-76d7-caad-e3c421c9b868@hisilicon.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c3252020-9120-10e3-8ca1-181dc091e891@arm.com>
Date: Tue, 14 Jan 2020 12:18:46 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <def6ee59-cc90-76d7-caad-e3c421c9b868@hisilicon.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_041855_530419_115AE589 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lingyan Huang <huanglingyan2@huawei.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, zhaoyuke@huawei.com,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-11 8:09 am, Shaokun Zhang wrote:
> +Cc Yuke Zhang who has used this patch and enjoyed the patch's gain when debugged
> the performance issue.
> 
> Hi Will,
> 
> Thanks for reactivate this thread.
> Robin, any comments are welcome and hopefully it can be merged in mainline.

OK, I had a play with this yesterday, and somewhat surprisingly even 
with a recent GCC it results in utterly dreadful code. I would always 
have expected the head/tail alignment in __uint128_t arithmetic to be 
ugly, and it certainly is, but even the "*ptr++" load in the main loop 
comes out as this delightful nugget:

      e3c:       f8410502        ldr     x2, [x8], #16
      e40:       f85f8103        ldur    x3, [x8, #-8]

(Clang does at least manage to emit a post-indexed LDP there, but the 
rest remains pretty awful)

Overall it ends up noticeably slower than even the generic code for 
small buffers. I rigged up a crude userspace test to run the numbers 
below - data is average call time in nanoseconds; "new" is the routine 
from this patch, "new2/3/4" are are loop-tuning variations of what I 
came up with when I then went back to my WIP branch and finished off my 
original idea. Once I've confirmed I got big-endian right I'll send out 
another patch :)

Robin.


GCC 9.2.0:
---------
Cortex-A53
size            generic new     new2    new3    new4
        3:       20      35      22      22      24
        8:       34      35      22      22      24
       15:       36      35      29      23      25
       48:       69      45      38      38      39
       64:       80      50      49      44      44
      256:       217     117     99      110     92
     4096:       2908    1310    1146    1269    983
  1048576:       860430  461694  461694  493173  451201
Cortex-A72
size            generic new     new2    new3    new4
        3:       8       21      10      9       10
        8:       20      21      10      9       10
       15:       16      21      12      11      11
       48:       29      29      18      19      20
       64:       35      30      24      21      23
      256:       125     66      48      46      46
     4096:       1720    778     532     573     450
  1048576:       472187  272819  188874  220354  167888

Clang 9.0.1:
-----------
Cortex-A53
size            generic new     new2    new3    new4
        3:       21      29      21      21      21
        8:       33      29      21      21      21
       15:       35      28      24      23      23
       48:       73      39      36      37      38
       64:       85      44      46      42      44
      256:       220     110     107     107     89
     4096:       2949    1310    1187    1310    942
  1048576:       849937  451201  472187  482680  451201
Cortex-A72
size            generic new     new2    new3    new4
        3:       8       16      10      10      10
        8:       23      16      10      10      10
       15:       16      16      12      12      12
       48:       27      21      18      20      20
       64:       31      24      24      22      23
      256:       125     53      48      63      46
     4096:       1720    655     573     860     532
  1048576:       472187  230847  209861  272819  188874

> 
> Thanks,
> Shaokun
> 
> On 2020/1/9 1:20, Will Deacon wrote:
>> On Wed, Nov 06, 2019 at 10:20:06AM +0800, Shaokun Zhang wrote:
>>> From: Lingyan Huang <huanglingyan2@huawei.com>
>>>
>>> Function do_csum() in lib/checksum.c is used to compute checksum,
>>> which is turned out to be slowly and costs a lot of resources.
>>> Let's accelerate the checksum computation for arm64.
>>>
>>> While we test its performance on Huawei Kunpeng 920 SoC, as follow:
>>>   1cycle  general(ns)  csum_128(ns) csum_64(ns)
>>>    64B:        160            80             50
>>>   256B:        120            70             60
>>> 1023B:        350           140            150
>>> 1024B:        350           130            140
>>> 1500B:        470           170            180
>>> 2048B:        630           210            240
>>> 4095B:       1220           390            430
>>> 4096B:       1230           390            430
>>>
>>> Cc: Will Deacon <will@kernel.org>
>>> Cc: Robin Murphy <robin.murphy@arm.com>
>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>>> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>>> Originally-from: Robin Murphy <robin.murphy@arm.com>
>>> Signed-off-by: Lingyan Huang <huanglingyan2@huawei.com>
>>> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
>>> ---
>>> Hi,
>>> Apologies that we post this version so later, because we want to
>>> optimise it better, Lingyan tested it performance which is attached
>>> in commit log. Both(128 and 64) are much better than the initial
>>> code.
>>> ChangeLog:
>>>      based on Robin's code and change strides from 64 to 128.
>>>
>>>   arch/arm64/include/asm/checksum.h |  3 ++
>>>   arch/arm64/lib/Makefile           |  2 +-
>>>   arch/arm64/lib/csum.c             | 81 +++++++++++++++++++++++++++++++++++++++
>>>   3 files changed, 85 insertions(+), 1 deletion(-)
>>>   create mode 100644 arch/arm64/lib/csum.c
>>
>> Robin -- any chance you could look at this please? If it's based on your
>> code then hopefully it's straightforward to review ;)
>>
>> Will
>>
>> .
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
