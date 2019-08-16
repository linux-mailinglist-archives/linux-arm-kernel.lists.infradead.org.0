Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD138FD7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 10:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MP52UrhAZy169W+Zb/eUa1GXvv1F8DYQniDHKvNpmU8=; b=jdkylnBJo2YqZ1
	I6oOx+k0aBxzZjQgz8VrOpv6u6/+DdGr+8o429cWJZ0AAJC1Abme5ebM2QsowLIuUMOdfzyxoMJsd
	bQcs9XhXBv46NCq0nYiTAVlag6H4S2Az4yPg+nO0JHATxYBmVQuzcPJ9OS/Mo3djP+Upq5tMlUvSp
	9Mi1GmSyNAo3DYaaYa7gars7Q1R/W2W3gJp8ikKgfHuZm4bmiDxzJv56XXnuYQfUZLjpr6Aer1Ss9
	8xjDr+ZSs28xqOTSkVz4J617/fDzDgQb9z5L/xnJAAc2ll0YrT5GjdNr8hQy+P/6e/g+dgTsuWPQi
	cRocWKd+m8ZMhoNNDAJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXOt-0007wM-Gu; Fri, 16 Aug 2019 08:15:55 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXOe-0007vy-1C
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 08:15:41 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E5605258566DB8E4E9ED;
 Fri, 16 Aug 2019 16:15:33 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Fri, 16 Aug 2019
 16:15:25 +0800
Subject: Re: [PATCH] arm64: do_csum: implement accelerated scalar version
To: Will Deacon <will.deacon@arm.com>
References: <20190218230842.11448-1-ard.biesheuvel@linaro.org>
 <d7a16ebd-073f-f50e-9651-68606d10b01c@hisilicon.com>
 <20190412095243.GA27193@fuggles.cambridge.arm.com>
 <41b30c72-c1c5-14b2-b2e1-3507d552830d@arm.com>
 <20190515094704.GC24357@fuggles.cambridge.arm.com>
 <440eb674-0e59-a97e-4a90-0026e2327069@hisilicon.com>
 <20190815164609.GI2015@fuggles.cambridge.arm.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <37fbc2a3-069d-9f75-f3d0-3eda2efa5c9b@hisilicon.com>
Date: Fri, 16 Aug 2019 16:15:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20190815164609.GI2015@fuggles.cambridge.arm.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_011540_288508_5BFC2238 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, netdev@vger.kernel.org,
 ilias.apalodimas@linaro.org, "huanglingyan \(A\)" <huanglingyan2@huawei.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2019/8/16 0:46, Will Deacon wrote:
> On Thu, May 16, 2019 at 11:14:35AM +0800, Zhangshaokun wrote:
>> On 2019/5/15 17:47, Will Deacon wrote:
>>> On Mon, Apr 15, 2019 at 07:18:22PM +0100, Robin Murphy wrote:
>>>> On 12/04/2019 10:52, Will Deacon wrote:
>>>>> I'm waiting for Robin to come back with numbers for a C implementation.
>>>>>
>>>>> Robin -- did you get anywhere with that?
>>>>
>>>> Still not what I would call finished, but where I've got so far (besides an
>>>> increasingly elaborate test rig) is as below - it still wants some unrolling
>>>> in the middle to really fly (and actual testing on BE), but the worst-case
>>>> performance already equals or just beats this asm version on Cortex-A53 with
>>>> GCC 7 (by virtue of being alignment-insensitive and branchless except for
>>>> the loop). Unfortunately, the advantage of C code being instrumentable does
>>>> also come around to bite me...
>>>
>>> Is there any interest from anybody in spinning a proper patch out of this?
>>> Shaokun?
>>
>> HiSilicon's Kunpeng920(Hi1620) benefits from do_csum optimization, if Ard and
>> Robin are ok, Lingyan or I can try to do it.
>> Of course, if any guy posts the patch, we are happy to test it.
>> Any will be ok.
> 
> I don't mind who posts it, but Robin is super busy with SMMU stuff at the
> moment so it probably makes more sense for you or Lingyan to do it.

Thanks for restarting this topic, I or Lingyan will do it soon.

Thanks,
Shaokun

> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
