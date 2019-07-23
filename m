Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB1D71A59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 16:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8pwDiZCGfSkKVMY056HYj3FVY6QjHa7Avf1oT7xIB4=; b=G+oNnW1u6xo7EC
	A+8pHC6pAhaF1IizQw5dPhZELHVaN690mm2/MIn5XyTx9VzL4wvibb17LIrJrYgLHli9ijCRLmKza
	DCTcmZCrDC4sNxSz2GNlZqKkDgJw7RokzPS5tIl6Z7z0/22qdW9tufqD9x+G71kKMlahjujoZ9dYO
	y80u7+HAuEhhSBVsCV/JUiTCaLv79Tkz3LTdBWub/y35PSSd4FZqplW01zObWz1MNwzyf9/2J47eM
	OFmR5jc0ahEGAdR3pWULHxbs+LyJbgVZJs5RRdhTnjW7tUF6hVcwuqn0H7QdsdFDwjpFEUnj4Tlcq
	4AQXfJM0OZgQdMm7ZCrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvmF-0001Sf-3A; Tue, 23 Jul 2019 14:28:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpvm3-0001SB-9R
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 14:28:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73B5C28;
 Tue, 23 Jul 2019 07:28:13 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1B5DF3F71F; Tue, 23 Jul 2019 07:28:13 -0700 (PDT)
Subject: Re: [BOOTWRAPPER][PATCH] Make GICv3.1 extended ranges available to
 non-secure
To: Mark Rutland <mark.rutland@arm.com>
References: <20190723115545.1506-1-marc.zyngier@arm.com>
 <20190723141017.GB5004@lakrids.cambridge.arm.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
 Z46HaNmN2hZS/oJ69c1DI5Rcww==
Organization: ARM Ltd
Message-ID: <ad153393-29d9-1c14-b747-9af4adb1859f@arm.com>
Date: Tue, 23 Jul 2019 15:28:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190723141017.GB5004@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_072815_419324_B328AF8E 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/2019 15:10, Mark Rutland wrote:
> Hi Marc,
> 
> On Tue, Jul 23, 2019 at 12:55:45PM +0100, Marc Zyngier wrote:
>> If we have a GICv3.1-capable system, configure the EPPI/ESPI ranges
>> to be accessible from the non-secure world.
>>
>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>> ---
>>  gic-v3.c | 14 ++++++++++++--
>>  1 file changed, 12 insertions(+), 2 deletions(-)
>>
>> diff --git a/gic-v3.c b/gic-v3.c
>> index 476f703..4b733ba 100644
>> --- a/gic-v3.c
>> +++ b/gic-v3.c
>> @@ -17,6 +17,8 @@
>>  #define GICD_TYPER			0x4
>>  #define GICD_IGROUP0			0x80
>>  #define GICD_IGRPMOD0			0xd00
>> +#define GICD_IGROUPR0E			0x1000
>> +#define GICD_IGRPMODR0E			0x3400
>>  
>>  #define GICD_CTLR_EnableGrp0		(1 << 0)
>>  #define GICD_CTLR_EnableGrp1ns		(1 << 1)
>> @@ -57,6 +59,7 @@ void gic_secure_init_primary(void)
>>  		 * ChildrenAsleep to be 0.
>>  		 */
>>  		uint32_t waker = raw_readl(gicr_ptr + GICR_WAKER);
>> +		uint32_t regs;
>>  		waker &= ~GICR_WAKER_ProcessorSleep;
>>  		raw_writel(waker, gicr_ptr + GICR_WAKER);
>>  		dsb(st);
>> @@ -72,8 +75,11 @@ void gic_secure_init_primary(void)
>>  		typer = raw_readl(gicr_ptr + GICR_TYPER);
>>  
>>  		gicr_ptr += 0x10000; /* Go to SGI_Base */
>> -		raw_writel(~0x0, gicr_ptr + GICR_IGROUP0);
>> -		raw_writel(0x0, gicr_ptr + GICR_IGRPMOD0);
>> +		regs = 1 + ((typer >> 27) & 0x1f);
> 
> IIUC that's GICR_TYPER.PPInum, right?

Indeed.

> 
>> +		for (i = 0; i < regs; i++) {
>> +			raw_writel(~0x0, gicr_ptr + GICR_IGROUP0 + i * 4);
>> +			raw_writel(0x0, gicr_ptr + GICR_IGRPMOD0 + i * 4);
>> +		}
>>  
>>  		/* Next redist */
>>  		gicr_ptr += 0x10000;
>> @@ -87,6 +93,10 @@ void gic_secure_init_primary(void)
>>  		raw_writel(~0x0, gicd_base + GICD_IGROUP0 + i * 4);
>>  		raw_writel(0x0, gicd_base + GICD_IGRPMOD0 + i * 4);
>>  	}
>> +	for (i = 0; i < ((typer >> 27) & GICD_TYPER_ITLineNumber); i++) {
> 
> IIUC this is ESPI_range_field, so using the GICD_TYPER_ITLineNumber
> mnemonic is a bit misleading.
> 
> Given the verbose regfield names, _SHIFT and _MASK definitions will make
> this illegible, so could we please add extactors:
> 
> #define GICR_TYPER_PPInum(r)		(((r) >> 27) & 0x1f)
> #define GICD_TYPER_ESPI_range(r)	(((r) >> 27) & 0x1f)
> 
> ... and use those in the for loops?
> 
> With that, this looks good to me. If you respin, I'm happy to pick this
> up. :)

Sure, I'll do that shortly.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
