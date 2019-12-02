Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8682D10EA2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 13:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0gGI3xfKEUjE4JgJ9UOz0W3PzED+culFirC7VK7Pp7w=; b=g5UVPhkKjoQpAwyCxLt+TDpyy
	fppFJKmjZhF6TB2gGwbtAxs74T/zwoyyHzyrOhFbPbdX1hosFtQ2cOhPH4sqEdl7Gwe+7fl9LvTFd
	ga/iwBWFhXtRZIGKR635IlCF+v6x1MM+uLh7sQUVS1nEx9y2SQ7dkwlnJ9HVcUQrMR/gW8+PUtW52
	P9BI3B2IbB3lg4HlCIJEhK1Dz6yCS2K1l2WMKLFoKBTEGuLymdVCaayhQpBYLWsoULwXBejIQ2yrs
	KPocRhV9SzTuJqg8zsag8Lg8hmntC5KZGnK0yBE665u0Cr/G5W4La+Z3u91d26rwDXm31F7j09JLT
	bFldYSMpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibl0Z-0005SG-3Z; Mon, 02 Dec 2019 12:40:55 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibl0T-0005RY-Hk
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 12:40:50 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ibl0L-0000Rr-2B; Mon, 02 Dec 2019 13:40:41 +0100
To: Daode Huang <huangdaode@hisilicon.com>
Subject: Re: [PATCH] irqchip/stm32: Fix "WARNING: invalid free of
 =?UTF-8?Q?devm=5F=20allocated?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 02 Dec 2019 12:40:40 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <8acaa494701c91b8a8acd60a2390d810@www.loen.fr>
References: <1574931880-168682-1-git-send-email-huangdaode@hisilicon.com>
 <8acaa494701c91b8a8acd60a2390d810@www.loen.fr>
Message-ID: <028744c349410eb1f74b7e2b18590c75@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: huangdaode@hisilicon.com, jason@lakedaemon.net,
 linux-kernel@vger.kernel.org, fabien.dessenne@st.com,
 mcoquelin.stm32@gmail.com, tglx@linutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_044049_731332_810FACD0 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org, fabien.dessenne@st.com,
 mcoquelin.stm32@gmail.com, tglx@linutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-02 12:29, Marc Zyngier wrote:
> On 2019-11-28 09:04, Daode Huang wrote:
>> Since devm_ allocated data can be automaitcally released, it's no
>> need to free it apparently, just remove it.
>>
>> Fixes: cfbf9e497094 ("irqchip/stm32: Use a platform driver for
>> stm32mp1-exti device")
>> Signed-off-by: Daode Huang <huangdaode@hisilicon.com>
>> ---
>>  drivers/irqchip/irq-stm32-exti.c | 2 --
>>  1 file changed, 2 deletions(-)
>>
>> diff --git a/drivers/irqchip/irq-stm32-exti.c
>> b/drivers/irqchip/irq-stm32-exti.c
>> index e00f2fa..46ec0af 100644
>> --- a/drivers/irqchip/irq-stm32-exti.c
>> +++ b/drivers/irqchip/irq-stm32-exti.c
>> @@ -779,8 +779,6 @@ static int __init stm32_exti_init(const struct
>> stm32_exti_drv_data *drv_data,
>>  	irq_domain_remove(domain);
>>  out_unmap:
>>  	iounmap(host_data->base);
>> -	kfree(host_data->chips_data);
>> -	kfree(host_data);
>>  	return ret;
>>  }
>
> Applied, thanks.

Scratch that. This patch is just wrong, and just reading the code
makes it obvious. stm32_exti_init() is only called on paths
that allocate the memory with kmalloc.

Clearly you haven't tried to understand what is going on.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
