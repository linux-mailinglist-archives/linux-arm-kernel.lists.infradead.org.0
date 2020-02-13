Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0637715C059
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 15:30:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=AoVtYzUoC3jxdeBw99FIba3IAqDPN3kTYeUu1XSfczc=; b=NveBKUqhTKIxoE
	JIr9STCN0g85ZBrV15lyADQEl0lywWYQnLZ3hVvdaGgFA8Pg0Oby7rTIHdrS9QAetkv5JXF1gBe5v
	PX5R1tJiRW2R3EAmZwiBbWIM7wYQaXDG5H67+p7Xe8XeMZTnVndkOr86m8LnN9ODX6FLAd1i7VX++
	ntkZCkEsqplP5Yfi7kVmkU2ISe2sZZ50b8wPGOKQnfLaHsUi3RIf903WMP3BXr54xw5//Lxcw/7cR
	kkFaASBe5RAHyedCI2+dkeTTzMT2i3+BI5bBIRYP/y6Wz0sOJSWF+rcALnwHq0Tcg4RxLhMWIJDVn
	HIFsDoakNnncAc++fjFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2FVr-0000QP-RD; Thu, 13 Feb 2020 14:30:43 +0000
Received: from mail-eopbgr60050.outbound.protection.outlook.com ([40.107.6.50]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2FVh-0000Lc-M7
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 14:30:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KxdsUEOoBUe4PEfWJE4/eMtfmaWjbiJuk0G0jN0y6ockFGeipM9z2DUYbxjckCb0XTkWY5Lq6XgzVz8DAvc/nvfeF60HRXTd+1G1o0O2dL/4Bnm0JhbOMe0NIajY3bL9My0A4t3SYFNNXWQTibRUuAeqxQRiMeGgKSYztizb63qgzEdgLgwYSaFQQvCO01byAIgyWhkznYC7qfTQcP//TKYZZVdDWVD1irG66t87k1O8RHaVW7ctQDqC+2CKojijOifbMif614txTVv3NMd7v2NiuC+lOayNY6L+DwdwySDp5bfS/xrrjuTCnFn1qpp96Yfs646Y/ZUVtlaCpftrjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V25864l4TH2IhxBmXRRB6lNfzoXCm18kdf1fNUo8Iqc=;
 b=CEIRw3COM/sgKGrD7enLEBcucQW25qSllnN4R3mxcm2EqwiiIyoRZWF9XFEUYgolzWwjArJlsujuQfNGnneGV/iLqNUyHKX/vDDJJxhys+PsjtmAqp75fnJwT5wvvTvpM3HeP+RNIDF3/CeVrLhw0vW3DYUCUsUAdZRaUN3JySU1Gzsmay2yQMqjIZwIHpOcbges+PlrjNetq/d9Leik/KmwOatqzqkRuhJF+V/I1ANcWJtaRD6rH4Ng3MCk3+eeGXvLb3Dpyf09nJ2Q4Sah9sgi1VpM4YKn2ZBjxzcH/5LpPJ86Xmgw9+Hd9RkFt74KfK1mFHqOmPAyoPS0ibRf5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V25864l4TH2IhxBmXRRB6lNfzoXCm18kdf1fNUo8Iqc=;
 b=TulkQxB4Di8KiXwvZsX4ONiPaCmi7G1xCF+RUFHz8G2YG0yNIkr8A4bcWukV9NF3VQAuzp9BhSC1OC9ffSyWNTZCD/eFFg3tN9cir9/pqgvNJX8BtHuEr5JbGwXrAPPrazznGZde1zHgLmQGPZa9iQMC1xRvV17YhE0Oa8FfCqc=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5597.eurprd04.prod.outlook.com (20.178.125.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.26; Thu, 13 Feb 2020 14:30:27 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 14:30:27 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>,
 Schrempf Frieder <frieder.schrempf@kontron.de>, Adam Ford
 <aford173@gmail.com>, Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Topic: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Index: AQHVlbJUjk96rt7it0SasfL+3D85Eg==
Date: Thu, 13 Feb 2020 14:30:27 +0000
Message-ID: <VI1PR04MB70232F5A51F3F2B02BDB344EEE1A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20190417053211.2195-1-ping.bai@nxp.com>
 <AM0PR04MB42116FEB1EE2CAE68A1CAA8980250@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <1555503195.2317.19.camel@pengutronix.de>
 <VI1PR04MB55330105F4839FCF98B7CFC0EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <68aaace3-f66e-b4b8-30a0-57b8b66a7524@arm.com>
 <VI1PR04MB5533A1F87436C0839A772D03EE250@VI1PR04MB5533.eurprd04.prod.outlook.com>
 <20190418144330.GD7770@e107155-lin>
 <CAHCN7xKK3zWE9i24prauPw0DSNTjASsMgDYY8w3OBJ+hb2y-sg@mail.gmail.com>
 <871ac22a-0508-8e92-b012-f414be5bd174@kontron.de>
 <VI1PR04MB6992DF27336AC51945D1C0C1871A0@VI1PR04MB6992.eurprd04.prod.outlook.com>
 <0a8a4edcf110ec5bcf859c145ef27553039c6cd0.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f30710f7-919f-4c17-9393-08d7b0914538
x-ms-traffictypediagnostic: VI1PR04MB5597:|VI1PR04MB5597:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB55977B45F88EA577A9F779ECEE1A0@VI1PR04MB5597.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(366004)(396003)(346002)(39860400002)(189003)(199004)(110136005)(54906003)(53546011)(2906002)(6506007)(4326008)(478600001)(9686003)(26005)(76116006)(44832011)(64756008)(186003)(66556008)(33656002)(66476007)(91956017)(66446008)(86362001)(66946007)(8936002)(81166006)(8676002)(66574012)(81156014)(55016002)(316002)(52536014)(71200400001)(7696005)(7416002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5597;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iI26YW65zwYRzPoIYs1OYz6Y9ms3TVq/VoCTqd2EK1oYAeQod4NrSTXAwWfrwMAcg3ODUYKWZ8VH5BBZP4rDfswiIbgAConN9AHQ7xUycm5wvlZsl002HmF2hNDAxNBtf0eyMMZ0ldREjQ5eIC764NVAXM59R08k0OVHroUXAWNyfXvKhFCLtXaDRzPFuIJkKLjSGCn2/34KPDyF/AWExXFs2Irlb1OaWvpXn0Pd/Mu63h5Td8+7FR/Q4TCipR2ER7uABBAq9AaJeRR1vlEKWjaIvH917Edf0tMdUQFTWIIQgyA3AyNbtyYu6g6d01XH138tLMhOdoB8OZUuyOecop/gJ9nBkJON1GMwtWw6KOvQzmPwSwEea5b+vtgBTnueelZG89SboGHWH6tIsxTRtUpItYYZBFYzpSDd3a5NcI8Jry71n0LUY5KWGBSqitao
x-ms-exchange-antispam-messagedata: zS5vrQc5fImSKo+nx+475cKzcgx+H32IAOulu1use/Ev53VAVAwyZzodJ3YRIrOFZ30u9p6760YIuieH/nhjt1qkxO3wPLfGVRL7gSzskgZOCE2n3bsGKCWTQZVOgRsDcXTfzDVZBOv6XelcYHAyVw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f30710f7-919f-4c17-9393-08d7b0914538
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 14:30:27.2395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9ya4YXurObMjzvYNJAjBBlakZJYMDrSJYxzsE61kTWKzowRXllwL5nUNQGG837aSOvi1MnE8/sDkTOxA//rOTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5597
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_063033_844821_272E3656 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 =?iso-8859-1?Q?Cl=E9ment_Faure?= <clement.faure@nxp.com>,
 Andre Przywara <andre.przywara@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13.02.2020 13:32, Lucas Stach wrote:
> On Do, 2020-02-13 at 09:21 +0000, Jacky Bai wrote:
>>> -----Original Message-----
>>> From: Schrempf Frieder <frieder.schrempf@kontron.de>
>>> Sent: Thursday, February 13, 2020 5:16 PM
>>> To: Adam Ford <aford173@gmail.com>; Sudeep Holla
>>> <sudeep.holla@arm.com>
>>> Cc: Aisheng Dong <aisheng.dong@nxp.com>; mark.rutland@arm.com; Peng
>>> Fan <peng.fan@nxp.com>; Souvik Chakravarty
>>> <Souvik.Chakravarty@arm.com>; Jacky Bai <ping.bai@nxp.com>;
>>> devicetree@vger.kernel.org; Cl=E9ment Faure <clement.faure@nxp.com>;
>>> s.hauer@pengutronix.de; shawnguo@kernel.org; robh+dt@kernel.org;
>>> dl-linux-imx <linux-imx@nxp.com>; kernel@pengutronix.de; Andre Przywara
>>> <andre.przywara@arm.com>; Silvano Di Ninno <silvano.dininno@nxp.com>;
>>> Leonard Crestez <leonard.crestez@nxp.com>; festevam@gmail.com;
>>> linux-arm-kernel@lists.infradead.org; Lucas Stach <l.stach@pengutronix.=
de>
>>> Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m fam=
ily
>>>
>>> Hi,
>>>
>>> On 07.11.19 22:28, Adam Ford wrote:
>>>> On Thu, Apr 18, 2019 at 9:43 AM Sudeep Holla <sudeep.holla@arm.com>
>>> wrote:
>>>>> On Wed, Apr 17, 2019 at 04:21:55PM +0000, Leonard Crestez wrote:
>>>>>> On 4/17/2019 4:33 PM, Sudeep Holla wrote:
>>>>>>>>> I don't yet buy the security argument. There are many more shared
>>>>>>>>> parts on the SoC, like the clock controller, that would need to
>>>>>>>>> be taken away from the non-secure world if one would want to run
>>>>>>>>> an untrusted OS kernel on a i.MX8M system.
>>>>>>>>>
>>>>>>>>> To properly implement security on any i.MX8M based system the
>>>>>>>>> firmware would need to grow something like a full ARM SCPI
>>>>>>>>> implementation, so all shared critical peripherals are solely und=
er
>>> firmware control.
>>>>>>>> It might be possible to rework this to use some form of
>>>>>>>> SCMI-over-SMC instead of vendor-specific SMCCC SIP calls
>>>>
>>>> I was just curious to know if there is any progress being made on
>>>> this.  The i.mx8mm-evk is missing functionality upstream and I think
>>>> the power domain support would help enable some of these features.
>>>>
>>>
>>> Has there been any decision or action taken in this topic?
>>> Will the power domain driver as proposed in this patch be upstreamed at
>>> some time, or rather not?
>>>
>>> I try to build a mainline BSP for i.MX8MM (ML U-Boot, ML TF-A, ML Linux)
>>> and I integrated display and graphics support from the downstream NXP
>>> kernel.
>>>
>>> While most things already work fine, there's the issue of how to handle=
 the
>>> power domains. Currently I need to ungate some clocks in the TF-A
>>> BL31 to get for example the GPU running. If I understand this correctly=
 the
>>> proposed power domain driver could handle this in Linux otherwise.
>>>
>>
>> the SCMI over SMC is still under review
> =

> Even if the SCMI over SMC is ready at some point, it's still unclear to
> me how you intend to abstract the GPC behind the SCMI interface in the
> TF-A. The power domains have dependencies both into the regulator and
> the clock framework. Both are currently under exclusive control of the
> rich OS. How do you intend to allow the TF-A to control the power
> supplies and necessary reset clocks without messing up any state in the
> rich OS?

This is indeed difficult, SCMI assumes that the responder has sufficient =

control over clocks to fully implement power domain handling, including =

over clocks and regulators.

Perhaps it might be possible to modify current gpcv2 driver to send SCMI =

messages for power only and keep handling regulators itself? It could =

switch based on whether it has a reference to a scmi channel as a DT =

property.

A full scmi-based implementation might use entirely very different =

bindings and take a long time. If people want to support their chips by =

implementing power domain support in the rich OS we shouldn't block them.

So it would be good to accept gpcv2 enhancement for 8mm and similar.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
