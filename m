Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566E8523F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W5c0/6LvHuxVpz3u4o/GunaJomQUo20hei/siSrpNig=; b=D0RVkzVXYwfZot
	eZDowsvnLOrd7XvPc9D28T1gy2SmFPzzg6l8i6xECASh3YyURguv1+OYphDUiWYwjcDwjwa47UC1G
	vT4uvA/a7BoLnqvunvpKRXWPOCzyrVPVj+D9VqKPAdmvhZ/4MtTPB+sqfiiZiCKj0z2sM1sKfL1s/
	fbmoWWyfzATgq82Ij8KIyUGhNp27B4KytxnqaOn6jamNbkyfNuqOggDEPUwMSmMd1fF3wuKZZzUZ3
	o8qLBBV8T6Wh4obUJ7PmX8I37iBrNBwOM/aGD30MYnWCyeYLVKyb+kB6MITpSw5JdwvIscZz2S6jR
	QPnlt9xREKTSKyRFOVZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffYM-0002x9-Tz; Tue, 25 Jun 2019 07:07:43 +0000
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffY5-0002v2-1g
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:07:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j8HKRmA0t2b9qClhq3yOLc/W8mjm7O8q2IAz2vweakY=;
 b=kXOt0tAtd8qN/+TyU6D5Y+thZdulEJCTrjMB8OmySXT1SDvOhl39L32hhG9omwPVwBs7+fA6MYYa3H+Pnpe/eoKgnp9CT9IzwvwDdXWJABmGw+ONjQeIjG1Em7qGK6HDfbK70In9Mu4lNkA3ZmKwSmLZpOnJvbU1Ve9EpyUsA2Y=
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com (20.176.236.22) by
 DB7PR04MB4028.eurprd04.prod.outlook.com (52.134.108.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 07:07:20 +0000
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290]) by DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290%4]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 07:07:20 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Recall: [PATCH 2/2] clk: imx8mm: GPT1 clock mux option #5 should be
 sys_pll1_80m
Thread-Topic: [PATCH 2/2] clk: imx8mm: GPT1 clock mux option #5 should be
 sys_pll1_80m
Thread-Index: AQHVKyShV/C541yfwEOXsooxpsWQLg==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Tue, 25 Jun 2019 07:07:20 +0000
Message-ID: <DB7PR04MB5178A84F3FC1BCF4843D441587E30@DB7PR04MB5178.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f37cb83-06dd-4085-2cc4-08d6f93bc422
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4028; 
x-ms-traffictypediagnostic: DB7PR04MB4028:
x-microsoft-antispam-prvs: <DB7PR04MB402867C44C9B3F561BDFE36487E30@DB7PR04MB4028.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(346002)(366004)(136003)(189003)(199004)(66476007)(66446008)(316002)(73956011)(25786009)(71190400001)(71200400001)(186003)(26005)(74316002)(305945005)(64756008)(102836004)(66556008)(6506007)(486006)(14454004)(66066001)(558084003)(2906002)(7736002)(256004)(7696005)(110136005)(8676002)(68736007)(6436002)(86362001)(9686003)(2201001)(55016002)(8936002)(81156014)(4326008)(52536014)(6116002)(3846002)(81166006)(5660300002)(2501003)(478600001)(66946007)(99286004)(76116006)(476003)(53936002)(33656002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4028;
 H:DB7PR04MB5178.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FtnHWyYqCLiNAuSRL/8vDldZWPex35pheTa9W+j7UixI8Ilt16g8YwwgWWibfIEX6I1gxFafuh2GM8WeNwv4FD8Nb8aBrW4tiFupgcTFx0JWbajiIWvAbmY1FTlY0A6/+Pid6qeZWd2kCRCo0OPAWjjqN1Z9wh7S2MpF+tFfIhtrYAv/oDmjU54IXUv5vOFviI6dFsBdFuWSLFVKJp/9zRkKFYN23UIwRsY8mdw3b4yedSL+yAlI9j6/GsIgHTkAioxzBMLusXRc2HidHrwiPuwufY/2FmxF1/i1qo/YciTKqMdVET9kCrB2VILKSeA+I3q2EwS9UYn3OMJZHbjRKbyzXK57IbSGsOEXuts6mPbwmFq/xfpA/IEZOZjS/f7XV/jAbNQ9lzvulfVoDRMd3oIndc0UTH9X68b3NMdPLLI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f37cb83-06dd-4085-2cc4-08d6f93bc422
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 07:07:20.6915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ping.bai@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_000725_108264_5AC8C47F 
X-CRM114-Status: UNSURE (   4.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jacky Bai would like to recall the message, "[PATCH 2/2] clk: imx8mm: GPT1 clock mux option #5 should be sys_pll1_80m".
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
