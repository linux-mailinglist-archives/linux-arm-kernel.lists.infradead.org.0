Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10615199B64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNR9Qlqd59S/y4AB91D8w2c0agOJBAiRzkEnh5+FWYo=; b=TrVItXhbKGEi3L
	Hlw/h5VPBKrOKQvwwr3tgAAaiRzlcjhk7ZDl0mUcswpG1MSynN17OFGze1Qlr1NKdZvVkO1DyXe5T
	ZfcKqBsQ2nNzX3vXOS3OKdVyoXKJKCuhyhKqWW+Ga1P9xBhvfPZmlTt0CxsW68GZ8z7iIBnmuwzBe
	xn+PF7e+7pgZdIG3lAojZVwHod3uRDQCCYU+a34mshr/Nc6DP88HfLaH6rHEh72saZnv1ZkQqrbgh
	31VpwFywf2T9RAlLPgvJd4SsnKOxkr4xDb4Rr6l+J3ctDuxUh7JIK6p6XrQxpcBBKoWOg/VsPFo5W
	yr3QmAZqs7FYPF6tvb9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJiB-000673-UF; Tue, 31 Mar 2020 16:25:59 +0000
Received: from mail-eopbgr00052.outbound.protection.outlook.com ([40.107.0.52]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJi0-00066I-3t
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:25:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qvj3jWj21x8tfdWS4XmRHpGGdCCJJqJLpwkuScg7quRIe6hMdMuzHpOn+IKY9ZASdbNQsJhs8+RwrGLabRsvp97+BW8NpWAih59Px3kELdYLSqgspBhmFTcKZvKG1rWZCT2V0N/MD79ADuuxH0hCERCSv0CtR93LszaxDllA5UD6RYWcG+PYHpdAN1WmFhEcfR7urGlrbHec+FNF1NdYpuSQSgtR9Uucb9bEXsoWjESKMJs8S+skJALNAXa9YpbDtxM2LVHoxbJaIvQr2VJEprV7uRzWKaqAed7OJrKioPNvV67Tra/xRl5/XEx7XKrDhEJ2wEI6mwV5o6VG5Z3kBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEuexm9TMZwYticN/IDbxupeWAKN/qwROQGa/xNqdxo=;
 b=DHPANy7QEq3C/mQwnsoTLMzE3RtmihWmREnNenYjykkTDDbYH+T7kcRwPaurxWr7qakV5zqyEaMzOq0Qtquzh2X8V5m7M9XqByZ3M8jKOcuQceYx9SwKHqWPLjDFyH5wTKDBCI8l9TqpvASu1Wz/UL1Otqv+tt6PX7sGcs5v37tIL8Bu3Y1ExWkWLoAoqzRlEkHA9mcqusEEJbQF/KvcSwN1b2LiHzL8Ip3yAo6qnCj5+rw66fK5RO6dP3n+9yzSy9od7F7lWRqBaRTDvU92FumAtjM5A7lU/cHUvnUIroy7X+lN6nyRoyOHSdV25+tqwJ+mQTzh3gLCv1IgfDSZMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEuexm9TMZwYticN/IDbxupeWAKN/qwROQGa/xNqdxo=;
 b=VHNaKkqN6fRwdORp3mHhZhVMZqFyNyZS/lKeWAYdQJycIzujM98pkvZ0EMp3oCAvzajD5RIa+5Oxu0ypImb2cf2EuqICOxzS9qb2A4MQ++f4IW64SnW4O4wHgszobKIoHVd+JLrSQeP2S1BspclKikwAysx47m2o7M3FGC8hLpw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4468.eurprd04.prod.outlook.com (52.135.145.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Tue, 31 Mar 2020 13:53:40 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2856.019; Tue, 31 Mar 2020
 13:53:40 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: RE: [PATCH 0/4] firmware: arm_scmi: Extend SMC/HVC to support
 multiple channels
Thread-Topic: [PATCH 0/4] firmware: arm_scmi: Extend SMC/HVC to support
 multiple channels
Thread-Index: AQHWBFX27wlDVoVytE2BgopmDmTwV6hivp2Q
Date: Tue, 31 Mar 2020 13:53:40 +0000
Message-ID: <AM0PR04MB4481FB36D888882183C4293188C80@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
In-Reply-To: <20200327163654.13389-1-sudeep.holla@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [180.107.26.236]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6755d483-cb5c-47ca-4c33-08d7d57aeb2d
x-ms-traffictypediagnostic: AM0PR04MB4468:|AM0PR04MB4468:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB44687F191D8ED1A6EED7513C88C80@AM0PR04MB4468.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0359162B6D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(6506007)(81156014)(81166006)(9686003)(33656002)(478600001)(54906003)(66556008)(52536014)(26005)(66476007)(76116006)(7696005)(55016002)(110136005)(44832011)(5660300002)(66946007)(66446008)(64756008)(8936002)(71200400001)(2906002)(86362001)(8676002)(4326008)(316002)(4744005)(186003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gx0QwHjdmCdq9DdUuVeSEAnTyRiCjAeEQ/6JP+FYV/EGwaUrK4NYa5yiEDG13Ey6EjoCo/Ghe0Yf1kXF8wQDT4w6kH4frfp3Qw5WbuL0ZMoC0BZIH2cA2/9o1UsqB+6mKS8JGlDt2n6Yi+vszGwH/IT0BiYzPDXulhgofhWB0t2l8KskteYlCSaXQQ1fZNTQO1HHvE9mgLgEsVyYLjYOC2dC3sy66x1GZeJJakgxwD2qPMYXuzZ7tn6eQMuYb4hvZed1Xm0gTlAnCSOvwjX2iwfdmHal8BP5W4o+6mCSRoHUuVymEkLTxF31PpCAJTdXUhZH5kj983GbDw3y/5MZt1tHFKH/wvHRn9sbntopOK5MiufOd6noY6Jh7hO46sogCBtbdBIuEKS/OOBiy3UAe//old5/Bo2vT+YNz18O0IHGG2dHA8AemntjZqk3OQ6A
x-ms-exchange-antispam-messagedata: cA1OjVYp5hP4uTmuzeHXTeAl8pyIqhUzdyu4alPiyCI7HPggwVe4YCuQp2ZTEu4mXyhN54p4UpvMVo7L4BqJtDPcUmUECyGCyJ8w7rHyef+WhNwgol0hUuJojvoyw1XArUt5jtqEjKJLhojNekhuUA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6755d483-cb5c-47ca-4c33-08d7d57aeb2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2020 13:53:40.2876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m3YZArhZiEl/R8CpVZmGskq4hlzEkp0IrmOD/B6yv+nnaEikYA7PlupWWgm36pxc2ADk58iCeZOsqvtTTVMSAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4468
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_092548_163436_25416806 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH 0/4] firmware: arm_scmi: Extend SMC/HVC to support
> multiple channels
> 
> Hi,
> 
> While merging SMC/HVC transport to SCMI, I did a quick hack to extend it to
> support multiple channels. I may be missing something obvious, if not the
> changes required look simple. Some of them could be merged into original
> patch, but since I am unable to test, I preferred to keep them separate, easy
> to revert if things break.

With patchset applied to your scmi tree, my test still work as before.

Tested-by: Peng Fan <peng.fan@nxp.com>

Thanks,
Peng.

> 
> Regards,
> Sudeep
> --
> 
> Sudeep Holla (4):
>   firmware: arm_scmi: Make mutex channel specific
>   firmware: arm_scmi: Drop empty stub for smc_mark_txdone
>   firmware: arm_scmi: Check shmem property for channel availablity
>   firmware: arm_scmi: Drop checking for shmem property in parent node
> 
>  drivers/firmware/arm_scmi/smc.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
> 
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
