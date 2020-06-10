Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF831F5200
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 12:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBwMOs2ikPYTtKpHYebDs+FnARdABlXiqrk/9HtCoeo=; b=bmAsXhUjPZQy1m
	t1LIUnP0kVZn8ZW3iz8Ee2Qf3OV0fh6z59AzZIc8tzDwaQH0MAkzE2J2cGrnKYkH+WdnLvdnOZvcq
	jUVyF7hQ7VZOH/PqF1T1gq4KLZKrlrOKzv5vOiivz9Pb9VhIPBgSRKARDAu1QgsyKFG6e7H6cHUs6
	vp+kOeKsfheur5BsmZV3mW4+K+qDPxeSbNTVvNL46/vFD/HEn9xtOBy/Bl+hgNaTpun+dETngxmRS
	I6y9SR31dLPiRqU0MxZLGR4gPKlnXXuIrFhL2EhdH2HrbP6GchoHSJuq3fjWdvrFda4kAjEDkRT8k
	C20IP8hBpzFQNpQ0odXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixjc-0004lt-S7; Wed, 10 Jun 2020 10:13:28 +0000
Received: from mail-eopbgr20042.outbound.protection.outlook.com ([40.107.2.42]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixjB-0004Vf-Bf
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 10:13:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bnOtelpKpjbUvCUsRbjPZDfmo3jefmtdPa/ieUZtfjPF5OPG5hwz8PJWdY7aPldRMf960wSh0yDZ59BMbSCzyW9/MK/gDHx36FjEiEB5t7fsQmCVmtvX7CoyoHgGEpEhKV5FTobohutGVj7ceto9i6etzJlpvsP6TX8NyHB/i0T3beY1h928D55V25D3I9gvtf8je4b/NM3yD+DTLIxMWW//ig0X6o0RW2Sa0Ahf4hYIfB56ZYD6c8vZD43SXuvw9/wahuPL6lwOc8K09B8Se6mXv4uBJOzQWruIwF6pfdHR7MCUqG9UxvycDCUFd6rYCvsgQMTwbKxwYsgLu06M0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f6f1RGokw1hv0lmYvbyzCy9DD4GnOC82wQjVxiW/Cvc=;
 b=L+fM17PJmmrRfLYm34CKeJANYs7AwgIj3p0AmpOInufJsDYBZGlgJYuFwX4GKnL4CJSOZYi2d7pIiiDIdfcHgm6NEZ+RBmXB0eArq6NWFe+b7bz6oSF0D7rHrO8PndATanZkKU1ldvvXZvR/62978W/PTk4GFPbnFQsJ6N1mNAwRw5u2Feihc7CXN/sq97oSPjgyPm06hpaysHtPwFXkcHIldyOquHZKqLTjbgOSzg31wkZ/ihTj2Tqt3s9VfCcRehwrlHp+T/oTzioJ9mAMb4MyJ12hL9hnxQ9/ar2b3ij4qxIyoFispITW30fHiEP/JeLOSEs+Nt7pXi++JMBGGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f6f1RGokw1hv0lmYvbyzCy9DD4GnOC82wQjVxiW/Cvc=;
 b=sdUBp91zM3LszwlbETMcDHaCGLZ8l5C1t6Ve47xp/0I56U58fZXXgbjs6GgpIOVAEs2euvihlakDBBgFCGwxGYkIJpKOEJzEhG1X0O/zWeVf5eaD57ohNfCYJA0RTrA25v5xHWRer1LfawfQ8C09voNWzTVsqn2f+2fRvTlxcD8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3673.eurprd04.prod.outlook.com (2603:10a6:8:c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Wed, 10 Jun
 2020 10:12:57 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3088.018; Wed, 10 Jun 2020
 10:12:57 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Iuliana Prodan <iuliana.prodan@nxp.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Leonard
 Crestez <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Peng Fan
 <peng.fan@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2] soc: imx8m: Correct i.MX8MP UID fuse offset
Thread-Topic: [PATCH V2] soc: imx8m: Correct i.MX8MP UID fuse offset
Thread-Index: AQHWPrCw0WB/imHNuUG5ox2m9H66cKjRezCAgAAAlhCAAA03gIAAGNmQ
Date: Wed, 10 Jun 2020 10:12:57 +0000
Message-ID: <DB3PR0402MB3916DB340C8BC6BC38035B2BF5830@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591742515-7108-1-git-send-email-Anson.Huang@nxp.com>
 <DB7PR04MB4972E7B649B935B1EFE6469880830@DB7PR04MB4972.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916F5F4C797595437D5FBE5F5830@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <552e1ae9-8b28-a462-5ee8-3e5bd6821c90@nxp.com>
In-Reply-To: <552e1ae9-8b28-a462-5ee8-3e5bd6821c90@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 22ecf110-13ff-45ab-facc-08d80d26d949
x-ms-traffictypediagnostic: DB3PR0402MB3673:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3673BFBCC74B1C3CB3488C7AF5830@DB3PR0402MB3673.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4lx+raO2/zvQJ348ZnX+t0i5u1icpVVNm5uP/6gaBbj2W6zyojPflLmmn/cgF6zE2WLClvpJTvJYx0A+SClueLkIFegCVnKcBTkbmoNvMf/lKvLFZFJBLGh6dKxwRDQy5ElCHjK5/OMzsD4Gyk6T/a2Rzlt0S2SlLYCaAoh0GJxofG14RfwJuqAHDPMXGewjMMd1C6k2oBqE+ZT/WYLDwnZ3Pk9th2Bq4A3UCHC13WsjDBTlSd+JYt1MQwPTAkH+bHtOwTA5IDJnP+Yy6R/lI7IhJyxhNM8AVeO5nB9eilWNQWfBxkjQPYYOJ3E6SgOZZ2kkz1gTDKraOHP5E/lfv5TliYw8vttUcsM9uJr5F/Piaa/XkSssO7NqXbIig9SQkA3RIt4tnwjDSKHB07olDQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(39860400002)(376002)(136003)(366004)(396003)(316002)(55016002)(8676002)(26005)(8936002)(33656002)(110136005)(4744005)(71200400001)(9686003)(86362001)(2906002)(4326008)(64756008)(7696005)(52536014)(53546011)(6506007)(478600001)(66556008)(66476007)(44832011)(186003)(66446008)(76116006)(66946007)(5660300002)(32563001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: vLae4oBVihueWyzUP3jlDq/fui6VIW5EYrAnBfWHUSzULw9Zr8qJuk2Q8JHoPbgzX6GsKE9Yz/7RKl6U1LoQ2YjnSbEO69lDtdJeOE/6VsuAQZr/ItSUeEp49ietlZlFJW6j3FqWdkZNerHMDGc+YkIsXvLLd8+30uoAMJo245TdMoNQ8mOOjDHmnI+CN4EBHxGyHkTRKVVNZpJVHs0Tr/7Rxu9VEIhm3g9rpTsYwwSRYl55Tn9YqdJZNjhhm4lDLR+3f0mGnjt/ylyhbQFMMByIS8MoQsBkoeZJM13WF+3FEBSvPxGA83IBwBPeUA2hLqgdTpB7BWmFfX2M30W07znU261ewtapSxkVukiYmMItdYoDI2fJPIUFFq5RZLCW/6khVw6HNKyQrJ525LnEvOULzBL8BojM8neW5iou7ss7vS3QDPBDa6GPf+VkS8g3WQrzVwPkp577Z2G5BFx+4NmAOO/rVeDuaHeUyePzMHH1t1YE4v4JIW6eNdLnFtEa
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22ecf110-13ff-45ab-facc-08d80d26d949
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 10:12:57.7858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ysBB6X5I7d3MBXJ7msBTTqTai/gS2B9U0jKQwyjmvZbn1Bryuz+2Zo5B558Bp9Mk3ksHLOPkCxeWz7feNedong==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3673
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_031301_556498_EFB0C920 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.2.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi, Luliana

> Subject: Re: [PATCH V2] soc: imx8m: Correct i.MX8MP UID fuse offset
> 
> 
> 
> On 6/10/2020 10:57 AM, Anson Huang wrote:
> >
> >> Subject: RE: [PATCH V2] soc: imx8m: Correct i.MX8MP UID fuse offset
> >>
> >>> From: Anson Huang <Anson.Huang@nxp.com>
> >>> Sent: Wednesday, June 10, 2020 6:42 AM
> >>>
> >>> Correct i.MX8MP UID fuse offset according to fuse map:
> >>>
> >>> UID_LOW: 0x420
> >>> UID_HIGH: 0x430
> >>>
> >>> Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m
> >>> soc
> >>> driver")
> >>
> >> AFAIK "Fixes:" should point to the original patch which introduced the issue.
> >> Not the one changing file name.
> >
> > But the patch can NOT be applied to the kernel version with original
> > file, how to fix it?
> >
> I believe you can add two "Fixes:" with the two commits: the one introducing
> the issue and the one changing the file name.

Thanks, will add once more fix tag, please help review V3.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
