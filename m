Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9ACB60EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 11:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYrga0zHDb8HUtqsrAnTBPlvVsLgJwWXhkWai2CL2as=; b=P9v+H7jgiSBp1s
	MXNyQiHcEcicNIqWAOrM4fBRjodffeELs06QUHhNHfF0eN3yTTSx+/TWbfARSCEWNS/YHApfoWnac
	XT/66Q8dX8G1i6AjvCjmWkBm829iCXDhm+GUIgFyasPBiVRq2bxeFKnkzhSrxpHiZHoc2unhrpbnX
	8sseKdP4soSXqL/2VxGwMSj75DRaH8+Gpw5DJu9JVy3nE3J+Pi/M9WpmZKdqp3jq57Nuht0UxR889
	4z3yyqQ7RMx6ECcw3/h+vdjy+2UCa3DiGO19ZMWGndRZXivfcYQ3gFWJQ9wCotD1OqW7MXXeH37Bf
	iO6Q4rNQYta2knHT+zJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWkd-0007sz-F0; Wed, 18 Sep 2019 09:59:55 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWkQ-0007pt-Dy
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 09:59:44 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1A7AE240013;
 Wed, 18 Sep 2019 09:59:26 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] ASoC: atmel_ssc_dai: Remove wrong spinlock usage
In-Reply-To: <20190918094800.GJ21254@piout.net>
References: <20190918094114.15867-1-gregory.clement@bootlin.com>
 <20190918094800.GJ21254@piout.net>
Date: Wed, 18 Sep 2019 11:59:25 +0200
Message-ID: <87impq7wn6.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_025942_776861_EF46EFB4 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

> On 18/09/2019 11:41:14+0200, Gregory CLEMENT wrote:
>> A potential bug was reported in the email "[BUG] atmel_ssc_dai: a
>> possible sleep-in-atomic bug in atmel_ssc_shutdown"[1]
>> 
>> Indeed in the function atmel_ssc_shutdown() free_irq() was called in a
>> critical section protected by spinlock.
>> 
>> However this spinlock is only used in atmel_ssc_shutdown() and
>> atmel_ssc_startup() functions. After further analysis, it occurred that
>> the call to these function are already protected by mutex used on the
>> calling functions.
>> 
>> Then we can remove the spinlock which will fix this bug as a side
>> effect. Thanks to this patch the following message disappears:
>> 
>> "BUG: sleeping function called from invalid context at
>> kernel/locking/mutex.c:909"
>> 
>> [1]: https://www.spinics.net/lists/alsa-devel/msg71286.html
>> 
>> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
>> ---
>>  sound/soc/atmel/atmel_ssc_dai.c | 7 -------
>>  1 file changed, 7 deletions(-)
>> 
>> diff --git a/sound/soc/atmel/atmel_ssc_dai.c b/sound/soc/atmel/atmel_ssc_dai.c
>> index 6f89483ac88c..365957e86419 100644
>> --- a/sound/soc/atmel/atmel_ssc_dai.c
>> +++ b/sound/soc/atmel/atmel_ssc_dai.c
>> @@ -116,19 +116,16 @@ static struct atmel_pcm_dma_params ssc_dma_params[NUM_SSC_DEVICES][2] = {
>>  static struct atmel_ssc_info ssc_info[NUM_SSC_DEVICES] = {
>>  	{
>>  	.name		= "ssc0",
>> -	.lock		= __SPIN_LOCK_UNLOCKED(ssc_info[0].lock),
>
> This member is now unused and can be removed from the struct.
>
> Once fixed, Reviewed-by: Alexandre Belloni
> <alexandre.belloni@bootlin.com>

Indeed I wanted to do this but finally forgot.
I am sending a v2.

Thanks,

Gregory

>
>>  	.dir_mask	= SSC_DIR_MASK_UNUSED,
>>  	.initialized	= 0,
>>  	},
>>  	{
>>  	.name		= "ssc1",
>> -	.lock		= __SPIN_LOCK_UNLOCKED(ssc_info[1].lock),
>>  	.dir_mask	= SSC_DIR_MASK_UNUSED,
>>  	.initialized	= 0,
>>  	},
>>  	{
>>  	.name		= "ssc2",
>> -	.lock		= __SPIN_LOCK_UNLOCKED(ssc_info[2].lock),
>>  	.dir_mask	= SSC_DIR_MASK_UNUSED,
>>  	.initialized	= 0,
>>  	},
>> @@ -317,13 +314,11 @@ static int atmel_ssc_startup(struct snd_pcm_substream *substream,
>>  
>>  	snd_soc_dai_set_dma_data(dai, substream, dma_params);
>>  
>> -	spin_lock_irq(&ssc_p->lock);
>>  	if (ssc_p->dir_mask & dir_mask) {
>>  		spin_unlock_irq(&ssc_p->lock);
>>  		return -EBUSY;
>>  	}
>>  	ssc_p->dir_mask |= dir_mask;
>> -	spin_unlock_irq(&ssc_p->lock);
>>  
>>  	return 0;
>>  }
>> @@ -355,7 +350,6 @@ static void atmel_ssc_shutdown(struct snd_pcm_substream *substream,
>>  
>>  	dir_mask = 1 << dir;
>>  
>> -	spin_lock_irq(&ssc_p->lock);
>>  	ssc_p->dir_mask &= ~dir_mask;
>>  	if (!ssc_p->dir_mask) {
>>  		if (ssc_p->initialized) {
>> @@ -369,7 +363,6 @@ static void atmel_ssc_shutdown(struct snd_pcm_substream *substream,
>>  		ssc_p->cmr_div = ssc_p->tcmr_period = ssc_p->rcmr_period = 0;
>>  		ssc_p->forced_divider = 0;
>>  	}
>> -	spin_unlock_irq(&ssc_p->lock);
>>  
>>  	/* Shutdown the SSC clock. */
>>  	pr_debug("atmel_ssc_dai: Stopping clock\n");
>> -- 
>> 2.23.0
>> 
>
> -- 
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
