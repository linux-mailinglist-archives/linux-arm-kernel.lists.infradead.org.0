Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD282D92E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HnzEaWZq968PN3rALSg95qZ7X+TTUbuAbx5CPOqrZns=; b=Jd4cfa+HT43EUDOB7j6FBUxTL
	F5BFFEQpJ3wypDK4a2mQS2HxyXQ+Xlz2xhZgu0kv6zSphTxTcocfJlbaJKQBo3kAwhNF04EQuJQX0
	bmTdNET4CpVecnj8fRrmmSuekK2VaxBxwf/Cw1pEAFv/ZHdFGu7VWBqOMpEBQgsam9aol/cN6La1f
	qcpqdkSRTKyIESCRK70m2CbXkIQ6SyWUiK0kpCfB6ZurEg6pEri+czmKuTHU7H/f+LgZpGiYpVy5n
	Nm1DLztQyxXR83twU/4SwhokDgQvN7QA1nHCIIklRumn1gMMBkjTFK08dWRhvP6tKW8MDAxhqdts+
	g5S7lz4NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVv0h-0001wL-D2; Wed, 29 May 2019 09:36:39 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVv0b-0001pD-Ap
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 09:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OqzTfdhqia5TW2akazmwmN49UNTjwbfJGUFpC1QJyQ8=; b=dtd5719rzGGCTLHRR3TtM/Cda5
 JwznagthaYBu53tTZ6a3HjlK8YisKhuE0Ht7Vv276XGgPZ0NrSMPrzDCjZKx39vEMX+cS01xzl1Cv
 7wHJSDxI99O1dzwq/sxL57snlTLoRdH/onC0tDvgKKzounQa/HXjvNH0EOtZktq88SQfwMQcv4PG9
 p5MEtuZ5MSVO9KKpdozaEqeg1fFkhWDfUFRYtKa/auZy/4zZiVdxyyMi10IvhiR4fpVmvK8B/WpPH
 5LkkV0t0HGtSRUT3DCu5kLVcPuMrQkD9ThRsumN0hLaULsP6sYDUmJIIlFRnKqAMocHXVmVy7Hkmj
 2e+Z+Gjg==;
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVulT-0007oj-G3
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:20:57 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4T9HJmV011994; Wed, 29 May 2019 11:20:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=OqzTfdhqia5TW2akazmwmN49UNTjwbfJGUFpC1QJyQ8=;
 b=tD/8cwXryQRpID8VESzInftZqx7l0uVgJd4LEML5K4zgD/y6L5XdDdIjvve50czGN4rF
 KZnV8l4i1lGf4gjH4Uz1cAxqal0oW4PGraXIy++Ux0wjL5NuD6/ox37iWSR/a7IdtAIr
 lXW+GYKSs3vSeCUurICVquKOMb+Dl7uvsMLMvwOjYtFY5lRkINATZZ8aaFovaryuBNSN
 Nb0jWQBmuccXkGI0FF+utl82sPZUs/n64/dqohbx7I81f/e/IPNb3Nj5ObNW0uKEzmUN
 81d/rU6Wbb/03MBMOQJ+12abw3m0FmS+HI8zYEhEWv/5icVLDyKFQcIe6pgf0icUka2K 5A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2spvkh6hn7-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 29 May 2019 11:20:48 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A1C7C34;
 Wed, 29 May 2019 09:20:43 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7AE9D2653;
 Wed, 29 May 2019 09:20:43 +0000 (GMT)
Received: from [10.48.0.237] (10.75.127.46) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 29 May
 2019 11:20:42 +0200
Subject: Re: [PATCH V2 3/5] mmc: mmci: fix clear of busy detect status
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1556264798-18540-1-git-send-email-ludovic.Barre@st.com>
 <1556264798-18540-4-git-send-email-ludovic.Barre@st.com>
 <CAPDyKFrxp3Y3AudNvkkSRaph2Fe-A-F6Cs0jfy9RUja76GYeiA@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <a6a74431-50a6-6298-b77d-9d27a77fd6cc@st.com>
Date: Wed, 29 May 2019 11:20:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAPDyKFrxp3Y3AudNvkkSRaph2Fe-A-F6Cs0jfy9RUja76GYeiA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-29_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_102055_618446_0C8F4406 
X-CRM114-Status: GOOD (  31.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hi Ulf

On 5/27/19 8:17 PM, Ulf Hansson wrote:
> On Fri, 26 Apr 2019 at 09:46, Ludovic Barre <ludovic.Barre@st.com> wrote:
>>
>> From: Ludovic Barre <ludovic.barre@st.com>
>>
>> The "busy_detect_flag" is used to read/clear busy value of
>> mmci status. The "busy_detect_mask" is used to manage busy irq of
>> mmci mask.
>> For sdmmc variant, the 2 properties have not the same offset.
>> To clear the busyd0 status bit, we must add busy detect flag,
>> the mmci mask is not enough.
>>
>> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> 
> Ludovic, again, apologies for the delay.
> 
>> ---
>>   drivers/mmc/host/mmci.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
>> index a040f54..3cd52e8 100644
>> --- a/drivers/mmc/host/mmci.c
>> +++ b/drivers/mmc/host/mmci.c
>> @@ -1517,7 +1517,8 @@ static irqreturn_t mmci_irq(int irq, void *dev_id)
>>                   * to make sure that both start and end interrupts are always
>>                   * cleared one after the other.
>>                   */
>> -               status &= readl(host->base + MMCIMASK0);
>> +               status &= readl(host->base + MMCIMASK0) |
>> +                       host->variant->busy_detect_flag;
> 
> I think this is not entirely correct, because it would mean we check
> for busy even if we haven't unmasked the busy IRQ via the
> variant->busy_detect_mask.

if the variant is busy_detect false:
  => no problem because the busy_detect_flag or busy_detect_mask is not
     defined.

if variant is busy_detect true:
the busy handle is split in 3 steps (see mmci_cmd_irq):
step 1: detection of busy line => unmasked the busy irq end
step 2: in busy wait => ignore cmd irq while current busy flag is
enabled.
step 3: end of busy => clear and mask busy irq

To detect the first step (see mmci_cmd_irq: which unmasks the busy irq)
we need to know the current busy state. Actually, the status register is
re-read in mmci_cmd_irq, why not used the status read in mmci_irq and in
parameter ?

Regards,
Ludo

> 
> I suggest to store a new bool in the host (call it
> "busy_detect_unmasked" or whatever makes sense to you), to track
> whether we have unmasked the busy IRQ or not. Then take this flag into
> account, before ORing the value of host->variant->busy_detect_flag,
> according to above.
> 
>>                  if (host->variant->busy_detect)
>>                          writel(status & ~host->variant->busy_detect_mask,
>>                                 host->base + MMCICLEAR);
>> --
>> 2.7.4
>>
> 
> Kind regards
> Uffe
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
