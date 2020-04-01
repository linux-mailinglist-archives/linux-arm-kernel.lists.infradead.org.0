Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD4B19A7D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+37nXBlvQy9Ws0hGH4PwSuGJ6fzm8yVaYURTCxW4sI=; b=FdMcx/y3D8YE42
	1O61qWtAqsqBBLwP8nND3Vz6rJ/Fs/lTGgWgWb/6LUMX+vK4QxksGM4fi69oWsWPtEti9S6mq0Jlv
	SnwXWugslUYvyN1cjn+5IMFW0Zc4qWszsVU9tM1xHZCbUVmID00NOeir0aUSwfoFlyQD+byfBrlYO
	EYK29g4R928tSXL9TgYt0OueV10YCdMFY71lrb1Qu9ShvagHq/AzpJx3CJ+osCy4JMl+LUnwyiZfy
	XipOaYAI5kcyJfDvsYvhbZcSBMDU4a777tnF3zTWzHk2fmpDkckJ65j0cP/yqn2MzxRHprDbIqO8m
	BP64EbkZPap8rIaoEpyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZ76-0000D1-R1; Wed, 01 Apr 2020 08:52:44 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZ6w-0000BY-EA
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:52:35 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0318mpeP020674; Wed, 1 Apr 2020 10:52:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=r52PE0j1vMBkkUz5Eegf2p3sdm+5DC8eaQV1TiyeLGc=;
 b=FKKmCM/2e0k3XoRM0JKKuHFS2qqrsvmHjmUccd+uxE4Ew0LCbN9KoV0O1Tj5tVpM3KV+
 lNFxoVqXzamJb+sQAVbXSq+hZdZOm89oGFjXbZ8MfQCnmqQnSLr8/DqFBUP+cFwglzKc
 SPJTxchaIbiSbBRyhyIiSHwnkzzG6K87sG4RiBGw4jhZn6kB5cdjOCwHQTXGxpE+teb4
 mDKtb8K+Q78N0SU6eFj+bjiUvQGj/DhC735mYO6WEFoK3NZwL9FCwazdzWd6ke/BSWx5
 DWamg2/bzA2cqAK1BIbq07ZDH6uATLWCWzTYsTI38t5Lzv22YwNcYmOGjQUH27IZWOHc HQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301xbmm00j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 10:52:24 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7E61B100039;
 Wed,  1 Apr 2020 10:52:22 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 695BA21D6CC;
 Wed,  1 Apr 2020 10:52:22 +0200 (CEST)
Received: from [10.211.14.17] (10.75.127.47) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 1 Apr
 2020 10:52:21 +0200
Subject: Re: [PATCH v6 4/6] mfd: stm32: enable regmap fast_io for stm32-lptimer
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <lee.jones@linaro.org>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
References: <20200401083909.18886-1-benjamin.gaignard@st.com>
 <20200401083909.18886-5-benjamin.gaignard@st.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <4ca5f15f-c967-9c84-4a9f-13a11f71a72a@st.com>
Date: Wed, 1 Apr 2020 10:52:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200401083909.18886-5-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_015234_766183_FD10F4C0 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/1/20 10:39 AM, Benjamin Gaignard wrote:
> Because stm32-lptimer need to write in registers in interrupt context
> enable regmap fast_io to use a spin_lock to protect registers access
> rather than a mutex.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  drivers/mfd/stm32-lptimer.c | 1 +
>  1 file changed, 1 insertion(+)
Hi Benjamin,

Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Thanks,
Fabrice
> 
> diff --git a/drivers/mfd/stm32-lptimer.c b/drivers/mfd/stm32-lptimer.c
> index a00f99f36559..746e51a17cc8 100644
> --- a/drivers/mfd/stm32-lptimer.c
> +++ b/drivers/mfd/stm32-lptimer.c
> @@ -17,6 +17,7 @@ static const struct regmap_config stm32_lptimer_regmap_cfg = {
>  	.val_bits = 32,
>  	.reg_stride = sizeof(u32),
>  	.max_register = STM32_LPTIM_MAX_REGISTER,
> +	.fast_io = true,
>  };
>  
>  static int stm32_lptimer_detect_encoder(struct stm32_lptimer *ddata)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
