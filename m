Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9336BA08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcUrgwkLDa6uGwCWxqRwPFqGofhe4yLFrhyT0ei0r9Y=; b=UX0H+71HoNx0h5
	uScgsVwDCHpsY/dFygSWxy93GlVz8kTMShFhBBL2naiq19k4C386bI61QVf72n5/VFMEg/pRob6gv
	mce1sqOeiKOe7x16ms/RX4nM/dlVUKSZMhKj8nob555nw7cW4whxKWgoXZg6Wsa8P+v/o/H9C0H7j
	YGzKsDMaWI818ylXKGaDl3QKq8N/MHE8HbMsC5H1Kh2iVB7rmKj9Jbt90rWbERsx6FeAlxshMTR4D
	ZsU7oyG2/QCgOYBAY//jUKGfr7ZbnztCe42GvKzvVill7FIsN3/oB4+boPd9dezSZ40+R9mR+GZ4x
	i/85vvr0+v3IyvPTVQDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnh6r-00061y-Tb; Wed, 17 Jul 2019 10:24:30 +0000
Received: from mail-db5eur01on060c.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::60c]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnh6f-00061S-6a
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:24:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OqOKAgg1fsb3AasGy3uISNMCDfc0VEk4uhBGMCeB7H63ndQj3D7zGeM3L5Qfrz5EjSaikpKzEx0uy0kA+VZGlzlEHDD9NZEtmO6PREmm5Hy3yjZjt83fdqhGWG/s85Y0fVhOWiv4YQXW0nilx2K+e7t3LTYc+73cl9LuAxOY2KsGIUQw4ogyOFgKYQ5mpwGtVFETvCn1vviVaS+5HB8mv3bH3oa8FCRFcfEXsSKrr0DGnk3R8H3ocs4d9VUf+GdBoz9zzZZVw7blc8LLmbvEhQPJdfCl0E78+F4rJdoXXGUqUmQSM4G1x4IxHQR+eugzKog5cqXlOlFLzMMIft17QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPaPT2czoME/hYVRz4ZLl0n89PINpuSoCKA/T7QGlF4=;
 b=Fpzk8G6usP/bnKBwfNjFXg08Agb8mp+EpngGgd2GXzrse0IZNLYGwuB8evqNCRFvLfx2PDM9R/c/IW9Ky8DmBbRomNTLPwE3i5YOtjbVgXwXdDShegTyjasm30jc8Ulo4bRWvFdL+K8TK+kLRtmEI9usS0RFmb9gl61BIY1Sz7hFOs4Nh4GnlII8uazFZelabo0WH4Obf8zsoRJQekg1wyrEOsUC/queeVSlM+4Ad1djhkoKVNdO/v9arHDivpU6/jW1Q5+6X82pNM0Cqypub6JD1QCtBwcLVVLkRcK9qg9fz/TfeIlplE7X2FCR3d8QJYwwP+UqLspori9B5cTRVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPaPT2czoME/hYVRz4ZLl0n89PINpuSoCKA/T7QGlF4=;
 b=Ue7FkbijxvzpDw8xpkI2pe7Q1PWtdUkJP97djwHd1rVDVtE9ZXaorNIsuWVSVPYVFShdVFsy1cIH28OdU/HRfZle7zupnMVMPCRMifWAhSAtq+yG/II3ChFpNLNwpJT+tFSkniF/fzHbFg0WCLUJkapMIvScScA1Kb+XuRpErwc=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6306.eurprd04.prod.outlook.com (20.179.33.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 10:24:14 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 10:24:14 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mpm@selenic.com" <mpm@selenic.com>,
 "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>, "arnd@arndb.de"
 <arnd@arndb.de>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "rfontana@redhat.com"
 <rfontana@redhat.com>, "allison@lohutok.net" <allison@lohutok.net>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "linux-crypto@vger.kernel.org"
 <linux-crypto@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] char: hw_random: imx-rngc: use
 devm_platform_ioremap_resource() to simplify code
Thread-Topic: [PATCH 1/2] char: hw_random: imx-rngc: use
 devm_platform_ioremap_resource() to simplify code
Thread-Index: AQHVPH/7DE8H1hoPXUqVaCkN1Qua16bOmm/g
Date: Wed, 17 Jul 2019 10:24:14 +0000
Message-ID: <AM0PR04MB4211FB9C3F6247BD9D3F16D580C90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190717090438.31522-1-Anson.Huang@nxp.com>
In-Reply-To: <20190717090438.31522-1-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63dba6aa-c8a0-4836-2306-08d70aa0eabb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6306; 
x-ms-traffictypediagnostic: AM0PR04MB6306:
x-microsoft-antispam-prvs: <AM0PR04MB6306EF46DFB2302BC059046180C90@AM0PR04MB6306.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(366004)(346002)(396003)(199004)(189003)(7416002)(81166006)(81156014)(446003)(74316002)(2501003)(7736002)(25786009)(64756008)(66946007)(66476007)(66556008)(66446008)(86362001)(8936002)(478600001)(558084003)(68736007)(76116006)(316002)(8676002)(110136005)(53936002)(76176011)(55016002)(5660300002)(6436002)(3846002)(4326008)(6116002)(66066001)(33656002)(52536014)(7696005)(11346002)(476003)(14454004)(2906002)(71190400001)(44832011)(305945005)(486006)(71200400001)(9686003)(6246003)(229853002)(186003)(102836004)(26005)(6506007)(2201001)(256004)(99286004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6306;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pESA92BjbljArhySGbx3ge47Yi/fKGqy+nUmDti0gddT3wMJU3SmCHuXmTfIPEjGqtT1eNhRR11YqUItyA9xZu+MHXM+mTTyXqrztD5zH8rQ9cUlVXV9HF3886lhpZasi4o10zrpYicfaEXQFFqYpLFO/7CC8ZMO9wfgFZ/TokYzGgu7uxbEqVNN5CJegU/B6VNHoDIJGEhZ3dUNZN/CDxjn8oqk6e9ZZSZW3xbLxNv/9QDkr7AcuBCQxb1Fov+mh0u2NAV98ji704aoSBDOAZXmLCB0yIkWFdWwLWyYLs/fsAMfwS/bQ081HqYZzFYpPFTAPfqo++NIfZ4B0DQ6pvS97Igl3vzpXBhhjYCcs/J6Ay8HzDq4JwElNpBY1cv2e+NBUeABrvEZScOwmFN1ZF3A2/KAYB23s1s1anxQN/Q=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63dba6aa-c8a0-4836-2306-08d70aa0eabb
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 10:24:14.4642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6306
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032417_246719_C866557F 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:60c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

> From: Anson.Huang@nxp.com <Anson.Huang@nxp.com>
> Sent: Wednesday, July 17, 2019 5:05 PM
> 
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to simplify
> the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
