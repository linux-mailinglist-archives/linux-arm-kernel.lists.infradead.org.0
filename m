Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC07D124685
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:11:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5j4tqPiNjwnD3tGmUMF2qCp8xvamkOw0ukimXYhGOg=; b=jgPBIivmSfloEa
	qkDMJHwYcgg+eMRtURvThC2Gu7UD6aqmf3P/dhueDOuVhM9b8NJDHNKlV0J58BtbrfzR3qJ2+qtnv
	zpE3To4OyNc5S2PQONY/6XddHTTGw3mARSuXW5Btpeti0UEqhTjqgaLYPZejYGG2ib7ERfJCA8imD
	VeIgdTaCQHumZr+0DFFbtIvG2zpX8ijwf9dpdb7iTn8S1BYBsQbEm9QEeh9sFxNHcl7TBmgxexDCj
	5ry3ENJs+o4J0qo1ioxRlI0RYcQdCYf48MjExGBUoTMdqGbFV2Si86fzTHvROHGwUMh8c4al0vzKg
	l6PK1aUt5uAGyp2RxBSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYAV-0003ji-4T; Wed, 18 Dec 2019 12:11:07 +0000
Received: from mail-eopbgr70053.outbound.protection.outlook.com ([40.107.7.53]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYAL-0003jE-G1
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:10:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BWL2JCRW3AKSwCUd61trl8rKgXpBpJ1eSV0zVPRIXaDDaSQ0tUJc96ydQ5cWR/fEjNZjGUJvH1tCanOYLSo3RLfwk9MYAfcNCHjcz/GOi7F4+CPzOLfb/eZgf76aBsW/q5y9JEUpyk9qNVqadZ7VfiGPUEpIAcAnsQ5HleZIIZYA9Xz7DlPMZR+BR98X3M/T6Kb49V0KMKnUIiklZHGYyE7nHPOywhJzfX6eNoCGwG5zOz2f791Z4mT1usNVhTIGWgqQnlYLYAWU4geeDLWvesnXjBljEsgb1PTndZVdt5RpYuel6er8DliWCjwwmlMcaqtr9yWXlI98vqp8bn8lmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yj4KIseQf1CFxpdp5TzyRqtkovICeRio2uAcZAu2nxc=;
 b=NVpnbEJWNot3Om6tS/auwzeMN4rFu7wF3X7R9jk3GHv/B5QC3gmUMk7wqenkt0HKAlV00P8W6gjjrp2kEEUWobyD0ckSH4f42BW5E23U3PPb6qAbj6RfiQNh/bICosuSWPG4xQCBIm1/ra0D02C7hX2DFjz8HBh7gMa9SUAimE5F9clnRFBDZZkAuzUldPEvsmosJnmvSCeQsX6chHlySnBr8g4dSjRwzqWq0IqqKmxqYtmJwrl0OnceUsv9E59l2Ofayx1HJw1AgsCP/qIfihf1TeD2ziMyQlmfnBoDJ87uorNMNnSjcUr4LKU6dLpqMGu9fk0c5zdgWcOhIjNlcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yj4KIseQf1CFxpdp5TzyRqtkovICeRio2uAcZAu2nxc=;
 b=NJVvC6rqe0Qo5CC2Znmu7Ka7JLaD58EndTDRt/vL7rc0mPchTMdElxnw5HiLIkGbI7wjB3zgRRoSEe1vMRt8nQ1CQ4BZ1K4un6m2RHt76CotbKdv64+qJ2Nq+Z8Y3E9GdglQe0AuQj6+DN0OLeWmuw7ZJfHIS3lSwYi42iZigs4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5986.eurprd04.prod.outlook.com (20.178.116.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Wed, 18 Dec 2019 12:10:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 12:10:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Baruch Siach <baruch@tkos.co.il>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] arm: dts: imx7ulp: fix reg of cpu node
Thread-Topic: [PATCH] arm: dts: imx7ulp: fix reg of cpu node
Thread-Index: AQHVtZsmfGvwTi+ciE+LrR2fcO2bIqe/zFuAgAAATaA=
Date: Wed, 18 Dec 2019 12:10:53 +0000
Message-ID: <AM0PR04MB4481AF61BEF33C37AC1B20AC88530@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1576670430-14226-1-git-send-email-peng.fan@nxp.com>
 <87lfr9suoy.fsf@tarshish>
In-Reply-To: <87lfr9suoy.fsf@tarshish>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1ea820e2-8c88-42e4-b129-08d783b354aa
x-ms-traffictypediagnostic: AM0PR04MB5986:|AM0PR04MB5986:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB598605B3C2E62725962FF99D88530@AM0PR04MB5986.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(366004)(376002)(346002)(189003)(199004)(66946007)(33656002)(186003)(478600001)(71200400001)(26005)(110136005)(52536014)(81156014)(86362001)(54906003)(6506007)(4326008)(55016002)(9686003)(5660300002)(66446008)(2906002)(44832011)(76116006)(81166006)(8936002)(64756008)(66476007)(7696005)(8676002)(66556008)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5986;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SwFTgkTdOSKiFcoiVhX8YU8C6kO2shhF9EykILh1YTY8w6W1gtXxw6lpnDWXo7mW8Ktv6uhY0MrBSDAPhsxNSWJ9oPdV6FiRs2Znj7ex7wIVpuIOQK7kw5Im+MdmVHoUFzUekwuTtKJw8Qmb+FBKeb/J76gqe5WKLdHBiVPZ316QgsGBnnpPvGBQlonXdTmosPVccBi22ncDRkMsOpI/YYNHvLc0nDQCXnwOfBHfdqUEXO8g3Tet22PLHbkwZlXkh8F57AwvY6XD/bxamD3NgYUEb2RuaxIFkSjAvdYZ09DMGewGI01XTXqjM+nfMRaiiEDxgp9BTiGBfrLWpu1iQDZ6SBtj+CSihBI7f1tBrncRXDSKLv2A/ViGiOWKDBfbUSJNWcylnS4OkFVDfdV+7h1Frp4LaAqkEhzCTF9Q+MEZwLy5JfQkKRXc616PevEP
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ea820e2-8c88-42e4-b129-08d783b354aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 12:10:53.7852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BYvjc+H8mzOu1LlmRKiKKMuSv1ra2dE4y0jb3c2bpKuyXziLtADZLvq3sI4uVlLglKC+/p5qMmcPhfo8dp2fxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5986
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_041057_538373_6A36560D 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: Re: [PATCH] arm: dts: imx7ulp: fix reg of cpu node
> 
> Hi Peng,
> 
> On Wed, Dec 18 2019, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > According to arm cpus binding doc,
> > "
> >       On 32-bit ARM v7 or later systems this property is
> >         required and matches the CPU MPIDR[23:0] register
> >         bits.
> >
> >         Bits [23:0] in the reg cell must be set to
> >         bits [23:0] in MPIDR.
> >
> >         All other bits in the reg cell must be set to 0.
> > "
> >
> > In i.MX7ULP, the MPIDR[23:0] is 0xf00, not 0, so fix it.
> > Otherwise there will be warning:
> > "DT missing boot CPU MPIDR[23:0], fall back to default cpu_logical_map"
> >
> > Fixes: 20434dc92c05 ("ARM: dts: imx: add common imx7ulp dtsi support")
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  arch/arm/boot/dts/imx7ulp.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
> > b/arch/arm/boot/dts/imx7ulp.dtsi index d37a1927c88e..aa9e50178d6b
> > 100644
> > --- a/arch/arm/boot/dts/imx7ulp.dtsi
> > +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> > @@ -40,7 +40,7 @@
> >  		cpu0: cpu@0 {
> 
> The address suffix in the node name should update to match 'reg'.

Yes, indeed, I will change to "cpu0: cpu@f00".

Thanks,
Peng.

> 
> >  			compatible = "arm,cortex-a7";
> >  			device_type = "cpu";
> > -			reg = <0>;
> > +			reg = <0xf00>;
> >  		};
> >  	};
> 
> baruch
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
