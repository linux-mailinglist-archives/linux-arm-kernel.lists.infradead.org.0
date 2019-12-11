Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF53511A266
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvuLT/WSX32GfU3ZBKGyzj4qWkElIzDdwG1mbHe6Cgo=; b=g1eU82v1YMCD6H
	uJGfEacGTVMbW0uNBQBNNkFIw5udAy5YaWiwyr2UeIU/J6gTgF6fsT+3gORtjVNWjFHQfdyx92/kB
	QBNLUxvH4HvRPNCoExVZCHVSkcCIGlRAL0Bw7n39EF+ulIDz5Z9oK3J+jhP3K/u+3dWmM8JecGNri
	cmBn+HYPUtyTQKhwKB9ZNki3nPQJ24Y/Dtq/wBbrOLTdilYCJxGq8Z9yHeBznITZX/ZCEOhLrpCrq
	mD5E5C50tzv7nZI7qoDnsPLq335GRUj1ElLn5GsrcDVF47esUAVcTALQRoIGbZdSAxN9bg5SmoF6o
	0KnYtytSkQWZTH3JD+XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iesB0-0007G9-6d; Wed, 11 Dec 2019 02:56:34 +0000
Received: from mail-eopbgr150058.outbound.protection.outlook.com
 ([40.107.15.58] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iesAf-00074m-Kl
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:56:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iKyptkDMC6kf14OlXhIWbyWl+NlOILrqnCEb9EgvFbLwGarFTZWkD8p4zMtp5NBH8YC6GPbG27+IZdLvMIXKItJBhr20+ZSkcAch8oEcbS/+CLfPKZcAt1AlTT1Ily96/M9OFLx7sU2VC4zobD2tOjj5HGRmLDQG57fRnbPt9dzNllQBcyeVT9HGryN8IY0S0vcka2uSdjjp8aMwMhe0sL97rDk/zWQa7O8kp1bfpuqBa67fBKhAOKdZepBX+3B7gq1HAVUCUY+qWz23/vudt7QpEMCTB3bIq6rn+lwQvMMj/DcmEQE4BVhCPoYANbPrOk0+mtFRCV13UMC2BccNsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JZi1/tjHPZERF/sLRbseIK60zddEkMWCBQnRaqr2kJM=;
 b=VucAaQTJvzmo1nGzWhfr09pKwKg5PhGSDpdawhAvXfUkYYQcHc3O6Q1Kiyi0Eem7GqUykneoy3WdfH2j5lbZrSfceYK+F3ShhOE0Dvk9VTvbynh5xGRGIK78jRwJp8YqqQv+SaisNRM5swjxp49W2DonHuttwMNXUG6WjUQPsBXdXxbLTBHq2lg+rE+L5YIC+qZhdkvll9MgIQisk12fld1mDbhpXzaeDrHvOcIikdAb4CxGEjRAK0QaBtfwnJEK2CxNQYfR7QkMXv+OK+CYL+vThp6saQMvwirRKln0AaOB8/3xufrDa4HVTslxXEGxcqAq87CGIPQG3i/8cxiMDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JZi1/tjHPZERF/sLRbseIK60zddEkMWCBQnRaqr2kJM=;
 b=YntiJRpM8aIqsqcdLbJUJQG6JJ9tsZwNQ11tK6DzRvLKClN5VrpwB20g79fW94TMaNA0uNZMZBHXqJbBzjL3mlufdPa4AjRbVkwkOXrEEpg2swQEqs1pPkGxm+8aIfH6ilqR6Fksg9pL4SHdz0mW4+i/Z4JXWEQACmM+IBUCS4E=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3884.eurprd04.prod.outlook.com (52.134.71.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Wed, 11 Dec 2019 02:56:10 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::b5ce:fe6b:6c06:fdb1]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::b5ce:fe6b:6c06:fdb1%6]) with mapi id 15.20.2516.018; Wed, 11 Dec 2019
 02:56:10 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] ARM: imx: Enable ARM_ERRATA_814220 for i.MX6UL and i.MX7D
Thread-Topic: [PATCH] ARM: imx: Enable ARM_ERRATA_814220 for i.MX6UL and i.MX7D
Thread-Index: AQHVqaz9uTC5Ekq7lkSM85gAnNButKe0RmUAgAADO9A=
Date: Wed, 11 Dec 2019 02:56:10 +0000
Message-ID: <DB3PR0402MB3916FD7E76C669D620D91842F55A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1575358720-27624-1-git-send-email-Anson.Huang@nxp.com>
 <20191211024413.GF15858@dragon>
In-Reply-To: <20191211024413.GF15858@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 40cdaad7-0621-401d-d88a-08d77de5ad75
x-ms-traffictypediagnostic: DB3PR0402MB3884:|DB3PR0402MB3884:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3884207A11407CDE25599F44F55A0@DB3PR0402MB3884.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(366004)(39860400002)(346002)(189003)(199004)(9686003)(478600001)(54906003)(55016002)(26005)(7696005)(8936002)(4326008)(66476007)(316002)(86362001)(8676002)(4744005)(6916009)(33656002)(6506007)(186003)(44832011)(66946007)(76116006)(64756008)(66556008)(2906002)(66446008)(81156014)(81166006)(71200400001)(5660300002)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3884;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yby8cyqCd/RRdnBcZopFYNSTGx6spa9APmiQMgIqdUrCMMOnNU6e7faJLX1MlxfkT2O3L3NSrFByBxULjXjlsG46tYyxlnQjGlZWQde7zKowBfd0OCNeDDk6QsnVtGG9BKQFCU6YwH4/Es1OOpNf7t3+pmNnEpm8DRJXhY2clagiQFv2XbFj1qjauNIDCNgn54ZF+Ms7N8SDMKmphRB2hScn34ysz7TgOd2MIBsEmilc8fFcujCcVAk2iQuesARFS2YgYzsSqj7ukPdGKYbxh/4dPfNNt8Q9/lI8gXBELdUrO2TY0qGxB/ryzvzwm5RdVZEV5FpMwglRbnki4HcvEHiDIBH4hhQTu5iG8k2HCFp9yQqZVtTwGhGy8719GGMyEye6xXkbGBatUcINhksViUOuApUhcw81GbXYuWZR4TlqtyMp4gLvXuuKQcXNDfRT
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40cdaad7-0621-401d-d88a-08d77de5ad75
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 02:56:10.5729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yuDEkjvCA7l88w5ZTmImo/GxwIzFB78azd2L2F6wGbUZT37WuD78wDcv15uf7dQ+dA8OZuGXLxkJwpdMqP8Pig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_185613_758985_6BFABEF6 
X-CRM114-Status: UNSURE (   9.90  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: Re: [PATCH] ARM: imx: Enable ARM_ERRATA_814220 for i.MX6UL
> and i.MX7D
> 
> On Tue, Dec 03, 2019 at 03:38:40PM +0800, Anson Huang wrote:
> > i.MX6UL and i.MX7D have Cortex-A7 inside, need to enable
> > ARM_ERRATA_814220 for proper workaround.
> 
> Can we briefly describe the ARM_ERRATA_814220 in the commit log?

Done in V2.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
