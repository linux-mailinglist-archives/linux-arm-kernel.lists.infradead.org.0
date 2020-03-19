Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E455918ACA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 07:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QE1mahevhh51ZyAOFW22aDIl6QONxqmNV4+4UWNiJGE=; b=RPZ3ufMXNfNgJY
	TFNqCPAVRizYgewfyijgHRuqW0guaUm12TTXUa/EDtgvBzCUkl/KNfd20PbM6VmDQ6zTqcCooToKe
	ZnAb3R/7N8g/eofhgyDVMeaAgyPs9sN/5ZT2ao+E1q4HIoKlp/k8RAw6HYPWkZCBegXAxrr8o66Bd
	1VO2CPDNbvXCnzY78YGi/X3zsM1VUyn4W8V6a8Yp167aSGwXMfEzFUjpVsU438c0Q1+XJVwnvshIp
	+PWxnenuLx3F1YsAdWOYC2b7Gz384j3aqBz7xDbzqwi7yNO4uprVPJrYQo8n1sNGw6WckoSGXzl5X
	rLJnWDS0rKLz+DTHk0bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEoSj-0007ID-Sj; Thu, 19 Mar 2020 06:15:25 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEoSY-0006bn-5U
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 06:15:16 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C1409E9F6CAAF9054A0E;
 Thu, 19 Mar 2020 14:15:00 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.207) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0;
 Thu, 19 Mar 2020 14:14:56 +0800
Subject: Re: [RFC PATCH] arm64: fix the missing ktpi= cmdline check in
 arm64_kernel_unmapped_at_el0()
To: Will Deacon <will@kernel.org>, Mark Brown <broonie@kernel.org>
References: <20200317114708.109283-1-yaohongbo@huawei.com>
 <20200317121050.GH8831@lakrids.cambridge.arm.com>
 <20200317124323.GA16200@willie-the-truck>
 <20200317135719.GH3971@sirena.org.uk>
 <20200317151813.GA16579@willie-the-truck>
 <20200317163638.GI3971@sirena.org.uk>
 <20200317210154.GA19752@willie-the-truck>
 <20200318113217.GA4553@sirena.org.uk>
 <20200318201259.GA7463@willie-the-truck>
From: Hongbo Yao <yaohongbo@huawei.com>
Message-ID: <c94aef1e-7ed7-6902-a16c-d64e5280fb01@huawei.com>
Date: Thu, 19 Mar 2020 14:14:55 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200318201259.GA7463@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.173.221.207]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_231514_759363_81420873 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/3/19 4:13, Will Deacon wrote:
> On Wed, Mar 18, 2020 at 11:32:17AM +0000, Mark Brown wrote:
>> On Tue, Mar 17, 2020 at 09:01:54PM +0000, Will Deacon wrote:
>>> On Tue, Mar 17, 2020 at 04:36:38PM +0000, Mark Brown wrote:
>>
>>>> I'd need to go back and retest to confirm but it looks like always had
>>>> the issue that we'd install some nG mappings early even with KPTI
>>>> disabled on the command line so your change is just restoring the
>>>> previous behaviour and we're no worse than we were before.
>>
>>> Urgh, this code brings back really bad memories :( :( :(
>>
>> Tell me about it.
>>
>>> So I've hacked the following, which appears to work but damn I'd like
>>> somebody else to look at this. I also have a nagging feeling that you
>>> implemented it like this at some point, but we tried to consolidate things
>>> during review.
>>
>>> Thoughts?
>>
>> I don't think I did *exactly* this but it's familiar yeah.  It looks
>> sensible and I can't think of any problems but that doesn't mean there
>> aren't any.
> 
> Well, thanks for having a look!
> 
> Hongbo -- please can you confirm that this fixes the problem that you are
> seeing?
Hi, Will,
Sorry for the late response.

This fixes the problem for me.
Tested-by: Hongbo Yao <yaohongbo@huawei.com>

Thanks,
Hongbo.

> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
