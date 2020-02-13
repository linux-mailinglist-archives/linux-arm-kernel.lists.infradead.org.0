Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5965B15C279
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:35:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=0TOmvGquuwNoVsPwd2F9fOCH0gS48Br3psN/81IvkJ0=; b=Glzz48sg7pPh7g
	88JJULX3L7wLhrOR49HGR7HHJlwDhdDoWKBiNUp+RwXNleR2UoptuhD6TdcCjx6jMPE0+ZrBej1d1
	aNKl4+rQv7IOV+ILRRszf9iRcwKBKO07xoe2+fYmuAa8oiIxxuHFPBBfvaCmZvLXZHgyG80efXux6
	biOLgloOFx1E+CAMt1VtVHnRx9/NM2izTIVHTID7gjsTU4yAkx1jZfkbqsx5Rm/B6aGw6TYe5F42i
	PCxWu+R16EpbcTeFDD0e2jCKgo+IghKvwrL5VeFdT0cE0fInadFtLFx07EafYg0wJ2XXgmZ6ZAcf+
	5ckIuGaR29ObyNjczjaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GWc-0000m1-Sh; Thu, 13 Feb 2020 15:35:34 +0000
Received: from mail-eopbgr140073.outbound.protection.outlook.com
 ([40.107.14.73] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2GWU-0000ks-TC
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:35:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Po/jWCqsoqdxoF+wcqG5H8Y76/vzzsTQCHgiPhuKgdaUPyLGet4hV8OvyOtCbjHG2qAdv0uw9LNBUn1TOtx7vQaaUyrApw+kkV0TSG1t4A0aDCKCnhEy7Cm0TKzKbQq471wFWIx5bufsAH7Rls/tQHdGBPw7y2XlP8N9jGn+WM8h5LJykZKCrIym4V3mgsWUCmgbc44pZsPHkfXvinONMpqxQF0O0CtuK2RfZlTw23SfugQFMot8vH45qgG0BzmelCS8BS89sFWZECTBFwZpOKqj7/lwi1/q+KtbRi7PutfcqVPw+HUNNsSLzx8/0clMxoWxuBfpsgp6nPfjkAabiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uhZA6b9pHBNvc5lhzzgpLGo6PtmIpsFmXIa3/rd3LM4=;
 b=BgLtbK7daaeiWBuJ4naKj8xjLIT5ak0AU8E+Y6CCSJf2vsCw9lFkkvr0+w6lEkZ1UdCfpb/3vU1E34QXPMEkfWHjizcTvN/KBakFfE3N6Ub00xq9CYYskNFGHbaLUZlt5TFVhdFhujA08Z60W49CDmuVcpn+Ag4xFQIGjzuXzytwFF3h4gYw4uwvNJz65yX9/pVux9A0vypunzX76LBSmkpwoua/gCpPzrQ73PRR2K5PV3PvbqOHXYj91yPRz8pUiV5awWVFyMhkqekL8uNjpwHr6I6adbL4HQYwjfWYf3c7cCOGDUzaFUSrh5m7s77uV/9uHwdrwHoDGu8ex31Fkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uhZA6b9pHBNvc5lhzzgpLGo6PtmIpsFmXIa3/rd3LM4=;
 b=qg0l7wCPlNFYqiFhWeDI0bAuVvK7F+Nyz83cQGp1Ck3HqiCxk1h/8qaH1Ws7peNEExqyXo+5H3xoD4UCNV0T/1udlvmUZ7P7MCJvTlCFFqDNBE6MDocvygAb9mwuWfTB6ToEU/JRPWwEAyXfQ+TrkYTrQDQzMsT0BFpUs4zFQB0=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5310.eurprd04.prod.outlook.com (20.177.49.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Thu, 13 Feb 2020 15:19:30 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 15:19:30 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>,
 Schrempf Frieder <frieder.schrempf@kontron.de>, Adam Ford
 <aford173@gmail.com>, Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Topic: [PATCH 0/3] Add power domain driver support for i.mx8m family
Thread-Index: AQHVlbJUjk96rt7it0SasfL+3D85Eg==
Date: Thu, 13 Feb 2020 15:19:30 +0000
Message-ID: <VI1PR04MB70239743AA9C1BDC93E527EFEE1A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
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
 <VI1PR04MB70232F5A51F3F2B02BDB344EEE1A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <e09e5fdc9fc71a7ca35e6f419f660b633d55224f.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 19fd8e6d-0e23-46fc-c2ba-08d7b0981f70
x-ms-traffictypediagnostic: VI1PR04MB5310:|VI1PR04MB5310:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5310FB1228D837BB01BBECEAEE1A0@VI1PR04MB5310.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(199004)(189003)(86362001)(81166006)(6506007)(53546011)(81156014)(5660300002)(8676002)(4326008)(44832011)(55016002)(9686003)(186003)(7416002)(478600001)(66574012)(26005)(91956017)(316002)(33656002)(110136005)(54906003)(71200400001)(64756008)(66476007)(66946007)(8936002)(2906002)(52536014)(76116006)(66446008)(66556008)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5310;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +7UBaG4Dn3pKLrf7rTWlJlpSfSlo6e2RqxOXexUCytwcnAlm9wKoIhv+08J0rPdoaMbKO4j0ymHzZ48eI9bt3GEnqx7rK5GzJDDVbtby327H9WACzDAe2AvUHl83TkLQDCjx63Rc3ieNA3V08Pazcawi90FvsO3WihnSU8YTO6Pvmopai5vkQuB8H1iGgDBe6oiUjirHI/tQkUiCktxg+veb8GMHtG1+pONltX3osiOZk8qjSmsEQKNt1GNdls7KMXZFA6uEEQzJ304OKxKHCUoNprh4C5zK0x0waZl8KVhwQdHNdRIDMENbm7QlroTA3BeWmT1uT5o+cmUKccbidxK86c8EpTkUtakuZnkxqeou69eD+57HnK/rilVt+a94K4QXXiCfQV8nK+jgJI4zTrPFdjN9Rlu4LgN1WFrKgJQ+sfojcOdj4f0BCKAatfk2
x-ms-exchange-antispam-messagedata: CgtKDHzVAZj0ANLHtCrZDxGp4DSPtQD16OHacHTEoRSNh5snrMWtEvVcQyZPpV3Zt9qom/ToMHalErktqcTxI+in07X6A8zZO8AMAV6/T1mEnDPPWCgPVS0CzY/0lskoCF8uEhpHRxEoroTmy0161A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19fd8e6d-0e23-46fc-c2ba-08d7b0981f70
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 15:19:30.4070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N2UKwt9wMjjAw6dsIIwsFLouVlxhUQ4pGUCDocjX8UfKXy96X0pjWdWkUH3vrDLkQBftbZczwZzbSuLYLOgcnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5310
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_073527_024305_7C5A2742 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.73 listed in wl.mailspike.net]
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

On 13.02.2020 16:47, Lucas Stach wrote:
> On Do, 2020-02-13 at 14:30 +0000, Leonard Crestez wrote:
>> On 13.02.2020 13:32, Lucas Stach wrote:
>>> On Do, 2020-02-13 at 09:21 +0000, Jacky Bai wrote:
>>>>> -----Original Message-----
>>>>> From: Schrempf Frieder <frieder.schrempf@kontron.de>
>>>>> Sent: Thursday, February 13, 2020 5:16 PM
>>>>> To: Adam Ford <aford173@gmail.com>; Sudeep Holla
>>>>> <sudeep.holla@arm.com>
>>>>> Cc: Aisheng Dong <aisheng.dong@nxp.com>; mark.rutland@arm.com; Peng
>>>>> Fan <peng.fan@nxp.com>; Souvik Chakravarty
>>>>> <Souvik.Chakravarty@arm.com>; Jacky Bai <ping.bai@nxp.com>;
>>>>> devicetree@vger.kernel.org; Cl=E9ment Faure <clement.faure@nxp.com>;
>>>>> s.hauer@pengutronix.de; shawnguo@kernel.org; robh+dt@kernel.org;
>>>>> dl-linux-imx <linux-imx@nxp.com>; kernel@pengutronix.de; Andre Przywa=
ra
>>>>> <andre.przywara@arm.com>; Silvano Di Ninno <silvano.dininno@nxp.com>;
>>>>> Leonard Crestez <leonard.crestez@nxp.com>; festevam@gmail.com;
>>>>> linux-arm-kernel@lists.infradead.org; Lucas Stach <l.stach@pengutroni=
x.de>
>>>>> Subject: Re: [PATCH 0/3] Add power domain driver support for i.mx8m f=
amily
>>>>>
>>>>> Hi,
>>>>>
>>>>> On 07.11.19 22:28, Adam Ford wrote:
>>>>>> On Thu, Apr 18, 2019 at 9:43 AM Sudeep Holla <sudeep.holla@arm.com>
>>>>> wrote:
>>>>>>> On Wed, Apr 17, 2019 at 04:21:55PM +0000, Leonard Crestez wrote:
>>>>>>>> On 4/17/2019 4:33 PM, Sudeep Holla wrote:
>>>>>>>>>>> I don't yet buy the security argument. There are many more shar=
ed
>>>>>>>>>>> parts on the SoC, like the clock controller, that would need to
>>>>>>>>>>> be taken away from the non-secure world if one would want to run
>>>>>>>>>>> an untrusted OS kernel on a i.MX8M system.
>>>>>>>>>>>
>>>>>>>>>>> To properly implement security on any i.MX8M based system the
>>>>>>>>>>> firmware would need to grow something like a full ARM SCPI
>>>>>>>>>>> implementation, so all shared critical peripherals are solely u=
nder
>>>>> firmware control.
>>>>>>>>>> It might be possible to rework this to use some form of
>>>>>>>>>> SCMI-over-SMC instead of vendor-specific SMCCC SIP calls
>>>>>>
>>>>>> I was just curious to know if there is any progress being made on
>>>>>> this.  The i.mx8mm-evk is missing functionality upstream and I think
>>>>>> the power domain support would help enable some of these features.
>>>>>>
>>>>>
>>>>> Has there been any decision or action taken in this topic?
>>>>> Will the power domain driver as proposed in this patch be upstreamed =
at
>>>>> some time, or rather not?
>>>>>
>>>>> I try to build a mainline BSP for i.MX8MM (ML U-Boot, ML TF-A, ML Lin=
ux)
>>>>> and I integrated display and graphics support from the downstream NXP
>>>>> kernel.
>>>>>
>>>>> While most things already work fine, there's the issue of how to hand=
le the
>>>>> power domains. Currently I need to ungate some clocks in the TF-A
>>>>> BL31 to get for example the GPU running. If I understand this correct=
ly the
>>>>> proposed power domain driver could handle this in Linux otherwise.
>>>>>
>>>>
>>>> the SCMI over SMC is still under review
>>>
>>> Even if the SCMI over SMC is ready at some point, it's still unclear to
>>> me how you intend to abstract the GPC behind the SCMI interface in the
>>> TF-A. The power domains have dependencies both into the regulator and
>>> the clock framework. Both are currently under exclusive control of the
>>> rich OS. How do you intend to allow the TF-A to control the power
>>> supplies and necessary reset clocks without messing up any state in the
>>> rich OS?
>>
>> This is indeed difficult, SCMI assumes that the responder has sufficient
>> control over clocks to fully implement power domain handling, including
>> over clocks and regulators.
>>
>> Perhaps it might be possible to modify current gpcv2 driver to send SCMI
>> messages for power only and keep handling regulators itself? It could
>> switch based on whether it has a reference to a scmi channel as a DT
>> property.
> =

> With such a split implementation I feel like we are getting worst of
> both worlds: more complexity as the implementation is split across
> multiple components (TF-A and kernel) and still the rich OS is able to
> mess up the power supply of a domain that it might not even own. This
> doesn't sound really enticing.
> =

> IMHO it only makes sense to push this functionality down into TF-A if
> it allows to abstract all the implementation details behind a standard
> interface like SCMI. But then the needed changes are much more invasive
> than just pushing down the GPC implementation.
> =

>> A full scmi-based implementation might use entirely very different
>> bindings and take a long time. If people want to support their chips by
>> implementing power domain support in the rich OS we shouldn't block them.
>>
>> So it would be good to accept gpcv2 enhancement for 8mm and similar.
> =

> I fully agree.
> =

> For a full SCMI based implementation I expect that much more than just
> the GPC functionality needs to be pushed down into the TF-A. Right now
> I see clocks, i2c and regulator handling, maybe there is more that
> escapes my mind.

I2C regulator handling inside TF-A sounds very difficult. Not only would =

upstream TF-A likely object but on imx8m EVK boards the i2c bus for =

regulators is shared with other devices (like camera).

So if we do this maybe SCMI dt bindings could be expanded to at least =

allow regulators on a per-domain basis?

> We should not block a Linux based implementation of this functionality
> on the basis that we might want to replace this with a SCMI based one
> at a later point in time.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
