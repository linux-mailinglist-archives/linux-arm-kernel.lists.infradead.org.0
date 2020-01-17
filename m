Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B9E140F85
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 18:00:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JQh5F8SZwSez/ftc360Un3RRNn0mF0HZdjUZg7zll/Q=; b=qrrB+9DZLkcQjpaN+3h3t+9wf
	yQdj7Fszpbi4wzgB6qWzIZbFqW/68heE5/hZBv8uKWzBVL1PgaO7OeMUyj9zRxZx2jJQU77FhmL0s
	/0uLrPjOQxDS4ehGKqWfhdfOaDZSpJto2YzfRzSFbDwVyYgVvnRDYzZct0lIn94GGh8/vHXVdf9yK
	TwguRbeWZCJjuGIfh6WnkZKrudsc6YNkRPDJdvTBVd+Nh2C2sOAlL1tzhy8PadC62XG/mnNAz2pTa
	Tc0TKPFxdh8gkPaZZmNd+9Rg6lOSFf3CYazPR/aUCQPJxwZ12JlWO3sbyOYXhJS4dUJYyd8kUo4e1
	6Ja3KEVZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUyk-0004Wb-5X; Fri, 17 Jan 2020 17:00:14 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUyK-0004UN-NR
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:59:53 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00HGx69g006850; Fri, 17 Jan 2020 17:59:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=0cs5EBI+B7VMqeNxss3ihARGjvxrGtqQE0GQfTimhDs=;
 b=ApqtfgETVdlth0/eN3VNEJcdHAKO5jMO+PcHOWtAFdo3cwcY+F8f9J3U2quP0fsBTulK
 GN8d+Hd9L/UEzjGbo3CyPPqEzfi0hr/y1GaARn3Y0jfEaVrHFe36k+qyekXm6wLLuno8
 5ORRFTVn6Ga3F/X9x5/UZr6t79wqNkxcsy9YA34EiEoE7UKfLLazmbvGVlSyhA2qw0xj
 Z2vwj1zTU6LIb3Fd1EEBC1DZaZFR7i1E61O6fPNVyXdNCL/SM8gO5gR1KHVrrXrbpW72
 8recZ8NRcoqyi5qwRaCkkjyfdslo+1/7HSzSj1nrfL8YpRqI3juq7+BEDGt5EP7bvCbN kg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xk0qy4ju5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 17 Jan 2020 17:59:45 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BE04C10002A;
 Fri, 17 Jan 2020 17:59:40 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B21212B1878;
 Fri, 17 Jan 2020 17:59:40 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 17 Jan
 2020 17:59:40 +0100
Subject: Re: [PATCH] ARM: dts: stm32: Add missing ETHCK clock to ethernet node
To: Marek Vasut <marex@denx.de>, Patrick DELAUNAY <patrick.delaunay@st.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>
References: <20200115094608.154386-1-marex@denx.de>
 <521254538ec74534a533b8ca4448855e@SFHDAG6NODE3.st.com>
 <cef4c2db-9ce9-760b-e392-74a52c7d1e38@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <2d53accb-9ea2-6c54-1963-3f5b389a2b2b@st.com>
Date: Fri, 17 Jan 2020 17:59:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <cef4c2db-9ce9-760b-e392-74a52c7d1e38@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-17_04:2020-01-16,
 2020-01-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_085949_091237_7E7AC4E3 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Christophe ROULLIER <christophe.roullier@st.com>,
 Patrice CHOTARD <patrice.chotard@st.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

On 1/17/20 1:50 PM, Marek Vasut wrote:
> On 1/15/20 5:45 PM, Patrick DELAUNAY wrote:
>> Hi Marek;
> 
> Hi,
> 
>> Add the Linux Maintainers for STM32M linux patch:
> 
> Added, if there is a need for V2.
> [...]
>>
>> Hi Alexandre,
>>
>> Can you review this patch.
>>
>> Regards
>>
>> Patrick
>>
>>> From: Marek Vasut <marex@denx.de>
>>> Sent: mercredi 15 janvier 2020 10:46
>>>
>>> Add missing 'eth-ck' clock to the ethernet node. These clock are used to generate
>>> external clock signal for the PHY in case 'st,eth_ref_clk_sel'
>>> is specified.
>>>

Just indicate in commit title that this commit is done for stm32mp15 
family. Otherwise it looks good.

Thanks
Alex

>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> Cc: Christophe ROULLIER <christophe.roullier@st.com>
>>> Cc: Patrice Chotard <patrice.chotard@st.com>
>>> Cc: Patrick Delaunay <patrick.delaunay@st.com>
>>> ---
>>>   arch/arm/boot/dts/stm32mp151.dtsi | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi
>>> b/arch/arm/boot/dts/stm32mp151.dtsi
>>> index fb41d0778b00..e0ecc5ee7d83 100644
>>> --- a/arch/arm/boot/dts/stm32mp151.dtsi
>>> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
>>> @@ -1369,10 +1369,12 @@ ethernet0: ethernet@5800a000 {
>>>   			clock-names = "stmmaceth",
>>>   				      "mac-clk-tx",
>>>   				      "mac-clk-rx",
>>> +				      "eth-ck",
>>>   				      "ethstp";
>>>   			clocks = <&rcc ETHMAC>,
>>>   				 <&rcc ETHTX>,
>>>   				 <&rcc ETHRX>,
>>> +				 <&rcc ETHCK_K>,
>>>   				 <&rcc ETHSTP>;
>>>   			st,syscon = <&syscfg 0x4>;
>>>   			snps,mixed-burst;
>>> --
>>> 2.24.1
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
