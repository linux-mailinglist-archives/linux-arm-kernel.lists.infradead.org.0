Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CECAB1ECE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S5ISRvL2dj0gi/W6+YtEkwy2iRtdHaCf/flbIbhtdmc=; b=j8nR5h5KbmV5QU58wER2L3/h4
	wUoqP8VOi1iLqR7khq44a+VptO2TqPexx2qXKrPRegpuLyBj6Eo+u26ZLk705nLGTrc0f+4ia6ihb
	+k9bR/uQj+vJs6T71+RhgxmarBz9Mr2/2IC+gY+UBlbPekBZINekRhAMEBGkQJShi4jJ0KkGK+HwW
	P6JfJPliwILE+LQ7gt0miKwlUhdYbXu1hBr9e6nyXnLHIEmmu5mQLqQE1ylJT0+q6XtsNtCAShHRN
	nED10IthkYhm2w+3yRBuwmDF2K9m2bOzTE2X/2w4//YGA1tR/aYKNEgmcI/6co+yfZhWTxX+Q5sAa
	iEyyxM1BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrgU-0001tt-QW; Wed, 15 May 2019 11:02:54 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrgM-0001t3-H3
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:02:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21FA480D;
 Wed, 15 May 2019 04:02:46 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD9043F703;
 Wed, 15 May 2019 04:02:44 -0700 (PDT)
Subject: Re: [PATCH] arm64: do_csum: implement accelerated scalar version
To: Will Deacon <will.deacon@arm.com>
References: <20190218230842.11448-1-ard.biesheuvel@linaro.org>
 <d7a16ebd-073f-f50e-9651-68606d10b01c@hisilicon.com>
 <20190412095243.GA27193@fuggles.cambridge.arm.com>
 <41b30c72-c1c5-14b2-b2e1-3507d552830d@arm.com>
 <20190515094704.GC24357@fuggles.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <67c2f851-9a4d-e18d-4664-c07287e72ebf@arm.com>
Date: Wed, 15 May 2019 12:02:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515094704.GC24357@fuggles.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_040246_569752_AE631AF2 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, netdev@vger.kernel.org,
 ilias.apalodimas@linaro.org, Zhangshaokun <zhangshaokun@hisilicon.com>,
 "huanglingyan \(A\)" <huanglingyan2@huawei.com>,
 linux-arm-kernel@lists.infradead.org, steve.capper@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/05/2019 10:47, Will Deacon wrote:
> On Mon, Apr 15, 2019 at 07:18:22PM +0100, Robin Murphy wrote:
>> On 12/04/2019 10:52, Will Deacon wrote:
>>> I'm waiting for Robin to come back with numbers for a C implementation.
>>>
>>> Robin -- did you get anywhere with that?
>>
>> Still not what I would call finished, but where I've got so far (besides an
>> increasingly elaborate test rig) is as below - it still wants some unrolling
>> in the middle to really fly (and actual testing on BE), but the worst-case
>> performance already equals or just beats this asm version on Cortex-A53 with
>> GCC 7 (by virtue of being alignment-insensitive and branchless except for
>> the loop). Unfortunately, the advantage of C code being instrumentable does
>> also come around to bite me...
> 
> Is there any interest from anybody in spinning a proper patch out of this?
> Shaokun?

FWIW I've learned how to fix the KASAN thing now, so I'll try giving 
this some more love while I've got other outstanding optimisation stuff 
to look at anyway.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
