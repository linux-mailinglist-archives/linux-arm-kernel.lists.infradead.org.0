Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF94B1ABD37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBq4t7Ay7It7nWEmayy1H+bctglrLUHjoKRqBci0Vyk=; b=Ua9NGFFXp8Gicx
	6D8Q88KlsUgxDlGJvFX2hx7/Ropoi3wypy30rnt37nDphsHOsaviwA/qHLjXP/0pYRSwl+BQv6j8a
	Ybv8saDO52/sJtV2AT99zAFGlKrg7DFXuDymK+Rvxl0oeG4Psp9hiegFcCND7M5kLfR3DyimDD5d/
	KG5e/Hqh1Fy9oYU1/FxHSoQcXDEbuUjF/mhr+yZFJjOB3v5wL9PGaPNmhYyzv2cx5PKr1ZsoRe4Yf
	/aSkxCtMQ2cK199FGpkavolklaxI3K2Qa0ubN5j5sZj4cr6W4G5n0sTs+mpLefFqKIYw6PKDVb7TX
	CqjKtNPL5Lo2guY5FcDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP187-00052S-3c; Thu, 16 Apr 2020 09:48:19 +0000
Received: from mail-db8eur05on2048.outbound.protection.outlook.com
 ([40.107.20.48] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP17z-00051P-9L
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:48:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KQeeI7eZBkfa1ZQuJX+L59uLVHRriYug/9Mzb8/euEUxSHw2jOzaaWjeSZGj2LRTtjsymEQ5hmiQnUNMsPkv7CD1LlIdbbFLFi9X8OVqV5OD+qYHu/gImS3EW+W1263EoA+l99m2GLUBFn9RFw/O3Q6S7XriGLvx5hm6DI2vLWpToJ6gO4HIbkLsnz2eC1XMpHvYAPhxMzJZnjhi+ckE+ZsnvvawJTZ5StIvxvt244BykbMwmLOPgVN6+o8GFgW37ftFB/o+lxEgy9co5ipDoTcSiVQFuckc7nDOSlWobgaIDVyNP0Faf4NPkp1FQfuRljkXEitWKqum0PD4MXvBvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iFfEtUxSBPOydsEfgtacQJUVTWrwXzNvpGFy+kBIHQ0=;
 b=l1bjRyJpie2TWgiVJdpSpmD5spgBEK+rYY4mdTBfqmhvQOiGylMy7DCpzZsZitFsloDXr22R5ON8yWM8SkgK5tUtFq/yC4bONbdHYLH++n6WixqSPke9Ni3Dcj5ELkvuzA0FgfGbeNoqXYnW2da05qXtlztkNKWnLg7zlks8DYwvwFu0ExNAH+85xKg5PXj4Hur+QMbSYdF98wI4zVXnb+DkdyqvlHdHcpjiezUVetN3yEgdAvnCMafNPkrkW2Icm8I6FqbWIdFMVIN9KH8csEgKBTPjWMBZlZI41m2HwYsGd9KVv9Ym3PbrA7WnhpYQMYs/WZ8eC5BY/nrfVZeV5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iFfEtUxSBPOydsEfgtacQJUVTWrwXzNvpGFy+kBIHQ0=;
 b=gcd8ZiDnW05jnUctg55DlQUbddOGz2aFyI97X+nNTYl3l/nnnVHSGyBfVAwEg7QJEoI2F4V/S4lAFHt5Y67qgnHDGJ0tgBdE3SGZIsJb83ZduLLRm9hlpxf4ZD+n12fp5N4nG4rWV1/O1tFbeokrV8pUJeUEqtfQI87LAaMr5Hw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3835.eurprd04.prod.outlook.com (2603:10a6:8:3::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Thu, 16 Apr
 2020 09:48:08 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2900.028; Thu, 16 Apr 2020
 09:48:08 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH V2 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Thread-Topic: [PATCH V2 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Thread-Index: AQHWE7rnIXhaMxmp60Ko8ImmCqNkpah7fmcAgAABvHA=
Date: Thu, 16 Apr 2020 09:48:08 +0000
Message-ID: <DB3PR0402MB391613C2B53CEE067E1C7EC7F5D80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587019158-12143-1-git-send-email-Anson.Huang@nxp.com>
 <20200416093932.2mkcyv4rs6v6a24a@pengutronix.de>
In-Reply-To: <20200416093932.2mkcyv4rs6v6a24a@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0ffe423e-96f6-4af8-9fa4-08d7e1eb44c2
x-ms-traffictypediagnostic: DB3PR0402MB3835:|DB3PR0402MB3835:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38359FDD559D28C5B83269C8F5D80@DB3PR0402MB3835.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0375972289
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(136003)(39860400002)(396003)(66946007)(55016002)(478600001)(8676002)(6506007)(81156014)(52536014)(44832011)(2906002)(316002)(966005)(66476007)(64756008)(71200400001)(6916009)(76116006)(9686003)(33656002)(7696005)(86362001)(66446008)(66556008)(4326008)(26005)(8936002)(7416002)(53546011)(54906003)(5660300002)(186003)(45080400002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hFC3t3xPdJIqatY5bWbHkmeUhvJr2J91SIX2/q+iF3DtpBpe2jdJyW4IQzglHJv234f4D0OSaCJ1Lu3Bd/TIg0Vfk7YgTeb5BsZRauGu5ihRUrE0MzcMA3ivvqlii3+lpeDXx+fAMlcfflYYfH8O1xaLXYy7hElA0aw0MnY8e4XIDaDwJ3j4g6UO1A+kVntW/0lOGCFSnFtRhg+yL/XSSF5GI/CdQV2/eSKRB6j7qkjqsHmN208sVo7VECCTDi+we27HcrWN6rUwTCStyTm6RI9a4A0bR6MKln16VZZzV9DgvLSJbAB9M19+IZxefapKzgPzPKfaZMvVjl237Up8LRNQfAa/fRj8Ulbtjup1nqriEix3qn6eUHL3WVz51bxtuQzZB0ePjEsQFwQ6EpltndvslHLF7eg04NVADVV9nXRuCQq6pK4/P4N5JU0ncxAt+j5uHM3WFHXECEFjBKDpm2cO93ShfXNFO9SRbxuje84=
x-ms-exchange-antispam-messagedata: DREShWuCI91PlTnjNctWATwdxgbeRRN9F4iTcFNVkNfFsPPAVVCO1A2qUszjsGFDAbHDqugZ6Fzbv/e4zRe9AytnbqDpeBJj5Ej3bqqddS0B+FqsDwZbKp2nigvFSQxSONMtAA0o2ejPb9kyMrvXkA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ffe423e-96f6-4af8-9fa4-08d7e1eb44c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2020 09:48:08.2774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x/ajJoEvi6ABGG05EKfLaGqksNVnPoeySRdFyf5nkZERwQIzEWcAOuj9pgKtoaSmrCsUhihatert3OUU9jHmBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3835
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_024811_326752_86F500CC 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marco

> Subject: Re: [PATCH V2 1/5] dt-bindings: clock: Convert i.MX6Q clock to
> json-schema
> 
> Hi Anson,
> 
> On 20-04-16 14:39, Anson Huang wrote:
> 
> ...
> 
> > diff --git a/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> > new file mode 100644
> > index 0000000..1c6e600
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> > @@ -0,0 +1,66 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id:
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetr
> ee.org%2Fschemas%2Fclock%2Fimx6q-clock.yaml%23&amp;data=02%7C01%
> 7Canson.huang%40nxp.com%7Ca840fd5be8c94d4d950608d7e1ea16a2%7C6
> 86ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637226267845578228&
> amp;sdata=Iw1CkVBMqw3m6sox6C3khcMy0BHNCQ9v2k72q3CM6Xs%3D&a
> mp;reserved=0
> > +$schema:
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetr
> ee.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Canson.hu
> ang%40nxp.com%7Ca840fd5be8c94d4d950608d7e1ea16a2%7C686ea1d3bc2
> b4c6fa92cd99c5c301635%7C0%7C1%7C637226267845578228&amp;sdata=P
> Be2CEoDdMo9I1m3DHbITCyYxB4GF%2FigP%2FNd7YCopCQ%3D&amp;reserve
> d=0
> > +
> > +title: Clock bindings for Freescale i.MX6 Quad
> > +
> > +maintainers:
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: fsl,imx6q-ccm
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 2
> 
> IMHO I would force them to have exactly two so we need
> minItems: 2 too here.

Actually, those 2 interrupts are NOT necessary for some platforms, such as i.MX platforms
do NOT enable them at all, so is it OK to force them to be '2' here?

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
