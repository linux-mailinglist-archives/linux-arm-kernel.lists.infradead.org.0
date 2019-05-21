Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5E124E67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=NXWM+lLb4Kqrko0pMSx39LBH/2Pm4+1vPAWeHWGa288=; b=ZAaz2xMSs24Dmx
	rFd7V+KvIKxqVWYPzRQjTbALyHgFF0TvR4JWoahrpj9k9C9b23lobt9Up0R18b+gBX15y4JIoTSAr
	h8y1tVwevfMol4bMNSeV19irBd9mXc8uJ3MG5OLp/GJKsk/TbNGScwjOkJwHLK79n4qD33OrjM7wN
	nH6PS1FVeVH6/YIMpLU4ALn27GPGVDff28kBx/NGXLTX813YbAT8Q3aubiJUBU1Np5fxKaNz8VqlB
	e/A8Q1JjlqDrlBKhOm2TqYMQ2yWPQWZkncLlYeScESpiu0N45OKtSn6Mx3Hz2FouSeqmjAikvweMQ
	KQxvSx+pNeJjqftEZOpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3O4-00031D-F5; Tue, 21 May 2019 11:56:56 +0000
Received: from mail-eopbgr00056.outbound.protection.outlook.com ([40.107.0.56]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3Nx-00030s-5L
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 11:56:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FgVT2qP2SQOOboMmc/xn+tAXclaaek2eRiUD0EEONJk=;
 b=HznxYoXMlBJMvTsLAzPNe9jbzDXj4Yj21XAz92/hr21MDuEg+ybLj5D+HSBmLdGBFJuybbRffSMKWHdLS72CfoxzplgQNiOIIDxIrRdAL1DxfIJLfah1TgBG+FII+aNRZGMWAhzMgnIZQ4yBs1dj1z7ij3Hq4WfpOEGnPVdDuuA=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB6051.eurprd04.prod.outlook.com (20.179.35.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 11:56:43 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 11:56:42 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVDHRAx0Mm9bAN6USp/nK7XaFMrA==
Date: Tue, 21 May 2019 11:56:42 +0000
Message-ID: <AM0PR04MB6434643CA1A6807347DCAAF8EE070@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <1558071840-841-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d04d11f-fe26-4707-0c91-08d6dde36452
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6051; 
x-ms-traffictypediagnostic: AM0PR04MB6051:
x-microsoft-antispam-prvs: <AM0PR04MB6051A8946C3B220B050C2956EE070@AM0PR04MB6051.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(136003)(376002)(366004)(396003)(189003)(199004)(14444005)(99286004)(2906002)(256004)(33656002)(71200400001)(558084003)(71190400001)(6862004)(54906003)(68736007)(52536014)(55016002)(53936002)(9686003)(81166006)(8936002)(6246003)(66066001)(6436002)(6636002)(8676002)(5660300002)(81156014)(229853002)(7736002)(26005)(66946007)(73956011)(316002)(66476007)(478600001)(66556008)(64756008)(14454004)(44832011)(66446008)(25786009)(486006)(186003)(86362001)(476003)(7696005)(76116006)(102836004)(76176011)(74316002)(446003)(305945005)(7416002)(4326008)(91956017)(6116002)(3846002)(6506007)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6051;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hES89Xu8L/pJ3/H1GgjpsVXovvb0UXnD/nNCGgfcid1gfqpeOxLh9U3nQm938jnwMR581JREEsgnLp086vUnVD+BDmC41eKkcf+cP9OxEXVtBg5oFOZ2Iyicxi55eeeAMzOPDj2KS5KU+10Ct83oG+kp4Pj3568Jn859jmFjM6JIEXwx4cHBSIkXJOkI8mhKTlmM/X7V+ksg9Np2GIF1orumfoTdSb9ruIBt6e8xcU8/Skpwtc6Ey3uifl8y8qzFz+mt0/lGjcwvoPDKNFuwn8M0l9+s0g4yb3Re/KtXCXEFj82naPsuNskmTBQDFrD7tf6Vx+D7XEOQaWTZshni8rf1nCzcCGAL5P5TMeVats17Ue10NmfvD9H8bVgrPTZOHX2mmagDKoRpf3tuBD9x1GwFXaRsB2VW2Ji/CY1iTfs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d04d11f-fe26-4707-0c91-08d6dde36452
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 11:56:42.8438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_045649_206349_3209A08F 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, "olof@lixom.net" <olof@lixom.net>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/17/2019 8:49 AM, Anson Huang wrote:

> +	root = of_find_node_by_path("/");
> +
> +	np = of_find_compatible_node(NULL, NULL, "fsl,imx-scu");

It's possibly not very important for root or FW communication nodes but 
you should probably of_node_put those back.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
