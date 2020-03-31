Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D487B198EFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2KbOSZGxqLkv1LT440g/iwf1epFb841b30kz4KvLJG4=; b=CrfrKkmsZ3YfECWw5XwPz7XH9
	G14Sw6bk9gTS5593gF6LhUyBlh73lljqTk/A1nNSTrUxwo4UNxUaI036YcLmCWUki0r8neUtgxI8d
	8JCDTCE1KfRiq4dFngOPk0RTh9YxxmATqng4vCuQfSyWQMumI4Btou7UuS+rJfaqaWgueaGYmEzq2
	aWu3k8T1ZALkz+eZfCEBH52TQwtEMIEB2g6wdf6HEhrjJrJnOte14r6QQmTFenPHbekGFRUv2CRs4
	kR51CUj/old+A6g7/LAo/3bUKLpRMypJkTuYxajB69uD8kUDvGmYGE4flyxKIpGRMJiG0toBiBmhs
	92HNTiyNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJCk6-0004ey-Vw; Tue, 31 Mar 2020 08:59:31 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCjs-0004eR-8y
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:59:18 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02V8vn9p028292; Tue, 31 Mar 2020 10:59:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=enLBbt0Ek5Ca0JE4O/ZSJ5BdliQ9BhlyvG3WkAYK41U=;
 b=vCEyFWgDtGKYeRcKCSAzaehc0WakXOv4PxA3emG4ASqzrr+aEkKXyuYbi07/b63Kcn50
 DZSN/YOADtIIJprFGocl8c7fSJ5Xep9g//Y0mMbilEw4hE2JC33+b7iyxKWtSBnQX8x/
 HeLi+7r0poAhnA5d7uxJsxw+wiyjjZ1/KUedeYEGBTiURtp0gViFHkih+aOoCv1kA8z/
 0nQ0o0hGz2lU6OmHYTdkt6Nm5tnfIu4BXN/2qw+kOf0Gw0nAqnnCiXlw1uNNKAnIc/B+
 NF0WXmb+nPmTb6mYiSiZ3tN7UK48rH6L0XWjsZan6I9t5yYFJoLTZTzXbYc8U7A3W0Bq IQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301w80wxx7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 31 Mar 2020 10:59:10 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3D6CF100039;
 Tue, 31 Mar 2020 10:59:09 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1800B21F668;
 Tue, 31 Mar 2020 10:59:09 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 31 Mar
 2020 10:58:58 +0200
Subject: Re: [Linux-stm32] [PATCH 07/22] ARM: dts: stm32: Add alternate pinmux
 for SDMMC2 pins 4-7
To: Marek Vasut <marex@denx.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Patrice CHOTARD <patrice.chotard@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200328171144.51888-1-marex@denx.de>
 <20200328171144.51888-8-marex@denx.de>
 <0fb89d25-feb0-2eb0-9e83-d7f8c76f8b9e@st.com>
 <82dcf412-119b-0de2-0c50-f6877a82a812@pengutronix.de>
 <fcf49298-a36c-e80e-e62b-1fb9c07f0d6e@denx.de>
 <310aa3a3-09ce-42ef-d1ea-b653163d1d72@pengutronix.de>
 <97d13a84-8220-aa7f-3ee6-df474cca3882@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <43e88a1b-f3e4-df1d-38a6-0bb281a2f786@st.com>
Date: Tue, 31 Mar 2020 10:58:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <97d13a84-8220-aa7f-3ee6-df474cca3882@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_03:2020-03-30,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_015916_682056_24B29C57 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrick DELAUNAY <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/30/20 1:45 PM, Marek Vasut wrote:
> On 3/30/20 1:37 PM, Ahmad Fatoum wrote:
>> Hi Marek,
> 
> Hi,
> 
>> On 3/30/20 1:22 PM, Marek Vasut wrote:
>>> On 3/30/20 1:17 PM, Ahmad Fatoum wrote:
>>>> Hello Patrice,
>>>
>>> Hi,
>>>
>>>> On 3/30/20 1:11 PM, Patrice CHOTARD wrote:
>>>>> For your information, another submitted patch uses the same pinctrl sdmmc2_d47_pins_b node with different muxing (SDMMC2_D5)
>>>>>
>>>>> see https://lore.kernel.org/patchwork/patch/1216452/
>>>>>
>>>>> I haven't checked other muxing if there are other conflict.
>>>>
>>>> (author of linked patch here)
>>>>
>>>> I don't like the central stm32mp15-pinctrl.dtsi. I'd have preferred if each
>>>> file defined the pinctrl groups it is using.
>>>
>>> I'm not a big fan of that either, because this is gonna be a
>>> combinatorial explosion of various pinmux options. But if you have each
>>> board define it's pinmux, it's also gonna become a massive amount of
>>> duplication (like iMX). So I cannot tell which one is better ...
>>
>> Mhm. A middle ground could be keeping stm32mp15-pinctrl, but only for the
>> official ST eval kits as HW designers are expected to copy off those and have
>> board specifics in the board/SoM device tree?
> 
> Then you should call it stm32mp1-something-st-eval-pinmux.dtsi ,
> otherwise it's gonna be confusing.
> 
>> If it has to be either one or the other, I prefer duplication in the device
>> tree. When the HW misses pull ups or needs to adjust slew rates, you probably
>> don't want a new, slightly different, pinctrl group in the stm32mp15-pinctrl.dtsi
>> for each variant.
> 
> That's a valid point, but then you can override those in the boards'
> pinmux node for a specific pinmux entry too.
> 
>> So you are left with doctoring around with overrides and /delete-property/,
>> while just duplicating the node with the correct properties would've been
>> better for readability IMO.
> 
> That is true, but how many of such cases do we have so far ? Maybe it's
> better to cross that bridge when (if) we come to it.
>

I agree, and I prefer to keep pins groups definition in 
stm32mp15-pinctrl.dtsi file. IMO, it is easier for users to find them in 
only one file. Actually, I already had this discussions with some guys 
"where pins groups have to be defined ?". For me (and maybe only for 
me), muxing is SOC dependent, I mean SoC provides a bunch a possible 
pinmux for each IPs. If we got enough memory spaces (and time to waste 
also) we could define all possible pinmux (AFx....) for each devices and 
let board users chose the good one (using stm32mp15-pictrl.dtsi as a 
database). In board file, you select one possible pin configuration 
(provided by the SoC) for your device according to your schematic. 
However you could append pin groups in board file to update bias, 
slewrate ...
If your concern it to embed a bunch of not used pin configuration for a 
board, we could use /omit-if-no-ref/ tag on pin groups.

regards
alex


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
