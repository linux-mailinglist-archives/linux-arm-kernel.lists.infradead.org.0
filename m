Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25431C9683
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fbe+gjThEgwPYX1P1cyeAy73umPKTm1nev5AsMq4qEk=; b=I/zUuyacYVXe0t
	LdRqKSed94wYujxcgHlynwE/1V4lhPKODuTQ+GxD2ovKbWwNyppUD17Wdho69k2q2PPKOMdowyLiu
	rJQcGSWNBNAf/AtmU+uQ4n8xUMR0HlzNytGdwRadWtI6d5C/x3TGtY0OUdZftqBDoAQVAs+CvBiuz
	xBIOtZwDKIWSru8+fj8DXRb9sZPaYqplvCh7YO/E4jeLkGR2VDznadfi7VpUeoLJOE0J+BdbNr+tE
	kWRqbtr3TGmKDUBbYslQL5uTQqoVphDgZqh4AkJ3YYmbWzhkT1r//241hsWfb6NisMYPmcijcBjpx
	6EztttebV6uuP4aZBU3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjOb-0004kR-V9; Thu, 07 May 2020 16:29:14 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjOT-0004jh-8d
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:29:07 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49HzRx5ZJCz1qs42;
 Thu,  7 May 2020 18:29:01 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49HzRx4gspz1qqlB;
 Thu,  7 May 2020 18:29:01 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id bmZHEHvEzhzn; Thu,  7 May 2020 18:29:00 +0200 (CEST)
X-Auth-Info: yT5Z5F9bmLbhtDZPO7V8nXU+IqinjDsvLub5s9qiqG4=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu,  7 May 2020 18:29:00 +0200 (CEST)
Subject: Re: [PATCH 12/12] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DHCOR SOM and AV96
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200429163743.67854-1-marex@denx.de>
 <20200429163743.67854-12-marex@denx.de>
 <20200507152616.GB2019@Mani-XPS-13-9360>
 <687cdc32-7486-1090-154b-58e711dd6a2a@denx.de>
 <80717706-6209-427D-B448-C99697490034@linaro.org>
From: Marek Vasut <marex@denx.de>
Message-ID: <97603d4d-3ef9-6c25-11b6-b2313d8e539c@denx.de>
Date: Thu, 7 May 2020 18:28:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <80717706-6209-427D-B448-C99697490034@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_092905_459289_52E285C1 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 5/7/20 6:05 PM, Manivannan Sadhasivam wrote:
> 
> 
> On 7 May 2020 9:03:08 PM IST, Marek Vasut <marex@denx.de> wrote:
>> On 5/7/20 5:26 PM, Manivannan Sadhasivam wrote:
>>
>> Hi,
>>
>> [...]
>>
>>>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>>>> index f43467b02bcd..b4a4d2b0f18e 100644
>>>> --- a/arch/arm/boot/dts/Makefile
>>>> +++ b/arch/arm/boot/dts/Makefile
>>>> @@ -1029,6 +1029,9 @@ dtb-$(CONFIG_ARCH_STM32) += \
>>>>  	stm32h743i-eval.dtb \
>>>>  	stm32h743i-disco.dtb \
>>>>  	stm32mp157a-avenger96.dtb \
>>>> +	stm32mp151a-dhcor-avenger96.dtb \
>>>> +	stm32mp153a-dhcor-avenger96.dtb \
>>>> +	stm32mp157a-dhcor-avenger96.dtb \
>>>
>>> I'm not really sure if keeping SoM name is a good practice here.
>> Since the
>>> board is sold as "Avenger96" alone, why do you want to prepend SoM
>> name to it?
>>> When you say, "stm32mp157a-avenger96.dtb" it obviously means that
>> Avenger96
>>> board uses the stm32mp157a SoC and that comes from SoM.
>>
>> That's because if you look at the other side of the AV96, you will
>> notice there is this other piece of PCB on it, that's the DHCOR SoM.
>> The
>> SoM is soldered on the AV96 carrier board. And only on that SoM is the
>> STM32MP15xx SoC.
>>
> 
> Yeah I know but what I was saying is that it is not the usual convention to put SoM name in board DTS. The DTS should reflect the actual product name. Here, the SoC prefix is justified since they reflect the family/SoC name and used as a differentiation factor. But using SoM name seems redundant. 
> 
> You can use SoM name if there are chances where different family of SoM can be used on the base board, thereby making it as a differentiation factor. 

There are other SoCs on the DHCOR SoM form factor, I think MX6ULL, so
technically you can populate a different one on the AV96.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
