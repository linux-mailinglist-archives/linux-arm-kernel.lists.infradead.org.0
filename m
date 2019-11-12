Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89038F9197
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:10:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgt7W/edQ2j79qSzpAVf+dQgVsEMje+UvX4PCWOE5fo=; b=UOkJog1UANZ9qk
	oQjMbjLdVd0SreMKBxabNctFy2kwidCXG5pSipVuYo7s+BL+NlyYse7PVGHX9NxMaoqomdZ/at4SW
	W420nTuHqdocAb2Oc1VyxKST010/92hpSGZrDolm2h3WgUz3CYbLsTXJRlKVUzJRleHczURl+mf5f
	Y/vZDpN02hdV2lTBo7OLDVwwbfTUJisWAnT1qCe0q/2C2ophYbHDgCN1e49AQY25cpNUDJ9V1KogD
	oh8qVj3GGJJYUEZO2AcB37rl2l7og1cUWnlU13baNHsDHXNeK16UeEWKr03G1uZfaXXFOFGToI2Jr
	5tU2NXXEPzoUBJcZaurA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWrj-0008Nm-84; Tue, 12 Nov 2019 14:09:55 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWrb-0008KU-F9
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:09:49 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xACDuqqN018120; Tue, 12 Nov 2019 15:09:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=jHbqLIGkDg3TeVdZ4Rvu7IZ9xT2WoUqaOpJODt681lE=;
 b=tBu0QLNI68RaJwYBheyd5T0hxfD/tTLo2T6geljr+ZzAt42Zo1YMgKgsUbGYA0aydXbY
 ez+sPAnHAOgqKs6Uk/i9xffBHOMVAvGkc/SYOF68OCyRLPCdM20WqoRkx+w9jTt15URC
 1QhKO7ORGLGCdr1zPiyhKSWXefezcd3UBDYgPrJV8mX+8f0mhPU0z4iK18IJkO5tlQL5
 SC35B+XeXEX280bQdmm35tPoIGHmAOB3cbvYnpZzA/UKczHqY0aGVBGhkpS58oPKOghp
 aRgPl3G+l/HX4G2SAvcmAwk2fAPsjGpfr3ktMHDVI5TOgXW3v/XSlIjRMHfQV5rNu9Cm tg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w7psb2j5j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 12 Nov 2019 15:09:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2382810002A;
 Tue, 12 Nov 2019 15:09:41 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 10DA12C1604;
 Tue, 12 Nov 2019 15:09:41 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 12 Nov
 2019 15:09:40 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Tue, 12 Nov 2019 15:09:40 +0100
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v2] remoteproc: stm32: fix probe error case
Thread-Topic: [PATCH v2] remoteproc: stm32: fix probe error case
Thread-Index: AQHVfOJqz28evgfEckmKeaDvWZiFgaeGrWIAgAENuoA=
Date: Tue, 12 Nov 2019 14:09:40 +0000
Message-ID: <392808fa-1504-233f-234b-0cca21886c17@st.com>
References: <1570433991-16353-1-git-send-email-fabien.dessenne@st.com>
 <20191111220416.GB3108315@builder>
In-Reply-To: <20191111220416.GB3108315@builder>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <95ED63541F302C428DC02C0FF61927C7@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-12_04:2019-11-11,2019-11-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_060947_982148_7C6B1C84 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud POULIQUEN <arnaud.pouliquen@st.com>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,


On 11/11/2019 11:04 PM, Bjorn Andersson wrote:
> On Mon 07 Oct 00:39 PDT 2019, Fabien Dessenne wrote:
>
>> If the rproc driver is probed before the mailbox driver and if the rproc
>> Device Tree node has some mailbox properties, the rproc driver probe
>> shall be deferred instead of being probed without mailbox support.
>>
>> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
>> ---
>> Changes since v1: test IS_ERR() before checking PTR_ERR()
>> ---
>>   drivers/remoteproc/stm32_rproc.c | 10 ++++++++--
>>   1 file changed, 8 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
>> index 2cf4b29..a507332 100644
>> --- a/drivers/remoteproc/stm32_rproc.c
>> +++ b/drivers/remoteproc/stm32_rproc.c
>> @@ -310,7 +310,7 @@ static const struct stm32_mbox stm32_rproc_mbox[MBOX_NB_MBX] = {
>>   	}
>>   };
>>   
>> -static void stm32_rproc_request_mbox(struct rproc *rproc)
>> +static int stm32_rproc_request_mbox(struct rproc *rproc)
>>   {
>>   	struct stm32_rproc *ddata = rproc->priv;
>>   	struct device *dev = &rproc->dev;
>> @@ -329,10 +329,14 @@ static void stm32_rproc_request_mbox(struct rproc *rproc)
>>   
>>   		ddata->mb[i].chan = mbox_request_channel_byname(cl, name);
>>   		if (IS_ERR(ddata->mb[i].chan)) {
>> +			if (PTR_ERR(ddata->mb[i].chan) == -EPROBE_DEFER)
>> +				return -EPROBE_DEFER;
> If for some reason you get EPROBE_DEFER when i > 0 you need to
> mbox_free_channel() channels [0..i) before returning.

The mailbox framework returns EPROBE_DIFFER to inform that the mailbox 
provider has not registered yet. I do not expected to have a success 
followed by a EPROBE_DEFER error.

But in the very special case where we use two different mailbox 
providers this may happen.

I will send an updated version, thanks for pointing this.

BR

Fabien

>
> Regards,
> Bjorn
>
>>   			dev_warn(dev, "cannot get %s mbox\n", name);
>>   			ddata->mb[i].chan = NULL;
>>   		}
>>   	}
>> +
>> +	return 0;
>>   }
>>   
>>   static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
>> @@ -596,7 +600,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto free_rproc;
>>   
>> -	stm32_rproc_request_mbox(rproc);
>> +	ret = stm32_rproc_request_mbox(rproc);
>> +	if (ret)
>> +		goto free_rproc;
>>   
>>   	ret = rproc_add(rproc);
>>   	if (ret)
>> -- 
>> 2.7.4
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
