Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA1FEAB72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 09:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VUtoUETHw/XsI8lYMNT6VufZECgm4yxm8uhHztXDig=; b=eU0FvWbYNk4PRc
	Z7VbUiNjWuPE1JapO6Pf6oQtr+DXoueeknxys/Gf0gIsRoYSPHtBmS+dVJra+DtZik7YerCrVVvOB
	mcLWct6cI9N6LSa1Xs+M48ZRiud9vxB2YpqT3E7uGs7KFXOPLDhn08/5773bqBTXkkbRqLUQ2uYTl
	6ZDSH+LKrMGubmCvkPm/jd6BJcHaNd0SHfCe93jrhxxDCZEhNHK/eKRmgnVOPfUmDMa0BPoWaE0xU
	lG45PfgECGbuXIvqxChH+9HpRQgYkQFP2j5JqcgZXqS77zJ8Ee77uCsiIayC/idkTjQsp9GRxOWKN
	S/vzOiHrGRZ/9eaaWMsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5cr-0000gx-Dk; Thu, 31 Oct 2019 08:16:13 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ5ch-0000fR-HP
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 08:16:05 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D7FC56DA03BD7E6E69AD;
 Thu, 31 Oct 2019 16:15:53 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 31 Oct 2019 16:15:46 +0800
Subject: Re: [PATCH v3] crypto: arm64/aes-neonbs - add return value of
 skcipher_walk_done() in __xts_crypt()
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <aaf0f585-3a06-8af1-e2f1-ab301e560d49@huawei.com>
 <32b39396-d514-524f-a85c-3bc627454ba7@huawei.com>
 <CAKv+Gu8A+kDK0Jtmu6oOO6jhgFkgYQ7=4tw_eMStmYPMkMp6iQ@mail.gmail.com>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <10ff656f-5cf5-53bb-e654-90d84bdf0730@huawei.com>
Date: Thu, 31 Oct 2019 16:15:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu8A+kDK0Jtmu6oOO6jhgFkgYQ7=4tw_eMStmYPMkMp6iQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_011603_744871_FF54C162 
X-CRM114-Status: GOOD (  15.52  )
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, hushiyuan@huawei.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linfeilong@huawei.com" <linfeilong@huawei.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/31 16:13, Ard Biesheuvel wrote:
> On Thu, 31 Oct 2019 at 08:02, Yunfeng Ye <yeyunfeng@huawei.com> wrote:
>>
>> A warning is found by the static code analysis tool:
>>   "Identical condition 'err', second condition is always false"
>>
>> Fix this by adding return value of skcipher_walk_done().
>>
>> Fixes: 67cfa5d3b721 ("crypto: arm64/aes-neonbs - implement ciphertext stealing for XTS")
>> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
>> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> Please don't send the exact same patch twice, and when you feel the
> need to do so, just ask instead whether your patch was received or
> not.
> 
ok, thanks.

> I'm sure Herbert will pick it up shortly.
> 
>> ---
>> v2 -> v3:
>>  - add "Acked-by:"
>>
>> v1 -> v2:
>>  - update the subject and comment
>>  - add return value of skcipher_walk_done()
>>
>>  arch/arm64/crypto/aes-neonbs-glue.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/crypto/aes-neonbs-glue.c b/arch/arm64/crypto/aes-neonbs-glue.c
>> index ea873b8904c4..e3e27349a9fe 100644
>> --- a/arch/arm64/crypto/aes-neonbs-glue.c
>> +++ b/arch/arm64/crypto/aes-neonbs-glue.c
>> @@ -384,7 +384,7 @@ static int __xts_crypt(struct skcipher_request *req, bool encrypt,
>>                         goto xts_tail;
>>
>>                 kernel_neon_end();
>> -               skcipher_walk_done(&walk, nbytes);
>> +               err = skcipher_walk_done(&walk, nbytes);
>>         }
>>
>>         if (err || likely(!tail))
>> --
>> 2.7.4.3
>>
>>
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
