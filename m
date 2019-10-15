Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281C0D7981
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 17:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6Wwi1W52VikCGymYUOdbUMAIQET+N+qrQwPrwYqpHU=; b=pWWtKx7Nluxxgn
	M/n3EgtG1f+DFkuHXfrZTfXMyU4eLMl8uQiOD9VYih3zHWCMRQZLPHKrFlJFeSTfVwGbRSQQPhlFZ
	TuVe3YSh2qFCaEWqNI84pJAqgVz6K7Arflv8bLGSGl8OSm/GPU0oTZUe1nV/IL5wkpX5JgrEAMs/E
	4VX2MBkXfMjL+VnIZf/DAmqsRGGIfhHKhl8DsYkAfsbBpWaQVFmAePDiHA+APyYScelGO7K2hyP4n
	30jd0e2MXKYYZhuRiKill1c97wN0F97s6A/y78oFJxPzm3TpZj0+Z5PEj8wenKXfroseAnv0hrRdX
	pSejjg2BUeo6FfGH4oyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOVL-0002ls-Rd; Tue, 15 Oct 2019 15:12:55 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOVD-0002lF-2n
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 15:12:48 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9FFAkqQ021745; Tue, 15 Oct 2019 17:12:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=Dz/82zOXMhfMmklzqpL72vLdKWuedjy+hvTqhAoCBe0=;
 b=UcLs1Mq9WYwpkYMT5Yq7HM/zidaf654mUbnTN7jf3CJG7H/Cmz5LpcYbevsCsbeeBcsx
 Qs+BDE1EZtLgyPWPp97mYe1+/LnJQnw2yoVX/Lj7u3MMwDVX6/IYG88Y10Gl1Uzl/5N7
 7+jbqlFj0LlQRWUbgUiGv9mc60vO9yQx9gPuiy46/U5nlpVSTj/wXirwxZ4AWycOnxjw
 1tbqK4ysBLXKsH7s6j/Nbhi1JpPHTDM5HLvls1rbJnOj0kXQIxMU+2Nys3OAK84VkM6y
 mPcMOMHN/78HMfD1hSVZDxOuoUIlxh2PAP73jH0uJKK0z7Iqn1iSYxz7nhfE9AY7nb93 TQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vk4a18xk6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Oct 2019 17:12:27 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9D19C100038;
 Tue, 15 Oct 2019 17:12:26 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 83C452C0B1D;
 Tue, 15 Oct 2019 17:12:26 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 15 Oct
 2019 17:12:26 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 15 Oct 2019 17:12:26 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Ben Dooks <ben.dooks@codethink.co.uk>,
 "linux-kernel@lists.codethink.co.uk" <linux-kernel@lists.codethink.co.uk>
Subject: Re: [Linux-stm32] [PATCH] thermal: stm32: make stm_thermal_pm_ops
 static
Thread-Topic: [Linux-stm32] [PATCH] thermal: stm32: make stm_thermal_pm_ops
 static
Thread-Index: AQHVg2LySKg+3iRMIESRd33erHyNMqdbrZeA
Date: Tue, 15 Oct 2019 15:12:26 +0000
Message-ID: <b5e353bc-1171-1559-351f-2e54ef6749fe@st.com>
References: <20191015141454.15402-1-ben.dooks@codethink.co.uk>
In-Reply-To: <20191015141454.15402-1-ben.dooks@codethink.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <C885B1D9DAA4E145A7287A236169A642@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-15_05:2019-10-15,2019-10-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_081247_429823_22CC56D8 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/15/19 4:14 PM, Ben Dooks wrote:
> The stm_thermal_pm_ops struct is not exported to any
> other units, so make it static to avoid the following
> sparse warning:
>
> drivers/thermal/st/stm_thermal.c:599:1: warning: symbol 'stm_thermal_pm_ops' was not declared. Should it be static?

Reviewed-by: Benjamin Gaignard <benjamin.gaignard@st.com>

Thanks,

Benjamin

>
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---
> Cc: Zhang Rui <rui.zhang@intel.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Amit Kucheria <amit.kucheria@verdurent.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-pm@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>   drivers/thermal/st/stm_thermal.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/st/stm_thermal.c b/drivers/thermal/st/stm_thermal.c
> index cf9ddc52f30e..40bc13c68fba 100644
> --- a/drivers/thermal/st/stm_thermal.c
> +++ b/drivers/thermal/st/stm_thermal.c
> @@ -596,7 +596,7 @@ static int stm_thermal_resume(struct device *dev)
>   }
>   #endif /* CONFIG_PM_SLEEP */
>   
> -SIMPLE_DEV_PM_OPS(stm_thermal_pm_ops, stm_thermal_suspend, stm_thermal_resume);
> +static SIMPLE_DEV_PM_OPS(stm_thermal_pm_ops, stm_thermal_suspend, stm_thermal_resume);
>   
>   static const struct thermal_zone_of_device_ops stm_tz_ops = {
>   	.get_temp	= stm_thermal_get_temp,
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
