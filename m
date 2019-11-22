Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6671072EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:15:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHyDnaLcmAP1ufnA1aaMFjpYwQQNQUJS/TDuvSsTFag=; b=HI52ZLdmwF9Hc6
	gZk96KN1RzyV0Gloou1bWbdqwnEBadI4j8dDh9l1L8SRuMAtr5U3fOYx37v3YzbVH82+j+yrITHPN
	nOWVJprFIRs4H3R8Pjgjh9B7qdH2hLHWe6Lp9Vy7vk/fZXoaw7zyFN6vcmDdyIJE5Wu6NN6nE9Uo0
	t6vTOlVpSgSEMSTyLWIYKXLuB89xCNzqSHvNvrQDaL5ZoA6a8U94/cJCfS3bKJR0DKZEVuwOCPQp3
	sM0lnYg1twNwdbthyvqgBdrZMKrPXzFyc+lJPiyqf1ierOwOriq382GIQPUQgV/dpygAJfK8gdlFd
	FMcuAe6qvm6iWFoJfvFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8mS-0002fT-4e; Fri, 22 Nov 2019 13:15:24 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8mJ-0002f4-1L
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:15:16 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAMDC3Zm016600; Fri, 22 Nov 2019 14:15:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=fsOHhYzNXWXB343toBErYF3JFgQsNuXPAR+dwnBzdGI=;
 b=0FAzw4EA1OF5EXTJYHgyEdlBJ+LLlYEYsIyl5Rpius2KHdsBDYFutFMljQDvgXJZSBcj
 WZ9BAnGc+kgpN9AZ/bPRixPvdI5VSary5czGFV3YJUMTE1Oonh02vPb8liPPJoWl0s+C
 xxymM2nU/9hGpRmrPFJlU3I/+ZnWslsGi0NGcF4q/gfT1qWlje1uLUzI83Wi8Cwn7DPN
 u8IhapLtXx2vJ96YYGv9YPRk9zEIuTiX55Zv9Yu5BDBh2a2uTYsaJBEo+ZptplgNeAJe
 Cjnkv8jKvex5+laaI3PUbz+6K3f0QgMrisiDLjZFyHlsozMOANwcjPsQKmPidJ3zP6qT Ag== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wa9ujgx69-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Nov 2019 14:15:08 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E875110002A;
 Fri, 22 Nov 2019 14:15:07 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D1A902BE244;
 Fri, 22 Nov 2019 14:15:07 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 22 Nov
 2019 14:15:07 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Fri, 22 Nov 2019 14:15:07 +0100
From: Christophe ROULLIER <christophe.roullier@st.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "wim@linux-watchdog.org"
 <wim@linux-watchdog.org>, "linux@roeck-us.net" <linux@roeck-us.net>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>
Subject: Re: [Linux-stm32] [PATCH v2 1/1] drivers: watchdog: stm32_iwdg: set
 WDOG_HW_RUNNING at probe
Thread-Topic: [Linux-stm32] [PATCH v2 1/1] drivers: watchdog: stm32_iwdg: set
 WDOG_HW_RUNNING at probe
Thread-Index: AQHVoQ5NhIxTjK/sUU24wk/cKk90B6eW7F6AgAAucQA=
Date: Fri, 22 Nov 2019 13:15:07 +0000
Message-ID: <70c319bd-866c-5305-e535-ead663652c5f@st.com>
References: <20191122082442.21695-1-christophe.roullier@st.com>
 <ea80ec65-8621-453c-4d5b-af38d8afeb70@pengutronix.de>
In-Reply-To: <ea80ec65-8621-453c-4d5b-af38d8afeb70@pengutronix.de>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <199B8515659CB941A78B6E41A371D31C@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-22_02:2019-11-21,2019-11-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_051515_440489_3C6F7B26 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 11/22/19 11:28 AM, Ahmad Fatoum wrote:
> Hello Christophe,
>
> On 11/22/19 9:24 AM, Christophe Roullier wrote:
>> +	/*
>> +	 * In case of CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set
>> +	 * (Means U-Boot/bootloaders leaves the watchdog running)
>> +	 * When we get here we should make a decision to prevent
>> +	 * any side effects before user space daemon will take care of it.
>> +	 * The best option, taking into consideration that there is no
>> +	 * way to read values back from hardware, is to enforce watchdog
>> +	 * being run with deterministic values.
> What about the "ONF: Watchdog enable status bit" in the IWDG_SR register?
>
> Cheers
> Ahmad
>
Hi,

Thanks Ahmad for your feedback, it is a mistake in our ref manual. This 
bit is not present

in our iwdg IP, we will update our documentation accordingly.

Regards,

Christophe
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
