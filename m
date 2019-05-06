Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF5414697
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/w17ww8Vs/xvGm/vcq+RLzHeTDOP0ZmhMC2WSCesK4=; b=hV/Oi2cvyzGT5s
	/m9fdIvzmXT5COM+e876d/jftL0b6NfAoVkd9H83y/VyXTB53I7ZskuqQyJcn0DmfumyqCmnqdE29
	fLxxlHjV2Zt8lOIiQMQE2gtvKSCDVm+LC7EjHn/ygjbuUzq2MNWHjetT0hGE2Zg2HEzFHD3euUnu6
	Y95W99YyFOmHbnvDRRl/UxWiTLW9uh6fH+zr7sQMwX7kaWD6MsOC1zqnqtgmhfubad2zwBQy5VzP9
	bR4NZWym3KnVEakOOlsZEb1OL3sIywVHgylOWvLdIjG5gkbl7wg0MxypZ01Aenwjq0TY7QBaIPdRC
	ppMoutyFJR/TPiMkpGYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZCL-0004XK-QN; Mon, 06 May 2019 08:42:09 +0000
Received: from mail-eopbgr80044.outbound.protection.outlook.com ([40.107.8.44]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZCC-0004Wp-TH
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:42:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DV5mny6LY+hppywAbIR4nDXrLFrVHQI/f3F2bo6Uvog=;
 b=DNUCz3+dfmmfDeMU3YCH+Cfd9EqSnqDyMG7DdOB+LbRroyD9fB44MnWIX4oSPc3DUjNNycGnYDaTlTSHsU7UaN+i0L8c/kcdMRW9Z/dlxvVYuxEOWTMb3VQDGBr6ACiIYkIVa8RHP7ROGxgAqEoSEGcqmxmkQ1Uajr97inqgLl4=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5521.eurprd04.prod.outlook.com (20.178.112.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Mon, 6 May 2019 08:41:57 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 08:41:57 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] ARM: dts: imx6qdl: Assign corresponding clocks
 instead of dummy clock
Thread-Topic: [PATCH 2/2] ARM: dts: imx6qdl: Assign corresponding clocks
 instead of dummy clock
Thread-Index: AQHVA7uNN1AtkzSGk0aPTBIep6X3lqZdx23Q
Date: Mon, 6 May 2019 08:41:57 +0000
Message-ID: <AM0PR04MB42117C838DF3C29056AB94CA80300@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1557112911-17115-1-git-send-email-Anson.Huang@nxp.com>
 <1557112911-17115-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557112911-17115-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6fd062ea-bf41-4d18-3a2e-08d6d1feb2f1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5521; 
x-ms-traffictypediagnostic: AM0PR04MB5521:
x-microsoft-antispam-prvs: <AM0PR04MB5521FC148F7E827C493A98E680300@AM0PR04MB5521.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:204;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(396003)(376002)(136003)(346002)(189003)(199004)(8936002)(71200400001)(71190400001)(7736002)(2201001)(44832011)(102836004)(26005)(68736007)(446003)(11346002)(476003)(81166006)(81156014)(8676002)(486006)(558084003)(66476007)(55016002)(229853002)(76116006)(66446008)(73956011)(66946007)(52536014)(64756008)(66556008)(6436002)(256004)(186003)(9686003)(53936002)(2501003)(86362001)(74316002)(305945005)(4326008)(33656002)(25786009)(6246003)(66066001)(99286004)(3846002)(6116002)(5660300002)(6506007)(7696005)(478600001)(76176011)(2906002)(110136005)(14454004)(316002)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5521;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KIkdIBRUP+XTKNDiSFVu1p75bOgFkox2iieRtBTBcGVCZdz9sUmGqGXlDPMlgtfwkWEPQVb1njNmP3jP1pApnOmUfiO9gUuOJMhnYW8WNqXl2ybK/nK/6t7Cvcz0uOanOoTl9BZ6kQGXyF3/vA67xr9IJMj5j/SEcuLTdn85bwmMkC0FHO2ZRvzb6WK/fkv5k40+nnHFLZkk6jk9DbnZMwGdUwTSR1JgeslJsqqNv0Do9dxg1rAtvPvUeAyx2sRkEVgiUBKBTshEu79Z6l+LmHaHMFoyLDZEMWlAMGkCIuhrBiOLWZQ6A34DOLvvzTDKmI1kFz+/jlB6s+GtYmH670vTOEwdtecm3dsYnSZONSHR+Jdqb2FZ5UUxToKtNGG7xr2BTrbISWLlDzzowmsgbOD2eNz0YoJdUjj0ZQauxCg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fd062ea-bf41-4d18-3a2e-08d6d1feb2f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 08:41:57.2876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5521
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_014200_942162_4D785A7D 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang
> Sent: Monday, May 6, 2019 11:27 AM
> 
> i.MX6Q/DL's WDOGs use IMX6QDL_CLK_IPG as clock root, assign
> IMX6QDL_CLK_IPG to them instead of IMX6QDL_CLK_DUMMY.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
