Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867928BC4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 17:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=n9XfVeT4AARa8swQDJnQI0AiMMUYJE8dYv9q3B73i1g=; b=CZpRhRrM1ARQvm
	JmK91yI1zORSqbTRomiFLfmCXu4xVMFihIKAIxFu1Yq4zcqDnina3CC1n7YPPZSTJYB1PCJk4sHHE
	yh5EGYQYtqwJuLHbeFVHYA6I46BveOX2/ArVnGLYQAMRXH6D7w2urwyBxEC0jGka03U5ikpglvG57
	yz3OYx/Ki1S4YQWgvczzH0NLk+nevD119E8y6FbH2u8j4k+coO9dMFp1bakXE3B7GDoqf+9jdVNZg
	i+pie+ag+mFPpbv2BRj6Y/tWy0EMFKKMl6zxDmXLIuoSJFPQigha/u4uaf9Ybh1u8LR0nlRk5KfFf
	+VtBfbQxqJJxAkYWR3tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYHa-0007RB-PP; Tue, 13 Aug 2019 15:00:18 +0000
Received: from mail-eopbgr40048.outbound.protection.outlook.com ([40.107.4.48]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYHI-0007Ar-Kc
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 15:00:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/b1AE7vjIJqNqPNdlUquZJzsx45yqlq3MhhaN+/uD3i+EKm1H3sH6E6pQdbkhkgOZOGYUlxPeXysTKqfeu20pdGSMAbb4w2r7FLaMgc+uvHvGH73lMEONkH0SuCQPavG25zZ7reVMxb5MFk97VurCyZYRezGkYtIdWDZlmJ5+KmTmBs/D+j/HRzyagHKP4H6k6kf/dpcjB+QnDMCVBJ2ZTcgHgPP8j8CiUohwgAkzJ5yUAvViIozzsFT8q5EqFOGFzvLEO4dZY2YHqj+cbiKAsH2Ief0+5oKxIGFKXDmowEm5WBkZnUXoSNO/ZppguWLuWyHGgffpb9+/FB+DTYNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mDiILO7SooLmClTeL9XDv9DJ76g+A5SreUDfpe+zN4I=;
 b=AC7xpxg6fUrOannUh5rWXCEzg7lDvrfuleI9f0d3Izf9Gwt0gaRI9aUAaPC50Vq63ZqwfM+0IUDcC3B8a+UdKtBKN3vpODaR2rX+WMv3c9mDXF9URyVfymaRCqGsELQM6HzzuWCOFPmYZtPDcRvt6mxEGAH+L7L1jCbuxSqBN6AeNYwAc/olieLTOb7MbTYJFfOMxFr7ODdSkIzoucK15j+9DgJcTKmJKVJnXgHujbw5jgpGc6zxYUHEjQ7bDemaYP7ztkKffy6R60giVjG4FLSytqEvp6KfOjRRkbioCn0tsABloF7HY7+ySm+WfyhZCCbqF2bIxvYkk0eqTQr4WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mDiILO7SooLmClTeL9XDv9DJ76g+A5SreUDfpe+zN4I=;
 b=eCchaYVjbxb1tj2sx7I6c+U3tzvwvvwZTdTd4h3kX8OaEq1ojBIFoMEcTK/+A14UIlA/FCW64FV+kT27rwFytPtj3IWs0jmD8Gm13M4katpUu6xn/P7FhAzXlD1fWF9GmtLZCwfvzvbYxi+fKCp9lEI92NRf8jjwTI29JziPd+o=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5231.eurprd04.prod.outlook.com (20.177.51.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.23; Tue, 13 Aug 2019 14:59:56 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::e53d:e6a9:79bd:f970]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::e53d:e6a9:79bd:f970%2]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 14:59:56 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Rob Herring <robh+dt@kernel.org>, =?iso-8859-2?Q?Artur_=A6wigo=F1?=
 <a.swigon@partner.samsung.com>, Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [PATCH 2/7] dt-bindings: devfreq: Add bindings for generic imx
 buses
Thread-Topic: [PATCH 2/7] dt-bindings: devfreq: Add bindings for generic imx
 buses
Thread-Index: AQHVUT6+xLIyJJ3RiUKs8c+X3Pwpzw==
Date: Tue, 13 Aug 2019 14:59:56 +0000
Message-ID: <VI1PR04MB70237460E84C4F8AC9EBE582EED20@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1565633880.git.leonard.crestez@nxp.com>
 <97b0bff95ddb85b06ef3d2f8079faa36562a956d.1565633880.git.leonard.crestez@nxp.com>
 <CAL_JsqJWpQN2oTm8Q2_Gzd0GJ+YZoc9j-zh-U1s4eGhMxDEmEA@mail.gmail.com>
 <VI1PR04MB702300C8C78BC033D16EDB85EED20@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <CAL_Jsq+BDO-J12BddWw-KbhjTx95p58qqpUhhKzUHED6vFK2TA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c39602a3-02da-404d-71bd-08d71ffee7ac
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5231; 
x-ms-traffictypediagnostic: VI1PR04MB5231:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB52316504812CE809F110E4CBEED20@VI1PR04MB5231.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(39860400002)(376002)(136003)(189003)(199004)(66946007)(99286004)(91956017)(33656002)(71200400001)(71190400001)(305945005)(14454004)(74316002)(7736002)(66446008)(8936002)(66476007)(66556008)(64756008)(76116006)(7416002)(478600001)(86362001)(66066001)(81156014)(6116002)(14444005)(53936002)(55016002)(256004)(8676002)(5660300002)(9686003)(316002)(2906002)(6246003)(6436002)(3846002)(229853002)(25786009)(446003)(76176011)(476003)(4326008)(486006)(7696005)(110136005)(6506007)(26005)(53546011)(102836004)(186003)(54906003)(81166006)(52536014)(44832011)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5231;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +oivDm7qkUVaNWKCnrwGa50AJ3OiLZat36kPCpfPuotVYL9Hy4LhV+aOEbUPh/31WPjiHbL8ti+6tNnv00cz+Z3W7ecZnh7tmLyHw4wKAWRNoZJ+KLnBGSzz5NqVVOyB4ZG2IGghT6symAah0cn69QAR2dHmBODmgA7TRDpc6S4BZXKhT5mbgsh8eYPvFNdFHBSu0VlXwOvyEi9V4KcsijXufw1JMrzSrWWE9A/q57RZ0RyfY1ZNk0tQ6HEE9T/KU2A8jLv2b7Gwbz3mK7xAv1CmKuyPCDMddkgEHZS61HfzjN/A7eqP1D5D8nTDiG4vXa9d13AkuoO1stmGsPuvkYj4W6x0xKfnrqAIYjgW6fp2wkhkyI+oh1Y3WcfMVTiTYCOA4cALQxqAZx9uxKGZh4Fno51F2Rin2Ieqc4f/OWU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c39602a3-02da-404d-71bd-08d71ffee7ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 14:59:56.2705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiInde8124Kwa7NBBs23Kt/FEE434S4IjjBy8vPBb/r6S1s2kFZ+caytrxh8/G1HI+hcZoUCCj5mfOL0tU2Q9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_080000_760776_CCDFD804 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Alexandre Bailon <abailon@baylibre.com>, Will Deacon <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "open
 list:THERMAL" <linux-pm@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13.08.2019 17:06, Rob Herring wrote:
> On Mon, Aug 12, 2019 at 7:32 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>> On 8/12/2019 10:47 PM, Rob Herring wrote:
>>> On Mon, Aug 12, 2019 at 12:49 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:

>>>> Add initial dt bindings for the interconnects inside i.MX chips.
>>>> Multiple external IPs are involved but SOC integration means the
>>>> software controllable interfaces are very similar.
>>>>
>>>> +description: |
>>>> +  The i.MX SoC family has multiple buses for which clock frequency (and sometimes
>>>> +  voltage) can be adjusted.
>>>> +
>>>> +  Some of those buses expose register areas mentioned in the memory maps as GPV
>>>> +  ("Global Programmers View") but not all. Access to this area might be denied for
>>>> +  normal world.
>>>> +
>>>> +  The buses are based on externally licensed IPs such as ARM NIC-301 and Arteris
>>>> +  FlexNOC but DT bindings are specific to the integration of these bus
>>>> +  interconnect IPs into imx SOCs.
>>>
>>> No need to use the interconnect binding?
>>
>> The interconnect is represented by a separate "virtual" node which might
>> not be OK. There was also a recent RFC from samsung which turns devfreq
>> nodes into interconnect providers:
>>
>> Is that preferable?
> 
> Virtual nodes are not OK.

Then I'll try to make the "interconnect" device probe from a soc driver 
and turn devfreq nodes into interconnect providers backed by this same 
singleton device.

Still separate from this series.

>>>> +required:
>>>> +  - compatible
>>>> +  - clocks
>>>
>>> reg?
>>
>> This is deliberately optional: for some NICs the GPV register area is
>> not exposed in the memory map. This is unusual but an accurate
>> description of the hardware.
> 
> Different h/w blocks should have different compatibles. GPV is an Arm
> thing and I'd expect FlexNOC to be different.

The imx reference manuals call them both "GPV" though layout is indeed 
quite different (and for FlexNoC it's not even documented).

The h/w blocks do have different compat strings (imx8m-nic and 
imx8m-noc). They have a single binding document because didn't want to 
create two nearly-identical bindings, I assume it would be fine to split 
later if needed.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
