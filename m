Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF356264BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 15:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=1YB9JsMm5gPULGHMQKCyx0uocBI5pZlKw5LdsDgAPVk=; b=s6qVyXdi9+K1vB
	bAZPrpJSY5mu3SZ4xtT46KNUqkYjdkewOnLSuowVDHnVU9z0CDSSTq8osWgsBztsDdYlcWKTZmXpn
	G+0PeGBUtvS5z0YqeDbsafCAzKiJkhmRnNmy+24nmPOd/KCb6ya/s12dgO7zVv8n45Ed4l0kZeu90
	Oh7At7J8llcGLZ/fW7/d1jo7PSOGN19TNH+MbAMafhUj7sExbMB8tZc+9MT7T9kC74KwybHlgosMv
	xw/vsa3qklhxskJiL8WC60KCODsYsGPphg0KgFWcafKtF+jsBMglWFIbZqZ/D2vzF36t7sjqevnYU
	On+mtyNpNgDUBNafUB1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRKk-0001dF-Vl; Wed, 22 May 2019 13:31:06 +0000
Received: from mail-eopbgr30088.outbound.protection.outlook.com ([40.107.3.88]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRKd-0001c2-E9
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 13:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v4EG07VKQFTwcomKXGlm4Oh2OlESk4AVCJdnNIXgl4k=;
 b=aZ7BKWehm30RpRmy/zMSTExZzVxCHxU1doFEMphfdqriOvZaqxYkge6gTCaP7qRcNvWiIYVpuU5qR97vJH20yYg2ztofdDVxQarKELmjUyF0aBePgEAG0PX6JKXD5CgT048J6Bd9GAExX8xyLr7kmEcV5VSeqaHEACOaUfY/NGE=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4404.eurprd04.prod.outlook.com (52.135.149.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 13:30:54 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1922.016; Wed, 22 May 2019
 13:30:54 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: =?iso-8859-1?Q?Guido_G=FCnther?= <agx@sigxcpu.org>, Abel Vesa
 <abel.vesa@nxp.com>, Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [RFC PATCH] soc: imx: Try harder to get imq8mq SoC revisions
Thread-Topic: [RFC PATCH] soc: imx: Try harder to get imq8mq SoC revisions
Thread-Index: AQHVEKAZarE5OuVeAEC7HAm8UuJafQ==
Date: Wed, 22 May 2019 13:30:54 +0000
Message-ID: <AM0PR04MB6434B72679CD26C22FFB420BEE000@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <20190522131304.GA5692@bogon.m.sigxcpu.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd638ae9-b715-46ad-ab60-08d6deb9b720
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4404; 
x-ms-traffictypediagnostic: AM0PR04MB4404:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB440473E3A23A9CC6A496096AEE000@AM0PR04MB4404.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(99286004)(6436002)(446003)(55016002)(8936002)(26005)(186003)(81166006)(81156014)(9686003)(6306002)(52536014)(68736007)(102836004)(86362001)(2906002)(8676002)(44832011)(498600001)(6506007)(53546011)(7696005)(14444005)(256004)(76176011)(66066001)(14454004)(71190400001)(71200400001)(966005)(33656002)(5660300002)(229853002)(110136005)(4326008)(6246003)(66574012)(54906003)(53936002)(74316002)(76116006)(66556008)(25786009)(7736002)(305945005)(66946007)(486006)(91956017)(6116002)(476003)(73956011)(66476007)(3846002)(66446008)(64756008)(34023003)(148693002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4404;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RMQkG9PsX93s1YfJ8SjIt6M4/7z564V+vFvfDZNTiARNUJSHhWeIBIvWNx3pNdwoYOXrU53aORgKHKBzbQBMLYHtVpE5Vw0DhBtCBiTUYpVJDb+Zd4v9/6nqJZLR8u3VIQu5fbKisLHkxtzQCgtQgKt16ZE6wtQPgfkEO5p8IjFMIEtYxmNaGMR8WKfWM4JJnahEayMMMa8p4xhGnIeaTf4V1M0actAq+BjLOGsVoyunmYBMzxG/TL2o6Kczxhq73ZZ2eDm/D3tizj3cgd0mLgE5MwLx89d0FTe/AiS/IxPo7bqcgmdj4Qk3TsNcLZX6xTzl6woLtMyXaRfmaBfTsgYWCkY0a2IhYf6kNPqCuthWBDkw0OM3qqdK5Woq6yA+OJakMtkg+vgSYLIhTLDI4lVMbtVuiMjJ+G1YqnZ0Joo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd638ae9-b715-46ad-ab60-08d6deb9b720
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 13:30:54.1471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4404
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_063059_786625_A5045D90 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22.05.2019 16:13, Guido G=FCnther wrote:
> Subject: Re: [RFC PATCH] soc: imx: Try harder to get imq8mq SoC revisions

Fixed subject

> On Wed, May 08, 2019 at 02:40:18PM +0200, Guido G=FCnther wrote:
>> Thanks for your comments. Let's try s.th. different then: identify by
>> bootrom, ocotop and anatop and fall back to ATF afterwards (I'll split
>> out the DT part and add binding docs if this makes sense). I'm also
>> happy to drop the whole ATF logic until mailine ATF catched up:
>>
>> The mainline ATF doesn't currently support the FSL_SIP_GET_SOC_INFO call
>> nor does it have the code to identify different imx8mq SOC revisions so
>> mimic what NXPs ATF does here.
> =

> Does this makes sense? If so I'll send this out as a series.

Mainline ATF has recently caught up:

https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/tree/plat/imx/i=
mx8m/imx8mq/imx8mq_bl31_setup.c#n52

>> As a fallback use ATF so we can identify new revisions once it gains
>> support or when using NXPs ATF.
> =

> I'm also fine with dropping the ATF part if we don't want to depend on
> it in mainline.

Linux arm64 depends on ATF to implement power management via PSCI: =

hotplug cpuidle and suspend.

It is not clear why Linux would avoid other services and insist on =

reimplementing hardware workarounds.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
