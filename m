Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EA21EBA8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 13:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LArw+SkuIt8gc5gpQnbTeqTQ0lvZxxImanFKjRBLfM=; b=DdtUKNAHmgStPM
	BcyAlq53JlGbJmmvfiR6p4L53aQMpedj12irZlz8ukUueq2XtGD3NwMGOYHKRDWoUBkWnLr6xRLUi
	DskZ7oi4dzwzkYeFLdjpefDzOE5Dfnq5SYJmZGFpAHLVyuNsLjAZZ3DeLZk9ckZEgs2syJsuOh4A8
	7snJCjQmbkUmt7kcltXNz3wwz6Rxg16tmpRM72CnV0SPw/syWgDbDNX+Xf0UFkDrCbm6P6Q/YGUHF
	L9n4BgRWkcQS59/AVw0AEcGAeNzDPGEvU3nVTfN2BjNxoiOENbNYh7EXndX7e094tqdJgGWCP4/L1
	lP5rrnd4qC/UGEiNCK7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg5F3-0004Na-Vq; Tue, 02 Jun 2020 11:38:01 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg5Ew-0004Mv-Lh
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 11:37:56 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 052BW8ED005146; Tue, 2 Jun 2020 13:37:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=zCgvAD2DnYOr6cNN/ctfmZUAkv+2YxaNhKI0IMJVfkE=;
 b=v8kkOlsyPyNieJG4nr+2nQ1vF144Qa7s0rS59Pqqo2j3rSHaEJO45M0H4pEoMSq8B8CS
 1oecrhJFDDONdjO01uKRH6A2z94ikNRrBlvVYoTJBDpZzMOCDE4oiyBWLOEzvg9s3fIl
 zcrAx+zuRUP6bsCtiu0MrjrrOmR07S5KrkFAdd5C7DL3ARzu/f+xavux99vZuwjyEVy5
 wrjvsdwrM13ZNFZDx1q2cYGQCqSJ0RiHUnHyQXAKNtovBht9ffBZQQaeRxMdBk4Mdssw
 G0hghBJU8K3yS0eSayQfL7CeeyWZPOHYoPFOXzvIlvWwJOit0N54YN6aXF6C0n7VIDdY XQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31bcy0e6ph-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 02 Jun 2020 13:37:40 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 141D110002A;
 Tue,  2 Jun 2020 13:37:39 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D53C72B5C35;
 Tue,  2 Jun 2020 13:37:39 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 2 Jun
 2020 13:37:39 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 2 Jun 2020 13:37:39 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
Thread-Topic: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
Thread-Index: AQHWNDnEPjQ+BLRck0Okhc2Oie/dNajE9yuAgAAjSoA=
Date: Tue, 2 Jun 2020 11:37:39 +0000
Message-ID: <f95ce45f-7a1c-0feb-afa8-203ddb500f2f@st.com>
References: <20200527151613.16083-1-benjamin.gaignard@st.com>
 <jhjpnahizkm.mognet@arm.com>
In-Reply-To: <jhjpnahizkm.mognet@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <783800331E8056488681241E76EAEE3C@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-02_13:2020-06-02,
 2020-06-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_043755_177566_0F037F35 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/2/20 11:31 AM, Valentin Schneider wrote:
> Hi Benjamin,
>
> On 27/05/20 16:16, Benjamin Gaignard wrote:
>> Before start streaming set cpufreq minimum frequency requirement.
>> The cpufreq governor will adapt the frequencies and we will have
>> no latency for handling interrupts.
>>
> Few comments below from someone oblivious to your platform, they may not
> be all that relevant but I figured I'd pitch in anyway.
>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>> ---
>>   drivers/media/platform/stm32/stm32-dcmi.c | 29 ++++++++++++++++++++++++++++-
>>   1 file changed, 28 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
>> index b8931490b83b..97c342351569 100644
>> --- a/drivers/media/platform/stm32/stm32-dcmi.c
>> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
>> @@ -13,6 +13,7 @@
>>
>>   #include <linux/clk.h>
>>   #include <linux/completion.h>
>> +#include <linux/cpufreq.h>
>>   #include <linux/delay.h>
>>   #include <linux/dmaengine.h>
>>   #include <linux/init.h>
>> @@ -99,6 +100,8 @@ enum state {
>>
>>   #define OVERRUN_ERROR_THRESHOLD	3
>>
>> +#define DCMI_MIN_FREQ	650000 /* in KHz */
>> +
> This assumes the handling part is guaranteed to always run on the same CPU
> with the same performance profile (regardless of the platform). If that's
> not guaranteed, it feels like you'd want this to be configurable in some
> way.
Yes I could add a st,stm32-dcmi-min-frequency (in KHz) parameter the 
device tree node.

>
>>   struct dcmi_graph_entity {
>>        struct v4l2_async_subdev asd;
>>
> [...]
>> @@ -2020,6 +2042,8 @@ static int dcmi_probe(struct platform_device *pdev)
>>                goto err_cleanup;
>>        }
>>
>> +	dcmi->policy = cpufreq_cpu_get(0);
>> +
> Ideally you'd want to fetch the policy of the CPU your IRQ (and handling
> thread) is affined to; The only compatible DTS I found describes a single
> A7, which is somewhat limited in the affinity area...
If I move this code just before start streaming and use get_cpu(), would 
it works ?

Benjamin
>
>>        dev_info(&pdev->dev, "Probe done\n");
>>
>>        platform_set_drvdata(pdev, dcmi);
>> @@ -2049,6 +2073,9 @@ static int dcmi_remove(struct platform_device *pdev)
>>
>>        pm_runtime_disable(&pdev->dev);
>>
>> +	if (dcmi->policy)
>> +		cpufreq_cpu_put(dcmi->policy);
>> +
>>        v4l2_async_notifier_unregister(&dcmi->notifier);
>>        v4l2_async_notifier_cleanup(&dcmi->notifier);
>>        media_entity_cleanup(&dcmi->vdev->entity);
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
