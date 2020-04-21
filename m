Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F13E1B2A1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WgvLVE8CmwSSR6v4lFHmeA1GQyG0bkFGuuAJLdSTqdY=; b=Ib282f+rM7LJXd
	tC0sUwxA35JArfoFhT/YQcu5BWm1cNtIhDNgBVhgry6HGNFJUgrIy09WHqMZUNuOfkNyPOhLlZSHP
	tpiA3rJg3M3RKelXB8OF6dotmzZl1gL13pGdp5SuXaQ9r1C8e1IGcRfQz89gI15Q7kC16qUw4LCnc
	3az8PnevvTbj/FX2MBQuu+ZgVHXejdfYqtf3ZdFRQgag7aJEI82D+Vg7TRRwMXnDd46DXFdSaAp16
	Xb28G0/HctaNaHNXgdjmigIT71JAtnTaKtd2NJAzUv7BM+Mfi7fh8gD6wlA7DL/o0K9fWSzJevAPz
	5NXQC+HtE/gtb3ctMtQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQu3B-0006dk-Ou; Tue, 21 Apr 2020 14:39:01 +0000
Received: from mail-am6eur05on2079.outbound.protection.outlook.com
 ([40.107.22.79] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtvo-0006LQ-AS
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:31:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jTz2YPm6VYDbR/HdLyGcoWC7R3fn6whXZMZ+q1bVVbt8IwCCYdtryvGxndncQb+8ElpulF6M7zyDlQ3PUzWOb69gxGQgkxZlYqAjg6/mTIbQcj70OjgD1CHmMrQjL6Nssi1CgstIy5/qCxf1OR4+x9274YrArxaMh01V+l4xuVIcZAf80BOb7cLjYHOrR5J/fFycy3Moi2BIqr3nMxrCQZ/tUF0BELhk5MJoGVeV/dC/17SyWzQffvB3fX+1pYcFX7gsOYqWV1OH+vjomJ4KA7BZAP5flf82ygI2o/dajX5auKgL3PtOhz2PT3OUVrzLqKF/swRWaHdiBWTXpz/uBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EU13+WUaDHSv9p7Nw+Nxw0lh+DgYNdcrNFHJ/qMmWhw=;
 b=I55nzw2KNrcyUB7iPYJtlmvFWXec0I9Vz+BCc83lydlr9Va/kv1TvZpxd3zIvNiCjW+Y99oEBB5jdj/m/WPcbnUjhyhvhc08YPv0fMhQBYgraxtjmZGMdl+IBvE9wAktSBQr3wCSJnQykcFT2GSagCuHdHbIaCwoYKYo6qzOdUJFUmcsphtnmKJNimmSRyN3WgnZl0P0626boil1vSQa+XwxPIBT8KPnU5Ym4GlMdC9qrlg6Ua1Y8SXL40VdWEG0NeaCiePjXatiu4jWQglcSbA4CRxSC5m4KLFR+cmdrnFPNWNibLfsxVQsqubqMMPTl1MLWSkqXXAFujahv4mZvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EU13+WUaDHSv9p7Nw+Nxw0lh+DgYNdcrNFHJ/qMmWhw=;
 b=iLB7Qk01aqjSR8LdgnBCj7kFvQX7LwzBCaSQlLsIDe1tFr09UyPWIaHL6pa3H+UYLaoF7cXVzARje2GTmTABVM59V9m6mbE0mWYAtEd7zl6HgCi3CObot6UR+FN51PEaaOHPX3C7MeU7+XLdVV8TO3pS+szQ98OQjHuZSPMBwJQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3691.eurprd04.prod.outlook.com (2603:10a6:8:5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Tue, 21 Apr
 2020 14:31:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 14:31:17 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V2] dt-bindings: thermal: Convert i.MX to json-schema
Thread-Topic: [PATCH V2] dt-bindings: thermal: Convert i.MX to json-schema
Thread-Index: AQHWDtWuHhuFKGSv1ECuhQdSmjVzK6iCZy4AgAFNxdA=
Date: Tue, 21 Apr 2020 14:31:17 +0000
Message-ID: <DB3PR0402MB3916B60832507A72F39750EAF5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1586480844-19227-1-git-send-email-Anson.Huang@nxp.com>
 <20200420183512.GA5483@bogus>
In-Reply-To: <20200420183512.GA5483@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 75e0848e-9930-4c6d-339d-08d7e600a749
x-ms-traffictypediagnostic: DB3PR0402MB3691:|DB3PR0402MB3691:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36912FDBFFC18F7789BFC55BF5D50@DB3PR0402MB3691.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(186003)(9686003)(6506007)(86362001)(54906003)(7416002)(8676002)(4326008)(81156014)(26005)(71200400001)(7696005)(55016002)(64756008)(66476007)(66946007)(66446008)(66556008)(33656002)(52536014)(8936002)(76116006)(44832011)(6916009)(2906002)(498600001)(5660300002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eNx4v3QJzjTy8OndEy1RfW1XVrhEnqaRKW9vNETLm80zgl8e2t1Fk/b2eOFJATClWyBKf4Z5V7GuJFTpMoFAdTrluqWNh+h8CagKor9bXgSm5FbLKwNOaspwK+jB4Iggu6IvLonp+x3+mgx7tJpYUom+znzK1B4UA+8yLIxsvzz7dZk747qVmkq/nWONqLC5kAMaYq+g1QKguZbbHdZo50PJDVXuPhQsPV/YAsE4t+fntxR3rZHpHT/8CZfGs4ld84Pp7ZY1NkMMdBM0YACkJjGr4mZusq9N4PLd2aoz1QDdx/hns4kVJKHS/xRkgXA0zMDalikPhclMKl+5bAR77zzmtWpcqsfODCnUbUcRLPP00cyFKjzd8VMJk8eNoCz8gjnuo6ABJROB88dUrCzs2KPW7MH4VNw5hmGxJMG91AvKkzgWuEodVOeJ7I39aFXe
x-ms-exchange-antispam-messagedata: 69Azka5k0n2Z7/ScLT4sKSg6/89XFnXYjriTCSnKXfeEaQucdOdS1OUq3ai2dGSK728McBV9G+ZO8mCrRAFt8+EYjx13L6JRO6ullyXYwuRjAV1ninpaZ0PImVE4mfK++m8cPwUcJaPdRNC2u2rGwIrsHMjKPxN9h3P1xah2d4LjGxDkwhEnFTD2Hjh3vcMiP8Zr/DyEdJzEdH3inHaZwSbDN5pAYe9bnVzml16pJHq5V7dTTNE1zS7LoXaBtrHEJmICO8jzyvWc/pNiVdRrdbfQu10Qs0s2FrdOBLUVyAsAP1eBZAcfay/mofDvj83PHbpslxAlK70LanR44VyGdStDCkz8KCT/uuVHbvIPSyr8m7XZIxRomDCFwXWFKEAHuepEzkii65FiF8rA+YnA7nyM7VFZNi1djpjXdUNhotj9Z6Qy8WYX5smh6OugdEfD0fYY9dHpB0844wgMNqgYpSAMsP7lhQtHEuqAq52BGBKaZ+9jg/S9Q/BTs/3HsuYM6WOdfgG+HJ3517bQfDVSAqWnJd+adgM19nMM1kgfe3oeqfcmuDmPTcRBF93bGEsjyuxuh7O8xPyEThNpbQnQ0+c67LqAGNOz32yf+IUr5jQTT+LeT9Xda37rvFRcFFbMvybjdjQlUWsS8dWhKP5Puzm/A2h6FoekYK3YkFtxawU0nqZwGLfaxnDkEeE5LaiX+nBIZFW4Mm2ZJwCNxl4ntjrhLVrb9Tnbkm2BJ3p/iYl5pi3VcA1KyJhhrKfXLuAPVDWXChwoS8/WnB4/wFPTlnez8rASQamMUQF8R6dQ6mk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75e0848e-9930-4c6d-339d-08d7e600a749
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 14:31:17.5716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lgm0UrLLbkXpnleBqWuTzfo5VXLHwSzEtVhoGPI+YuAviOI8OsZ/bwn3chNaEyLViIIGfHG2mvdJyfr4cxVczQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3691
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_073124_482128_5099B92E 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob


> Subject: Re: [PATCH V2] dt-bindings: thermal: Convert i.MX to json-schema
> 
> On Fri, Apr 10, 2020 at 09:07:24AM +0800, Anson Huang wrote:
> > Convert the i.MX thermal binding to DT schema format using json-schema
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- make clock property optional.
> > ---
> >  .../devicetree/bindings/thermal/imx-thermal.txt    | 61 --------------
> >  .../devicetree/bindings/thermal/imx-thermal.yaml   | 96
> ++++++++++++++++++++++
> >  2 files changed, 96 insertions(+), 61 deletions(-)  delete mode
> > 100644 Documentation/devicetree/bindings/thermal/imx-thermal.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > b/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > deleted file mode 100644
> > index 823e417..0000000
> > +
> > +title: NXP i.MX Thermal Binding
> > +
> > +maintainers:
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - fsl,imx6q-tempmon
> > +              - fsl,imx6sx-tempmon
> > +              - fsl,imx7d-tempmon
> > +
> > +  interrupts:
> > +    description: |
> > +      The interrupt output of the controller, the IRQ will be triggered
> > +      when temperature is higher than high threshold.
> > +    maxItems: 1
> > +
> > +  nvmem-cells:
> > +    description: |
> > +      Phandle to the calibration cells provided by ocotp for calibration
> > +      data and temperature grade.
> > +    maxItems: 2
> > +
> > +  nvmem-cell-names:
> > +    maxItems: 2
> > +    items:
> > +      - const: calib
> > +      - const: temp_grade
> > +
> > +  fsl,tempmon:
> > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> > +    description: |
> > +      Phandle pointer to system controller that contains TEMPMON
> control
> > +      registers, e.g. ANATOP on imx6q.
> 
> Really, this should have been a child of the system controller. Not too late to
> do that, but you'd need to keep this for compatibility.

Sorry, I don't quite get your point, can you provide more details or example, thanks.

Anson


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
