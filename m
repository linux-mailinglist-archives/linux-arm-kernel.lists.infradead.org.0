Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC623307E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 15:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvLcNWf7m1QyyRYmyUbi4xt28PdhWVmFTtCgFyKy/N8=; b=GbV4I/XMJMDcsc
	F5xHWVhxMoCG+Mr20nZ3+yNWp36FoQTZ/s9J8oLihQA4lwSLDJuKnpfY5tgWdkDPXUKRfctDlK74r
	0sfOXA3lsrfWI7RcrkaMvMI0glp1XkcEJQT/KUgABnKio0lhiRRNYQEebMw3tsoWDAzz0f14/jihU
	0c3CXkrQr2hDqUDXDRfWlPkJTflFnr01QAoMD2AiNoG0o7JTpA+jSolQROhbRmLSYefuDwB8aOa+4
	jT7/rx2128MFv60LWEwhysSv2i1a30d1G55kd+xsMT3j+GQpKEtJnbFPohxbUPqmAAaAY5wMWKbU1
	z6gk+bPjxA7Fql6tAP5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmd5-0006TJ-Hw; Mon, 03 Jun 2019 13:03:59 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmcw-0006R3-Li
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 13:03:52 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x53D29gj007830; Mon, 3 Jun 2019 15:03:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=Yw1hBtZR78FRlvaY6GGctzL2o+O10Y/M0xnj+n+p2Bc=;
 b=hp+ZYfxxfJeIuT/RaytPDswUXx+ds5iGHjF2orcdEDZur/sIDfUbb85B9EQGs4KkmZ5f
 KyGWLZ3dGw5KVOu2jhV2/nxv5zvNfcLL605UUPvG+ZyM9FEPm+xK5+zETprDYxSNetBK
 67WbBy9piiuojVicOol5hKWDMHkO5ajhMmdwq60YeRFvAmxtmj84JC5QzN5vlNI02N/z
 gAGV0P6Y6Fa6f/V2PZYnjsYsob6dwUJkUY91V5z2yYA+uYvcQWvUkfZ3LoAuIa63inCd
 rC6Fr75jQrNQJ5ychX3YNpFTi7pJ+xtYLoa+uuB3+2KnId4alxfXj5ZYAN6AuVL9Q/ip Sw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sunmeaess-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 03 Jun 2019 15:03:41 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D35C13F;
 Mon,  3 Jun 2019 13:03:40 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A223D2434;
 Mon,  3 Jun 2019 13:03:40 +0000 (GMT)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 3 Jun
 2019 15:03:40 +0200
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1347.000; Mon, 3 Jun 2019 15:03:40 +0200
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Hugues FRUCHET
 <hugues.fruchet@st.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Maxime Coquelin" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, Pavel Machek <pavel@denx.de>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] media: stm32-dcmi: fix irq = 0 case
Thread-Topic: [PATCH] media: stm32-dcmi: fix irq = 0 case
Thread-Index: AQHVF5HP7OIc+eCgyUyFjdbkSczlYqaJswGAgAAV2oA=
Date: Mon, 3 Jun 2019 13:03:40 +0000
Message-ID: <dd4ca76b-9f93-5ddc-e878-25b9905e0cd2@st.com>
References: <1559294295-20573-1-git-send-email-fabien.dessenne@st.com>
 <46944972-1f88-ef3b-fef9-8e37753c0ffe@xs4all.nl>
In-Reply-To: <46944972-1f88-ef3b-fef9-8e37753c0ffe@xs4all.nl>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <16FAE0F28C0E154C942967FC70244FEE@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-03_10:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_060351_150714_E63864D0 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hans


"platform_get_irq() = 0" shall be considered as an error. See these 
discussions:
https://patchwork.kernel.org/patch/10006651/
https://yarchive.net/comp/linux/zero.html

BR

Fabien

On 03/06/2019 1:45 PM, Hans Verkuil wrote:
> On 5/31/19 11:18 AM, Fabien Dessenne wrote:
>> Manage the irq = 0 case, where we shall return an error.
>>
>> Fixes: b5b5a27bee58 ("media: stm32-dcmi: return appropriate error codes during probe")
>> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
>> ---
>>   drivers/media/platform/stm32/stm32-dcmi.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
>> index b9dad0a..d855e9c 100644
>> --- a/drivers/media/platform/stm32/stm32-dcmi.c
>> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
>> @@ -1702,7 +1702,7 @@ static int dcmi_probe(struct platform_device *pdev)
>>   	if (irq <= 0) {
> Shouldn't this be 'irq < 0' instead of '<=' ?
>
> AFAICT irq == 0 can be a valid irq and isn't an error.
>
> Regards,
>
> 	Hans
>
>>   		if (irq != -EPROBE_DEFER)
>>   			dev_err(&pdev->dev, "Could not get irq\n");
>> -		return irq;
>> +		return irq ? irq : -ENXIO;
>>   	}
>>   
>>   	dcmi->res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
