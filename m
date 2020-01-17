Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4637C140A31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzLAa40BJWLQT3SqTuQNkNOa8WgHa/FlpOULFF+OAA8=; b=cxWq1u7apaDjWO
	qLC+7owfYNGyLdjz9objozFMpH+7M7QtfT3S0Y+LouozXQugR7adoaC+37GytsocmEt6i/TioAPCp
	LjpvWpKhfuOaJK4NlOwx9UHWpCxXh52J7AsKmtWzhMl+PyMKBd/afvLgo7QTdWrSHoHFA3xEj/tc0
	Is0NQ/s06TopbOK6mj8ja1PPL7ANHU/Cl1hBEjTOkhcezHX+QiCyvZPGzxdVjFbRHstKKW8oBOBMY
	F/jdfRBj+0Z3W/5o/N/m7babXHLfhM4Pban7Cjivx6vtyC6j8yIzikwORsfRG8ZAZ1Km1efDUlSNA
	Oh5NZfkXGVBITh1d8JPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isR6m-0002uX-5b; Fri, 17 Jan 2020 12:52:16 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isR6U-0002tb-RC
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:52:03 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 47zgtf3Vkmz1qr4k;
 Fri, 17 Jan 2020 13:51:54 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 47zgtf2d2rz1qr2t;
 Fri, 17 Jan 2020 13:51:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id PYTb3qutoQKF; Fri, 17 Jan 2020 13:51:52 +0100 (CET)
X-Auth-Info: 4Pg3u1nHcyBe2DMyGQhsc1BQZp+AoLb2psEia6r0i/g=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 17 Jan 2020 13:51:52 +0100 (CET)
Subject: Re: [PATCH] ARM: dts: stm32: Add missing ETHCK clock to ethernet node
To: Patrick DELAUNAY <patrick.delaunay@st.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>
References: <20200115094608.154386-1-marex@denx.de>
 <521254538ec74534a533b8ca4448855e@SFHDAG6NODE3.st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <cef4c2db-9ce9-760b-e392-74a52c7d1e38@denx.de>
Date: Fri, 17 Jan 2020 13:50:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <521254538ec74534a533b8ca4448855e@SFHDAG6NODE3.st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_045159_029562_938190F2 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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
Cc: "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Christophe ROULLIER <christophe.roullier@st.com>,
 Patrice CHOTARD <patrice.chotard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/15/20 5:45 PM, Patrick DELAUNAY wrote:
> Hi Marek;

Hi,

> Add the Linux Maintainers for STM32M linux patch:

Added, if there is a need for V2.
[...]
> 
> Hi Alexandre,
> 
> Can you review this patch.
> 
> Regards
> 
> Patrick
> 
>> From: Marek Vasut <marex@denx.de>
>> Sent: mercredi 15 janvier 2020 10:46
>>
>> Add missing 'eth-ck' clock to the ethernet node. These clock are used to generate
>> external clock signal for the PHY in case 'st,eth_ref_clk_sel'
>> is specified.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> Cc: Christophe ROULLIER <christophe.roullier@st.com>
>> Cc: Patrice Chotard <patrice.chotard@st.com>
>> Cc: Patrick Delaunay <patrick.delaunay@st.com>
>> ---
>>  arch/arm/boot/dts/stm32mp151.dtsi | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi
>> b/arch/arm/boot/dts/stm32mp151.dtsi
>> index fb41d0778b00..e0ecc5ee7d83 100644
>> --- a/arch/arm/boot/dts/stm32mp151.dtsi
>> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
>> @@ -1369,10 +1369,12 @@ ethernet0: ethernet@5800a000 {
>>  			clock-names = "stmmaceth",
>>  				      "mac-clk-tx",
>>  				      "mac-clk-rx",
>> +				      "eth-ck",
>>  				      "ethstp";
>>  			clocks = <&rcc ETHMAC>,
>>  				 <&rcc ETHTX>,
>>  				 <&rcc ETHRX>,
>> +				 <&rcc ETHCK_K>,
>>  				 <&rcc ETHSTP>;
>>  			st,syscon = <&syscfg 0x4>;
>>  			snps,mixed-burst;
>> --
>> 2.24.1
> 


-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
