Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E77C124514
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:53:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBNVIzBEtD9l9wbVtmF5T4B2bIQwbpO/uIVp9wlGNwI=; b=lPvPhlrlwrby9i
	W+D3Ax8XXbtrrTrmDNFQNun436fDk2usG3fDv1V1wvLHLrOEo3y8TvzIq7ybnowCzm/5SJC2OxQVy
	bMNOr4DrfLpGyI72BNYSIHncVQgnO9vU4K1ttZmScpbtOJpraYhOIKbdiuD+aWEGvOEQmgtCDAtxp
	staKvCgfcasBzQfL5Hh7ZSOJEGOJGEhA6+jWEAN+zGGxQ3/6xB9sVNsN7ATR3Qh62UG8yg71Hr7zQ
	ZINXRQm11XgbCKmC+uP565ucjVHPbwHPeI7lefEXL4mp7nvfiADiH332puGgidaL+sxnjMmRNaMzE
	mjMW8a+Pvjb908ZQDd6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWxC-0000xd-3s; Wed, 18 Dec 2019 10:53:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWx2-0000wr-RP
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:53:10 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBIAgTQb021020; Wed, 18 Dec 2019 11:53:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=WltQl+Nrsz8fgtBLEjjq7GsetJKHtSnm0grD1Qcbr9Y=;
 b=PImSGWa9eBzHSdxhKgcdjhReUg9+BmUiNMAmwZuGTRHVfIqMSR5chg+152B+leibrTKg
 v7nFMfenJhyBu1eydlGEY+6TG4lCSvA7RIXy0eMNQYHNXEi31KIe7j3YcoTThxiy9baG
 aeG59XpksS9bmDjAVsN75SH5sAENi2dT5Q6luydI3RsvoSFyNv0hJQXIj17NKWdFS0KS
 7G+jS4G+xSbQI8f7D844N1As5coVNhIxPXSkd0A2vJYCTnKcRJ4Vx5j8xzEw5QzbPvV8
 SldnwEbaiF403JoErbqRbKkANsJ+iExkjRfLrXmymY7FJtkDq1ID+uh3rePR31sCMOXq Cg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wvnrekyw1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Dec 2019 11:53:00 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2777D10002A;
 Wed, 18 Dec 2019 11:52:54 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 087AB2A8BF8;
 Wed, 18 Dec 2019 11:52:54 +0100 (CET)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 18 Dec
 2019 11:52:53 +0100
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Wed, 18 Dec 2019 11:52:53 +0100
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>
Subject: Re: [PATCH] media: stm32-dcmi: Use dma_request_chan() instead
 dma_request_slave_channel()
Thread-Topic: [PATCH] media: stm32-dcmi: Use dma_request_chan() instead
 dma_request_slave_channel()
Thread-Index: AQHVtMaOm1nAskP+t06Lg3ivGfEhOKe/qEeA
Date: Wed, 18 Dec 2019 10:52:53 +0000
Message-ID: <84946ffd-8e90-7b6a-6667-a10e27d31655@st.com>
References: <20191217104135.23554-1-peter.ujfalusi@ti.com>
In-Reply-To: <20191217104135.23554-1-peter.ujfalusi@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <8055C0FD5DE0F440A5AA37D71102D704@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-18_02:2019-12-17,2019-12-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_025309_281725_B44E3F55 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for patching Peter,

No regression observed on my side.

Acked-by: Hugues Fruchet <hugues.fruchet@st.com>

Best regards,
Hugues.

On 12/17/19 11:41 AM, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>   drivers/media/platform/stm32/stm32-dcmi.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> index 9392e3409fba..55351872b0c7 100644
> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> @@ -1910,10 +1910,10 @@ static int dcmi_probe(struct platform_device *pdev)
>   		return PTR_ERR(mclk);
>   	}
>   
> -	chan = dma_request_slave_channel(&pdev->dev, "tx");
> -	if (!chan) {
> +	chan = dma_request_chan(&pdev->dev, "tx");
> +	if (IS_ERR(chan)) {
>   		dev_info(&pdev->dev, "Unable to request DMA channel, defer probing\n");
> -		return -EPROBE_DEFER;
> +		return PTR_ERR(chan);
>   	}
>   
>   	spin_lock_init(&dcmi->irqlock);
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
