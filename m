Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C9D13A308
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNdLxowNx+UDkzaRs85rR2DoQNYGMJ6Qe+HJHk/OQHo=; b=BMqZqD7mpG2e8O
	1H/uggefQWe5CYtQ4muhNSrPCPFk2eauUjd5OmY9rosA0rMC59+egNf17vQjxrhuVITXg66/e7YHK
	0Npl/cq6mSFM9t+wLjSo0eujSM5eb47LY3V1czjIQlOvgjil898pu5LLJj/66r4fWxmTAdeJ3qdvu
	FGyllK+7MZI+ZR5YijaXzPM9CeyGCmr4dJkhTPAS88ryFHiRBHyDjBGMfCRKw5t8gzWTEJG6cxRHx
	ESMJxmwGv9wbBEcfPX/U4W88vaokRoIXWBv/lETwkC9OjovI7JFljt/IAaXa4f8xSlBXBBYcb71qN
	/2/LWyagOL/lvi5FvzAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHcp-0005HM-Ae; Tue, 14 Jan 2020 08:32:35 +0000
Received: from mail-eopbgr80047.outbound.protection.outlook.com ([40.107.8.47]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHcg-0005Gh-Oi
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 08:32:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ef1ygNsvsyo384lsZs+QJsFwbpeQpUrz+OUtXiZ78cr7iANn35Yv+B6B81CDadtlK8scL/YT1i5SzWYM8n84qvtn/edGO4U8Eju7+b3p4EDnQSp535gX/sDbecDcLUk6Nxs+7BgtJMNBANnAkqKigrui2F5b6q45UiWhT1sZTCa+xKnsLnKJp/80Ke3sgtpQ6tdnft/Y2zk3+k/fJwDWeeheB8B94dSvXHlvSKtWJz7D35WB6J/p1TAxWHB1RwS3SO96XHGIfTQmIivYgNsfrq6xmxBbmKOlONj8l9AbWILUTO4/xskE3YA5d71ZnS/uoC1QD9UVSM9QJ2+Mo9c86Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xK1tz9yOLrMldH4PXqoQwdmcURMyWU0trEOsdnWrALI=;
 b=Yi7z8q504Me5ZJ41ERLFf5ixSOxdaxZTUvUejwViHRX2udPg9x7PvyAKdkzYsdl4U2BBZQycDFv4gBow/IkG1+8adcyKAf/7E8vCteex+57XmtvZvtdKopPuWG6WbHpG1mGK6RE9ejjA+rmOnHqweB/glStZlWbL+HtCD7Th7iqji8hILpTegtlv/wf7SjREDCoV+PmsigjDA1sfQ7pPPmk/4EnZYIHycjrWhBw6EoOVuZaC+cQbjTZfZdbJtiPtsnUUDJ3efDsuf5ND6priXtm9XBSbyIXbAWeYGuP8TIBrRA9UcQEtdWKRo8grcvYv6Iv4imok5OzIkMSc9bPVxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xK1tz9yOLrMldH4PXqoQwdmcURMyWU0trEOsdnWrALI=;
 b=JD4RUAEE6O2kv1JJTkVjXkK+jRC3agRA3nCpqD9WmOpxlgmCMnPtYL0btRcRAaNHKGYXl7Qtswfdpk45+O/uj+xBIPVqMPHfdGmGED8xKVURaylV3ghs9GNWEiXtg9gfjWp4D5atiuPzMbuX1Ti9hpJQozXCeucnQObbxKIiUoc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6001.eurprd04.prod.outlook.com (20.178.115.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.12; Tue, 14 Jan 2020 08:32:23 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 08:32:23 +0000
From: Peng Fan <peng.fan@nxp.com>
To: =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Thread-Topic: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Thread-Index: AQHVyrHXB0HrD3qW50ui9P9S7z/H8qfp0NaAgAADRlA=
Date: Tue, 14 Jan 2020 08:32:23 +0000
Message-ID: <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
 <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
In-Reply-To: <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0721db0f-27c5-434c-caae-08d798cc4786
x-ms-traffictypediagnostic: AM0PR04MB6001:|AM0PR04MB6001:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6001394FE8552A91AAA48A8D88340@AM0PR04MB6001.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(346002)(39860400002)(136003)(366004)(376002)(396003)(199004)(189003)(66946007)(64756008)(66446008)(76116006)(66476007)(26005)(52536014)(33656002)(55016002)(81156014)(86362001)(7696005)(66556008)(6506007)(8676002)(9686003)(81166006)(186003)(44832011)(5660300002)(8936002)(316002)(2906002)(71200400001)(966005)(45080400002)(54906003)(66574012)(6916009)(478600001)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6001;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G94CbbMzeRpqXQObpm16yigfAhzii5umuBc7JzgW24cKmy8C0TqaxFIKmsMo9NaFIhKAXrHSgA/2iW+WyxSuiMl4K1GguSJyKAITS+5Pph0SLhDjSlInVMJnpu0qCo0FcdFlA+olB5R1TqpXxFDSIrkRp6ODEo128x7IdmoQjUFfiIdKDeoYob3VFEmCthBhX7DJlCl3JF+GMYcd5OAyAMhXZb3Os8EaOfWjB2bL4mXFSr2AFqwvWAexc0bXUzD1D/Y+01HxF8sI4dZptKorBovlQ/obVp7oazmUJYbzwM1Vl+ySmdoTi3B+uD4OXD+FSpgceULG+oyo+kGHP5V9noo/4hoSqlhO4a9L1Qx0Gpf28WXD72iPXBgBamwIoLSUyLYvOtr32jZ0SVRv3JdVonKu8tYjZP1CQc+hugZ7jv2D3HSUyqiU/FV2/wjJAnTo0gIQLCSPd6g8W/4JDuSzquV5KGvs0hKo7imyGyxX5LtPXvF+mjB91nBcZHFHTVVKep5iGNDJBkshHwgm0944xhr73X+XXzKi8uHvgb2jQXSw2AQc+qPcs5nK0PIKp0ZEmhLvkcDuyFQrfdlr7kUm2A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0721db0f-27c5-434c-caae-08d798cc4786
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 08:32:23.5781 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aLKY33WwE0Ep2BF74L2j1Ku3D/63+L24m8to3h6h6kw5UIYkWQ8SuHYctchA1M35g0C31JSUbEemGEz6rgU6Aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_003226_806420_3E2BE6E8 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uwe,

> Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> CONFIG_ARM64
> =

> On Tue, Jan 14, 2020 at 08:08:45AM +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Only need to build soc-imx8.c when CONFIG_ARM64 defined, no need to
> > build it for CONFIG_ARM32 currently.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/soc/imx/Makefile | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile index
> > cf9ca42ff739..cfcbc62b11d7 100644
> > --- a/drivers/soc/imx/Makefile
> > +++ b/drivers/soc/imx/Makefile
> > @@ -1,5 +1,7 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_HAVE_IMX_GPC) +=3D gpc.o
> >  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) +=3D gpcv2.o
> > +ifdef CONFIG_ARM64
> >  obj-$(CONFIG_ARCH_MXC) +=3D soc-imx8.o
> > +endif
> =

> For earlier SoCs we had kconfig symbols like SOC_IMX25. Actually
> SOC_IMX8 would be the right one to decide about soc-imx8.c to be compiled,
> it would be easier to read and verify than the suggested
> "ARM64 && ARCH_MXC" and it would stay right once NXP presents it's next
> 64-bit SoC i.MX9.

There is no SOC_IMX8 currently. Need to introduce one in =

arch/arm64/Kconfig.platforms. But I not see other vendors
introduce options like SOC_XX. Is this the right direction to
add one in Kconfig.platforms?

Thanks,
Peng.

> =

> Best regards
> Uwe
> =

> --
> Pengutronix e.K.                           | Uwe Kleine-K=F6nig
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.
> pengutronix.de%2F&amp;data=3D02%7C01%7Cpeng.fan%40nxp.com%7C90c4c
> 1a07d9242a422ce08d798ca414e%7C686ea1d3bc2b4c6fa92cd99c5c301635
> %7C0%7C0%7C637145866755858613&amp;sdata=3DA3e1lAq5wR7d9doxZZV%
> 2FUud1u2qDxdY9VhaHlfzgbhc%3D&amp;reserved=3D0 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
