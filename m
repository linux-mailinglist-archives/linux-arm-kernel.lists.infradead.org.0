Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81A510B302
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 17:14:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+BNK3yHpnglVEBlzffUIHw8a0IxZwqjdJJuzTpn9ny8=; b=YRdRnVgVmAqtgk2TmNXQtl/74b
	pdCpCtlyj9wpZhDZy+KMXnUqFo0fVfNYzt5nbynhVKOa+1L2vxc2txxm9PWW5OupNK/9Rhvt6xG+4
	59kWiQGKutmJZ9kXkOu6nxN/h8bHI1+DxR94sWIPmBmSCGMt0lQQFkbRwu4SCUj9c5da6acqGOic9
	EQS93JE3WGhFeLxTYPnSwvv3EZRDv/3jaSF1CJmecEPSHQvYvOsWmogxc26e0DqkpC6T1EUrVRS4x
	3AdtRWlYT75Pr9Qe1n9OOVm3HtEU13JfQCsLpdE/tAYGXjG4+MLbhNhbk6FAdaBgzIMJWz713BDMd
	9jmfh7tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZzx0-0006jz-Bj; Wed, 27 Nov 2019 16:13:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZzwi-0006Zp-W0
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 16:13:42 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARGD2Gk022984; Wed, 27 Nov 2019 17:13:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=N0R/5k+FQrkEg1dliWlCmRaXaD6fZGnSUrPITJyt5O8=;
 b=xbNrJBvQ3ZXlZPs5VVE6ycWuq5hugyng9abUhyfuQDpbZRhmZnbVhsyTVmUsgXJh5RyJ
 scZ/L/7SXKnbOmj0mxHPiG0LwHhqnPz6A/qncuxwq8CbKY+of7epL69WY9RA2SToyP+m
 Dzt3Zn/Ro8UesSm1j7mHBW+3Wl3u176sPhGETzH6sKT4UKjikvG6ny5iWn92S0A2hXrC
 7b8vOpYXegWERMimUiWKT2e86REc0ayLuGc/sWQb/NixXlQGR3Y3khzkMMDl7/reTMBe
 fzRO1Dp6E9kDhQCwqEUiCEA6DjlGDbValedxYwyP9mnmV+Z2nQCfknjG6rUxVR9ysFrT pA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2whcxj4ktm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 17:13:14 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4721E100038;
 Wed, 27 Nov 2019 17:13:14 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 36DF92C38D5;
 Wed, 27 Nov 2019 17:13:14 +0100 (CET)
Received: from [10.48.0.192] (10.75.127.46) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 27 Nov
 2019 17:13:13 +0100
Subject: Re: [PATCH v2] iio: adc: stm32-dfsdm: fix single conversion
To: Olivier Moysan <olivier.moysan@st.com>, <jic23@kernel.org>,
 <knaack.h@gmx.de>, <lars@metafoo.de>, <pmeerw@pmeerw.net>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>
References: <20191127130729.18511-1-olivier.moysan@st.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <114f6002-9577-52b2-0482-5350effda3e4@st.com>
Date: Wed, 27 Nov 2019 17:13:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191127130729.18511-1-olivier.moysan@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_04:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_081341_325087_27AE6163 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/27/19 2:07 PM, Olivier Moysan wrote:
> Apply data formatting to single conversion,
> as this is already done in continuous and trigger modes.
> 
> Fixes: 102afde62937 ("iio: adc: stm32-dfsdm: manage data resolution in trigger mode")
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Hi Olivier,

Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Thanks,
Fabrice

> ---
> changes in version 2:
> - correct title
> ---
>  drivers/iio/adc/stm32-dfsdm-adc.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index e493242c266e..0339ecdd06bd 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -1204,6 +1204,8 @@ static int stm32_dfsdm_single_conv(struct iio_dev *indio_dev,
>  
>  	stm32_dfsdm_stop_conv(adc);
>  
> +	stm32_dfsdm_process_data(adc, res);
> +
>  stop_dfsdm:
>  	stm32_dfsdm_stop_dfsdm(adc->dfsdm);
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
