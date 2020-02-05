Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865BE15264E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 07:29:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgoODsChKwpKsz+F1JhIGWSGsx4kSDcHIQaZzKHN4to=; b=d4GhQAciFN/fKW
	V6fD2iU0O/GuWKLFUc7eIVJcOejgSezx7a9itHUpTGKqCCJEfTDhnCqAbAu1RwSTKdtej4+UD/4h6
	sYCMrGbeA0lfcwBt8oEt8gpzziXEJKGntJ41ccbAgsALD9viqqat1t4C2BlZbIWWCoCt/arjs65MY
	FO+6LDgppCEiG4gQeIFqKkYqGuGoyGeFsGSMODtIovhTYmQ/TGJb5GN2/JxzEozvov2U07/HW1B5r
	pj2caCKqcJvwP35TydpunED3/gCmFU/Ng0NJ4o8qztP3qUKMB+SRWn/iFZNsT4BahYFnfsHwfF19o
	hhuhHWoB2iU/Fo/KVU8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izEBk-0003MO-Q2; Wed, 05 Feb 2020 06:29:28 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izEBe-0003LO-Py
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 06:29:24 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F292495C73F429EEABCA;
 Wed,  5 Feb 2020 14:29:07 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 5 Feb 2020 14:29:05 +0800
Subject: Re: [PATCH -next] dmaengine: sun4i: remove set but unused variable
 'linear_mode'
To: Chen-Yu Tsai <wens@csie.org>, Stefan Mavrodiev <stefan@olimex.com>
References: <20200205044247.32496-1-yuehaibing@huawei.com>
 <CAGb2v67gzb+8vR=6jQKX07pcARUqBHeburNWM9tqzqhfTnodGg@mail.gmail.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <e125193f-b7b2-c3a8-2e09-925ba2116db0@huawei.com>
Date: Wed, 5 Feb 2020 14:29:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v67gzb+8vR=6jQKX07pcARUqBHeburNWM9tqzqhfTnodGg@mail.gmail.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_222923_008905_D7249757 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE
 SUBSYSTEM" <dmaengine@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/2/5 12:56, Chen-Yu Tsai wrote:
> Hi,
> 
> On Wed, Feb 5, 2020 at 12:43 PM YueHaibing <yuehaibing@huawei.com> wrote:
>>
>> drivers/dma/sun4i-dma.c: In function sun4i_dma_prep_dma_cyclic:
>> drivers/dma/sun4i-dma.c:672:24: warning:
>>  variable linear_mode set but not used [-Wunused-but-set-variable]
>>
>> commit ffc079a4accc ("dmaengine: sun4i: Add support for cyclic requests with dedicated DMA")
>> involved this unused variable.
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
>>  drivers/dma/sun4i-dma.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/dma/sun4i-dma.c b/drivers/dma/sun4i-dma.c
>> index bbc2bda..501cd44 100644
>> --- a/drivers/dma/sun4i-dma.c
>> +++ b/drivers/dma/sun4i-dma.c
>> @@ -669,7 +669,7 @@ sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
>>         dma_addr_t src, dest;
>>         u32 endpoints;
>>         int nr_periods, offset, plength, i;
>> -       u8 ram_type, io_mode, linear_mode;
>> +       u8 ram_type, io_mode;
>>
>>         if (!is_slave_direction(dir)) {
>>                 dev_err(chan2dev(chan), "Invalid DMA direction\n");
>> @@ -684,11 +684,9 @@ sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
>>
>>         if (vchan->is_dedicated) {
>>                 io_mode = SUN4I_DDMA_ADDR_MODE_IO;
>> -               linear_mode = SUN4I_DDMA_ADDR_MODE_LINEAR;
>>                 ram_type = SUN4I_DDMA_DRQ_TYPE_SDRAM;
>>         } else {
>>                 io_mode = SUN4I_NDMA_ADDR_MODE_IO;
>> -               linear_mode = SUN4I_NDMA_ADDR_MODE_LINEAR;
>>                 ram_type = SUN4I_NDMA_DRQ_TYPE_SDRAM;
>>         }
> 
> I think it's better to actually use these values later when composing
> the value for `endpoints`, as we do in sun4i_dma_prep_slave_sg().
> 
> The code currently works because SUN4I_DDMA_ADDR_MODE_LINEAR == 0.
> However explicitly using the value makes the code more readable,
> and doesn't require the reader to have implicit knowledge of default
> values for parameters not specified in the composition of `endpoints`.

Thanks, will send v2.

> 
> ChenYu
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
