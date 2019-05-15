Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77831EBF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=nu38MxG1QkpYd9I5mZtZW4X7oEA91INdpfoRrimG3Nc=; b=KgpuhRLOJYUmbI
	oofdkfuEqUFvt0CP7IIWwBjNyUFKeLEZBg7RglLE63Dub2K4vkx5MlHRFlnDUOK12Yoa9iITtYkV/
	8apPPyqU+l4A2dL9qKsu470mgITOjRBXalaQYHdaSJ0yWviy7w3do4+SnKo803WRcUU5B/mPwXUcN
	11NMsGzN8xpFhEUNX/V0/Si8tI006H2k1etG4RdsK5lOLsHng3abeud8LMiiup6wWhASUV08ySBdt
	ALMfBzScDqmlLfb2k+JmZaGSqMWFuiJIIAZQqiNhsku9hTvBErx7Vo9xlsTCHFPRV9xJr4BSoMddc
	jYL+xZIjvX7Q/tVEDHmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqzG-0000Ch-8T; Wed, 15 May 2019 10:18:14 +0000
Received: from mail-eopbgr30071.outbound.protection.outlook.com ([40.107.3.71]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqz8-0000C5-5A
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:18:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0386bGqBUlrpKJ7sb4LcZ1cjokOu3IerXdD3TeN5MeI=;
 b=X6Bc/ZIV5Jo5fWGIXglUNhEM+kpkQnNW0DObrf/DQ4nncu60iVGjoFzT2EJUJzVYw+1BpD0w+dWclJEVR8dmCK0JShoSAa3zUd1jolp5NDQq1If6g+aXrCq13zTV3fWNhGo+Ku1THZ5hzyb8TcRulB+7sm2mGhg625E5QtXqzRw=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4836.eurprd04.prod.outlook.com (20.177.41.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Wed, 15 May 2019 10:18:03 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 10:18:03 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "sboyd@kernel.org" <sboyd@kernel.org>, Jacky Bai
 <ping.bai@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: clock: imx8mm: Add SNVS clock
Thread-Topic: [PATCH 1/3] dt-bindings: clock: imx8mm: Add SNVS clock
Thread-Index: AQHVCr2yrHCSJQGcuE+Cdq63vYctyw==
Date: Wed, 15 May 2019 10:18:02 +0000
Message-ID: <AM0PR04MB6434DFD7728BD5B105EF2A31EE090@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <1557883490-22360-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2dd4d14c-b1e2-446e-88a6-08d6d91e9d46
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4836; 
x-ms-traffictypediagnostic: AM0PR04MB4836:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB4836F7AEF1DE8BE70374698FEE090@AM0PR04MB4836.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(376002)(396003)(136003)(39860400002)(189003)(199004)(7736002)(71200400001)(7416002)(71190400001)(66066001)(478600001)(33656002)(229853002)(74316002)(305945005)(44832011)(2906002)(2501003)(6116002)(3846002)(14454004)(6636002)(4744005)(966005)(76176011)(7696005)(86362001)(99286004)(66556008)(8936002)(316002)(52536014)(102836004)(476003)(25786009)(6506007)(53936002)(446003)(186003)(6306002)(9686003)(26005)(55016002)(4326008)(81156014)(256004)(81166006)(8676002)(2201001)(54906003)(68736007)(6436002)(110136005)(5660300002)(91956017)(66946007)(76116006)(73956011)(53546011)(486006)(6246003)(66476007)(64756008)(66446008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4836;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gKFT12MI6pAA+LDP2VmDGRsc74tP1v+7HATM6Yck4PZtZWHrEi31mRVw/DI0PqUzYHARdwOi+fZQxXY/vz5+snG6XTfZ8amtQc1nQmP7GuHTtyfVZ6p4e2UsakqkWsjDo+ki5z1fdKQ72K3B2QLDB+mVA2w/uHGSZBZUHN7QHM6ZygrxXJsoatjzg5I7tJffqMxe6Yl0JvJI4SzvVb7neLqYOiho7j1RSz+tFkS5zKa6dF5uSXLRobZqfLwV2DewyLlqclbV34izJHg6ibePugHdVMYBsiyJuHek8KR3G4a9rlKPMWZzLBVbzjvZOzcMNhwYsxln4SkKzLaj4H2PsVjqBpZCAIzm6Ed3QP7m3SXbu+FgEtPISrMDDE9saqMYaRTIQJ8X8291NIEUyDJ3iWSrQz6+77p1kekWac1S9qI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dd4d14c-b1e2-446e-88a6-08d6d91e9d46
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 10:18:02.9556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_031806_198392_D6983D5A 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Abel Vesa <abel.vesa@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15.05.2019 04:29, Anson Huang wrote:
> Add macro for the SNVS clock of the i.MX8MM.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> This patch is based on patch: https://patchwork.kernel.org/patch/10939997/

Numbering also conflicts with one of my patches:

https://patchwork.kernel.org/patch/10940303/

The conflict is easy to resolve but I don't mind resending if your 
patches get accepted first. If should probably resend anyway to also add 
gic clk to 8mq.

For series:

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
