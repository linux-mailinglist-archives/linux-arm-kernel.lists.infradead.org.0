Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819FE7C524
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w0cbcOfQIsvWkAaBwJW75UbVNjFMK9qVCWgWtLgDQJI=; b=e7BpRZRkVvO/bVrHuSNoBrgp0
	csABxG9Aet2JGaBjHeQL7Xsmcf5T3KKCWNqCB1P58APMPuVHl+IVPYK/Dyf6Cb9CZCfG6o6rhvL/7
	2S2FbTXlzisA5FAYkMb0Kmd48sJ55FnNEoFpW/ukuK9rNYBLTyUwvW5YcYg0ZAOmKSuqE8QSeJiTs
	lfU/Lxn3H1c1StbGe9UG4NvRI6NnTzz6kn4+mFuihXBr05ItyveoWMfRLNU6udkGdOx+lB6MXmPR5
	nWqw4hkOYuzKWfhm7JCTr5il8gQHvg2XcdbPYZqqtK/bkM/KSLlfkD5Tzhh/SSlBzZ0Vntvybi1md
	5QCqz0ExQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspmL-0006cT-IZ; Wed, 31 Jul 2019 14:40:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspmE-0006c4-8E
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:40:27 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6VEcGiP031653; Wed, 31 Jul 2019 16:40:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=AFDZi45NFu0boqD+CAnY4m7Y5fAiIfy1q8BHKSUyjP8=;
 b=hdHXeNjda3sh2xQpndsqpigl53QQIGQeef4AE++pk6q4aoeHiWh4VNKighKTmboeWN0J
 6fdMVK8oo3aD76eXZDTqCdan5VGuA/8a8l47Hdpoq2C+fQEV2x+NiSkxCUPuZTCwzVpa
 s2205slvDSMfpooFTvRZz2/fNEA9YAKwhs3HgjxQi1wcgnyE2MWvMQFmuKooddl5eIZU
 NAmH6KAYsQ9dQujJ4EqJqimHdx+hMtsHrfAdw0YQpofH9Y3sUHlSsIpPFJlUus9eMbT7
 SbI0D63j2Pz5emFhBr1VnYyEr8fLiIMGMEhFVzUWElaZBdbIghP9Enysptia3K0tUkgL OA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u0bra5253-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 31 Jul 2019 16:40:19 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 09B0D41;
 Wed, 31 Jul 2019 14:40:18 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DF58FAE6AC;
 Wed, 31 Jul 2019 16:40:18 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 31 Jul
 2019 16:40:18 +0200
Subject: Re: ARM: multi_v7_defconfig: Enable SPI_STM32_QSPI support
To: Olof Johansson <olof@lixom.net>
References: <20190729135505.15394-1-patrice.chotard@st.com>
 <CAOesGMg-3xt2qjjZ569pUE+d6tn7nz264AN9ARkBT_Ej4TFC2A@mail.gmail.com>
 <de6ab910-380e-6271-88d8-6fe670525e60@st.com>
 <CAOesGMgi2cLUZGZnzKY+4i2tZSFyLe2TEK5SPY5yu0qSh_BRxg@mail.gmail.com>
 <CAOesGMirq=42Cj4kT=dLSqUiG-yee5zuqFhg5t=ud5KPmQJYBw@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <ce2b0a2f-6775-1318-1537-eae3ad4e63fd@st.com>
Date: Wed, 31 Jul 2019 16:40:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOesGMirq=42Cj4kT=dLSqUiG-yee5zuqFhg5t=ud5KPmQJYBw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-31_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_074026_757601_31DF276E 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Patrice CHOTARD <patrice.chotard@st.com>, Russell King <linux@armlinux.org.uk>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/31/19 3:21 PM, Olof Johansson wrote:
> On Wed, Jul 31, 2019 at 3:20 PM Olof Johansson <olof@lixom.net> wrote:
>>
>> Hi,
>>
>> On Wed, Jul 31, 2019 at 8:48 AM Alexandre Torgue
>> <alexandre.torgue@st.com> wrote:
>>>
>>> Hi Olof
>>>
>>> On 7/30/19 7:36 PM, Olof Johansson wrote:
>>>> Hi Patrice,
>>>>
>>>> If you cc soc@kernel.org on patches you want us to apply, you'll get
>>>> them automatically tracked by patchwork.
>>>>
>>>
>>> Does it means that you will take it directly in arm-soc tree ?
>>> I mean, I used to take this kind of patch (multi-v7_defconfig patch
>>> linked to STM32 driver) in my stm32 branch and to send PR for them.
>>
>> You can do that too -- it was unclear to me whether you posted the
>> patch with us in the To: line because you wanted it applied or not.
> 
> Also, we request that platform maintainers keep the defconfig updates
> in a separate branch, since we normally track them in a separate
> branch on our side. So if you do it in the future, please send
> separate PR.
> 
> For single patches, it's just as easy to send us the patch as a pull request.
> 

Ok. So I'll continue as I did :)

Thanks for clarifications

Alex

> 
> Thanks,
> 
> -Olof
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
