Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B384A9AA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 08:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:
	MIME-Version:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYoFgmah1FKy87KlRtpERiQRLV//hPwcg3fFKL4I+0w=; b=sQgWxpFkmPr52F
	Ev6uWK44xb+DPJ/nuNiKTt2suU44+rB3v/HXicyBtY1fZnejq5G5QII7W7Mcz03TAJtJx+yiRAtNl
	IJFPIQoprHDjP+BNV2MXwl6O6bMbahKqLmtcHnG3AEpqVstAPw1yBLASR4zHEFUPOWFwkjkt+VwcD
	7WIjg7rm17H7mclakh+czqDor5b5QJlpM/JGNksm74x45GISU3qOW5zqmytNCd6NcBGZDLYyFyW6+
	OZ04ahNkSDIsCMhRt4NgJR0LdH/GNkp2A75Tu0LNbxnx/5wvT8nq/NMRL7AG87gbd4Dl9rFst761X
	SYCXpp05On2b1kQ429pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5lDH-0005Nw-AA; Thu, 05 Sep 2019 06:25:47 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5lD4-0005NB-VE
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 06:25:36 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 81238E957918129EA04E;
 Thu,  5 Sep 2019 14:25:30 +0800 (CST)
Received: from [127.0.0.1] (10.177.29.68) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 5 Sep 2019
 14:25:28 +0800
Message-ID: <5D70AA57.5080700@huawei.com>
Date: Thu, 5 Sep 2019 14:25:27 +0800
From: zhong jiang <zhongjiang@huawei.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
 rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: Will Deacon <will@kernel.org>, <herbert@gondor.apana.org.au>
Subject: Re: [PATCH] crypto: arm64: Use PTR_ERR_OR_ZERO rather than its
 implementation.
References: <1567493656-19916-1-git-send-email-zhongjiang@huawei.com>
 <20190904102526.5vtdv5ofuezn7fre@willie-the-truck>
In-Reply-To: <20190904102526.5vtdv5ofuezn7fre@willie-the-truck>
X-Originating-IP: [10.177.29.68]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_232535_206009_E4E1EADD 
X-CRM114-Status: GOOD (  10.06  )
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
Cc: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 davem@davemloft.net, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/9/4 18:25, Will Deacon wrote:
> On Tue, Sep 03, 2019 at 02:54:16PM +0800, zhong jiang wrote:
>> PTR_ERR_OR_ZERO contains if(IS_ERR(...)) + PTR_ERR. It is better to
>> use it directly. hence just replace it.
>>
>> Signed-off-by: zhong jiang <zhongjiang@huawei.com>
>> ---
>>  arch/arm64/crypto/aes-glue.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/crypto/aes-glue.c b/arch/arm64/crypto/aes-glue.c
>> index ca0c84d..2a2e0a3 100644
>> --- a/arch/arm64/crypto/aes-glue.c
>> +++ b/arch/arm64/crypto/aes-glue.c
>> @@ -409,10 +409,8 @@ static int essiv_cbc_init_tfm(struct crypto_skcipher *tfm)
>>  	struct crypto_aes_essiv_cbc_ctx *ctx = crypto_skcipher_ctx(tfm);
>>  
>>  	ctx->hash = crypto_alloc_shash("sha256", 0, 0);
>> -	if (IS_ERR(ctx->hash))
>> -		return PTR_ERR(ctx->hash);
>>  
>> -	return 0;
>> +	return PTR_ERR_OR_ZERO(ctx->hash);
>>  }
>>  
>>  static void essiv_cbc_exit_tfm(struct crypto_skcipher *tfm)
> Acked-by: Will Deacon <will@kernel.org>
Thanks.

Sincerely,
zhong jiang
> Assuming this will go via Herbert.
>
> Will
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
