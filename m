Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F341C95F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpWKsmGErfhBtKgxpq6lyEsX/vUwcdE0KK4aOkogIVA=; b=JdJDUseC6otAJn
	T4VETvMP6L709Y5KtYRA5OEWZDIXAjk9Iv2nZNRt8I7puglaYXjBnd0ry7DZRHd93lL/Tz7QffHkh
	LXLIB//0bURm1h+Gb+BgBacMoi01V/fMx7vvcZjACPHlEst4qUWVjELcrMS1nVzbg/AWHmXKaZEql
	UFSJWLXM481QAq+wQtR74zwM9G7CQ9A09oosb2XjQtr43LuJ3SlcWh7uoLX/cVh48DET01SfhucxZ
	QGkjSQ3H4hJL0u6yiPOyZA2o4INEw3Wa02CIzWBhN6VXzAHZCgCp0xV/79olAVcJVuruvP5BvQV/+
	eedFQ2KCp+r6Qlhylh1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWj1l-0001zX-9r; Thu, 07 May 2020 16:05:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWj1c-0001yS-3A
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:05:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id b8so2102136plm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 09:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=shAx5fmUY4GBiMpF4nsPgUiuKRCBDJJg9eU0A1S+7bw=;
 b=itgDhdC+fvDcYDxcSpsVDa/dn3YwaDgPOw5TBf2ASh/q13tAIoOMkUTP7ardWb7ke2
 uWM1TainBuc7kEjn+V8qCjH8VOEXPwAZ2aMwK38vB8wFjrk3/ckxg6LJLqZGZfCxTALI
 9sNb7i0tnAcnxI+bd7YhYOTQS/ngbI9eSkU2qpVM53Y+4Z8cVOc4aLHHox726QfhK0fZ
 RPRXLDH9pii+4mgH6S6AdfFeyXOzUy7+7laapFa2Ds349cD/MFiJzcQ8cmGyIm3MsWOA
 J/JIpGJmSF6WZCR3V2rWQegNIH6Em09FypboA5B+6Ibs4slYh/6ZkO+l2jYr+favPKJy
 DgLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:cc:from
 :message-id;
 bh=shAx5fmUY4GBiMpF4nsPgUiuKRCBDJJg9eU0A1S+7bw=;
 b=hbsbHbVD3iLS2xzM1XrzN1aoJFb1ZCsDhbTHcOmX8z5GbBRwYN3jSZnSZHDiNhXMgo
 wQI5piSsmz0uRUlW0wNg/wNsLHWiAfCENiJkuh2BrEfeLI8Oon5Tzm1NrdI04QL5Qt9t
 R/p99U0MwPkoBDdc407ICZQxBYJucYyOJk/X7wLh/03ayzatRjrwPVoQ3Tn9Pc1K+JAl
 lfIWSsTIVWFtB7Uh4caNon56GvvJnocEmJdqyD8/8Q7e4KX0+j/ZE7SO+xtrZ/dzaLKJ
 u349gTSFb1QdRRbkg6e7gwohqS0IisEsTN+9caOcM0hoDNQPDUlx5tO/kY0Bplq0K5jS
 rS0Q==
X-Gm-Message-State: AGi0PuYbxVsBHdOEfrFbunNipAWl1YJUEhzm+qa5ejaeYIWwCH3wukVG
 dirmFo0rR8YQ4kHtUwAQUrjt7lE4Cw==
X-Google-Smtp-Source: APiQypJ3rnUlbjfGFLhJy9yib9DTFtLKFe6k/yM6zILzyCHII57dyUj5pBSBbGllSlAtiKjughxC9w==
X-Received: by 2002:a17:902:347:: with SMTP id
 65mr14179711pld.21.1588867527216; 
 Thu, 07 May 2020 09:05:27 -0700 (PDT)
Received: from ?IPv6:2409:4072:6e0f:c0c0:7d3e:c269:b7ed:651a?
 ([2409:4072:6e0f:c0c0:7d3e:c269:b7ed:651a])
 by smtp.gmail.com with ESMTPSA id d35sm3991469pgd.29.2020.05.07.09.05.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 09:05:26 -0700 (PDT)
Date: Thu, 07 May 2020 21:35:17 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <687cdc32-7486-1090-154b-58e711dd6a2a@denx.de>
References: <20200429163743.67854-1-marex@denx.de>
 <20200429163743.67854-12-marex@denx.de>
 <20200507152616.GB2019@Mani-XPS-13-9360>
 <687cdc32-7486-1090-154b-58e711dd6a2a@denx.de>
MIME-Version: 1.0
Subject: Re: [PATCH 12/12] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DHCOR SOM and AV96
To: Marek Vasut <marex@denx.de>
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Message-ID: <80717706-6209-427D-B448-C99697490034@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_090530_889148_B9761C6A 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7 May 2020 9:03:08 PM IST, Marek Vasut <marex@denx.de> wrote:
>On 5/7/20 5:26 PM, Manivannan Sadhasivam wrote:
>
>Hi,
>
>[...]
>
>>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>>> index f43467b02bcd..b4a4d2b0f18e 100644
>>> --- a/arch/arm/boot/dts/Makefile
>>> +++ b/arch/arm/boot/dts/Makefile
>>> @@ -1029,6 +1029,9 @@ dtb-$(CONFIG_ARCH_STM32) += \
>>>  	stm32h743i-eval.dtb \
>>>  	stm32h743i-disco.dtb \
>>>  	stm32mp157a-avenger96.dtb \
>>> +	stm32mp151a-dhcor-avenger96.dtb \
>>> +	stm32mp153a-dhcor-avenger96.dtb \
>>> +	stm32mp157a-dhcor-avenger96.dtb \
>> 
>> I'm not really sure if keeping SoM name is a good practice here.
>Since the
>> board is sold as "Avenger96" alone, why do you want to prepend SoM
>name to it?
>> When you say, "stm32mp157a-avenger96.dtb" it obviously means that
>Avenger96
>> board uses the stm32mp157a SoC and that comes from SoM.
>
>That's because if you look at the other side of the AV96, you will
>notice there is this other piece of PCB on it, that's the DHCOR SoM.
>The
>SoM is soldered on the AV96 carrier board. And only on that SoM is the
>STM32MP15xx SoC.
>

Yeah I know but what I was saying is that it is not the usual convention to put SoM name in board DTS. The DTS should reflect the actual product name. Here, the SoC prefix is justified since they reflect the family/SoC name and used as a differentiation factor. But using SoM name seems redundant. 

You can use SoM name if there are chances where different family of SoM can be used on the base board, thereby making it as a differentiation factor. 

Thanks, 
Mani

>>>  	stm32mp157a-dk1.dtb \
>>>  	stm32mp157c-dhcom-pdk2.dtb \
>>>  	stm32mp157c-dk2.dtb \
>>> diff --git a/arch/arm/boot/dts/stm32mp151a-dhcor-avenger96.dts
>b/arch/arm/boot/dts/stm32mp151a-dhcor-avenger96.dts
>>> new file mode 100644
>>> index 000000000000..0f3875fbdd73
>>> --- /dev/null
>>> +++ b/arch/arm/boot/dts/stm32mp151a-dhcor-avenger96.dts
>>> @@ -0,0 +1,9 @@
>>> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>>> +/*
>>> + * Copyright (C) 2020 Marek Vasut <marex@denx.de>
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "stm32mp151a-dhcor-som.dtsi"
>>> +#include "stm32mp15xa-dhcor-avenger96.dtsi"
>> 
>> [...]
>> 
>>> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>>> index 10f11ca53c7d..dc3bbd576756 100644
>>> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>>> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>>> @@ -1,421 +1,9 @@
>>>  // SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>>>  /*
>>> - * Copyright (C) Linaro Ltd 2019 - All Rights Reserved
>>> - * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>
>That's fixed in the other submission, sorry.

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
