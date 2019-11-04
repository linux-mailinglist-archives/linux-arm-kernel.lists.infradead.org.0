Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8700BEE0C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsTh1Q+/fB5+B3NECsssyTpN6PUyGnpRvNMwHsrKaeM=; b=LGDs9krbozO9k2
	3dQ1Jxey7f+M0xke6rZc3KXnTDJiZ+VOvVAHIc68lRajOQRbpHylwYpLsBEnh6uMTlK5u6kR2O9eR
	Utrz4pcwy9JpgrCgQGTD7W0KZSV75ma+D8+1/sa7ZVSGCXxbzyAcCtjkMmSRTU1jQanKSYIcGVk5X
	BN4QFSd4YLH+dheDvzKDgOIb3q7x/NonBKdW/r4T4Az4+ZjzVoZzP1Rkh1QTMvD0xYRVS5sm6DbVL
	6BMyXMympBaKnbpfPR8MgYV5FNmcdsG4y02ECjmkmfZsh2yoHIdHmefyIvQ5zEg+AY3xFnrqk2mHS
	O3vsHiPTyig/ifZLgdIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRc9c-0004EU-5W; Mon, 04 Nov 2019 13:12:20 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRc9R-0004Ct-54
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:12:11 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8F5C42910DE0A13ECD44;
 Mon,  4 Nov 2019 21:11:59 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Mon, 4 Nov 2019
 21:11:49 +0800
Subject: Re: stable-rc-4.19: cpufeature.c:909:21: error: 'MIDR_HISI_TSV110'
 undeclared
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <CA+G9fYtoODTuayzXdsv=bFuRPvw1-+dmZxHqQePy6LX8ixOG5A@mail.gmail.com>
 <98f10e13-8ec8-1690-a867-f212bcea969f@huawei.com>
 <20191104105910.GB1945210@kroah.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <b4249354-a84e-73c8-ae76-81306301b1c1@huawei.com>
Date: Mon, 4 Nov 2019 21:11:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20191104105910.GB1945210@kroah.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_051209_792835_C4867488 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 suzuki.poulose@arm.com, catalin.marinas@arm.com,
 Naresh Kamboju <naresh.kamboju@linaro.org>, john.garry@huawei.com,
 open list <linux-kernel@vger.kernel.org>,
 linux- stable <stable@vger.kernel.org>, zhangshaokun@hisilicon.com,
 lkft-triage@lists.linaro.org, andrew.murray@arm.com, will@kernel.org,
 Dave P Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/11/4 18:59, Greg Kroah-Hartman wrote:
> On Mon, Nov 04, 2019 at 09:10:06AM +0800, Hanjun Guo wrote:
>> Hi Sasha, Greg,
>>
>> On 2019/11/4 7:22, Naresh Kamboju wrote:
>>> stable rc 4.19  branch build broken for arm64 with the below error log,
>>>
>>> Build error log,
>>> arch/arm64/kernel/cpufeature.c: In function 'unmap_kernel_at_el0':
>>> arch/arm64/kernel/cpufeature.c:909:21: error: 'MIDR_HISI_TSV110'
>>> undeclared (first use in this function); did you mean
>>> 'GICR_ISACTIVER0'?
>>>   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
>>>                     ^
>>> arch/arm64/include/asm/cputype.h:141:12: note: in definition of macro
>>> 'MIDR_RANGE'
>>>   .model = m,     \
>>>            ^
>>> arch/arm64/kernel/cpufeature.c:909:3: note: in expansion of macro
>>> 'MIDR_ALL_VERSIONS'
>>>   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
>>>   ^~~~~~~~~~~~~~~~~
>>> arch/arm64/kernel/cpufeature.c:909:21: note: each undeclared
>>> identifier is reported only once for each function it appears in
>>>   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
>>>                     ^
>>> arch/arm64/include/asm/cputype.h:141:12: note: in definition of macro
>>> 'MIDR_RANGE'
>>>   .model = m,     \
>>>            ^
>>> arch/arm64/kernel/cpufeature.c:909:3: note: in expansion of macro
>>> 'MIDR_ALL_VERSIONS'
>>>   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
>>
>> Patch "efd00c7 arm64: Add MIDR encoding for HiSilicon Taishan CPUs" needs to
>> be bacported as well, would you like me to do that, or just cherry-pick by yourself?
> 
> I need the backport please, cherry-pick fails :(

I will send it out later.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
