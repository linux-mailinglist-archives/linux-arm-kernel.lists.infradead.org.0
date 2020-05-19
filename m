Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF301D8DE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRGz/SzzT+F0L9xsf249oRTWXyxbKhRwSg68O4N1viM=; b=Wg89sUXFwWdXG9
	ZHJxZDqWo0j2PL52cRBh1s7+NRlseQCMPzaiMdhODXfA+zrX5b1sTKHB2FZfRrBfsveuTqmJTzK8b
	k4kLAl60H1AmAebbEQ9sHfo1V54W8y2/3+xbZKLsuda+oFLEbRGPWPxMGG3wtzuRuDHUuCHZm1vNI
	HgUvfXbXJjRSSuIX17U2jx0+oGkEROwpq0X7GmnD7KFWjcWs6Zvx8gGuOP6+v8TVK1J2lwLOwOYm1
	ArfTgCkNoAyvUU5cBFIPfU58Z0/cQj71yqfvtN//grLlbu9GCwP/DGi/5RcJhVEsrian05g4o5uQy
	5X+PrmbpD8OrN/7yiBKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasSC-0000uX-Nk; Tue, 19 May 2020 02:58:04 +0000
Received: from mail-db8eur05on2056.outbound.protection.outlook.com
 ([40.107.20.56] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasS2-0000u6-Ak
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 02:57:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nw53O0Dr949F+wdiRt/fwUrWlS4gI/pBB60/QG8Da2jJnw9HHn2668pYYExQg83hMidNO6VdPRQwun7b4qULZj84BGPBCLLkFAljJ4vHEiLQgsFKyPXeBlALTT52hVMb+ZLIKT5HjNwBsB3ylKuHHRGnhFNMuPOiIsD7WqgJjAqh2ApZfjPo+UZxB1NDhaX2vUpcP5pAqSYrWE2jUc0TDcPpcH0a7a8zd+D5R5WlP6dxJhuY/uqWj8FD4FJMmzCLEnDTkVItlDy5+kDLF8OqyU0D+OFY7JV+eNeCnYHjl9MfNB1Ewv2aWASRG/92hjq+pVi7b/1PMimAyLeAY/dS6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9FqfzCkNPv6P1SA8zyiUDiZVONX64ldFekpYC0QvnxU=;
 b=SZPZI0i2QmMkBDkNchX9iDr1eLbci3eOBjgFC/lryh5ZxJJYM34Qmj80UIFT1h0O/21xXkeIhI/dKdNtgbvOWj8Lunbjyv7U3XHskTDH4E+RLelvcq5buf7tHjFijO7deJeKQubtIkoltfwwNp/i9FJMuOda3/Qp/o9h+JaZ9KKkpotvxONJPy13kUrOnVjK09d+2jYx/Vw/kQrdKbJE2ZSKtNoF2DLVlYTYB5yIVxCrG7TVN+BscXcmSjctvD6C0Raxh+GJ9MyfI9gVG1DYfwyhS9q6jAAw+O93MUy+i8522moxb0AN73+U+iV14GV25D+vwgr/BTdl92QvcUAyyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9FqfzCkNPv6P1SA8zyiUDiZVONX64ldFekpYC0QvnxU=;
 b=T6oBsuKBLAiFWwVlAOwY2dgVCFLJZrQvCpNlya8QG+SNkoc9EgnwIZyJfkgTanL0JaK7viqTUcMIGJh6Jj4WtlxcJXHDPi2MwrQd173l7aM5qGlvhPQ2kZBOugnqJmebIK82U9IyTo611del1C5Lb6dqpIOtqwE+AZ+6+hpKU14=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3673.eurprd04.prod.outlook.com (2603:10a6:8:c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Tue, 19 May
 2020 02:57:51 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 02:57:51 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Frank Li <frank.li@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2] dt-bindings: clock: Convert i.MX7D clock to json-schema
Thread-Topic: [PATCH V2] dt-bindings: clock: Convert i.MX7D clock to
 json-schema
Thread-Index: AQHWLSVULubEBF9aZ0ekkgAtmYRNgqiuqIEAgAAPYyA=
Date: Tue, 19 May 2020 02:57:51 +0000
Message-ID: <DB3PR0402MB391638F2EBABD4B50D42648BF5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589813554-20929-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966B101D3E0A0820FAD4CDC80B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966B101D3E0A0820FAD4CDC80B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 27053483-8a11-4208-c4a7-08d7fba06bb1
x-ms-traffictypediagnostic: DB3PR0402MB3673:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3673CF9E3B5B2E9A0AFCF3EEF5B90@DB3PR0402MB3673.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BbFbyOU5DaHSSERAkGxUshBr8+eC4fEvXOUjQfDm27WwTC8VHBvlTjzVd9rOodP2VzEPMqw5mPqpti2XetR/mOXWlE0AMKhcBdX4PgQ8tJ8CHy2ym+y17s9zUZsEohda/3wbjMDVhRLg+TliIbsZL17DHgBrokvAedzIFFSUd9sdDz98glPXghZOaXmseB3tW85xbiBXAArG9q5KvpfUn8p4yOmEVsckVqInh+yz/FUD39Fhi4VGMyaG3FfTNIbGD0heE4XYU5BOHLO+HKWUE/IPp2yAfC5P9odbL5lmqCkUe1cmm5T2cHRXEJOHeUKDvFHQtnE5s2u4rdyv4xMqCprp5zmnoEgSQkKhXe3XS6wHqdsiAIQzBprPtWzuYIWSlJfhOlPK2RKqRpYe+wPUaUTCYy4sm5b+qJ18SjmdxH2zcF5qhmiZ9RfSnzBXMWXl6onNQ+koXttO4wkLQEdPC5u2lmj/MFGOuFTeyyG3ikE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(366004)(376002)(39860400002)(136003)(55016002)(9686003)(76116006)(71200400001)(6506007)(66476007)(66556008)(64756008)(66446008)(44832011)(66946007)(2906002)(186003)(26005)(5660300002)(4326008)(52536014)(478600001)(8936002)(110136005)(7416002)(33656002)(86362001)(316002)(7696005)(8676002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: /wAdVmRrkJqflt5xoSoPSBg/GIMEkWNxKlV8sINpvmTcg2NFbJriRDanuf7MG9ypzyWME6nhYDORMOsyErAvMjjA/pDI+O1UD+pk8gQJt/CRw8tXJyf4hiPmaDQb4cJ8/4dLmFEOFTNDNRHiVpEB9ErEiF3qYrH64NEYxJFq7Nw+coUm7grU1dZxE+PGqPctrd2e5oJvi37eXqcQJy92z3WIsq1y2gZ/LBQTMXhfRsDYrPMbqSTMR4YtdV3YiYmndgCPI4ZBgOf7dDdVdIJ4aRNpT+wbfMdlu+nnhwo9SjseXDAhivnA2PSfiAQxBUdZK98bprP4GA0/YEe7eZ5X9ATUcs9ytHxzsPyeGn0/w+9Wg+/z97k79ye4IBpWgroXODYmuYHq+veHi92OjaZOJPP4ORjwUnMO9vW6QHp/FB/bFwLwhrkaZK7A55Le9aKf5xj4dPKaFstlVfdYRtMTYzIoZ1oiFnuuIEbpQUuOjty6Ye+WnMs+kD5mTNy7/c39
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27053483-8a11-4208-c4a7-08d7fba06bb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 02:57:51.5106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 44k/R3D0Ic8lBXTu2cm0kFCKt8Pp0Hq3G8UIT3nH4DDfPjBkNvKOgKYU6bFyA8S5qT4gBh4bCkKTgnms0TCbrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3673
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_195754_458838_D7E1AA6C 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.56 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.56 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: RE: [PATCH V2] dt-bindings: clock: Convert i.MX7D clock to
> json-schema
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Monday, May 18, 2020 10:53 PM
> >
> > Convert the i.MX7D clock binding to DT schema format using json-schema.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- Update maintainer's e-mail address.
> > ---
> >  .../devicetree/bindings/clock/imx7d-clock.txt      | 13 -----
> >  .../devicetree/bindings/clock/imx7d-clock.yaml     | 64
> > ++++++++++++++++++++++
> >  2 files changed, 64 insertions(+), 13 deletions(-)  delete mode
> > 100644 Documentation/devicetree/bindings/clock/imx7d-clock.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/clock/imx7d-clock.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/clock/imx7d-clock.txt
> > b/Documentation/devicetree/bindings/clock/imx7d-clock.txt
> > deleted file mode 100644
> > index 9d3026d..0000000
> > --- a/Documentation/devicetree/bindings/clock/imx7d-clock.txt
> > +++ /dev/null
> > @@ -1,13 +0,0 @@
> > -* Clock bindings for Freescale i.MX7 Dual
> > -
> > -Required properties:
> > -- compatible: Should be "fsl,imx7d-ccm"
> > -- reg: Address and length of the register set
> > -- #clock-cells: Should be <1>
> > -- clocks: list of clock specifiers, must contain an entry for each
> > required
> > -  entry in clock-names
> > -- clock-names: should include entries "ckil", "osc"
> > -
> > -The clock consumer should specify the desired clock by having the
> > clock -ID in its "clocks" phandle cell.  See
> > include/dt-bindings/clock/imx7d-clock.h
> > -for the full list of i.MX7 Dual clock IDs.
> > diff --git a/Documentation/devicetree/bindings/clock/imx7d-clock.yaml
> > b/Documentation/devicetree/bindings/clock/imx7d-clock.yaml
> > new file mode 100644
> > index 0000000..8cd0573
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/imx7d-clock.yaml
> > @@ -0,0 +1,64 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > +---
> > +
> > +title: Clock bindings for Freescale i.MX7 Dual
> > +
> > +maintainers:
> > +  - Frank Li <Frank.Li@nxp.com>
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +description: |
> > +  The clock consumer should specify the desired clock by having the
> > +clock
> > +  ID in its "clocks" phandle cell. See
> > +include/dt-bindings/clock/imx7d-clock.h
> > +  for the full list of i.MX7 Dual clock IDs.
> > +
> > +properties:
> > +  compatible:
> > +    const: fsl,imx7d-ccm
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    items:
> > +      - description: CCM interrupt request 1
> > +      - description: CCM interrupt request 2
> 
> Do we have a more specific description from RM?
> Otherwise, I'm fine with this patch.

I checked both RM and design doc before, can NOT find any description about
these 2 interrupts, so I did NOT add detail descriptions for them.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
