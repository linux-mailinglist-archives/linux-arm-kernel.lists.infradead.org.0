Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8E31E9FD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EheilHpfFPQ0O3+x1GYShYRoLlANjqX7JkSCyf6dLXI=; b=rEauZd4cPb+ddp
	y1H0A2hTnTbyOrI18BYsQgYyDdPOrBt8yLEyHVuPZybzHd9+CzBFnS2+15CWEtoVN99YNUb9KfOUH
	G9cf4lnWcr2PJycglAT/XF4Sdjcj5aP0e3Prj2c5PLWGzjXvq62k2NB9UQt2M8IaySBtJ2mNSuIT/
	HeFpTCy7AmWhJFm7S27Tl2Zx9HZDSVRJhukOzjJVbN0IFEK5k7DybKpv0AXhFlQY8521/5NLPdh3I
	FJgsjzB1HmPfNnyVbCUAu4hS5a0kDape7YLRq8zqKW7sqijsAikspHCo0hhj0Xp81g+1PHO2lwWgo
	+D73c1RUwXBlZcEs6wLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffVx-0003vI-CN; Mon, 01 Jun 2020 08:09:45 +0000
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffVq-0003uG-DT
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:09:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VT6WkpnV660lFVf/CKbAi4LuNU4/hOGp9TwUXt+G3/QzhlVUHkEMi/Gg62gInkGtddhyAA/LXHQ2LKn6XvUiWCyfw1FhCYAw8Ue8ZjKaOP1tMGIe8nt5aedjdFzjoCO61REdat8AIJj5IfLGlCEC5VNUDX7iUTXvOsavkEypyXjHURfx2g8zAAKbAbZ32k2Sjad7amiEkLztcjki/5X2AISRLyUu3a9dXE3NgHPMwtghIPTOHaRLk5t7iU/usiibCzEEzoMl7Qq8YusFrahz1VcwmX1xi3oFONdmzQ9Q5N00/XEYGlETKCZAUu4sJT8Zj2A/N0ZxM5MAIgsQtL7r1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tlldKTPOzRl5uttcYkLCLC0NNsanvqPm3xO5cx6nxFg=;
 b=YG86M6BhKtg6c+wkjDBWOwxDrpoeYe/xd80pgSy6KhjuFXFJPqJ6EYer4bH98Os54Agdf4oj+ggjv9nK+qyiWEKwKIVwHQi1E5PpDKCfm2Vgin0tAI2GPasKk3yamaE+lwwPJa4y0k1ybCBhrUy5QkCrWpOi8VTS8cAaTC8iDs3DKc5h9SFql4DL+MuvynGrxUjpzLMSXZvbUIamRtTxzIiKI8VERxW93l4ue1mQcJLikQZavZuGgWS9dFNnVloHuAa4D0vDDDLNVx5apKZlv+3Y9WikI9zpTFJr+QcjV/ps44j4EbFLvSIDSlL3K7ZgcnkgkrKE+N6y8ngvsEhaig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tlldKTPOzRl5uttcYkLCLC0NNsanvqPm3xO5cx6nxFg=;
 b=m61rMw7VrWmjanwk8sTZ4YCTtQcKxrQagPJY8mn/Rhcw8M2zs0BMVi2nWAFSVcsiIhQJ6mKb+M5GcoKotdfZgzcx29XG2XYqgBkDUb3U5Uac67lxprBAoa34zpJdvnB36nujn9Y3dylhuIq71m+SHNGd+Wod80vBH2J/RLOD45k=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3724.eurprd04.prod.outlook.com (2603:10a6:8:5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 08:09:32 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 08:09:32 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Fabio Estevam
 <fabio.estevam@nxp.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "jaswinder.singh@linaro.org" <jaswinder.singh@linaro.org>
Subject: RE: [PATCH V2 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
Thread-Topic: [PATCH V2 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
Thread-Index: AQHWN8hdDs3JBnTPuUm7D5bEkD1mjqjDYSYAgAAHK/A=
Date: Mon, 1 Jun 2020 08:09:32 +0000
Message-ID: <DB3PR0402MB3916D64DEB5D5B578BE6DF4BF58A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
 <1590982999-7149-2-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB496668011F3AB2BEEEE6D1E1808A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB496668011F3AB2BEEEE6D1E1808A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1a39e6d1-9eac-41fd-cee6-08d806031dd2
x-ms-traffictypediagnostic: DB3PR0402MB3724:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3724DB5B879090C53372DEB6F58A0@DB3PR0402MB3724.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:126;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UG+0Id70VFVk55MFZ7FhHFL0YuvDPTQEbqUTmfV8hIHAwko7v7wOuaX3i2K3TBwZbtuuiMXD5seACU2ILeNsX5MhoyEL4GyxLoTrVCEuYetmAeXikEUrMY2hf8ecz2NefUjpRm1CMtuptrdM/b53hwku8v2Gd3zcXOCFvxyLNi5tifS2QiprHynL4recSWAiI+erQGyEiaWqfFKJYPr/BDP5CEedvxO74QS77Vdz92Mlc23qZrRcnwafzU2PPQjaND/4avwujH1i2VIR+FzGyac9mujbPSn0GcJa7nLGUQyeRSTv7asYARbkQwhxE2T15uZwM3l7Mq9Tf8aR2TgzPJW4hAbVQSinCf0j9Mxf6xSuYwjhN3tCCdcqZ6IVod7j
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(346002)(39860400002)(366004)(396003)(4326008)(33656002)(66946007)(76116006)(66476007)(55016002)(83380400001)(9686003)(110136005)(64756008)(66446008)(66556008)(2906002)(8936002)(7416002)(8676002)(86362001)(52536014)(54906003)(316002)(5660300002)(71200400001)(15650500001)(44832011)(478600001)(26005)(186003)(4744005)(6506007)(7696005)(15585785002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: GJybro2uFAwwHbsI/IMmOatz7CBOHMab0YouHb9hRxF93SkIFb2QLfpcLcgaOEQv+t9pxPD/ySK/zm5R5E8+xpcrivYakv7Xl+NyL3GIXn8vR59JlZT01NEPX+gKhlALX4M/tJPH+l/vG+Sk0hnz3GF5ZG4NStsZ1Rdr/0pxcdq4z732Xpkk722yyk38k/veAUTTBN1FbxAirxn0aKqn3OfmyaSIn8OAwVw5tDP+4RjbOrBUCwaSMU+sDoKuLBxblsi5uvlIN0zSgl+1aAWtDpmsoovo9nrTbXX//UKdHKCxgjMRnfVPOCicnaDlfLvO0AdB5E2CL5xooar72JUOefq1+qh7W8kiafW0tbJnlCuqTszwlglKEDIL8FQ6E/q5JpLkhEQ5uOhJny7AAPXa5IjVpl3VZyY/q0qWfmWd884u62Xs5AsbkyIecyI9jTWheetYjLc+6myL5Iucyur2fWIGBl0wpqpxLi7NtIt5j3U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a39e6d1-9eac-41fd-cee6-08d806031dd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 08:09:32.6949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MmiRy5K4jlgw0gUuoiI3tDdST2fIJGlY6QSOECi21GnzWIoKGQRbXNtAa6PxFhGxCpr2ufPr4ytReFR+R5E5dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3724
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_010938_451679_E9473A70 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.72 listed in wl.mailspike.net]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: RE: [PATCH V2 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Monday, June 1, 2020 11:43 AM
> >
> > Add i.MX8MQ/M/N/P compatible string to support i.MX8M SoCs
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> 
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> BTW, Anson,
> will you continue to help convert MU binding into json schemas?

Ok.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
