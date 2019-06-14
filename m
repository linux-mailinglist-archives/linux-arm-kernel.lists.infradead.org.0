Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B41445E52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ZdaDczrbYZZ7f/EbsVz+5VNE9WHd69ZFWLJumSbigUI=; b=PIS/y09dG+RpbB
	228GrQSGEE98/kzBG6HVKR4xSh2uKmBqqdguYNaZdyAjIgBQ4GtUCrm/qEfIFmUFCYZ/NNhLRsB5z
	0io6ITyhZDL5Qkrl+EKC2CHmBve9ki213NYY9k2l7zKm10e+OP/iUmHQwjYidnqP2rl36+xiF8hZu
	REnJ/KKtBhMeFgAFNnYaZBqYlEA6cwvGkVouEoC+U69Q2DNFi4WlMl9tfBDw/P7LZU4aUMdQ/Zj80
	BKYpmV02t+VDjtNkCR1wgD0Va6jUgKQgnhHRNAmxf25Ip1hEroZYotUVVsNTQotLV6RuNjDeOf9oL
	bzNXnh5IU8vdLvwnUGSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmNH-0006fS-DQ; Fri, 14 Jun 2019 13:36:11 +0000
Received: from mail-eopbgr20063.outbound.protection.outlook.com ([40.107.2.63]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmMx-0006VE-4B
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:35:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BLPh30Dwp+Zj5+nblSlsnO1DftrGSuafjrdDba9hxNY=;
 b=jMgKJK7jpWA9NGLBO9SMV5a8L00TFymXPNNptyQWVeRKbHSBzRbRaYHeEkf65SwY8elyAdjWgZewmOTwJCdWm3+yRTGOeibC9MbV53ZFlvBNo75YVaYpBhhhlShMKazcVXi8jiLuJJr6HRwdhyU0sk0Ami8bMol8yIosWk6VnyM=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB3038.eurprd04.prod.outlook.com (10.170.228.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Fri, 14 Jun 2019 13:35:44 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1987.012; Fri, 14 Jun 2019
 13:35:44 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: =?iso-8859-1?Q?Guido_G=FCnther?= <agx@sigxcpu.org>, Aisheng Dong
 <aisheng.dong@nxp.com>
Subject: Re: [PATCH] soc: imx: Move imx_get_soc_revision from mach-imx
Thread-Topic: [PATCH] soc: imx: Move imx_get_soc_revision from mach-imx
Thread-Index: AQHVIIbCwVfIn/trTEeBz18QRxUDRA==
Date: Fri, 14 Jun 2019 13:35:44 +0000
Message-ID: <VI1PR04MB5055E78C82E48D09FBA091BAEEEE0@VI1PR04MB5055.eurprd04.prod.outlook.com>
References: <084f934192b7d245034ddd507f348fa13ae840ac.1560279028.git.leonard.crestez@nxp.com>
 <20190612060752.GA2321@bogon.m.sigxcpu.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee886997-08ec-47ff-df24-08d6f0cd33a4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3038; 
x-ms-traffictypediagnostic: VI1PR04MB3038:
x-microsoft-antispam-prvs: <VI1PR04MB30385F1A1550F2AB86E15F09EEEE0@VI1PR04MB3038.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(396003)(366004)(136003)(346002)(189003)(199004)(478600001)(44832011)(6506007)(53546011)(102836004)(5660300002)(6636002)(71200400001)(76176011)(99286004)(54906003)(110136005)(486006)(4744005)(476003)(86362001)(14454004)(71190400001)(446003)(7696005)(52536014)(229853002)(66066001)(9686003)(53936002)(2906002)(33656002)(55016002)(14444005)(256004)(6436002)(74316002)(68736007)(81166006)(316002)(25786009)(8936002)(81156014)(73956011)(66446008)(66946007)(4326008)(64756008)(66556008)(66476007)(91956017)(76116006)(305945005)(7736002)(3846002)(6116002)(8676002)(26005)(6246003)(66574012)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3038;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WcanCCLe+fW4TBUMTsr6jO1b/QADvMtRDvNf+V0cj2rcGdmkkilJ3f6iiCmeL0e/58s3vupu5lVh8cE21JC6WRo4T2YmCRvtAHf/a0UkSiSCF3cswByaQ/stky9KXbMfU+3UYsoPqLV8u7N9wsBverwbrB5sfZfvved1PeBaJKIopw1bkszBIiLEqlIY439nJYZKYtZlMPP8mQnQwosbYDBXFsFnzPfzo45k/dnp7hBu+zF49RiNY4zK3u0LproqSmB80fznOX3wU7b5vlenccE8C0kU3tSd1fS0LwoNeLkCwvrzBF2V/fr3Cg2402GV8D8x1j3XBwdkyXQM5BT7uebl3+67k19RFFGgUSJhONbif0GlXcq7OzqI2QtdONdE2OA3xhyCL7wZ798jaWiGBqCkUuq8x4O+qUw2OB0FWUE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee886997-08ec-47ff-df24-08d6f0cd33a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 13:35:44.3319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_063551_179874_324FFD0A 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.63 listed in list.dnswl.org]
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12.06.2019 09:07, Guido G=FCnther wrote:
> On Tue, Jun 11, 2019 at 09:51:57PM +0300, Leonard Crestez wrote:

>> There are a few drivers which call imx_get_soc_revision in order to
>> enable errata workarounds but this is only available on 32-bit arm.
>>
>> Move the current globals to drivers/soc/imx/revision.c so that they're
>> also accessible on all imx8 with same name and semantics.
>>
>> ---
>> This is not very pretty.
 >
 > I thought soc_device_match() is preferred over imx_get_soc_revision()
 > nowadays?

That looks like a much better solution, thanks for pointing it out.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
