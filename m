Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D54F2199A23
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFSuDbJj5zsquJa5Wmo1652SHil6UZ5IaVDHDttaC24=; b=fluOd9o3UlCHIt
	To+SHqXPJdtH3cLWWZZ58IVvJJLHTr0oc42Fak159g+gKvtOqfl7vDNmiu/H1+6ajWOI2eXCY/cso
	x+3m0abNwN8cL8F5epll0R8wgcLwOGzpqPM6E+GV4jRDKUlTK9pjGxoWFd1TpfPJNxMtA29n3OidK
	sGJxMvYZQrwqTDGdVwYraUEUIBd8otCtqpwZJBGg+a452LHIYNYscBOGwORXGNHLZ8LSsF0AKBcl5
	EtpmNCqAOBYyA9c7DuAgmP62cJbEl8eABX2eLYuCxFsDTahR8ZqxgaRgtn2ouKq+XwQgESEB8m2m6
	vhSSXJ2LRJmDqHKo2xbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ6J-0005LI-Dw; Tue, 31 Mar 2020 15:46:51 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ5M-0004cT-VI
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:45:55 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sDF93F6Kz1rx8R;
 Tue, 31 Mar 2020 17:45:49 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sDF92YrCz1qqkQ;
 Tue, 31 Mar 2020 17:45:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id G5lEG8q2QQ-u; Tue, 31 Mar 2020 17:45:48 +0200 (CEST)
X-Auth-Info: ClMjv80Pldl0Xh5Y2v65d7Wuge/SQFdxJX1hKfa+Tpc=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 17:45:47 +0200 (CEST)
Subject: Re: [PATCH V2 06/22] ARM: dts: stm32: Repair SDMMC1 operation on AV96
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-7-marex@denx.de>
 <20200331043338.GH14274@Mani-XPS-13-9360>
 <4936af1c-6bdf-de5a-c86e-07e52417cdec@denx.de>
 <20200331140243.GB17755@Mani-XPS-13-9360>
From: Marek Vasut <marex@denx.de>
Message-ID: <f5884da1-6050-78f9-e7a4-71561dee548b@denx.de>
Date: Tue, 31 Mar 2020 17:45:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200331140243.GB17755@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_084553_339832_CBBD55A5 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 3/31/20 4:02 PM, Manivannan Sadhasivam wrote:
> On Tue, Mar 31, 2020 at 03:36:34PM +0200, Marek Vasut wrote:
>> On 3/31/20 6:33 AM, Manivannan Sadhasivam wrote:
>>> On Tue, Mar 31, 2020 at 02:56:45AM +0200, Marek Vasut wrote:
>>>> The SD uses different pinmux for the D123DIRline, use such a pinmux,
>>>> otherwise there is a pinmux collision on the AV96. Add missing SD
>>>> voltage regulator switch.
>>>>
>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>>> Cc: Alexandre Torgue <alexandre.torgue@st.com>
>>>> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>>>> Cc: Patrice Chotard <patrice.chotard@st.com>
>>>> Cc: Patrick Delaunay <patrick.delaunay@st.com>
>>>> Cc: linux-stm32@st-md-mailman.stormreply.com
>>>> To: linux-arm-kernel@lists.infradead.org
>>>> ---
>>>> V2: Disable SDR104, it seems unstable thus far
>>>> ---
>>>>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 21 ++++++++++++++++++---
>>>>  1 file changed, 18 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>>>> index e58653ccb60f..04280353fdbe 100644
>>>> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>>>> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>>>> @@ -77,6 +77,20 @@ led6 {
>>>>  			default-state = "off";
>>>>  		};
>>>>  	};
>>>> +
>>>> +	sd_switch: regulator-sd_switch {
>>>> +		compatible = "regulator-gpio";
>>>> +		regulator-name = "sd_switch";
>>>> +		regulator-min-microvolt = <1800000>;
>>>> +		regulator-max-microvolt = <2900000>;
>>>> +		regulator-type = "voltage";
>>>> +		regulator-always-on;
>>>> +
>>>> +		gpios = <&gpioi 5 GPIO_ACTIVE_HIGH>;
>>>> +		gpios-states = <0>;
>>>> +		states = <1800000 0x1>,
>>>> +			 <2900000 0x0>;
>>>> +	};
>>>>  };
>>>>  
>>>>  &ethernet0 {
>>>> @@ -305,9 +319,9 @@ &rtc {
>>>>  
>>>>  &sdmmc1 {
>>>>  	pinctrl-names = "default", "opendrain", "sleep";
>>>> -	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_a>;
>>>> -	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
>>>> -	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
>>>> +	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_b>;
>>>> +	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_b>;
>>>> +	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_b>;
>>>>  	cd-gpios = <&gpioi 8 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
>>>
>>> The "cd-gpios" change is not present in mainline. I think you can add it to
>>> this patch as well with relevant commit description.
>>
>> What change to cd-gpios ? This patch doesn't change cd-gpios.
> 
> This cd-gpios change is not present in mainline and also there seems to be few
> other properties which got added (probably by another patch?). So this doesn't
> apply on top of mainline/master.

This series is based on next/master .

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
