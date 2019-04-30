Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468FBEEEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 05:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dyo9oiJpkPIC0MevYLcgnA+tRkhLMKj2axq+KnLYUI=; b=MX6bj5MJKOouZH
	XChEfEwgMklm33If8s81YyaE8UOB8GJF3Daa3kUvPdFtyyE2fD4j0DwEem1+UAPu60gqOMKbTsaM8
	gRNhoAtWxCXWFpry5cyqshTKQmn5QmdIcdQ5h4NwjhlbfIQAJJL6IF61Cx5k3tiLAQnX4sNsX1UKD
	7MOFOdQ+zdMpnEjGL4bnaOldJWk/J7mnrBskMDTkun+iUZ2JG6s+3q+QWIFn0IBCpWQCBRO2s1AvQ
	6ppYWgHBN4h4doMEFa+aAGBD0/jTgNxJluVMG9g9zrjH/RDBUukk2M5eFZ/9qAO/tLpyIkEMkVLoE
	cQZUa6mgBEvnMJX/HsYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLJ1T-0000OT-0Y; Tue, 30 Apr 2019 03:01:35 +0000
Received: from mail-eopbgr40084.outbound.protection.outlook.com ([40.107.4.84]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLJ1M-0000Nk-2g
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 03:01:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bTCboBtbWmI42c5L9eJhDzDa552+KZ8lt/rfaZt7Xsk=;
 b=uqSmWcADCFYB2qWk7bk6JY9EfgvXy9xFAj7ftPvPvEEBkNArAcQGnsZ9nJYrl4rDErGRGQBw0FCwSvcaCP8NAfO+vPSImMqOt5yIOp67SHbuHSuQZkG5oCiOA61JyD/7FSTBG5UFT91R0Rp6XdE8V2onb/UdkHl9lCFmjrx8SGg=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5892.eurprd04.prod.outlook.com (20.178.203.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Tue, 30 Apr 2019 03:01:20 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 03:01:20 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] clk: imx: pllv3: Fix fall through build warning
Thread-Topic: [PATCH] clk: imx: pllv3: Fix fall through build warning
Thread-Index: AQHU/vfDJ+hnJuSvCk6GSL1CreUf2aZUA+yA
Date: Tue, 30 Apr 2019 03:01:20 +0000
Message-ID: <AM0PR04MB421136B8851E8AB81C7E8DDC803A0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556589033-6080-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1556589033-6080-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dfea6222-dc27-4aa2-5d16-08d6cd181f64
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5892; 
x-ms-traffictypediagnostic: AM0PR04MB5892:
x-microsoft-antispam-prvs: <AM0PR04MB5892EDD4458D8F7C38142B40803A0@AM0PR04MB5892.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:14;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(376002)(346002)(136003)(199004)(189003)(102836004)(5660300002)(8936002)(11346002)(256004)(99286004)(446003)(316002)(110136005)(53936002)(76176011)(7696005)(6506007)(53546011)(14444005)(8676002)(68736007)(305945005)(74316002)(86362001)(81156014)(97736004)(81166006)(14454004)(71200400001)(2201001)(71190400001)(7736002)(4744005)(186003)(66066001)(478600001)(55016002)(229853002)(3846002)(9686003)(26005)(64756008)(6436002)(44832011)(486006)(2501003)(2906002)(4326008)(6116002)(76116006)(73956011)(66946007)(476003)(25786009)(52536014)(33656002)(6246003)(66476007)(66556008)(66446008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5892;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GIm4y/s6pso6GUotWMcoKmpnU0K947BM3DZrcSwD/evAlz8dAPkYbjzFjmHKy3sKcjPsxr5HpJ8fgWdrgJI+t3bC6P1G8pX4odqKbw+3Auqbu8lqiWbJT9310gvgASz+EV+IakL9xd2Tsq5O2vUexc8og07+ynbDYVsWBMi5w8Uc7QmZUWZ04eolj2InOXIup3KN4LNtJCwmPGvYUuOJ0JCvxFiS2KdGqggAB1/y3P20/ONa4ICYhoi+Sx+zEium5yZj4l5FI7KMwYuZOECDlsgPh6sdudPOsqIZ6ydPVKh4S2H97znnW+FxruysLZtg+3+sXNaW9jrtbpDg7dfDnSRVksD4m24DBjR5PierjLXLG1oLU4DFIQPwMMsAb/xiuXrGmBxrPZu5duKo2vJ6J3eq43iRKuRjGsgy851rtfU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfea6222-dc27-4aa2-5d16-08d6cd181f64
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 03:01:20.8163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5892
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_200128_206921_26FB4ACC 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang
> Sent: Tuesday, April 30, 2019 9:55 AM
> Subject: [PATCH] clk: imx: pllv3: Fix fall through build warning
> 
> Fix below fall through build warning:
> 
> drivers/clk/imx/clk-pllv3.c:453:21: warning:
> this statement may fall through [-Wimplicit-fallthrough=]
> 
>    pll->denom_offset = PLL_IMX7_DENOM_OFFSET;
>                      ^
> drivers/clk/imx/clk-pllv3.c:454:2: note: here
>   case IMX_PLLV3_AV:
>   ^~~~
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
