Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC9017447
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 10:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iAgBX6+CunYFK5uLFX1UngwPbtwMZQJk2TU5+cqSdK8=; b=fS+otCcVzgnJWp
	2zynGOQ4AMpUhYLcjCI3ZmsenjqupKRPvXx9wCroD9tVsHmcULnL5csoMNKbjSZO3ODlP3+r+o0zH
	NQK4/SchkQQq/Env/n7WFh1INcVACw3JWqhWbILYUAgiQLuRkEoAtdmege0CY+ZuAc0udqH71uiLo
	K9v/VN6Ib3vroU6Lr8LsP9u/JdVi0DPEeZCjs5K0DRGjh/4n/3xSZNQ5EAYNX6PndjppuJ2b1JPcI
	ylGHmEforaUogZ8/uQmHgLAW8/UIArzrrjDpgMXOdR5jzFfFofPpHhTbagnMSLjLdrsgwk8qNosJF
	/lDBJn44vWz6HdrWmTMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIMA-0003D3-UG; Wed, 08 May 2019 08:55:18 +0000
Received: from mail-eopbgr140081.outbound.protection.outlook.com
 ([40.107.14.81] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIM2-0002kX-6I
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 08:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nHb5LJv20Q5O9jdPtsC9fwKknptDkDztqI238O1UoP8=;
 b=QMbPlLttgabSxTINnzgwwjywd67Tpw1STZKX1DPozczORGzpTa16ecaO66sZ/44f2CaBDG1u4a6Xmn7efM7kV7eedDanRiyce/uGO1lN6GiAjjuSSd+ZXbGdtjVr09YAEVFy29OgS3OfVTdc13AsoK4OOGhwfqwNaw5vNUSjEJI=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4625.eurprd04.prod.outlook.com (52.135.147.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 08:55:05 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 08:55:05 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>
Subject: RE: [PATCH V2 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Topic: [PATCH V2 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Index: AQHVBUmS8YEY+TS9pUGxn5n6MqiHxaZg7LWw
Date: Wed, 8 May 2019 08:55:05 +0000
Message-ID: <AM0PR04MB42115A523D5CD5FFF8144F0C80320@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190508030927.16668-1-peng.fan@nxp.com>
In-Reply-To: <20190508030927.16668-1-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f688312-cff9-4489-eac7-08d6d392dda0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4625; 
x-ms-traffictypediagnostic: AM0PR04MB4625:
x-microsoft-antispam-prvs: <AM0PR04MB4625C4D6444B28B223A297EF80320@AM0PR04MB4625.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1013;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(396003)(366004)(39860400002)(189003)(199004)(8936002)(71190400001)(71200400001)(66066001)(44832011)(4744005)(102836004)(68736007)(446003)(11346002)(8676002)(486006)(81166006)(81156014)(476003)(2201001)(66476007)(26005)(76116006)(55016002)(229853002)(52536014)(73956011)(66446008)(66946007)(64756008)(66556008)(6436002)(7416002)(256004)(316002)(54906003)(53936002)(9686003)(2501003)(7736002)(86362001)(74316002)(6246003)(4326008)(33656002)(25786009)(305945005)(3846002)(99286004)(5660300002)(6506007)(478600001)(76176011)(6116002)(2906002)(110136005)(186003)(7696005)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4625;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8Evv7MNWjQaonCyYrzEwHAUNn+Unl+5TsajMFsvkfwvu7Z29MDwzfU4oqqeCcSamjPsXUiw6QMQO2jfBllwulLtuzoTyMWePueOqf8D8ua/YuViDf7xVBsnbL3VPYmejZagbGYlxhmtI7ydMadSH++nrFjXdz8IiNxUNTf3Bca0e61OzyGt+bY9VVhAv40s3xYVOP7mp9EEuROinq6HFWVeKMhFfF3G6Ie0wiwShJmWOREeQ/aD9QGKuFJoWVH5wsV6EOBxYYQRhrDfIsBWeshztvt0b5hD0GudlhsxGP5dEKaFbJWaUX233Q1ZEJ4+qumOAzFEjk2Pr9ZFTpveG6pME1lx/cDTuW2RFrWTz/gktjC1e9vmkIBQ2/UciPAFK6Q5+2/RvHtDWKZk+22CsNVfnIjHvaGekrdhk17yvePU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f688312-cff9-4489-eac7-08d6d392dda0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 08:55:05.5201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4625
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_015510_308266_8D0F35F3 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan
> Sent: Wednesday, May 8, 2019 10:56 AM
> 
> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> controller(SCU), the ocotp controller is being controlled by the SCU, so Linux
> need use RPC to SCU for ocotp handling. This patch adds binding doc for i.MX8
> SCU OCOTP driver.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Aisheng Dong <aisheng.dong@nxp.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Anson Huang <anson.huang@nxp.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
