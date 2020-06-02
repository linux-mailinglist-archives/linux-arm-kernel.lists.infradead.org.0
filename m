Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32D71EB764
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:30:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxsnFgLpPs3ABKBnyrTszjS5sUpb+gQeIAnfSq3T13o=; b=bq1TxCgUhRTd8F
	qq5LxtK+FtSeeoT3/mgaJBJDW0gsyQqkIeglFPLAX9nbJqFpkOhJzcZcRTziLZAImfdy458w6V8eK
	o8si1XEWiViXcBwAOReqqxk+zEpraYXpuqYOoptHjMp7mOWoMeu9hEeaCfILRsDzMI5JBfFkCNjIb
	OeuI3V+iOXBrbZMgGQZJ8KUWEHSkHSs7A42T4D5J7Onr8jWDyCMvzTw+DLA3VHFhYeuTzbA0Hsdp+
	sW3eaRqA3QkFoVGmoak8hmD1TA6d2MX9hIlFlm8oUVt5j6+5ALCGkswoR189scM4Tud1vE8gkMZ7q
	prW9eAJUkE/tkJ032J3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2JA-0007mV-Ka; Tue, 02 Jun 2020 08:30:04 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2Iu-0007k1-Pp
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:29:51 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0528SDJr026270; Tue, 2 Jun 2020 10:29:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=6XTqD4oSlrbjM9/x3g1YaVOoeoVL9aa2OTi5ThyuPwU=;
 b=k09ef3UywWNyT67MNoGBHI4ZPUwtwJR6gOuT1+2KnA+ifAvFV6a5VYVL0hKX/ckO5/o4
 ITQgyRe7JF5o7ZEaY/b1mlOGAFz/E0tg5kJK7kFMAOmk/EOXFpLEAWKDuhvQLm+RqLp3
 BKCKTERRngN/N5C0LLulBMBorgDnpzZxUkf9d50rwRvujWBreb+2x7yMUdokyUYi0uDN
 4ZEy3o5LEBlH+qmPrVYeIDiq+MO6JpndyQmfmiekY3L9MGNgkviKgp6ZF/W8iyPRA0ks
 qqShYb1lUKr+Me++2/IKQ0VMnvQgSOaAdxZVQFLp8EBQk8G+Tj32Y1mZ1BE+a6a9VshR Tg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31bcy0dbp8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 02 Jun 2020 10:29:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D80D410002A;
 Tue,  2 Jun 2020 10:29:36 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A661A2AAD1F;
 Tue,  2 Jun 2020 10:29:36 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 2 Jun
 2020 10:29:36 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Tue, 2 Jun 2020 10:29:36 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>
Subject: Re: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
Thread-Topic: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
Thread-Index: AQHWNDnEu2gs2ws6JUCiuNPgKFH4kKjE5e6A
Date: Tue, 2 Jun 2020 08:29:36 +0000
Message-ID: <c53ca6f9-5350-0234-eb52-2c656ffab79c@st.com>
References: <20200527151613.16083-1-benjamin.gaignard@st.com>
In-Reply-To: <20200527151613.16083-1-benjamin.gaignard@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <5C415AA3C357474291DF12AFD1D350E4@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-02_11:2020-06-01,
 2020-06-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_012949_291633_DFD25983 
X-CRM114-Status: GOOD (  21.07  )
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
Cc: "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "valentin.schneider@arm.com" <valentin.schneider@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Hugues Fruchet <hugues.fruchet@st.com>

On 5/27/20 5:16 PM, Benjamin Gaignard wrote:
> Before start streaming set cpufreq minimum frequency requirement.
> The cpufreq governor will adapt the frequencies and we will have
> no latency for handling interrupts.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   drivers/media/platform/stm32/stm32-dcmi.c | 29 ++++++++++++++++++++++++++++-
>   1 file changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> index b8931490b83b..97c342351569 100644
> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> @@ -13,6 +13,7 @@
>   
>   #include <linux/clk.h>
>   #include <linux/completion.h>
> +#include <linux/cpufreq.h>
>   #include <linux/delay.h>
>   #include <linux/dmaengine.h>
>   #include <linux/init.h>
> @@ -99,6 +100,8 @@ enum state {
>   
>   #define OVERRUN_ERROR_THRESHOLD	3
>   
> +#define DCMI_MIN_FREQ	650000 /* in KHz */
> +
>   struct dcmi_graph_entity {
>   	struct v4l2_async_subdev asd;
>   
> @@ -173,6 +176,10 @@ struct stm32_dcmi {
>   	struct media_device		mdev;
>   	struct media_pad		vid_cap_pad;
>   	struct media_pipeline		pipeline;
> +
> +	/* CPU freq contraint */
> +	struct cpufreq_policy		*policy;
> +	struct freq_qos_request		qos_req;
>   };
>   
>   static inline struct stm32_dcmi *notifier_to_dcmi(struct v4l2_async_notifier *n)
> @@ -736,11 +743,20 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
>   		goto err_release_buffers;
>   	}
>   
> +	if (dcmi->policy) {
> +		ret = freq_qos_add_request(&dcmi->policy->constraints,
> +					   &dcmi->qos_req, FREQ_QOS_MIN,
> +					   DCMI_MIN_FREQ);
> +
> +		if (ret < 0)
> +			goto err_pm_put;
> +	}
> +
>   	ret = media_pipeline_start(&dcmi->vdev->entity, &dcmi->pipeline);
>   	if (ret < 0) {
>   		dev_err(dcmi->dev, "%s: Failed to start streaming, media pipeline start error (%d)\n",
>   			__func__, ret);
> -		goto err_pm_put;
> +		goto err_drop_qos;
>   	}
>   
>   	ret = dcmi_pipeline_start(dcmi);
> @@ -835,6 +851,9 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
>   err_media_pipeline_stop:
>   	media_pipeline_stop(&dcmi->vdev->entity);
>   
> +err_drop_qos:
> +	if (dcmi->policy)
> +		freq_qos_remove_request(&dcmi->qos_req);
>   err_pm_put:
>   	pm_runtime_put(dcmi->dev);
>   
> @@ -863,6 +882,9 @@ static void dcmi_stop_streaming(struct vb2_queue *vq)
>   
>   	media_pipeline_stop(&dcmi->vdev->entity);
>   
> +	if (dcmi->policy)
> +		freq_qos_remove_request(&dcmi->qos_req);
> +
>   	spin_lock_irq(&dcmi->irqlock);
>   
>   	/* Disable interruptions */
> @@ -2020,6 +2042,8 @@ static int dcmi_probe(struct platform_device *pdev)
>   		goto err_cleanup;
>   	}
>   
> +	dcmi->policy = cpufreq_cpu_get(0);
> +
>   	dev_info(&pdev->dev, "Probe done\n");
>   
>   	platform_set_drvdata(pdev, dcmi);
> @@ -2049,6 +2073,9 @@ static int dcmi_remove(struct platform_device *pdev)
>   
>   	pm_runtime_disable(&pdev->dev);
>   
> +	if (dcmi->policy)
> +		cpufreq_cpu_put(dcmi->policy);
> +
>   	v4l2_async_notifier_unregister(&dcmi->notifier);
>   	v4l2_async_notifier_cleanup(&dcmi->notifier);
>   	media_entity_cleanup(&dcmi->vdev->entity);
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
