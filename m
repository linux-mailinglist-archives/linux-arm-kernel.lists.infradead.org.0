Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B4A1AD810
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 09:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0MWNoXD2PmaG9mibIhZlyiOl34r0jy1of8JJQkRttY=; b=bma/CKtqqL9F27
	HR73sqXJc/JFmPbjkZs3kin566UJgZTy8ybI75t66AcT2SPY5o7PZngikO7W7GZrHZd1MFCTYE6id
	TC7ajhOQQ3l2a8vtYi349HsKwXQo579jLz8olJtjPMtOQ7YwIgPrqX95jLPIW+9y2IhZFAuSZeAIJ
	XutStOg0187TvAyU6pQo1NQm/+AeVVm2qvWRX/VPJzjv2CBzgIDDXW5z4kUKuf75YOSOey+sZ7bva
	/z+aJDjk14UoxD4mDr0tN/eFOLhjVNRJtfB0VCgt6WvmR4ZT+wyanUB7xpRX4EFke3Erb/CeACx0Q
	HVy8cv0w1l6izCVg4QtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPLqS-0002pd-A4; Fri, 17 Apr 2020 07:55:28 +0000
Received: from mail-eopbgr00072.outbound.protection.outlook.com ([40.107.0.72]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPLqI-0002p4-Ef
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 07:55:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H9vMZP6ZsOXQImhLWX6OSRA0/O9ISOGUU/NXRC6joM3OLagAGAIOcCN6viPdDfmz02qdeORjO95Vt2l2A0REq7LZQTvQPe3sYmIvEH956NCwBusEEMSC4vw97kNgJpVk9a1xI87GfWKRwAiY1vyaguRFSDy/QbIN1tR1IlL0MP12Mu+UfWMfVh93UIspIxVYFvB5bHnfvP2mrDYzbRxeRqyOnxbib2oPNriGbkaOyItsxPgfnH9cw3dq9wdKuBItgk6sumTfCAlQDOtomU7TbSKuuB1pNtQDxYBpB7IOmsdfh0YLJCOIdkCWjILWIU8loREsEyC7WIeGBGAb/CFa2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mbdbjL9D+ean5ZtuIpcFCnHZjuyArRZ5nKNN81Srew4=;
 b=lBbYnXgWgl/skhYpkLIq23PVfadYDrnCTwFZxuqvIEpKjhwygZXO/QvhiinaXUzs/EGZ3e8SiLunweAmwlJYbWrj37J7nUS5mw+QlSwgsOK79/aBtuYTHV7Hv0Da6i8Vcjrycgn3La95uqO2IEvEKnYEZxRMJi+3bEsaK+ApRmXiXHafFw6ng8g10xXLQTg5KYEK7QhP2Ap4uWD4oFwFeh+USp8kaiiOoeMn72DPPE9/4nZ1zYVww/1PBb2hQkQGJ6MCmfMt/FtVwcETusyRpX94N+yQP/39kjfapUFADTJj0MMIu28jnwCqc7ff+1KuRsg01nOf/OPOepETQ2cTRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mbdbjL9D+ean5ZtuIpcFCnHZjuyArRZ5nKNN81Srew4=;
 b=snrlRQN20tdkA/GuLA7VCN7qUzcxpQfREOYD8U1dwGjWIohHfUvipoyGiox7RfMorP0t/etVIiRn6Z3K1Kq7hjM5FaF+dp5kleuUC74079vU/jKi3rtwXDpJX6Hb78Nflzz8KpGByUZXBT/BV1cDuFhtRbMvpF0PiLjrEpse+AA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3753.eurprd04.prod.outlook.com (2603:10a6:8:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Fri, 17 Apr
 2020 07:55:12 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2900.028; Fri, 17 Apr 2020
 07:55:12 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH V3 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Thread-Topic: [PATCH V3 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Thread-Index: AQHWFFIY18ixE2pSOkulfD2QNeGmeah88E4AgAABqcA=
Date: Fri, 17 Apr 2020 07:55:12 +0000
Message-ID: <DB3PR0402MB391662E6DC10F745DC5984FBF5D90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587084091-5941-1-git-send-email-Anson.Huang@nxp.com>
 <20200417074742.geo3hvvencztb3xv@pengutronix.de>
In-Reply-To: <20200417074742.geo3hvvencztb3xv@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a6a0fb65-fc61-4d1f-0816-08d7e2a4a8a2
x-ms-traffictypediagnostic: DB3PR0402MB3753:|DB3PR0402MB3753:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB375312D599D62861D75EFB5FF5D90@DB3PR0402MB3753.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0376ECF4DD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(346002)(136003)(55016002)(53546011)(76116006)(8936002)(6916009)(7416002)(316002)(54906003)(66946007)(7696005)(71200400001)(5660300002)(9686003)(478600001)(66446008)(66476007)(64756008)(66556008)(186003)(81156014)(2906002)(86362001)(8676002)(6506007)(52536014)(4326008)(44832011)(33656002)(26005)(4744005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qrj5QksMjB7j0MtNr0p8NwZCCDlrlvPmUb+iHBf3cyx6S1YvzVM5TCaQEcFx65LuqpRQlk32LXo8pka/sv3IfVqJ3/psL3xb21VhlXSYCRavNbHqla0MQYLdn8UJjVU/k/J7UIGAd9cGyefDI1trdPcplII0RvlN9wo5DjjmED3y9RMnffokFFkmbnLokDilR8SckOdX6RA7cqMFMCHWFLkuu24jAA9gfSPVxSUiU4HX/piIASRMFpwh/oRlbSbSz6tZEXrOO5ceUgTau2EBWcXgjtIfyPsqDEOTjdIX9NW9JmFxLxVaYBYQ+KPj2opBeiZ9/TxfYcSFfWwFQe6c0RHoFCw5L36aEXXHDPsoMk6zmTqtEx7J0Loc4jaVXN8pvSp2cpeG6+usn4AFv0J64fbjAOtZo86o2c7+rLnhGy8yNA8v2v29A8hElSWYzt1p
x-ms-exchange-antispam-messagedata: AOCXs2PZzydr/l/FCH9j6dnJ1Y3MyarYBFcFNK1kl5tXu2ga2lk/Yj3dx0nxwSnHhAa59MV3it25otNKdOW6AVAqXV1WEiu8xHhTy+4mgfildL9cfCew9EcT1jCL7RwIdDgHL2XEKdbUbYJ+GDsxdw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6a0fb65-fc61-4d1f-0816-08d7e2a4a8a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2020 07:55:12.6400 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I/1tusVLhP8C33dsLbxkgkN2RVVjYlwqxWIBA2WQAhemBuUWL0ejLiFY4ND10nOFO5PxNz2rldCqZY/Eedw5DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3753
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_005518_569872_11113C9D 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.72 listed in list.dnswl.org]
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

> Subject: Re: [PATCH V3 1/5] dt-bindings: clock: Convert i.MX6Q clock to
> json-schema
> 
> Hi Anson,
> 
> thanks for the patches :) one last nitpick.
> 
> On 20-04-17 08:41, Anson Huang wrote:
> 
> ...
> 
> > +examples:
> > +  # Clock Control Module node:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    clks: clock-controller@20c4000 {
> > +        compatible = "fsl,imx6q-ccm";
> > +        reg = <0x020c4000 0x4000>;
> > +        interrupts = <0 87 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <0 88 IRQ_TYPE_LEVEL_HIGH>;
> 
> The imx6ull and others start using the GIC_SPI define within the example. We
> should take the chance to uniform that. Apart of this feel free to add my:
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

OK, if there is other comments that need to send next version, I will change it.

Thanks,
Anson


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
