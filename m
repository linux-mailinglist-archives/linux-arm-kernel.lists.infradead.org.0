Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAC2218C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 15:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u24BHCoR3XpuFoRrTCKusERh+kRXehzH0mzyIAZVpcM=; b=hH/qzI0nUuo6i1
	IAJHE416oN8O9yH3p1f/MId/HG12TfJSg4P7j3RjWDFPqPcwKuC9MNOzX6ODy3UbU8A3bkn6PyoRc
	O7TjaFJyvt5mOhvQrwDKsOQHGJMBzcRmGjiGCoF/qz6r1UF4C+tpSJM0V6aF1LCF+5YyG+hFEZVUX
	7xQ5CYiYwrXgfL5zPHbFWnTAuO9FfbH0BEg0d3D43IfxuNn79zed7+UH/bWEArJmhzIpOEh2IUJBz
	639xwyRH+IzVSQQbK0d/HhcFAA23Lwemyera5Vy8bUmyGOE3h6PUpnNY1k2Nim6E9UDXjdbTxPWXx
	8HhO3dbrtcJrh5hhsv2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRcWB-0004dy-EP; Fri, 17 May 2019 13:03:23 +0000
Received: from mail-eopbgr60046.outbound.protection.outlook.com ([40.107.6.46]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRcW3-0004cp-Jj
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 13:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K0hzks6fhjZzHUHpswaCTNnrJcKtIer0OOK+ayJsYoE=;
 b=Eu6NWxY8RK+8wVOz1rxcusU2d09nsZ12KneAPbKe6rH3y+NeQL4+Tg0g+Z6n0ozicM2ycTsAaS4mRS7973SBGuvwuXfKyIAifVuUCBfcozaZceAzMxMVzycn5kbXiY0kxUZ3lqFg2ThEFaqu/K9HTtuflsrZaMFHBdQ4DvSm0UE=
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com (52.134.1.18) by
 VI1PR0402MB2701.eurprd04.prod.outlook.com (10.175.20.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Fri, 17 May 2019 13:03:09 +0000
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::888f:9ea:6f65:508f]) by VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::888f:9ea:6f65:508f%6]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 13:03:09 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefan.wahren@i2se.com" <stefan.wahren@i2se.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>
Subject: Re: ARM: Possible memleak during i.MX6ULL probe
Thread-Topic: ARM: Possible memleak during i.MX6ULL probe
Thread-Index: AQHVDK4CWK/RucNw9USLrUdxzxzM0qZvSGIA
Date: Fri, 17 May 2019 13:03:09 +0000
Message-ID: <47c1ff2c3d904fdf7cac6ceba254ee7d67948805.camel@nxp.com>
References: <8b0e51fc-2b26-f98d-7afa-26c6b397d847@i2se.com>
In-Reply-To: <8b0e51fc-2b26-f98d-7afa-26c6b397d847@i2se.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c434fc53-0abb-48d2-eb41-08d6dac8030e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2701; 
x-ms-traffictypediagnostic: VI1PR0402MB2701:
x-microsoft-antispam-prvs: <VI1PR0402MB27018C0B086F1DF79110535BF90B0@VI1PR0402MB2701.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(376002)(366004)(136003)(199004)(189003)(486006)(6506007)(11346002)(44832011)(68736007)(7736002)(73956011)(6246003)(102836004)(476003)(229853002)(6512007)(4326008)(446003)(478600001)(76116006)(8676002)(71190400001)(14454004)(71200400001)(316002)(2906002)(25786009)(6486002)(5660300002)(2201001)(66476007)(66556008)(81156014)(66446008)(64756008)(305945005)(66946007)(86362001)(81166006)(6116002)(186003)(3846002)(66066001)(2501003)(6436002)(256004)(76176011)(118296001)(110136005)(99286004)(54906003)(2616005)(8936002)(36756003)(26005)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2701;
 H:VI1PR0402MB3357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eI3b7lCU0zP0Ac5B6wtbICmElXr6q53MSfqskh5SkAlK2hDukFRW+s9GcEWnhrWqmv7RLMczo6rB7J937pnjvhwsqBfdADEwP0iaz9KC7UeGu90R7+voqOQ95hSvEVdAObr2BA3CFJhnrXVG9Z7UmQ1Y3WL5cGztZnmHR1XTsTBJ+TRoA2MOUo7sbkDBSlDglBbLu9nfYT8LH/mXPwPNKFn6pI9quL6DlmVh3o6hmvgpEX0UoAfoi7xr3cRVlgS57vk+p/kenEB2xvWXwpwtx/pq0yaXAM3bXjA1NHxpRBdWdRdaQZEU/q+uAN69KZb9mZvtvshLJREvRXkWpRuJtV6d1H4Jbc8ap0iUxSdZyrd4zxsNyOYk/1heYhkg5XUbVN+pvB/wTfaskNYEHfWR7S32wGgCU1b3Tzu1W3ex0w8=
Content-ID: <0ECAE43F0883E54F98E8F56C9AB7D995@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c434fc53-0abb-48d2-eb41-08d6dac8030e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 13:03:09.8108 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2701
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_060315_777871_9DCF7347 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

Can you try the following patch:

diff --git a/drivers/base/regmap/regmap-debugfs.c
b/drivers/base/regmap/regmap-debugfs.c
index 263f82516ff4..a2225efffdda 100644
--- a/drivers/base/regmap/regmap-debugfs.c
+++ b/drivers/base/regmap/regmap-debugfs.c
@@ -579,6 +579,9 @@ void regmap_debugfs_init(struct regmap *map, const
char *name)
        }
 
        if (!strcmp(name, "dummy")) {
+               if (map->debugfs_name)
+                       kfree(map->debugfs_name);
+
                map->debugfs_name = kasprintf(GFP_KERNEL, "dummy%d",
                                                dummy_index);


thanks,
Daniel.

On Fri, 2019-05-17 at 14:42 +0200, Stefan Wahren wrote:
> Hi,
> 
> today i tested current linus-tree ( a6a4b66bd8f ) with our custom
> i.MX6ULL board and i noticed a possible memleak:
> 
> unreferenced object 0xd8366600 (size 64):
>   comm "swapper/0", pid 1, jiffies 4294937370 (age 933.220s)
>   hex dump (first 32 bytes):
>     64 75 6d 6d 79 2d 69 6f 6d 75 78 63 2d 67 70 72  dummy-iomuxc-gpr
>     40 32 30 65 34 30 30 30 00 e3 f3 ab fe d1 1b dd  @20e4000........
>   backtrace:
>     [<b0402aec>] kasprintf+0x2c/0x54
>     [<a6fbad2c>] regmap_debugfs_init+0x7c/0x31c
>     [<9c8d91fa>] __regmap_init+0xb5c/0xcf4
>     [<5b1c3d2a>] of_syscon_register+0x164/0x2c4
>     [<596a5d80>] syscon_node_to_regmap+0x64/0x90
>     [<49bd597b>] imx6ul_init_machine+0x34/0xa0
>     [<250a4dac>] customize_machine+0x1c/0x30
>     [<2d19fdaf>] do_one_initcall+0x7c/0x398
>     [<e6084469>] kernel_init_freeable+0x328/0x448
>     [<168c9101>] kernel_init+0x8/0x114
>     [<913268aa>] ret_from_fork+0x14/0x20
>     [<ce7b131a>] 0x0
> 
> Best regards
> Stefan Wahren
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
