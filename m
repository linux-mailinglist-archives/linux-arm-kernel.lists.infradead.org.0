Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 058793B775
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=dt3F6zKMJDd74RWneYg7gcAIAYYyJSVuBZlTjuqJWDA=; b=iEd9aCp4Pez80B
	hHqW4VkPzGXK0W8e4A9xLbDdsSGka6wRZqPzyPHewBJPDI0dJ0S1arUX1mzNyI9qsGcD7biAgp8L2
	90pNnRF9pwBGwX7jEW9vOAfIzXlhP9EsCgU5KkbbT/CVkZ5XRp/qrv+2u/vRwHLp1vsyLXXiDNxF8
	JWL9087Zl1XYSNli8dl3yZKobLlnCLOOdPmOnEiGV9vo9rT5Q/fIZH4sabb+YePeqDRPRqcwtHPxn
	IAsKea40csEGic5Ba89ydq+gQsG72OTNWWgWnwD4ZoO5dPv7CdqRfu3FPdbJzPoO4wZABe+AeqVHH
	kJS20IQrhbPuclQI0rMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLLy-0004BN-KX; Mon, 10 Jun 2019 14:32:54 +0000
Received: from mail-eopbgr130079.outbound.protection.outlook.com
 ([40.107.13.79] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLLn-0004Al-LS
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:32:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bL1AJiMVuSmKU/Fz8D2SQXyeR8O0IVyNBaWszVajKk8=;
 b=rBXNvGN1SFdfzecutSSXMeZZZSTvA7RmmFuCp6djvDr1+IXBQvL2ji5bas/yuQ2Q0VCPildZlkE1Kc8Iu8XAwRrL4PeJX5KyDuZDoowm+6VrqYGSogFk6vuodsVAfFK+cdjAMd5DebtOmsAd2We+SLVcki3mwZKBlwtHZTgsILs=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5101.eurprd04.prod.outlook.com (20.177.50.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Mon, 10 Jun 2019 14:32:37 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 14:32:37 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Abel Vesa <abel.vesa@nxp.com>, Lucas
 Stach <l.stach@pengutronix.de>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Topic: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Index: AQHVH4Y/fXLWCNQC3kGmFNlizRWSbQ==
Date: Mon, 10 Jun 2019 14:32:37 +0000
Message-ID: <VI1PR04MB5055A808A08A1C47784E4332EE130@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <20190610131921.GB14647@lakrids.cambridge.arm.com>
 <20190610132910.srd4j2gtidjeppdx@fsr-ub1664-175>
 <6f1052ea-623a-b2e8-9aa8-22aef5fab4ca@arm.com>
 <20190610135514.xd5myavjsloos2y3@fsr-ub1664-175>
 <7b86aa90-6d64-589c-f11e-d2ee6ab3fd54@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 747db03d-101e-494a-9b21-08d6edb07c7e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5101; 
x-ms-traffictypediagnostic: VI1PR04MB5101:
x-microsoft-antispam-prvs: <VI1PR04MB51015807F0037658101180E9EE130@VI1PR04MB5101.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(346002)(136003)(39860400002)(189003)(199004)(43544003)(7696005)(446003)(3846002)(26005)(81166006)(81156014)(229853002)(52536014)(5660300002)(6436002)(99286004)(76176011)(6116002)(476003)(486006)(8676002)(44832011)(55016002)(2906002)(186003)(9686003)(8936002)(256004)(14444005)(86362001)(71190400001)(7736002)(71200400001)(66446008)(66556008)(91956017)(68736007)(33656002)(305945005)(316002)(4326008)(53546011)(6506007)(73956011)(76116006)(64756008)(66476007)(66946007)(53936002)(6246003)(25786009)(66066001)(102836004)(14454004)(74316002)(7416002)(110136005)(54906003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5101;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BEDsLhREnqfHQqkHAm8yCk1a5zgXSSdKpMs/vwJrKsl6/EeQ95vbdhf3LKU8FxRUE+Mx33jLEbHqEMWZOzcidckVHqz2AFvNS5zz1GkoQKFd0iXwQvtDZqLoM4g0ekJUNjM3bgxKE2sCX+YL78aRH/hP+lW5+LKuHWbKwKN3xOLfDtTEgpJ75wnynXl5kKyFxyyDwkOqAWlowLaHdbFt6RI2TUdWqvNv0acZUPVixM05dQSWLk7nE3WFNUXbox74u+YyhOHll4wAyjcsa3WkuqEa2ZgnX7NoBt5VL3aikPCrWUk3CJZpxFycZdV8NrmQNE3Bt6XVFqNPtf/ZvqUvB9YmiN0cAgyl4hV3LnvMFcBRYQUTiQH9gyljhibvCzrLwhuqThAxutS+iugdM3RwddAYuD4dZHEw95c++mQSbt4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 747db03d-101e-494a-9b21-08d6edb07c7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 14:32:37.7293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_073243_708704_29C59F37 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Abel Vesa <abelvesa@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/10/2019 5:08 PM, Marc Zyngier wrote:
> On 10/06/2019 14:55, Abel Vesa wrote:
>> On 19-06-10 14:39:02, Marc Zyngier wrote:
>>> On 10/06/2019 14:29, Abel Vesa wrote:
>>>> On 19-06-10 14:19:21, Mark Rutland wrote:
>>>>> On Mon, Jun 10, 2019 at 03:13:44PM +0300, Abel Vesa wrote:

>>>>>> Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
>>>>>> handler and registers instead a wrapper which calls in the 'hijacked'
>>>>>> handler, after that calling into EL3 which will take care of the actual
>>>>>> wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.
>>>>>
>>>>> IIUC from last time [1,2], this erratum affects all interrupts
>>>>> targetting teh idle CPU, not just IPIs, so even if the bodge is more
>>>>> self-contained, it doesn't really solve the issue, and there are still
>>>>> cases where a CPU will not be woken from idle when it should be (e.g.
>>>>> upon receipt of an LPI).
>>>>
>>>> Wrong, this erratum does not affect any other type of interrupts, other
>>>> than IPIs. That is because all the other interrupts go through GPC,
>>>> which means the cores will wake up on any other type (again, other than IPI).
>>>
>>> Huh... Are you saying that LPIs and PPIs are going through the GPC, and
>>> will trigger the wake-up of the core? That's not the conclusion we
>>> reached last time.
>>
>> Hmm, I don't think that was the conclusion. Yes, Lucas was saying (IIRC)
>> that if you terminate the IRQs at GIC then all the other interrupts will be
>> in the same situation. But the performance improvement given by terminating
>> them at GIC might not be worth it when compared to the cpuidle support.
> 
> PPIs are broken,
> relying on some other terrible hack for the timer (and only the timer,
> leaving other PPIs dead as a nail). It also implies that LPIs have never
> been looked into, and given that they aren't routed through the GPC, the
> conclusion is pretty easy to draw.
> 
> Nobody is talking about performance here. It is strictly about
> correctness, and what I read about this system is that it cannot
> reliably use cpuidle.
My argument was that it's fine if PPIs and LPIs are broken as long as 
they're not used:

  * PPIs are only used for local timer which is not used for wakeup.
  * LPIs on imx are not currently implemented.

This workaround is only targeted at a very specific SOC with specific 
usecases and in that context it behaves correctly, as far as I can tell.

As mentioned in another thread the HW issue was already solved in newer 
chips of the same family (like imx8mm). If there is a need for PPIs and 
LPIs on imx8mq in the future then maybe we can detect that scenario and 
disable cpuidle?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
