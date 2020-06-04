Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4826B1EE00C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 10:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71m/LfrW5PQgnrFFjw7nCSVO+Wzbn/c1cGwf5OYyOwo=; b=BNbiFRouQnPeg1
	edV6uHRftlswNqleR9V5giF0iLpKDtRp5qqqsLCQ8VBF3Qj+9UljYxwhv1VxK7Q2IhbM2Ss8FwXjQ
	6vR/L52U4Z7Sx3FtB1Z6yE4PqlRCOOX454D0peeccLrZjxgxKSXD5Ij0gg2bg8b1Nt00sU6HJKrch
	CfaMxPMyF68ewlysWwSmeH7PlKplOSV0F47Q0UMgBUjtaoFardQYIoblzstF4fIEzqgpSdLcs1A/h
	Zv9zRO7GMufmRfqc0gktYWpSgX31BBz8+M09+qd18XqioTdf3lvDHGao8jq4ys55PZ3gKf0miFraa
	mjCsS+/ZzzyLFVLlirEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jglYo-0002MC-U2; Thu, 04 Jun 2020 08:49:14 +0000
Received: from mail-eopbgr60046.outbound.protection.outlook.com ([40.107.6.46]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jglYN-000293-Sn
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 08:48:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S39Fwmd1+mgmJg5tBumdolDJdmtlNAUwlg9k5gbV0uYIb3TtpOi/P20nTIaSZQNegeU+uR9qBplDRKGD/3jlW5cLvocDKuKdN0W1vo3Bt9UR206LEW/XbW00b5rwZbEbMXxjnHUjz2TQD6TmzIAwBqOCFg87xh/g6y7NwVtTIoQCJ/FA63sWjuZKO75B5IrUzaXLI4llqm7USWZ0s91P8XAOfad8PS1s9+OXsLwNOep3J5zS7Iiaw69+Qqh7ErvX6T56gkx5QEg7G/88jeCy/37mkaQVGCWtZ0lxxcHITu/0VvojL9LpSbST6/jZnXWQWxfKrKGFxfJaZtn7pfnRLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jAotPsyawZwJ5rMluZjk9yfieYK/J2akETnxuG7eA0Y=;
 b=crBRZfg9fPubuaCb75dUIuAv2glSTfhC1q5xI0OpTNpOhNwTzXXRo5LW5xQEDg3c3IUz/MoPgxXpMFDjWGAG66Yu6qdTzT63VBbk+pxNPmklRntNJTB5TH9g5T6h0PyliB/XbnhpvAlKdP62Wjd21YragFkx4pSbSgLXJUD+lOqEHfudnKapcnYNLIcKXhgnFMPXV3/TurSa3jmZUGIk3cE54QM0u7w8L5KWzhrRKBSLlaLvTufoPA/kMw3Dm2zR51lxMVCc8tzUpwFYZR+qk6A6CchR9nLOjyixe6NChuBUqbUF4jsvlacvnmplW9xVZo0AwO28Rd5HGqsCnaFZhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jAotPsyawZwJ5rMluZjk9yfieYK/J2akETnxuG7eA0Y=;
 b=m5y3Qvd6X0n7yFItO6St98U3hRrJm2bHzj2tW4c9I7kyDiR8seqZlA9e4b7AZjdXPKKHTAKwEwUGrepnnFTdDOtYu6uWKrNYOVG5vfqvcBUabo4GOOH72nyRj95hzT4HrU711UdvFsFMCTWi+vgQNBFrcCpTSDXMlfDHaRcY3kg=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6742.eurprd04.prod.outlook.com (2603:10a6:20b:f2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Thu, 4 Jun
 2020 08:48:45 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3066.018; Thu, 4 Jun 2020
 08:48:44 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH] soc: imx: scu: use devm_kasprintf
Thread-Topic: [PATCH] soc: imx: scu: use devm_kasprintf
Thread-Index: AQHWOYr3y8sO4+OM9UGcE5imtnnUrqjIJq+Q
Date: Thu, 4 Jun 2020 08:48:44 +0000
Message-ID: <AM6PR04MB49663F85EEE5B1D52EA1AB2380890@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591176572-9693-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1591176572-9693-1-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 39c542b6-7f5f-4b01-fbbc-08d808641715
x-ms-traffictypediagnostic: AM6PR04MB6742:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6742A4C138D2D941348E602580890@AM6PR04MB6742.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:506;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GQMGDIqcC/hy8naA77fj3L5SrqRaTCuwn4/k/TRxEn9ediEYzDaO3S3IDUE5o1BgLJKbRfnnHCbRHEA3bY4cT1hMQpY+Y3BErort6Y1Gw5QVjLTinJoqTTQ8EApgkXC79NXCy4u49Xk/ZB5tmk90DYXzoNKJGkr1uafFWhZWqahMPzytbDm0QYR7r2RqQggUdQaTA2aORvjBtmXByYT4UQCmCjtyqpPP0bs7ERx54tzNzMyyGsXc8jscKAt5X+v44/35LbJOjEXso3o4JEBARuirHqtqcUOlGb6Y/HVVUCndcKlzGh02uWsXttLv5DjYYR3hTD94/JOrQf4TFIfRbg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(346002)(376002)(39860400002)(76116006)(186003)(86362001)(8676002)(66476007)(8936002)(66946007)(71200400001)(64756008)(316002)(7696005)(66556008)(66446008)(54906003)(33656002)(558084003)(26005)(478600001)(9686003)(6506007)(4326008)(110136005)(55016002)(5660300002)(2906002)(52536014)(44832011);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: +V6OGhRSrpV1ie9d5MQvHArVYpXuERqTCZicNuTi+04AgGe9uYxjn4R607InYSbyi5NJ0lJguR5hYtmK2VAHu315iY6k1n1aTo1L1ri6qcs9m/9NkhQ5zK2K6l9Mko1hrvC4ce3MJlj6MYn0Qznt94gbR2hAF0ZKV3r2N9ZrR3RVxuP66sJnwfkQNG2+7GuJwKj1oOV9ygy1i7/K8EN/wQIE+3wTXJuZ4Mpia+HUdnrT0ZnGIAaXynY1I0S1TEAyocgyCvXAyy0QEoY+l5XGvEpP0LLvLweE8WHUIi6xJYld9WFvlr2XeGypQTudbApReiTrmmbWvIH0apG9OX2gnSQKcr0dPWpAVQsvzERhImq8jIRKiP18PjOIHziUiqh/G0M61RuYkhnDIqVj1NWn9Eo6yu1W01vs/n7UqUc9La0P7NwepWS+k8if5R/evQpV2SDkc/FQ0su12wE8wjZwAfq+/rTorls6G5UMn2s9kFTm5criF8mLwYBEh6NLa9nn
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39c542b6-7f5f-4b01-fbbc-08d808641715
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 08:48:44.8784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K68DmJyKP/LXlPhlXOyE5RJhCuNDO/XUBH4VV3IFBhAKEdKGWj9O+x/mqaiNR5XM3vB2MVG1va0lSEynTHS7Cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6742
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_014847_958998_A5609B83 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Wednesday, June 3, 2020 5:30 PM
> 
> Use devm_kasprintf to simplify code
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
