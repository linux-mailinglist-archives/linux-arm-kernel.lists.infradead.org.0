Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15C81F6619
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AtpNzKBihLnEIr01xgKKZf8FRqTbqNIVe0jxGPQKp0c=; b=PYEJvLTYTg2lLGTH2DYe1y+l8
	Ss6dk6RIqrFUYJ+jRDEx1Kv49YCK+nggZ7F9tNOE6gho5IE646hamQfqaoaarWpfWZV9TR7VXaXoW
	PMuCitqRD3ooR2IQRnskdRct3EWK/u4GSbLANDEsydvnvbNpM4qYZ0NeSANmF3xkQ1r8HmY2+kRxx
	1mELNc1TTJ1yWl7zwEaR01Vm+/DKsB3YVvNBVb35muN6oao362rgC5XAOwcvOUmp9m9YDFdUqN/lN
	AuOhaIT1ZcjDx1/WzLc7rtZvkjkkvoDGMHK28W189PWnIlizYAMnpDJQtVs6gs85r5Hb+p1Bz4gWX
	mr3Bq/naw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjKwB-00080w-Jl; Thu, 11 Jun 2020 10:59:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjKw2-00080T-HD
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 10:59:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5F2E31B;
 Thu, 11 Jun 2020 03:59:49 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 67B753F66F;
 Thu, 11 Jun 2020 03:59:48 -0700 (PDT)
Subject: Re: ARM: warning: relocation out of range on Exynos XU4 and U3+
To: Anand Moon <linux.amoon@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
References: <CANAwSgQv9BKV4QfZAgSfFQvO7ftcFyCGXEo+g4pgQA4mgK52iQ@mail.gmail.com>
 <20200611064556.GA5056@kozik-lap>
 <CANAwSgQqW6+W2=QcrAx8DsafK_0eMtQthQWcZWy9NDWxN3WkbQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <19d94eb3-d08c-e436-ccc0-cca56291eed2@arm.com>
Date: Thu, 11 Jun 2020 11:59:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CANAwSgQqW6+W2=QcrAx8DsafK_0eMtQthQWcZWy9NDWxN3WkbQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_035950_611983_AB2FC8DE 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-11 08:51, Anand Moon wrote:
> Hi Krzysztof,
> 
> On Thu, 11 Jun 2020 at 12:15, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On Thu, Jun 11, 2020 at 11:13:57AM +0530, Anand Moon wrote:
>>> Hi All,
>>>
>>> I would like to report some warnings I observed on pre-compiled kernel
>>> image (5.7.1-1-ARCH) from Archlinux.
>>> Sometimes ethernet would not come up and get connected, so in order to
>>> investigate.
>>> I found below warnings, So I am sharing the logs at my end.
>>>
>>> Are these warnings related to in-consistency in locking, How can we
>>> Investigate more to fix this issue.
>>
>> These rather look like some address space randomization or some compiler
>> (LLVM?) feature. Not Exynos-specific anyway.
>>
>> You should report it to Arch folks because they know how they compiled
>> the kernel and what config they used (althogh config you can find in
>> /proc/config.gz).
> 
> Thanks for your inputs.
> Ok I will do more checks at my end, before reporting further to Archlinux.

Looks like the relocations fail when loading modules, and PLTs are not 
enbabled[1], so chances are the kernel image has simply grown too big to 
keep everything within direct branch range of everything else.

Robin.

[1] 
https://github.com/archlinuxarm/PKGBUILDs/blob/master/core/linux-odroid-xu3/config#L619

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
