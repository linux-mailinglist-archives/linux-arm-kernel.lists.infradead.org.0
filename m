Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22BA1468F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgMjTQHi2EPZw/WBSM9qT8Lr4/o2AHauHdf5fVChDVU=; b=Mp30WSfZJ+fNPr
	4yOGFB86COacvRsVlnTVImNjhmEW1yWXz8gPytfJ6dqO+5Ox+Gw+menyiQ5azdvqgOzoayKKY3pnJ
	rt6U/egEc/nvCK3rCyPU1rbth91IKL95zRW8+e0OdXySSwrotajmuQ4AyOOPC0L+UwimFpG9sNnmG
	+/jZ51nQDVCLIB6HnM5appFcYrWKRa8J37vUVjP6k56jBWhHCSRw7IRr8TzZVuxkG1af7WQjhKucR
	xuX7T7z/Qmmiz8yruIzc/mmEJSTFtS0io8CwtzqwLM9NPRNweoTfm2n1M5HOh4j16svlcCfzCJhFO
	Sx32Sxb9UwqTA7zbGevA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZBT-0004CU-Bp; Mon, 06 May 2019 08:41:15 +0000
Received: from mail-ve1eur01on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::615]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZBJ-0004Bw-In
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BYAuytaKdTbfFDfpKrRiUutHT3PbAmEELR40NvmdQdg=;
 b=Hi7o1FySJSBXUTlVsXdQaQRdSw0buPJX242mg0WTs7hOVsCuj20kl2OUU7LdrQiUsG+hbiVjKtRSPtWCawXu0sV17aWBaMLZ92d0smBQmnPp3lXXK+c0M3VF9Nq3V2GTJG2R15rODcKJX8G5quU2XX6Sxr0fEgobxBWqdf9PLpM=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5523.eurprd04.prod.outlook.com (20.178.113.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Mon, 6 May 2019 08:41:01 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 08:41:01 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] ARM: dts: imx6sl: Assign corresponding clocks instead
 of dummy clock
Thread-Topic: [PATCH 1/2] ARM: dts: imx6sl: Assign corresponding clocks
 instead of dummy clock
Thread-Index: AQHVA7uKX2mzfOc840Ke1bKA2KP6TaZdxwNg
Date: Mon, 6 May 2019 08:41:01 +0000
Message-ID: <AM0PR04MB42117D0A376B84EBFEE7AE9F80300@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1557112911-17115-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557112911-17115-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6cc6504d-d3fa-4799-7afa-08d6d1fe91ef
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5523; 
x-ms-traffictypediagnostic: AM0PR04MB5523:
x-microsoft-antispam-prvs: <AM0PR04MB55236A421348F4EAE8CFB9AD80300@AM0PR04MB5523.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:204;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(376002)(346002)(136003)(396003)(39860400002)(366004)(199004)(189003)(476003)(86362001)(2201001)(486006)(44832011)(4326008)(3846002)(99286004)(6246003)(558084003)(110136005)(6506007)(316002)(66066001)(256004)(25786009)(53936002)(14454004)(5660300002)(186003)(74316002)(71190400001)(71200400001)(8676002)(81156014)(6436002)(2906002)(478600001)(68736007)(7736002)(81166006)(8936002)(33656002)(26005)(52536014)(66476007)(229853002)(64756008)(66556008)(76176011)(66946007)(66446008)(446003)(11346002)(2501003)(7696005)(102836004)(73956011)(305945005)(55016002)(6116002)(9686003)(76116006)(921003)(32563001)(1121003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5523;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sm3YZs9i5O7cuwFU6j1F4g1/1WtURtCJH8WuX78cFG1bsNr2/RxDRiPuMXP8XAM6DlVPX9hi7WVuu/qF20src28n/d/u7XXR28fr1+QcqJ3ARAltRN0hi2T6uFqsVwHFm2rKxzuvYmJh1kiNq9Iwfpa3FIzoLrQhoiPZenhUpWr89i2JYFU/rzAhWAl5SWxhI2dpiNMeaw0lHFnI2bRpfDj1R8qpGH4UgqO3uy8S1/KZkXsU21Q/HHjPWqJuiD4PXeYVQ+rLD2f8eOLNoPV6hFgWDQYhGLybdbe/3S0zyIqXDD8jX7qJ7XeKEHUgcdzVBqQDWqJ6k1FMcz2k2gHj+RgBTGoVTgQBQ2qkzkJd8WVXU3nv4KdS2nZ+P0ukuoAM/VB2ADRCUptcu2CCgYP5aYrM2SA9mQndo32kDlHOPA4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cc6504d-d3fa-4799-7afa-08d6d1fe91ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 08:41:01.8713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5523
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_014105_620577_3AC71976 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:615 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
> i.MX6SL's KPP and WDOG use IMX6SL_CLK_IPG as clock root, assign
> IMX6SL_CLK_IPG to them instead of IMX6SL_CLK_DUMMY.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
