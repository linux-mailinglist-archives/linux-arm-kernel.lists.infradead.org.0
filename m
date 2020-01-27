Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE0514A4E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 14:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKfuN0bDXw7i9y/Ufn0g6B3Ioy9/NkCUxQikMPHy8nk=; b=TMDnnAKNKuogc7
	WtmC0kpbYp/H/37qxraiwBQuX7EzMzmviirgNFPCoLpXjiX/GQJeto2hYrFL3Eb/MCpVOut3j9Vsw
	QUa8c/lTJ8vHcBx9HB7D/ytqXoQrPQHQfFQzU9BgNKtAACeBrknXUzvgCCSCPCAA5VoCx+WP7/TIh
	+EWdg73JoDX4K1qvxyJczmvVA4BCNOtcEwdUf9Fkg8myZ1brnbntuIQB3eAV0SBizBTl3ejEPXbir
	RgW6VGMbTLI62rdprhZHiu/2u6GPg+D0oblpl9HhfIW7VMqBpd2pcq2Nawf7fTY01QJQ+yYRJ418V
	XqaXtuB+UvM7gQKQhgwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw4M7-00008i-Mi; Mon, 27 Jan 2020 13:23:07 +0000
Received: from mail-eopbgr60074.outbound.protection.outlook.com ([40.107.6.74]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4Lx-00007k-E4
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 13:22:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+aJVzmoQipPL31NcLsh8UsgJwMEdrxofAwVG1K8bDOG41r7yJwOQlwRy7x3E6n4TKiRwdxYHGNiBITTJ7OO/zFcXf7gqB9ClDcS/+5fVn/K45j2Ub/MKA1EaFo2LgocGBm5GzmOdgg4n/D3oTY0GltHKgkpAyopzhLBWgs8kTCOLKKOQQqIBW7QHQE+x2TwLuETIFC/iwnaNxCeyZWqQLlndDxlN6XGohio7HM7dCUox+xxFpuXRHOBUo6shE+a2hilvC9rmQhstZAI5qeSzgk1l2l8nZWFb0WqPmw8GkKslMVSMUcUZcE3tL5eLY5o5odaYDWagjJxVfCDl4MQ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bxMIAojZu43RRmkYhgJxTBK9QzwwhpLoDoSU4tY1GHY=;
 b=SUIwa8J0KrDPhK05s2EhfLE8FhUMrFT+Ep5NM9F0Yw1FI94Xb7AXp64jyJnSsJhNJw/2p4IWZE07MQ/UpsjLcJRhR7uilbE7KdtscJ9PRIJBHxCZc1LZMssqihZUw/kftv9UEU66pXgb+e0S4ZJ/4d2H8eusxaVoGQE9qNIG9Oy8RJDuoOK7r1QEpvsRmUfB1xvUzQtVaWlkhrgwKE2ekqFUrpN9xeXK7GdwvyKlDiH4PwQEFY1Vs6c0zNQuGU4+RshpdZN8iZod1l/Jcbsb+6RIQwlwXzBwq0b8PMsgKjMKVFQ5fvSEDbQYsSf4P3GNE+s4TZeJd6DI4AKO24aV1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bxMIAojZu43RRmkYhgJxTBK9QzwwhpLoDoSU4tY1GHY=;
 b=R51faMw8oG6/ThzDEawqodkncsl7pHE6Vds5mCc1fM23tWOaQPZm8hp0RZq7ZEwVzs8LF1AF3pXv4x0NOE2rrdiMnHmdFT/hwijcZ2O7DIjw1Gapwid2Zkt+fUDD7EOGK6awA4srT4xVjfC6e9QhjbElwQhXgwcAHyFf25sX/cA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7121.eurprd04.prod.outlook.com (10.186.130.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Mon, 27 Jan 2020 13:22:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 13:22:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
 driver
Thread-Topic: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
 driver
Thread-Index: AQHV1PZk+mGdzzCjckexq+nG+OcySqf+VfQAgAAbviCAAAtGAIAAAVtA
Date: Mon, 27 Jan 2020 13:22:54 +0000
Message-ID: <AM0PR04MB4481724FC5F8345502860B08880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
 <CAK8P3a2YLo4rNBXu9NhvKv6QOFUcZhCVXNR4XJe_0Kc_RJ=ubA@mail.gmail.com>
 <AM0PR04MB4481E1AACAC4285D49E721AD880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a30vieqOdend-o+_1AesAQCN97cW6KtQmAgV3uhDWi_jw@mail.gmail.com>
In-Reply-To: <CAK8P3a30vieqOdend-o+_1AesAQCN97cW6KtQmAgV3uhDWi_jw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c203ab9d-ba29-4168-e377-08d7a32c048f
x-ms-traffictypediagnostic: AM0PR04MB7121:|AM0PR04MB7121:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7121320F450199558DD2DF5A880B0@AM0PR04MB7121.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(39860400002)(136003)(346002)(199004)(189003)(6916009)(8676002)(66476007)(5660300002)(86362001)(186003)(66946007)(66446008)(64756008)(44832011)(8936002)(66556008)(54906003)(7416002)(7696005)(4326008)(76116006)(81156014)(316002)(9686003)(55016002)(26005)(53546011)(33656002)(71200400001)(478600001)(6506007)(52536014)(2906002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7121;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1Jei/WM6JTS1JvAQnyNDE7p5hvC4A6/mjv1mLiqcoHzDuiZVSDGEnpc0ZhJHHI40TgQf4YjRkiYtB+VvvYKf0VYE8offFER+6ebHp0KSS8+oXZ5oHKL8+hwwoEQUQEQFUY9vCOfTySJ9ENtxlX+me0A84z3EpkODypFST8LaEVp3Y+mvrHE63CjjxZvi3UTqhKVUPbgn3TgNHqcEIhJ1L8lSjClVF9woJMgLOSs6OJpdXIlvYCerJGQUOfWHR6YKn+g+zMvYkXWZk6u/N0D4VyFsg/ssJuoLfpKL8c5yBUMBm0eh2HObwjiJ1AzTilpKZyTBfcyF2uqrMGqKqZFcZl+snuhtCcmM+D1sZbsvv9va0IHWbQ2FRNgJMmgzcDPWhoDcKMdB5d/mlidMsUGes3eQhbbpXO1lejgPUOERlnQLYaDcmzwVSFF48LzHBS/d
x-ms-exchange-antispam-messagedata: 7Mn8HQtmYXS/AVMHAHhfHEi3atNLgB5WD/fOs71hhl39p25ss8Di4I4FvnNp8PE4smw8ToAVuVxyS+LJpr67BtrZs7DO4kwXquFHcmavwlLSrjzXSc8CDcESwZoSel8sSrM/rZypaokh00i8tNydeQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c203ab9d-ba29-4168-e377-08d7a32c048f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 13:22:54.5389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kpLzGa563Yq45H3T0ZzSjodhDHs/MNBQG8HSN66/GUEJH6eYblr6pFkIVI+0Mx/5EbQBamYvwtc+rucvxrJMOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_052257_489044_7B65ABC9 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "will@kernel.org" <will@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
> driver
> 
> On Mon, Jan 27, 2020 at 1:33 PM Peng Fan <peng.fan@nxp.com> wrote:
> >
> > Hi Arnd,
> >
> > > Subject: Re: [PATCH V2 0/5] soc: imx: increase build coverage for
> > > imx8 soc driver
> > >
> > > On Mon, Jan 27, 2020 at 10:44 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > >
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > >
> > > > V2:
> > > >  Include Leonard's patch to fix build break after enable compile
> > > > test Add Leonard's R-b tag
> > > >
> > > > Rename soc-imx8.c to soc-imx8m.c which is for i.MX8M family Add
> > > > SOC_IMX8M for build gate soc-imx8m.c Increase build coverage for
> > > > i.MX SoC driver
> > >
> > > The changes all look good to me, but I'd just do it all in one
> > > combined patch, as the changes are all logically part of the same
> > > thing. You can leave Leonard's fix as a [PATCH 1/2]  if you want, but the
> rest should clearly be a single change.
> >
> > There is a arm64 defconfig change, should it be also included in the single
> change?
> 
> Good point, that one is probably better left separate indeed.

Since the defconfig change needs stay alone in a patch,
merge other patches into one might not be good. The patchset
I did is to make sure the soc-imx8m.c could always be built. If
I merge the others into one, without the defconfig patch set CONFIG
option to y, soc-imx8m.c will not be built. This might break git bisect
to check the soc-imx8m.c

So I prefer not to merge the others into one patch. Do you agree?

Thanks,
Peng.

> 
>       Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
