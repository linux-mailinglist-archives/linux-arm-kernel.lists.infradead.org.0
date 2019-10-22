Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A959DDFE0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 09:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tKmrFxLxIqzmL7auI2lmDF5ItDiF5QCENResHgwP3s=; b=pSUm/mI8szZFzY
	VaV18FSmjThuJiTW5sN5GhhWKEygGGg53wPCaMrz5s0oDlovMhrhmAfOBeGYvtDxxf3daQqzVwGiw
	PNRIdalfwvZBAhxI5UIKDVhz7V/FkBSKeVjczirmyR00j9I1tBOeiQ9zPzu82O/Ut3NoC26XSs8T0
	masWyREuR1/PXvOBYBFIqNvQDHzdpna8O4AnSw040lCQpH3f2UsuISpDJrIziY+wo710a7L3fTp9t
	Xqeot/daHwZ2Cj+vCsErw7g0/NkvN7+8gck6dPs+jMXPz7bmR6jTAH5siPI6MNJ6lgtbdZ2OG8TJY
	bgjLN+2ad0KyV4BuUyKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMoO3-00012r-2W; Tue, 22 Oct 2019 07:15:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMoNu-00011i-1J
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 07:15:15 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1FA04A12A33EAD9386E7;
 Tue, 22 Oct 2019 15:15:10 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 22 Oct 2019 15:15:02 +0800
Subject: Re: [PATCH] crypto: arm64/aes-neonbs - remove redundant code in
 __xts_crypt()
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <a33932c9-2975-4fcc-ba07-7c54df4eae27@huawei.com>
 <CAKv+Gu-qAy9iLbR97=Kz90+-YLLvz0nmTZtxhByeOXEG3xvaBQ@mail.gmail.com>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <43706330-cc84-d597-11ad-a3e0afb0b793@huawei.com>
Date: Tue, 22 Oct 2019 15:14:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu-qAy9iLbR97=Kz90+-YLLvz0nmTZtxhByeOXEG3xvaBQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_001514_247554_E7D6E000 
X-CRM114-Status: GOOD (  18.97  )
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 "hushiyuan@huawei.com" <hushiyuan@huawei.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linfeilong@huawei.com" <linfeilong@huawei.com>, "open list:HARDWARE RANDOM
 NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/22 14:52, Ard Biesheuvel wrote:
> On Tue, 22 Oct 2019 at 08:42, Yunfeng Ye <yeyunfeng@huawei.com> wrote:
>>
>> A warning is found by the static code analysis tool:
>>   "Identical condition 'err', second condition is always false"
>>
>> Fix this by removing the redundant condition @err.
>>
>> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> 
> Please don't blindly 'fix' crypto code without reading it carefully
> and without cc'ing the author.
> 
ok, thanks.

> The correct fix is to add the missing assignment of 'err', like so
> 
> diff --git a/arch/arm64/crypto/aes-neonbs-glue.c
> b/arch/arm64/crypto/aes-neonbs-glue.c
> index ea873b8904c4..e3e27349a9fe 100644
> --- a/arch/arm64/crypto/aes-neonbs-glue.c
> +++ b/arch/arm64/crypto/aes-neonbs-glue.c
> @@ -384,7 +384,7 @@ static int __xts_crypt(struct skcipher_request
> *req, bool encrypt,
>                         goto xts_tail;
> 
>                 kernel_neon_end();
> -               skcipher_walk_done(&walk, nbytes);
> +               err = skcipher_walk_done(&walk, nbytes);
>         }
> 
>         if (err || likely(!tail))
> 
> Does that make the warning go away?
> 
yes, warning has go way.

> 
>> ---
>>  arch/arm64/crypto/aes-neonbs-glue.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/crypto/aes-neonbs-glue.c b/arch/arm64/crypto/aes-neonbs-glue.c
>> index ea873b8904c4..7b342db428b0 100644
>> --- a/arch/arm64/crypto/aes-neonbs-glue.c
>> +++ b/arch/arm64/crypto/aes-neonbs-glue.c
>> @@ -387,7 +387,7 @@ static int __xts_crypt(struct skcipher_request *req, bool encrypt,
>>                 skcipher_walk_done(&walk, nbytes);
>>         }
>>
>> -       if (err || likely(!tail))
>> +       if (likely(!tail))
>>                 return err;
>>
>>         /* handle ciphertext stealing */
>> --
>> 2.7.4.3
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
