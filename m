Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC61A161E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=nJVYtmS4bzvyGbClLgPtTBPOkd4uIUO50AwwROYrk2g=; b=S7n5h7tdUI3/qE
	7QW+n7Q3EGrmvjEkTm6WzpF0swytzpWxxJIpNqvZSAr/XrcuivxiXqxGiRrxWGTG23yNDcJpB8vdc
	K7k8UMxIqpiCPa81Wx1muMwCVbSvi1jecWpWJu6sEkNrPv29kDmb3buVAVMQxpdyCJu82CeI9AbY4
	Hm/U4GB6+7OfYrOj69g6Ks/VLJRQR0NO+hWu6Y1oji0dpcrYR8K3jNwn3UgRxmOTDIVi725bd8cLg
	B8X0wzW5yoy6u2mBLVVwh6vwwB1xd/SyjSgAGTaL99aZldaO6YxmVwKsVmtoAYAj7tLhtHyY8u2n3
	J0zWsiGqf77L8+koBdQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxGn-00017G-9X; Tue, 07 May 2019 10:24:21 +0000
Received: from mail-eopbgr30081.outbound.protection.outlook.com ([40.107.3.81]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxGf-00016o-VW
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qC5KLEluilj9HPoBxEBUgVb5MMYQWC+BIYnMmL9Plr8=;
 b=S6SkxTd0hY2ni6z1gj0R7jBBzUTu7/xqQ+PjOz1EHj0+Wu1RbeKQzqUjjAW0614eWSr57ija7sQeez8+P5OygoqROZSKMVm2uvxkkr7svYjrknVR58gRP/pqWgPFr1T9WIEuaj/bGV6/Rw0yQdLoy2/EomNElmkvQOOqZB1mB+A=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5409.eurprd04.prod.outlook.com (20.178.116.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.14; Tue, 7 May 2019 10:24:10 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 10:24:10 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: =?iso-8859-1?Q?Guido_G=FCnther?= <agx@sigxcpu.org>, Abel Vesa
 <abel.vesa@nxp.com>, Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] soc: imx: Get iMX8MQ revision for B0 from ATF
Thread-Topic: [PATCH] soc: imx: Get iMX8MQ revision for B0 from ATF
Thread-Index: AQHVAbePp28Sq24nH0ukEcxeJWhXpA==
Date: Tue, 7 May 2019 10:24:10 +0000
Message-ID: <AM0PR04MB6434517A0235C8308D86B050EE310@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <d85c6cfe79f9fc1e7761c952e29dfb2f71cff2c1.1556891520.git.agx@sigxcpu.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56296692-e382-445a-6d67-08d6d2d62539
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5409; 
x-ms-traffictypediagnostic: AM0PR04MB5409:
x-microsoft-antispam-prvs: <AM0PR04MB54096C185BEDA4001C1CA712EE310@AM0PR04MB5409.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(39860400002)(346002)(376002)(366004)(199004)(189003)(54534003)(71190400001)(33656002)(91956017)(44832011)(5660300002)(66446008)(66556008)(66476007)(64756008)(316002)(73956011)(76116006)(66946007)(68736007)(66574012)(54906003)(110136005)(3846002)(6116002)(2906002)(99286004)(102836004)(76176011)(53546011)(74316002)(6506007)(7696005)(66066001)(186003)(55016002)(9686003)(26005)(476003)(486006)(52536014)(6436002)(229853002)(6246003)(86362001)(71200400001)(446003)(81156014)(81166006)(8676002)(478600001)(8936002)(25786009)(7736002)(4326008)(14454004)(305945005)(256004)(53936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5409;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7S6zDAL0B+PMy2PnEFQrkNDmL2gIZ7DS2II4N8Xb8kJMD+JqdQ6xpvr5YdT4TVMoiPSUGvddive5ECEk9mhsTpr6VH2hkxlSIE9Tm84+H75HO/dSa7/i61VOidNcCluEmT8v/tx4U3S64CS1DDKfuWI183lKCHaXY/0MYZMJiPmuC5wq5FWrgohCCugS9z6tz3B3UVipE+w9G0921D9Tdiyg0U0Er9ByvJgcsCyTB/5FBlk+7WSWGa5UrGgzR0pPTef2HDolJNx2RhCWhzlROS1FtEsfzC+E9xWp+K3kbJnGQLDYBetivOvmaMbnjPmBb3R8AcadBLKwZsNcq3CF7fYxY/UtMymmuKnXSQ31Fecjf9EEl3ZtA/802VO74LUUZenjvVgps8XmlwTQcLrL9OZ992XIHvUBml/KWjKNchQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56296692-e382-445a-6d67-08d6d2d62539
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 10:24:10.7599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5409
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_032414_105119_07C39881 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 03.05.2019 16:53, Guido G=FCnther wrote:
> This is similar to what the BSP does and needed to e.g. determine
> necessary quirks for MIPI DSI.
> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> =

>  From the list discussion and changelog it's not clear to me why a
> different method was chosen for the B1 silicon so I left that in place
> as is and only trigger on the B0 silicon I have here.

Fetching revision without an ATF call was done for the sake of avoiding =

depending on ATF as much as vendor tree does. I'm not sure avoiding ATF =

dependencies is a good approach.

The imx8mq reference manual claims that 0x3036006c is should be soc =

revision but that incorrectly reports 0x00824010 meaning "A0" on all =

chips. So some nasty hacks are done in ATF instead by poking at ROM and =

OCOTP.

There were multiple discussions also for GPCv2 and 8mm about how much to =

rely on firmware. I personally think that duplicating ATF workarounds =

just makes supporting imx8m harder in Linux. Don't we want firmware to =

help us with silicon erratas?

> +#define IMX8MQ_ATF_GET_SOC_INFO		0xc2000006

Any reason not to use original FSL_SIP_GET_SOC_INFO constant name?

Since ATF can fetch revision for B1 as well it makes no sense to keep =

the old code if we switch to using a SIP call, just call ATF always.

ATF upstream currently has 8mq support but no SIP call for GET_SOC_INFO, =

that could be added easily.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
