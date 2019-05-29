Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7382D505
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 07:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHVBHSgFz/kICGLfXnjQwHexOXLUNsIMuCUjjRUqeGk=; b=QD7yeR+loeewiR
	Y4vHeOxkDBzq8vvoJZSWRGehHjXOe5AbiVP2hOD9+2dRSWdBIzcd4TLa3z9dG6Gl1rHkKGVAoRSpD
	G17QzAlcy0k+pBF2E9aHgih8C/PwObme6DnqZ40hc0rLunU5cxXvyRXDKRXiHF8ySf9uQTVP59NWZ
	l/+vUbp5At92r3nGgfAOwudoS8TZBJLPaIKgj+/oWuOgIN5l78YNjRLzevr3JtKvSxtlSgza9r0uQ
	/CbQNWvehSUdF4v2uEacKENLYZMI51MOyWsiXpqQ6q4hYpwWeYYoBq3alDJ3DqaJNjLQwu2VnNolQ
	E0rZRCLkD6PZin5t3LWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVqyL-0003rh-G6; Wed, 29 May 2019 05:17:57 +0000
Received: from mail-eopbgr00076.outbound.protection.outlook.com ([40.107.0.76]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVqyE-0003rL-7B
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 05:17:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hP+y0oxk0+NX3SMiMJrxC8di8BJGijzwjbv+xENaCAc=;
 b=pXG4xW7jKiJivEaZNoFMXuCY8aS4OE9byDJoZXvcyb60+eCUHpZh09orEI/Gr1nF6Shfwxx6Tscif4g7OmtOlxlo01Fv1ceYRpDeOyeLj1dXxluhhfZBzpbZNBhzRJlriXbsy5p2l1F7t9BGbq8r5kq3OodNhx9AEzMw2XnVVVQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3929.eurprd04.prod.outlook.com (52.134.70.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Wed, 29 May 2019 05:17:47 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 05:17:47 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH RESEND 2/5] ARM: dts: imx7d-sdb: Assign corresponding
 power supply for LDOs
Thread-Topic: [PATCH RESEND 2/5] ARM: dts: imx7d-sdb: Assign corresponding
 power supply for LDOs
Thread-Index: AQHVCKkZhfxt7jnKxUqx2zVaOAuHUqaBqaow
Date: Wed, 29 May 2019 05:17:47 +0000
Message-ID: <DB3PR0402MB391628E1B6D27C9AC5B02DB8F51F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557654739-12564-1-git-send-email-Anson.Huang@nxp.com>
 <1557654739-12564-2-git-send-email-Anson.Huang@nxp.com>
 <VI1PR04MB5055647612FAC2FE6FBE139FEE1E0@VI1PR04MB5055.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5055647612FAC2FE6FBE139FEE1E0@VI1PR04MB5055.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8261d2ef-81ee-4fcc-af2b-08d6e3f4fcd9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3929; 
x-ms-traffictypediagnostic: DB3PR0402MB3929:
x-microsoft-antispam-prvs: <DB3PR0402MB392913E0B0ECD32D3AC94397F51F0@DB3PR0402MB3929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(346002)(376002)(366004)(396003)(199004)(13464003)(189003)(186003)(33656002)(3846002)(6116002)(476003)(6436002)(478600001)(86362001)(26005)(486006)(11346002)(2906002)(446003)(5660300002)(74316002)(44832011)(53936002)(14454004)(68736007)(81166006)(54906003)(55016002)(71190400001)(99286004)(6246003)(229853002)(8936002)(9686003)(316002)(71200400001)(66066001)(8676002)(53546011)(66476007)(4326008)(305945005)(52536014)(6506007)(66946007)(102836004)(25786009)(66556008)(7736002)(76116006)(7696005)(73956011)(6862004)(76176011)(66446008)(6636002)(81156014)(256004)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3929;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fVk+uAnVwKhEZtbp4nKT/7m6QRhl7o7btdgEta5QX1XcbYXIB1tHLC9EvU3YPNxpT1XbZAnLmwH2sJBx/2P3R7uKPt4RGoy3OnmsbJxQbXRc41GRbyvcZ38+Fy8edC5Sv8LjFC1oc4NBJ779MeCxokYSbyigOctdaQefKyjNjhkrQYpO/LTdYhxBo9yH7Y3FhZNDEMyCorH/CSMZuaoggneDp9IEnFN5epN5SypbU5nmMvg1WTgtzo24x/SR0yUVP7iZhYig7yVkk+buScjuYXuBvdaiUsRmW3DK/PH0hiV9XJxSvYAx2VYGfRk0rT4C1s1OOfcK0KtmR7rBmwXLRfIJuLBIr+ByAPsk+dDbKAWlbNY9lz8dSfVfOBqJq9pFn8B5Wt1UFhxEzpu3gyMlSq5FNiT6wPJFT240Prnwrn8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8261d2ef-81ee-4fcc-af2b-08d6e3f4fcd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 05:17:47.2334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_221750_570682_EA2DF1A6 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> -----Original Message-----
> From: Leonard Crestez
> Sent: Wednesday, May 29, 2019 3:24 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; shawnguo@kernel.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH RESEND 2/5] ARM: dts: imx7d-sdb: Assign corresponding
> power supply for LDOs
> 
> On 12.05.2019 12:57, Anson Huang wrote:
> > On i.MX7D SDB board, sw2 supplies 1p0d/1p2 LDO, this patch assigns
> > corresponding power supply for 1p0d/1p2 LDO to avoid confusion by
> > below log:
> >
> > vdd1p0d: supplied by regulator-dummy
> > vdd1p2: supplied by regulator-dummy
> >
> > With this patch, the power supply is more accurate:
> >
> > vdd1p0d: supplied by SW2
> > vdd1p2: supplied by SW2
> >
> > diff --git a/arch/arm/boot/dts/imx7d-sdb.dts
> > b/arch/arm/boot/dts/imx7d-sdb.dts
> >
> > +&reg_1p0d {
> > +	vin-supply = <&sw2_reg>;
> > +};
> > +
> > +&reg_1p2 {
> > +	vin-supply = <&sw2_reg>;
> > +};
> 
> It's not clear why but this patch breaks imx7d-sdb boot. Checked two
> boards: in a board farm and on my desk.

Thanks for reporting this issue, I can reproduce it now, a quick debug shows
that with this patch, when setting reg_1p0d's voltage to 1.0V, the SW2's voltage
will be changed to 1.5V, the expected voltage should be 1.8V, so 1.5V cause board
reset. Below patch can fix this issue, but I am still checking if this is the best fix, once
I figure out, I will send out a fix patch for review:

+++ b/arch/arm/boot/dts/imx7d-sdb.dts
@@ -267,6 +267,7 @@
                                regulator-max-microvolt = <1850000>;
                                regulator-boot-on;
                                regulator-always-on;
+                               regulator-max-step-microvolt = <25000>;
                        };

Thanks,
Anson

> 
> --
> Regards,
> Leonard
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
