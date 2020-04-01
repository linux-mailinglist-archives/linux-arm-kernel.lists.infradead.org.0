Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E04919A7D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ULFVQ11COOpf9RFOlVv6mJx/ZL7FpfHA8oktK//jiQ=; b=NILh1vsUGgXilf
	F2bANopzh13PxSd47YcIeOHHao0rfEn6UinLKig92rZhlNy1nKKNkbhx7YCFGEsBvprgsOwZ/YYo6
	oxGAQWMo14roHrfgpuywa/Er0Bg1kvM0963hrcp7a6fO4QoStSfW/PGfysUbATptEZNgVw3Y1Cva8
	TATo7uEkuDfpyIixQmH80AKUvKleIq5+Aepp80SHg0mcJL2zMPLAer0oDQfmD+jUPpn7GGYl+evqF
	P0tItzPOEbIvpmNohp70+lKEVrAJ6iwzcrMHwi9FKRK2u3NKFdqvqwjkdHc8jgt5FseONxleLUq7E
	m0Z6cG8pxRIz6EEd7MXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZ6p-0008Pw-Cq; Wed, 01 Apr 2020 08:52:27 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZ6f-0008PJ-Fx
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:52:18 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0318mpWe009234; Wed, 1 Apr 2020 10:52:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=vu4qQWypR0pvt6vGhb+hu2zbxKSw9Xfk1eNnrYVVjv0=;
 b=Bz5kj7thRXHC1yRZ1OgULStYl0DaHIznaEan7Ase11XZ1sc9x8sL7teQc1JFPLYC+Im5
 ifwjAyXEU4WWfr+xelyILT9/TCw9fs3cPj4b0qa5KGOxye+GGeXJR2ULwEPb4X47SX9t
 MzH+MNq+jLX4/u0PMZlqgmMm0yb05L+/kiP/6hsNpPkusGJE8HITAXqbm9fZA8rkMC0T
 WJVyPRhnF1NTRjmxdz2YmS8UYxJjaSgfyGQBuH1Q1dPA/EUG4Y+YQBpQT7Qyoj1YaE7K
 OH/5wYFFf9UgZdHli+ae7HRf7epZfstEz92URSCMMXHK8pHxRS0xREIzT9ISQbWMlG7K mQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 302y53x4nc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 10:52:08 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2C7B510002A;
 Wed,  1 Apr 2020 10:52:08 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1D83021D6CB;
 Wed,  1 Apr 2020 10:52:08 +0200 (CEST)
Received: from [10.211.14.17] (10.75.127.46) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 1 Apr
 2020 10:52:06 +0200
Subject: Re: [PATCH v6 3/6] mfd: stm32: Add defines to be used for clkevent
 purpose
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <lee.jones@linaro.org>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
References: <20200401083909.18886-1-benjamin.gaignard@st.com>
 <20200401083909.18886-4-benjamin.gaignard@st.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <a4be2faf-a698-6fa9-9280-940955b74d5c@st.com>
Date: Wed, 1 Apr 2020 10:52:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200401083909.18886-4-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_015217_822536_72C2C5EF 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
> Add defines to be able to enable/clear irq and configure one shot mode.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> Acked-by: Lee Jones <lee.jones@linaro.org>
> ---
>  include/linux/mfd/stm32-lptimer.h | 5 +++++
>  1 file changed, 5 insertions(+)

Hi Benjamin,

Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Thanks,
Fabrice

> 
> diff --git a/include/linux/mfd/stm32-lptimer.h b/include/linux/mfd/stm32-lptimer.h
> index 605f62264825..90b20550c1c8 100644
> --- a/include/linux/mfd/stm32-lptimer.h
> +++ b/include/linux/mfd/stm32-lptimer.h
> @@ -27,10 +27,15 @@
>  #define STM32_LPTIM_CMPOK		BIT(3)
>  
>  /* STM32_LPTIM_ICR - bit fields */
> +#define STM32_LPTIM_ARRMCF		BIT(1)
>  #define STM32_LPTIM_CMPOKCF_ARROKCF	GENMASK(4, 3)
>  
> +/* STM32_LPTIM_IER - bit flieds */
> +#define STM32_LPTIM_ARRMIE	BIT(1)
> +
>  /* STM32_LPTIM_CR - bit fields */
>  #define STM32_LPTIM_CNTSTRT	BIT(2)
> +#define STM32_LPTIM_SNGSTRT	BIT(1)
>  #define STM32_LPTIM_ENABLE	BIT(0)
>  
>  /* STM32_LPTIM_CFGR - bit fields */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
