Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F165A15BB5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:16:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aar1+WkiisRyDKV9ishpzPPdP8y21N0QTSCVdx0ZWJg=; b=fSzC3Nef8ZrMil
	e0Yn8jDRN21WrDjXlRMXs4UeP6YxD86DRXlidUXfR2mHdwpYfDwcF4PH3MzqR20TYIKeS67xTNkmi
	y6WVyueXybDKiVlp/gdUYHsOoBOZfTOyec8qQN+q/12BlJBD9Xoc21Xx1riGZdpKPeQr5eI0t1Yvf
	Oi56qu0uhwNjcS5RDMhaiVeDL4kQG2kMtnkBQYz/5j4+/UFQTc6J1dZlsSZ08uvGYCNttFfuyPgni
	JW71kkkCP5Osvtv71eMggQs0rIfpUS0a6laWSk2N/IYPSdM5YqTs9dpRrLKyiHePGz5rdKvoWO9oq
	OdWqvIazzHF3KgMQSdmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Abw-0003ra-DI; Thu, 13 Feb 2020 09:16:40 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Abn-0003qj-8u
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:16:33 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id EA84C67A650;
 Thu, 13 Feb 2020 10:16:23 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 13 Feb
 2020 10:16:23 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Thu, 13 Feb 2020 10:16:23 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Adam Ford <aford173@gmail.com>, Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Topic: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Index: AQHVlbJgwlK4xQm/JEm2k7LRhwNAZagZYFsA
Date: Thu, 13 Feb 2020 09:16:23 +0000
Message-ID: <871ac22a-0508-8e92-b012-f414be5bd174@kontron.de>
References: <20190417053211.2195-1-ping.bai@nxp.com>
 <AM0PR04MB42116FEB1EE2CAE68A1CAA8980250@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <1555503195.2317.19.camel@pengutronix.de>
 <VI1PR04MB55330105F4839FCF98B7CFC0EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <68aaace3-f66e-b4b8-30a0-57b8b66a7524@arm.com>
 <VI1PR04MB5533A1F87436C0839A772D03EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <20190418144330.GD7770@e107155-lin>
 <CAHCN7xKK3zWE9i24prauPw0DSNTjASsMgDYY8w3OBJ+hb2y-sg@mail.gmail.com>
In-Reply-To: <CAHCN7xKK3zWE9i24prauPw0DSNTjASsMgDYY8w3OBJ+hb2y-sg@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <69FB702234D02743A3808FD4F54E88B6@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: EA84C67A650.AFAC6
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, aisheng.dong@nxp.com,
 andre.przywara@arm.com, clement.faure@nxp.com,
 devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com, mark.rutland@arm.com, peng.fan@nxp.com,
 ping.bai@nxp.com, robh+dt@kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org, silvano.dininno@nxp.com,
 souvik.chakravarty@arm.com, sudeep.holla@arm.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_011631_892586_63713BD1 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?utf-8?B?Q2zDqW1lbnQgRmF1cmU=?= <clement.faure@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Andre Przywara <andre.przywara@arm.com>, Silvano Di
 Ninno <silvano.dininno@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 07.11.19 22:28, Adam Ford wrote:
> On Thu, Apr 18, 2019 at 9:43 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>>
>> On Wed, Apr 17, 2019 at 04:21:55PM +0000, Leonard Crestez wrote:
>>> On 4/17/2019 4:33 PM, Sudeep Holla wrote:
>>>>>> I don't yet buy the security argument. There are many more shared parts
>>>>>> on the SoC, like the clock controller, that would need to be taken away
>>>>>> from the non-secure world if one would want to run an untrusted OS
>>>>>> kernel on a i.MX8M system.
>>>>>>
>>>>>> To properly implement security on any i.MX8M based system the firmware
>>>>>> would need to grow something like a full ARM SCPI implementation, so
>>>>>> all shared critical peripherals are solely under firmware control.
>>>>>
>>>>> It might be possible to rework this to use some form of SCMI-over-SMC
>>>>> instead of vendor-specific SMCCC SIP calls
> 
> I was just curious to know if there is any progress being made on
> this.  The i.mx8mm-evk is missing functionality upstream and I think
> the power domain support would help enable some of these features.
> 

Has there been any decision or action taken in this topic?
Will the power domain driver as proposed in this patch be upstreamed at 
some time, or rather not?

I try to build a mainline BSP for i.MX8MM (ML U-Boot, ML TF-A, ML Linux) 
and I integrated display and graphics support from the downstream NXP 
kernel.

While most things already work fine, there's the issue of how to handle 
the power domains. Currently I need to ungate some clocks in the TF-A 
BL31 to get for example the GPU running. If I understand this correctly 
the proposed power domain driver could handle this in Linux otherwise.

Thanks,
Frieder
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
