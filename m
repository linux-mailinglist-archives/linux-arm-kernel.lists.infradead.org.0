Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04DDCEFFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 02:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwj+B+3r7EN3t/0vWXVOMWxEzBI/idLwnpQxR6AfLJ0=; b=BgMnysY0I5SyLq
	YJVVA8pkCpLmFp7eXdiZwRAqQvhKZH6WDYauzGGjZFLNSnuTCIvbOeXtLUxbVPgOiR43/xSeoLxp0
	Vbluxi3F6iovA9lLojC3DvR+Go5hDO2fLR6UbLYjflteA7VJboJGjVyarltiEx8SSQO030Rm0EInh
	fZNqDrEBbyRTnU/dYj3JfIo8CA764rsrnsMfMiVSKSkSXdqel/jJbKn6RNpeDtcWaBZx/hvRdygif
	ThwnndmiI3BQHZPLLhYOe1cQalgr0zvG3iSUZ2/BxHJD+BzjjJ58dqpLfArNaW2FUI2DwWIg3jBLO
	4ubwB0ViMCh7sIEas8RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHdg6-0000IF-9R; Tue, 08 Oct 2019 00:48:38 +0000
Received: from mail-he1eur01on060c.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::60c]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdfy-0000Gx-IO
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 00:48:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hvk20YeFxyAQo4dKHf5OFuiMEz3FRZSmmAlK0SuDjxxj/4i5BLzXT5vA+dZH4nd5JS6VLPJa63zDcINLymIPb2h6rn+ZM6x/RHPYGl33rh5r3Fxg0baspZqr57Oxer8KDoHuHYBI8tpLhFK5YV7QqOHRXkxh8ggPw3f+QVPl2yRf3FGlCNUGg3qq/kgF/zZgT66j3LLwBzBsnrQY87g0efkfrVdQXGHONnfHedns3tQYGcGl+x83q83F1RT4dGdDM08svAuFl4eJRhDSqfmnzRDiQG6wL53zXHFdGGfPjBwnNqXzneaMR+hWHNAD3Aec35sAh2koFT2I/iuO8WfXfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VWlhy7Ulay98BBvb22/jVbUVVDCr90rZBWYDSeMv0Kg=;
 b=je7yMFkwauS06zhhFMaSs518Nw8PH7N2xvAl0UglRW5FlMtf7GfZR3BYpwgTLoGurIFwpv/zqC84L3jRwd7zL86Y9Tlt/wFZ2nlHMnCXckGfEdy4zt3mNi2Q/1uwj7Hdw8oh07bn4Ji9zKpuB6eLS/Svo0Uy4diDG99W4XfLtTyFT3yrmROLvoV7QheWyvpLSn2rMmgEkM9gWQLlt4EkzaV38dOKwR2clRFrPGwrnmPIiFqKwitM7P5YfnJP72+Dd2vlmC1J+Xinf+TgfTTHrcBrAuwu++CdUwrIMD7qF9Lz83Xd4ZWEs6EjZNe0IvfrG+abpgDRgqfyn3gU4LHvog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VWlhy7Ulay98BBvb22/jVbUVVDCr90rZBWYDSeMv0Kg=;
 b=XAAlKTaMcp/2QJ0sFMtBlY8wqDYUxKdYkcJoxxhoBIbaxKPKXBoLPPRQKqtH1FKwk1GhdWM0VlIXp6NyLb3Z0EiwrlCmHNWwILafea7SAUUFinxkQia4zcZPqiiUhsXFSuKohu+iMvCBt7pNBavgr7ypVYXkgzeE91xuZbEc5zg=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3446.eurprd04.prod.outlook.com (52.133.19.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Tue, 8 Oct 2019 00:48:24 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::b0c2:4fbb:fae7:991]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::b0c2:4fbb:fae7:991%5]) with mapi id 15.20.2327.026; Tue, 8 Oct 2019
 00:48:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH V2] firmware: imx: Skip return value check for some
 special SCU firmware APIs
Thread-Topic: [PATCH V2] firmware: imx: Skip return value check for some
 special SCU firmware APIs
Thread-Index: AQHVfK0Yhw8grvoW2E2n3r70yUmdBKdO0YaAgAEYy6A=
Date: Tue, 8 Oct 2019 00:48:24 +0000
Message-ID: <AM6PR0402MB39118DABDE62496539D7EE6DF59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1570410959-32563-1-git-send-email-Anson.Huang@nxp.com>
 <20191007080135.4e5ljhh6z2rbx5bw@pengutronix.de>
In-Reply-To: <20191007080135.4e5ljhh6z2rbx5bw@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 057eeed9-b4f4-4b60-e071-08d74b89398a
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM6PR0402MB3446:|AM6PR0402MB3446:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB3446F1749864E1B70AC0EACAF59A0@AM6PR0402MB3446.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(189003)(199004)(14454004)(26005)(6306002)(66066001)(71190400001)(4326008)(55016002)(71200400001)(229853002)(81166006)(8936002)(81156014)(966005)(6916009)(8676002)(2906002)(86362001)(7736002)(52536014)(6116002)(74316002)(3846002)(305945005)(9686003)(186003)(54906003)(76116006)(5660300002)(446003)(478600001)(316002)(66476007)(66556008)(6436002)(66446008)(66946007)(64756008)(11346002)(6506007)(7696005)(76176011)(53546011)(25786009)(102836004)(476003)(44832011)(256004)(33656002)(45080400002)(99286004)(486006)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3446;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kAfxKOvzP5C/0Ym4qRlEHhOfRVlj/YHJZylYbQzi6B7+I5gG72e5L+s4qHkNA0JHNWfmoMFRwKgM54DW13Mqt528qhFDpd7peCbDBKXrR8iu8kVa0NzuW6gjEm395ckCnzlnC+K+kv/RyfPfHMNmOdhHAcv5ntIY82j6EPf68KemvFhM0nE7MrtqkgFefG0AJRFsTd0K45M8pkB8ZYqxJJ0eebZwMzaxNjM/cW5oxR+vb0ty3g6CTlyFAx4Y2uzuTovd8E6YdVvtol5CVqSpuZyRltDUJy9z9F6IXHl9s5mo09w5eAyP3uJEBNbsaXZOnzSjcD5troADQ2yeonp37LkxgafxYVHuZqRhpVE7ISYwYOzMceHkubBaOeWeMMx4xUNqb9BiStwVe60lsXvYQIb+TkPI2htvvNli6grXmf4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 057eeed9-b4f4-4b60-e071-08d74b89398a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 00:48:24.3680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RCtNaPTX+M3ESGvT+5xjVoWxRND4OvmR+L+NvGKBTl53i1EgU43iMVdgXxi6CKamhInm2pUN2wLeIWQ8zXKhRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_174830_688678_661BEA7C 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:60c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marco

> On 19-10-07 09:15, Anson Huang wrote:
> > The SCU firmware does NOT always have return value stored in message
> > header's function element even the API has response data, those
> > special APIs are defined as void function in SCU firmware, so they
> > should be treated as return success always.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- Use direct API check instead of calling another function to check.
> > 	- This patch is based on
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fpatch%2F11129553%2F&amp;data=02%7C01%7Canson.
> huang%
> >
> 40nxp.com%7C2de0a6be69b74cc249ad08d74afc9730%7C686ea1d3bc2b4c6f
> a92cd99
> >
> c5c301635%7C0%7C0%7C637060321046247040&amp;sdata=RMFAdLKGKb6
> mEdhycrzHX
> > R03E6Qr5pWyRc8Zk6ErlBc%3D&amp;reserved=0
> 
> Thanks for this v2. It would be good to change the callers within this series.

NOT quite understand your point, the callers does NOT need to be changed, those
2 special APIs callers are already following the right way of calling the APIs.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
