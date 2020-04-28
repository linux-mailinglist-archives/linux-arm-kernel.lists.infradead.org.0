Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C1D1BBF91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFGzgZMwCLtNiPni7Qdf9m2STaqguCf4IO+zG7qBoF8=; b=jdLZxtholUogTh
	EMPZZEWFiZLepocUbwkz2oY1L0wIbwCBSPyC87HGFNOCihqDuVdQDtjzZYXNtmufv5i5ASc8qh0HY
	wu4aIJGRPeyN5W8Q5+2sFjGUwfPD6w03ZI/4EbMxhJfaueFe93uCuT4lagzP8XJN0rtw8wzR+WU8s
	WfvA3kS24E8RUDNk41eVbIDgpBCFOdAe9+NBqY4iTActfPhTBlKZ/XnvjVbR36doqRczn9HxM+CgQ
	VMB/eAcmEsO5m5yC27mu7atECYdb4+L10U1MF9LiHzPG3UJz94QstufYpdh+YgcstLXwJvEX6cKg2
	QZOMoM5B3EelmAxxzMag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQJz-0007ck-Ju; Tue, 28 Apr 2020 13:30:47 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQJk-0004ez-Ld
 for linux-arm-kernel@bombadil.infradead.org; Tue, 28 Apr 2020 13:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:
 From:Sender:Reply-To:Content-Description;
 bh=lacSSkWzlQgfEqOpGzNZ5KMynxTMC2Ry6JNMtvAjEgo=; b=ehWwlDY0iMozCuvQlhc9lnfzC7
 SCiN2rkab/jrQo9skwftDdAv4+58K3ZpEfR0FUWmQXmTp7jiBDJxWVls1nA1GeSCJabpntRQlUIVo
 9g5o0+D9jtDtdJ1eXUqRi1yF/9vFV0aqqPqO127kry7e5usvMPNtYRGHWbonlXEwKsaUXzMh2CrQh
 t5Odn8t8KaJiUQs5LR2j+z8NzgoXHnFKo4SGyzkzRlt+ivYYNwpxtlLfCp0rOdCjjpNK1FVBcogr4
 5tlIAQixa0tfDb2/NjyNbGWHJ95GWMw9k45MZahypRjLllp6+of1Fcop9u+5uHReD0Vg2ToTT9IBt
 qaCrE+qw==;
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQ3n-0004tr-VE
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:14:05 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03SDChAB020530; Tue, 28 Apr 2020 15:13:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=lacSSkWzlQgfEqOpGzNZ5KMynxTMC2Ry6JNMtvAjEgo=;
 b=u3V7ADK5t6k/7/qA6ArL15iaaSyWdIzGLKSd7sRrxzaK/T+LY5qlT5NV0+/gLJUOGcJ+
 7wzM/WyZ7ffuuxXCDl54FjdOsCmqULKzBRmIdvdnWIb9AJEwjcS4zOi1Q2c/fNHTR1Vk
 eLojP+Ascrbi66Yb6ZYVlQaiGOg/XVAhBxWqlq6ABmTnSzUp1dok0i1CHNXNEfXg1BCv
 oRQq9HtRcKuntWPAlO2LYdxDmqtwUIKx40yqkU0pFbPJVBxfD7Ob3iIsqjztRoxDAVPC
 9ig1xxcqZQeSYGjCnHVOTRKzvM/Tck4hvwUR8AHvMTLJmGiNmXWPuGzHsqFNRrdStTJn 3w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30n4j5v5r4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Apr 2020 15:13:46 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EFECD10002A;
 Tue, 28 Apr 2020 15:13:45 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DF0862B8A0A;
 Tue, 28 Apr 2020 15:13:45 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 28 Apr
 2020 15:13:45 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 28 Apr 2020 15:13:45 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/5] dt-bindings: bus: Add firewall bindings
Thread-Topic: [PATCH 1/5] dt-bindings: bus: Add firewall bindings
Thread-Index: AQHWFxpQ9gVgCvdMT0SVViT5CkNk0KiOT0yAgAAeqAA=
Date: Tue, 28 Apr 2020 13:13:45 +0000
Message-ID: <13b16e13-690b-ad3f-a800-28c7805cbb96@st.com>
References: <20200420134800.31604-1-benjamin.gaignard@st.com>
 <20200420134800.31604-2-benjamin.gaignard@st.com>
 <CACRpkdatGwWyruTLC=+BUtnunvqyxnXAYDhcHqy26oeud8Bs1w@mail.gmail.com>
In-Reply-To: <CACRpkdatGwWyruTLC=+BUtnunvqyxnXAYDhcHqy26oeud8Bs1w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <4C34B4DE90D8EF4C901A2C48542A843B@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-28_09:2020-04-28,
 2020-04-28 signatures=0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>, Greg KH <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/28/20 1:24 PM, Linus Walleij wrote:
> Hi Benjamin,
>
> On Mon, Apr 20, 2020 at 3:48 PM Benjamin Gaignard
> <benjamin.gaignard@st.com> wrote:
>> Add schemas for firewall consumer and provider.
>>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>> +$id: http://devicetree.org/schemas/bus/stm32/firewall-consumer.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Common Bus Firewall consumer binding
>> +
>> +maintainers:
>> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> This really needs a description: to tell what is going on and what
> these firewalls
> are for and how they are supposed to work.
Hi Linus,

Does the following description sound good for you:
Firewall properties provide the possible firewall bus controller 
configurations for a device.
Bus firewall controllers are typically used to control if a hardware 
block can perform read or write operations on bus.
The contents of the firewall bus configuration properties are defined by 
the binding for the individual firewall controller device.
The first configuration 'firewall-0' or the one named 'default' is 
applied before probing the device itself.

Regards,
Benjamin
>
> I suppose just a bit of cut'n'paste from the cover letter :D
>
> Otherwise it looks good to me.
>
> Yours,
> Linus Walleij
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
