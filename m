Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A452C7E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=BJyJ7YmjJRhfwUz3RST1aMpcSs314Qtv/bL8REXpWDM=; b=G/TL5SV6EsdzkM
	tc5G+DY8ixlDr3SfeD5HLkJm9lAG9YVhv5FEBczD8VB6xOBkUwf33bzyfaXORGu2GovyEe/SrsLFa
	aeAltWBdMwYHE/RccUh2gH5fsxA427H/eSnxwbpP8ULgi7X58hgxOG4ondQPq9wiZQjMxcuF4ckno
	fkp+jdUn+c1AVj0vDcgH/0bi1U0Wc72sKnDx5w8i88oUakeWljvi43hf+ZzbdE9B6TMyvL22+pDgz
	dyKOUmQoDxPBpQx0P5aKlrIlu+ygl1J4cpQXHPJmeJ5HlkR5vtqCiVciOLIoIfTcsRxy1t7CqW+Rp
	tAxqOvnSsZ81VakMyD2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcJ9-0000bm-DJ; Tue, 28 May 2019 13:38:27 +0000
Received: from mail-vi1eur04on0627.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::627]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcI2-0007xF-VK
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:37:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p2dOFtwREv0U+Q0wESCenZac7wlxESExSIWpm12qi1U=;
 b=P2Q67/IWgJMc24ecQE4Zl0FQp7ocknRB7qw6YvyoX8TtVF87k9dD1iimvSat8hz7fpS1kpTTl+tXYCemYWOhx3VI4MZEOgZiyi/HeiZP+HPrESY1baqGIVXzbOCM737533uSYf/53JO3yTb4q3VWUrRSSgmUy5mWZLgPebShVh4=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB4960.eurprd04.prod.outlook.com (20.177.49.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Tue, 28 May 2019 13:37:15 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 13:37:15 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Lucas Stach <l.stach@pengutronix.de>, =?iso-8859-1?Q?Guido_G=FCnther?=
 <agx@sigxcpu.org>
Subject: Re: [RFC PATCH] soc: imx: Try harder to get imq8mq SoC revisions
Thread-Topic: [RFC PATCH] soc: imx: Try harder to get imq8mq SoC revisions
Thread-Index: AQHVEKAZarE5OuVeAEC7HAm8UuJafQ==
Date: Tue, 28 May 2019 13:37:15 +0000
Message-ID: <VI1PR04MB505574DFE06BFF0A894C22F0EE1E0@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <20190522131304.GA5692@bogon.m.sigxcpu.org>
 <AM0PR04MB6434B72679CD26C22FFB420BEE000@AM0PR04MB6434.eurprd04.prod.outlook.com>
 <1558532450.2624.44.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 447cde2e-1c71-4c0d-c210-08d6e37198fa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4960; 
x-ms-traffictypediagnostic: VI1PR04MB4960:
x-microsoft-antispam-prvs: <VI1PR04MB496065E59D80A237710AEC56EE1E0@VI1PR04MB4960.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(396003)(39860400002)(346002)(189003)(199004)(305945005)(8676002)(68736007)(7736002)(8936002)(81166006)(81156014)(3846002)(2906002)(6116002)(186003)(26005)(110136005)(53546011)(6506007)(54906003)(102836004)(33656002)(446003)(76176011)(486006)(316002)(476003)(99286004)(44832011)(7696005)(86362001)(14454004)(229853002)(71190400001)(71200400001)(9686003)(55016002)(74316002)(25786009)(14444005)(256004)(6436002)(66574012)(52536014)(5660300002)(76116006)(73956011)(66946007)(66476007)(66556008)(64756008)(66446008)(66066001)(4326008)(6246003)(53936002)(478600001)(34023003)(148693002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4960;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pUJMATtwU0KPpFgHOm3KnquYSnwpBH4Rzt0gRXpf4BM+Xq5cQtq4QMUV2l1+6m4p16U2e1uiPHqhZZA70B9f3qx+DXr253lDjHtS9M1q+LhFUfGqEdrjvmu/vF329XIOQQpWTIMIgTfhMqRdSlDvCc7fj2qC3ycSfYXqFFCBzFcYpY550WO3mHPjw1HhXknpbD0bniWF5BZOd8P/xb1JMKq4Y+O+aF27ZS9gsokq/yd6osWdnxf+/3IsXfY151TsJLJ7hxpUZd8cUVmVYtRMmeXIc9cY47rI+yfNg24q3Gp7jd7d1coknxgNbpKmFiKRR0QdPVWAn6fk/sKOjuur+rwyNGdPPRQ+613/wFR5C2Y8SiocT3b+BwwdyafBuGANDyJmB47zH+Fr3UVTHvF4TFiaV+n+nZq9JC5XyjH76ME=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 447cde2e-1c71-4c0d-c210-08d6e37198fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 13:37:15.5654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_063719_597922_DFB4AAF6 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:627 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22.05.2019 16:40, Lucas Stach wrote:
> Am Mittwoch, den 22.05.2019, 13:30 +0000 schrieb Leonard Crestez:
>> On 22.05.2019 16:13, Guido G=FCnther wrote:
>>> Subject: Re: [RFC PATCH] soc: imx: Try harder to get imq8mq SoC revisio=
ns
>>> On Wed, May 08, 2019 at 02:40:18PM +0200, Guido G=FCnther wrote:

>>>> Thanks for your comments. Let's try s.th. different then: identify by
>>>> bootrom, ocotop and anatop and fall back to ATF afterwards (I'll split
>>>> out the DT part and add binding docs if this makes sense). I'm also
>>>> happy to drop the whole ATF logic until mailine ATF catched up:
>>>>
>>>> The mainline ATF doesn't currently support the FSL_SIP_GET_SOC_INFO ca=
ll
>>>> nor does it have the code to identify different imx8mq SOC revisions so
>>>> mimic what NXPs ATF does here.
>>>
>>> Does this makes sense? If so I'll send this out as a series.
>>
>> Mainline ATF has recently caught up:
>>
>>>> As a fallback use ATF so we can identify new revisions once it gains
>>>> support or when using NXPs ATF.
>>>
>>> I'm also fine with dropping the ATF part if we don't want to depend on
>>> it in mainline.
>>
>> Linux arm64 depends on ATF to implement power management via PSCI:
>> hotplug cpuidle and suspend.
>>
>> It is not clear why Linux would avoid other services and insist on
>> reimplementing hardware workarounds.
> =

> I fully agree. We should not duplicate functionality between ATF and
> Linux kernel.

Excellent, will remember this when debating who should manipulate GPC.

Guido: Are you going to resend a variant of your V1?

You mentioned that you need this for erratas, how exactly are you going =

to fetch soc revision from a driver? For 32bit imx there is a global =

imx_get_soc_revision(), maybe the definition could be moved from =

arch/arm/mach-imx/cpu.c to drivers/soc/imx/revision.c so that it's =

available everywhere?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
