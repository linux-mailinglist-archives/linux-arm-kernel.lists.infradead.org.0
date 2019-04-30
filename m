Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9D9EE8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 03:52:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Hdy629H4hzenapwBWM2uVVRTKcV5Zr8aePkU1gjxjQc=; b=H7HGnL+wU1t+qH
	K9BZUdSWF9OkiMsP6Ws5vd87naoQ2uZGnOzFaqxi5NPnmHOgjBtvhjZMCETHVS9xnz2djo62SXC0A
	06Mmk0clW4n2E7Ov1wRIV24yxwJF6NqynnWXHEPiSwQyliDtgO1VXCb0Imo32XJXnYOJe0tuTCqx1
	xEQ/SngufVKGBNPl6xuivW6dA3+HdzWBl/cPvC/tjaZMk1HCr7RduVunAzwomIbL7PuKAb3cjnRqs
	CbhIy6V3OZz4SYpHKlYOlm+/DKcPV3Xha+uyTEl/Vi3pS/8Zf5NcvQBH3SkC2TM3FfqhrrBLuolua
	JXm3LzZ9NhyBrV+iuVEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHws-0004JS-Dd; Tue, 30 Apr 2019 01:52:46 +0000
Received: from mail-eopbgr150058.outbound.protection.outlook.com
 ([40.107.15.58] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHwk-0004Ix-FT
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 01:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BSxEF/15u3FTyvzUhJenxkwkG3EhJe5MTHjnCSW2rvE=;
 b=MTc0uLx3xnsqoowc/ABn3LKBhda2nBfwBSO89ERRmBP0squC9faQL7+2Bx6JCROsmTUaFdqvVU19RnbteZqCRXuTsjc0JiCmomn+Fn2JHmuxl586dVQGs0yiH54jrqPsv+AQLo8EqQ50lvYfDi9hLju3DbUJBYwc0R2asF0qpQc=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5812.eurprd04.prod.outlook.com (20.178.119.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Tue, 30 Apr 2019 01:52:34 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::f56b:2fea:d9c0:7c2b]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::f56b:2fea:d9c0:7c2b%6]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 01:52:34 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Yue Haibing <yuehaibing@huawei.com>
Subject: Re: [PATCH] arm64: imx8: Fix soc-imx8 dependency on SOC_BUS
Thread-Topic: [PATCH] arm64: imx8: Fix soc-imx8 dependency on SOC_BUS
Thread-Index: AQHU/vL+IUb/dpk89EigGSGAmKBoKA==
Date: Tue, 30 Apr 2019 01:52:34 +0000
Message-ID: <AM0PR04MB64347B79B9AF68F85F7028F7EE3A0@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <20190430012104.1071-1-pure.logic@nexus-software.ie>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b52061e-1a04-4be4-90b7-08d6cd0e83db
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5812; 
x-ms-traffictypediagnostic: AM0PR04MB5812:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB58128CE7733001C7FED573D5EE3A0@AM0PR04MB5812.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1013;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(136003)(366004)(39860400002)(346002)(189003)(199004)(4326008)(64756008)(99286004)(53936002)(66476007)(6246003)(66446008)(229853002)(478600001)(8936002)(4744005)(81166006)(8676002)(68736007)(25786009)(81156014)(110136005)(66066001)(66556008)(2501003)(9686003)(66946007)(91956017)(76116006)(6306002)(256004)(54906003)(86362001)(55016002)(73956011)(316002)(97736004)(76176011)(486006)(52536014)(446003)(6116002)(71200400001)(33656002)(44832011)(476003)(7736002)(3846002)(2906002)(26005)(6506007)(186003)(6436002)(102836004)(14454004)(305945005)(7696005)(71190400001)(53546011)(74316002)(5660300002)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5812;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KK9gAcN6ZOJSNGI+AOsxia6jwmxPAkoKVeDx+lA8FwIhod/FTjrKxc6Ck6YliiWdUH0f4b/ezCPJrUzX+fFK6Q0DDcDATnDy7H7fM3YeScV8LN5Ri1qntDpUP393qefySsuFUmGmfLiO4U7UytsZyxrIR+tmAB5DVB/e34YMWAaS3CP++ZyxJiT8byVw/A3k82zdykId+QcI95lCoKRwC4uMNnt9O6RsRYglL6GN71HnpPtOK/D9dtxvBhTQyhTQvbIZu9TvzG9BmthOgP9VQWSIhLFWmeblcTO+Ls2vwHwqVz9/gxyR3z7OIfs1FtQQTisu2/E9yUlFXh7iKb6zjmxSHk5wiwhpx6kjHrIt68fIivoCKsDNN3YcvdqiuETa7Stv3DLewrZrjFP3+f/KTlDeeNEcv87b8q90mhPyE/4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b52061e-1a04-4be4-90b7-08d6cd0e83db
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 01:52:34.3633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5812
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_185238_519669_F6888228 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.58 listed in list.dnswl.org]
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
Cc: "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/30/2019 4:21 AM, Bryan O'Donoghue wrote:
> Commit a7e26f356ca1 ("soc: imx: Add generic i.MX8 SoC driver") compiles in
> soc-imx8 when ARCH_MXC is true.
> 
> Since the soc-imx8 driver depends on soc_device_register() compilation will
> fail unless SOC_BUS is also selected.

Duplicate: https://lkml.org/lkml/2019/4/24/256

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
