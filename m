Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C971199A25
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqQW9oUcK2xX/4e71b2TMwlMD54pm9L+44qzQlY+EX8=; b=AjayTizaG5u3bk
	uZGfJjqdWDHpgyQFs/ANzReTfdZWR6b/NFq1GQPsIFpxpSTkc7bRXwGLzn+EkNDamKZWwX1KdoQNu
	y+N0rxBRPPAtUw0NOMbOkLwRzrrrZIzqEnXEUTMVLKFhDCk50b3gWxbyk+i5TeIF40n3KJ8kiUTJk
	LSzicEmesxrcSllBr/EzcZKk7jDuXtrw9nxhLeEEli209sH8J56YXKbRIuOt0yXxozmy8+T36mi5W
	AuExrCxwJnXZRN7cGLbX1iP2bhnY7rgIidf6nlPBIAOuTjVZFDyvMlMc/doRhCJRzOze6sxbZUzBD
	ctTYZ+aASkreXJpL9MyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ6k-0005jr-VU; Tue, 31 Mar 2020 15:47:18 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ5t-00055T-Gf
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:46:27 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sDFq0h94z1qs16;
 Tue, 31 Mar 2020 17:46:23 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sDFp6y5pz1qqkr;
 Tue, 31 Mar 2020 17:46:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 7FGgKhG08lwm; Tue, 31 Mar 2020 17:46:21 +0200 (CEST)
X-Auth-Info: 6PDjX38I1uk1B+i/nr1FB6E7pCXnYBd7E9+zSYNLJqw=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 17:46:21 +0200 (CEST)
Subject: Re: [PATCH V2 08/22] ARM: dts: stm32: Add eMMC attached to SDMMC2 on
 AV96
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-9-marex@denx.de>
 <20200331044321.GJ14274@Mani-XPS-13-9360>
From: Marek Vasut <marex@denx.de>
Message-ID: <d345b93c-af3c-38f4-7644-82c525625af5@denx.de>
Date: Tue, 31 Mar 2020 17:46:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200331044321.GJ14274@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_084625_712665_BC7B31FD 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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

On 3/31/20 6:43 AM, Manivannan Sadhasivam wrote:
> On Tue, Mar 31, 2020 at 02:56:47AM +0200, Marek Vasut wrote:
>> Add DT node describing the eMMC attached to SDMMC2 controller
>> of the STM32MP1 on DHCOR SoM, which is the SoM soldered on AV96.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> Cc: Alexandre Torgue <alexandre.torgue@st.com>
>> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>> Cc: Patrice Chotard <patrice.chotard@st.com>
>> Cc: Patrick Delaunay <patrick.delaunay@st.com>
>> Cc: linux-stm32@st-md-mailman.stormreply.com
>> To: linux-arm-kernel@lists.infradead.org
>> ---
>> V2: No change
>> ---
>>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 15 +++++++++++++++
>>  1 file changed, 15 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>> index 04280353fdbe..6c34a003c3f6 100644
>> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
>> @@ -333,6 +333,21 @@ &sdmmc1 {
>>  	status = "okay";
>>  };
>>  
>> +&sdmmc2 {
>> +	pinctrl-names = "default", "opendrain", "sleep";
>> +	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_b>;
>> +	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_b>;
>> +	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_b>;
>> +	bus-width = <8>;
>> +	mmc-ddr-1_8v;
>> +	no-sd;
>> +	no-sdio;
>> +	non-removable;
>> +	st,neg-edge;
>> +	vmmc-supply = <&v1v8>;
> 
> As per the latest schematics, vmmc supply is 3v3 and vqmmc supply is 1v8.
> With that fixed,

Oh sigh, this actually exposes an issue in mmci driver, thanks for
pointing this out.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
