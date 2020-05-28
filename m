Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AD41E6745
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 18:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FmGhi2B+R5/UQT34Or7QjVE2thlFCydMAonYsEkqhDo=; b=EHNHZI0klPv6Ret8LCN8jpL3y
	5Bp6ovfYRx56tSYwsROt7bRp+Y/H3ZUjuP6vazWdCd/3NJctnDLrUQcoSPs3F+/c642FJ63+4efP7
	FnG2PfckxteQgY65TgEIlVQx5i2fvIsFM5uEzGTqR2NywFP1yzDbN98ZAGuP2yrMpSobnlK1cVIp/
	K1Q6B3Hjdhx6lNxhWW0G1P3VDU2ENfz3RjuGYMYdh8/lOyv7KUYwl9gxEU077y/C7gKZgwm24cInW
	XTM2F/JRjLzXRkqUY/36rmDN3fezowGhwNyyGMsMqfcnkmipKyN0WT4WLDwZoFfIxyK+G8WDQ9HUE
	h+5elpyhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeLEw-0007fw-NX; Thu, 28 May 2020 16:18:42 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeLEn-0007fc-K0
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 16:18:35 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04SGHfr5120043;
 Thu, 28 May 2020 16:18:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=yXhlfTDcwelB/DWozshQ2Q4mBm73Gyb3DedaaAJLi9s=;
 b=CXjVmR4f0ZBsAeQ6bSaNL+eln6S+xQjGJiGhz1KtKMXtpJeqAjia7cdTtNJydEzCJv+7
 h+wm5DiLvcIMn/Wi3x/jg4kS4EDytH1eClXR+dJfoysCbAeOVmxF+50rdhjtcSA3JtOo
 6W8ebsaW4eHUSV5VoLq4Zu/HeWLCtwPSFD2x5YrN3IeMfT1qEPE1wnitFDBHCSslSRIS
 fvQaZ5/HsvukMb5g3xd1AFfqieJ+iq7OwvUNr7VKrPCjz/k7NB5BBQ8lfSNQI6MprClg
 QZJFdT9rV3Ik1v2vdKZpy2NjQXtdYQ76DLZMHvse5f0Nlb0CoMr5uGbDG78LTEvmgtQr Tg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 316u8r5ycq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 16:18:16 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04SGHfms176357;
 Thu, 28 May 2020 16:18:15 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 31a9kssdks-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 May 2020 16:18:15 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04SGI9Hw026661;
 Thu, 28 May 2020 16:18:09 GMT
Received: from [10.74.108.155] (/10.74.108.155)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 28 May 2020 09:18:08 -0700
Subject: Re: [PATCH] ARM: omap2: drop broken broadcast timer hack
To: Tony Lindgren <tony@atomide.com>, Arnd Bergmann <arnd@arndb.de>
References: <20200528091923.2951100-1-arnd@arndb.de>
 <20200528134621.GN37466@atomide.com> <20200528135057.GO37466@atomide.com>
 <20200528155759.GP37466@atomide.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <34e8fb61-b452-529b-b2c6-3849b2395096@oracle.com>
Date: Thu, 28 May 2020 09:18:05 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200528155759.GP37466@atomide.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9635
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280112
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9635
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 priorityscore=1501 spamscore=0 cotscore=-2147483648 suspectscore=0
 phishscore=0 clxscore=1011 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005280112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_091833_786073_317CBF00 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-kernel@vger.kernel.org, Tero Kristo <t-kristo@ti.com>, arm@kernel.org,
 Olof Johansson <olof@lixom.net>, linux-omap@vger.kernel.org,
 afzal mohammed <afzal.mohd.ma@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/28/20 8:57 AM, Tony Lindgren wrote:
> * Tony Lindgren <tony@atomide.com> [200528 13:51]:
>> * Tony Lindgren <tony@atomide.com> [200528 13:47]:
>>> * Arnd Bergmann <arnd@arndb.de> [200528 09:20]:
>>>> The OMAP4 timer code had a special hack for using the broadcast timer
>>>> without SMP. Since the dmtimer is now gone, this also needs to be dropped
>>>> to avoid a link failure for non-SMP AM43xx configurations:
>>>>
>>>> kernel/time/tick-broadcast.o: in function `tick_device_uses_broadcast':
>>>> tick-broadcast.c:(.text+0x130): undefined reference to `tick_broadcast'
>>>
>>> Hmm this sounds like a regression though. Isn't this needed for using
>>> the ARM local timers on non-SMP SoC, so a separate timer from dmtimer?
>>>
>>> I've probably removed something accidentally to cause this.
>>
>> Sounds like arch/arm/mach-omap2/Makefile change needs to be removed
>> to always still build in timer.o. And probably timer.c needs back
>> the ifdef for CONFIG_SOC_HAS_REALTIME_COUNTER.
>>
>> I'll take a look today.
> 
> I've sent a patch along those lines as:
> 
> [PATCH] ARM: OMAP2+: Fix regression for using local timer on non-SMP SoCs
> 
> A link for the patch at [0] below.
> 
CPU local timers not being in always ON power domain use to be the
reason on early version of the SOCs but later SOC moved the CPU local
timer also in always on domain. Probably AM43xx does loose local timer
on CPU PD in low power so yes broadcast would be needed with dmtimer
help.

> 
> [0] https://lore.kernel.org/linux-omap/20200528155453.8585-1-tony@atomide.com/T/#u
> 
This should restore it.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
