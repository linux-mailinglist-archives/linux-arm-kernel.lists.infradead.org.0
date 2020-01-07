Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C011327E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 14:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlI3iecRbDoS+3qMVkXCuwFTQpnr7XtEhCCO6g72yeo=; b=GCfztWhHgMRTTB
	bsfyPnOGUtRYvn60frR/8HsfRU6e2v4sOMHHmZs9Y1vQ9VwYga70/v7lbG5dQXQN1A/EiSm77rvw6
	BiLPiURrcbLzBeGIRytTS64zkpBOKr42doRrn0wmYbv1UPekanxhZlb0TSnScp1A5W/23XK1cPz88
	BDVPorYppWYL0Ve3UcAV+mtk2Oinblvi3N/YazKh0F8iNIOgjDfuHZ4/AYbZXHTA7Tvb3p3iVzmEg
	CvyECgqlprYYtczP5g5QsnfC0QZqnU9eS+ErxzJdV+3qp4lqOMF4hOJfiVR9ReNsbX1B7YSc+rkE8
	EesidDuGgZk2ewfdBiaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iop4f-0005vy-1w; Tue, 07 Jan 2020 13:39:09 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iop4Y-0005vA-3w
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 13:39:03 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 007DcqWo009126; Tue, 7 Jan 2020 14:38:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=hrhmpFzlfUlO5AOZGZPbwj2tFWCn5tB6qmmLQMyDAvU=;
 b=Nb8o6FmjHWuJtzNAQHb4fyuaOxive3FlitALbHr7WkGNLsn8lH9bd9QPKoiUgO7uGWII
 UX9hZHyxacfr/ONER4JPa+NjhmMmxeVU/KaXOiCCrkSQaYd8CTq0IrBw5S2/Tt2qKIkX
 ixojBNZPXSlIpOvTTCATjON/ekoA+8LIAvTcvJ5bmVFEvcHcZzNa+d4SNr+MFsI6G286
 gxUJNj+Gso7qoKV8Cu5jOs7LjWXt0Tz1vYJ+uwZ/C+9is37YkkG4tpBm3BCj5xW9WFdT
 vC/ts3sQwgIQUZ9XAGO15F3hVxv5aC4Mm9Lsm2JE9o4XkhKt+JT0LC21E0flD5eNA7SR vQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2xakvb6hgb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 14:38:58 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5F30510002A;
 Tue,  7 Jan 2020 14:38:57 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4F0E12AD2CF;
 Tue,  7 Jan 2020 14:38:57 +0100 (CET)
Received: from SFHDAG5NODE2.st.com (10.75.127.14) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 7 Jan
 2020 14:38:56 +0100
Received: from SFHDAG5NODE2.st.com ([fe80::1cb5:6767:370b:9af0]) by
 SFHDAG5NODE2.st.com ([fe80::1cb5:6767:370b:9af0%20]) with mapi id
 15.00.1473.003; Tue, 7 Jan 2020 14:38:57 +0100
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>
Subject: Re: [PATCH v2] media: stm32-dcmi: Use dma_request_chan() instead
 dma_request_slave_channel()
Thread-Topic: [PATCH v2] media: stm32-dcmi: Use dma_request_chan() instead
 dma_request_slave_channel()
Thread-Index: AQHVxVGbHPd1NuwJTkW5aQNGUInX/KffJDYA
Date: Tue, 7 Jan 2020 13:38:56 +0000
Message-ID: <bd907564-4d1b-b0b9-f73a-0f7095974487@st.com>
References: <20200107115253.8351-1-peter.ujfalusi@ti.com>
In-Reply-To: <20200107115253.8351-1-peter.ujfalusi@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <4BB28C0379F2FE4CA71ECF47693910DA@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-07_03:2020-01-06,2020-01-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_053902_443271_BEC4AD71 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Acked-by: Hugues Fruchet <hugues.fruchet@st.com>

On 1/7/20 12:52 PM, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
> Hi,
> 
> Changes since v1:
> - Do not print error for EPROBE_DEFER
> 
> Regards,
> Peter
> 
>   drivers/media/platform/stm32/stm32-dcmi.c | 11 +++++++----
>   1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
> index 9392e3409fba..b63ff8d636ce 100644
> --- a/drivers/media/platform/stm32/stm32-dcmi.c
> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> @@ -1910,10 +1910,13 @@ static int dcmi_probe(struct platform_device *pdev)
>   		return PTR_ERR(mclk);
>   	}
>   
> -	chan = dma_request_slave_channel(&pdev->dev, "tx");
> -	if (!chan) {
> -		dev_info(&pdev->dev, "Unable to request DMA channel, defer probing\n");
> -		return -EPROBE_DEFER;
> +	chan = dma_request_chan(&pdev->dev, "tx");
> +	if (IS_ERR(chan)) {
> +		ret = PTR_ERR(chan);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(&pdev->dev,
> +				"Failed to request DMA channel: %d\n", ret);
> +		return ret;
>   	}
>   
>   	spin_lock_init(&dcmi->irqlock);
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
