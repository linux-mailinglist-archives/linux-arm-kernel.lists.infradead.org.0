Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD0E1EC01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=KlgKvjpxpJxQ2zsj9fK7vc8zYGdn6zUqnFJsgIOTNIc=; b=Vg4INshj1Qg/ML
	Gqcc8w60g1TIK3wFcQpYmKIH5r5n4dw54yWUtq916znP6pk8SPxxl4AyICLLrMcQR6N840b7XNrbB
	qSqD+m/N0C8GkxsRS0I+rqMeIASz7SzN1mKYS8Qmru5vkg4G03ljBbKJNfe2SvKneXu/3+QFq8W6j
	yWQIYs/tuvM0qYnOdTcjk0upPnPkigCk5NRzJCILsTNGOM/L2ARysZXXfpkMISDNBq7SAPD8JPYCJ
	8rNiU6/l+gcztCUilY3Fo37xwe2QVguY5KtSu8E7p5gXN2ZWhtVYAblCKa3Qq5iiRf7EOfTl+4B8K
	UvwV9YfSclTm30bibk+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQr2T-0001jd-Kf; Wed, 15 May 2019 10:21:33 +0000
Received: from mail-db5eur01on061c.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::61c]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQr2L-0001ip-Lv
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=geRomdKdzguPpN2SHaCR3vn0+oug+K91JuLc2exQDnI=;
 b=lTeV93aJyHmj4OoEyhi4TeL9U9XqqPSsho1wJq6HMjCdQcW9wXM9LGn502Lnq1dwyY4Mr/zV8CghqNBHZTb6lj8VBZbUtKtL3sM/qME7NgzJevoLzGAV+dm27fuBy0N78ZF5pUy5ZW8zjFz57u10RJeoTpcNoJ+Un2pBcZ2j3cI=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5188.eurprd04.prod.outlook.com (20.177.42.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Wed, 15 May 2019 10:21:20 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 10:21:20 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "sboyd@kernel.org" <sboyd@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: clock: imx8mq: Add SNVS clock
Thread-Topic: [PATCH 1/3] dt-bindings: clock: imx8mq: Add SNVS clock
Thread-Index: AQHVCrrVEeSa7rFIWkyl1S849ZKcvw==
Date: Wed, 15 May 2019 10:21:19 +0000
Message-ID: <AM0PR04MB643421C90D4EA29B65332171EE090@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <1557882259-3353-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc2400f7-fe45-4fc3-3dc7-08d6d91f12bb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5188; 
x-ms-traffictypediagnostic: AM0PR04MB5188:
x-microsoft-antispam-prvs: <AM0PR04MB518866C0D15690E0FA4CCA78EE090@AM0PR04MB5188.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(136003)(39860400002)(366004)(199004)(189003)(53936002)(3846002)(6116002)(7696005)(305945005)(6436002)(99286004)(52536014)(66556008)(229853002)(66946007)(66446008)(64756008)(66476007)(74316002)(76176011)(53546011)(6506007)(71190400001)(71200400001)(14454004)(91956017)(9686003)(55016002)(8936002)(102836004)(86362001)(54906003)(256004)(110136005)(81156014)(7416002)(81166006)(2201001)(8676002)(478600001)(2906002)(73956011)(76116006)(7736002)(26005)(2501003)(476003)(446003)(5660300002)(44832011)(486006)(4326008)(316002)(33656002)(186003)(6246003)(558084003)(68736007)(66066001)(25786009)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5188;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N7HC1pPVQYBSQXvJBNhD28lTQygfUF5xDZlbDiXcPpg9zUzAd5HGhpjdyWh0R6yWr1+4n3d76kl+HPrsbdlSDtSsOjFBj6kI2zmg57MMCutRd4r/X9jNXc7putrA/BLEGbSue6R019oYUAjA//zrn8jXBqeqIg8Aje1tJw1eW5MPCBnhOw5M3HZOIweDKi3XECpQe1urkmWq38J2Tb+pbJa6GG7k72FvP+fQMklEvOKegODNmV26H0ZceFr2K99+GdhlrdKhDoxODjIamWIc6g5AeZFnPcDGrJqGf+O/LnVvXjHBTEYBdNE9i5AE4LDZjf9R0stqV3bPRh2dk9U7QN65jQCfp4zv7BR5iWJbs7tWqOeVMYY93bEeJDLBwKgF4ywJzQFkslawEiYvGmjlmhnTZWsOP891nhSjVfUTIYE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc2400f7-fe45-4fc3-3dc7-08d6d91f12bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 10:21:19.9419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_032125_726785_B53951C9 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:61c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, Abel Vesa <abel.vesa@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15.05.2019 04:09, Anson Huang wrote:
> Add macro for the SNVS clock of the i.MX8MQ.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

For series (couldn't find a cover letter):

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
