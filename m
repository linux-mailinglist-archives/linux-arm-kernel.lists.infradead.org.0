Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD1115FE7D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 13:41:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hN+32pF9290M1ZPvzWSoHAVZPRAC0ZzvFYqWOPBgT8A=; b=oOYVeDlkO1yQRF
	mqPA0WLUAE1PWxRU72sCtorFcYNINPMrXoxngmh0fnid6Evz2rP1sadFQ63ywihuovMf/NvAHTz5U
	9JHv0pWHqwd0AU34iptdpi9wV9GJUPa1Gh8eK0VFmboJiYsCBH9DtUbbj82VpAPATlC52AOpXgXgp
	LxmDiQL8KC3ZkLido1Tibv01SL3CqJSz+DUVOxEMw7hn4XpFXOShLcucCd45CmlJAJJvC35O3Ct8g
	cjyf0rTjWJ/QLtW0isPU9iUbBsjbAnxFOqcigifPKNt3AzxBN8CuT/OlPuBjdi80CWcbmms2YbwvB
	QslArBfU0BCzYE9ms1xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2wlW-0001I2-Oe; Sat, 15 Feb 2020 12:41:46 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2wlP-0001HS-NB
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 12:41:41 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01FCd4pS026279; Sat, 15 Feb 2020 13:41:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=maaDk/azENS4baRBQqHcVa4rKgzogN8NBTTBrKI34WU=;
 b=cSzEnT08Ym/LkLeV+cSkcDLPWePdrfLGU6LBkvlsvkAtn1lw7oc5GZnkLNy/nSj2MbSj
 pUgANszC6CRWNc/cjWBjG3HLmXfeWgyKEQVuLyEeLM+hizDpImHUY8scF9l8AQc4vgnx
 zpnYA6qrkPbCq/K3FdJb10dhdVOtgWSlL9lhKx/si5RcVyO37z42/U8r/xGT6uErqscL
 C1mALHQDOcSExIROZmK/5+U/Jg56XqL6Z4E31uvgrmWkEDgfPgFwBUdzU1FL8ucCA73I
 9iJbpInnPck3+AzjIUz3LRqQQeqtRUushYhGx/n26zH7nMNs37RwAE/79atjAxyPxXnD /w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y6705a8c4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 15 Feb 2020 13:41:15 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1F7DA10002A;
 Sat, 15 Feb 2020 13:41:07 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag7node3.st.com [10.75.127.21])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CBB7A2B39E6;
 Sat, 15 Feb 2020 13:41:07 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG7NODE3.st.com
 (10.75.127.21) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 15 Feb
 2020 13:41:07 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Sat, 15 Feb 2020 13:41:07 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Greg KH <gregkh@linuxfoundation.org>, Linus Walleij
 <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Thread-Topic: [PATCH v2 2/7] bus: Introduce firewall controller framework
Thread-Index: AQHV1fD3WqS5xyjWNkazyajQl95bjqgAKU6AgAANnwCAAARlAIAAO2IAgADdioCAAALMAIAAF6SAgAL4AQCAAAg2AIAWdYKAgABdzYCAAPuHAA==
Date: Sat, 15 Feb 2020 12:41:07 +0000
Message-ID: <409eb745-aab2-86a7-bd3a-9e8e05bed057@st.com>
References: <20200128155243.GC3438643@kroah.com>
 <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
 <20200128165712.GA3667596@kroah.com>
 <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
 <CACRpkdY427EzpAt7f5wwqHpRS_SHM8Fvm+cFrwY8op0E_J+D9Q@mail.gmail.com>
 <20200129095240.GA3852081@kroah.com> <20200129111717.GA3928@sirena.org.uk>
 <0b109c05-24cf-a1c4-6072-9af8a61f45b2@st.com>
 <20200131090650.GA2267325@kroah.com>
 <CACRpkdajhivkOkZ63v-hr7+6ObhTffYOx5uZP0P-MYvuVnyweA@mail.gmail.com>
 <20200214214051.GA4192967@kroah.com>
In-Reply-To: <20200214214051.GA4192967@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <A06384E1ADEF80438FC62DE73245951C@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-15_03:2020-02-14,
 2020-02-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_044140_121015_2E6693B3 
X-CRM114-Status: GOOD (  23.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Loic PALLARDY <loic.pallardy@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Grant Likely <grant.likely@arm.com>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2/14/20 10:40 PM, Greg KH wrote:
> On Fri, Feb 14, 2020 at 05:05:07PM +0100, Linus Walleij wrote:
>> On Fri, Jan 31, 2020 at 10:06 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>>
>>> Why do people want to abuse the platform bus so much?  If a device is on
>>> a bus that can have such a controller, then it is on a real bus, use it!
>> I'm not saying it is a good thing, but the reason why it is (ab)used so
>> much can be found in:
>> drivers/of/platform.c
>>
>> TL;DR: struct platform_device is the Device McDeviceFace and
>> platform bus the Bus McBusFace used by the device tree parser since
>> it is slightly to completely unaware of what devices it is actually
>> spawning.
> <snip>
>
> Yeah, great explaination, and I understand.  DT stuff really is ok to be
> on a platform bus, as that's what almost all of them are.
>
> But, when you try to start messing around with things like this
> "firewall" says it is doing, it's then obvious that this really isn't a
> DT like thing, but rather you do have a bus involved with a controller
> so that should be used instead.

Ok but how put in place a new bus while keeping the devices on platform
bus to avoid changing all the drivers ?

>
> Or just filter away the DT stuff so that the kernel never even sees
> those devices, which might just be simplest :)

yes but we lost the possibility to change the firewall configuration at
run time. I do expect to be able to describe in the DT firewall configuration
and to use them at run time. That could allow, for example, to handover
a HW block to the coprocessor when the main core is going to be suspended
to save power.

Benjamin

>
> thanks,
>
> greg k-h
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
