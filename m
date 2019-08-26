Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AF89C78F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 05:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ht19/BDqWX2LBx/CV994LPSRTV1dP6JRI7g/p5/KYio=; b=uqJNtr/OxRkeUn
	R432TUmFxW1BgWVlFWzs5ER1Cl/YQtEtTekibY2XvGvqIb+XFFk52C3EfU/xmgR85q+hXuSwaPVDL
	3WH3x1a4UdDnAjWLnhC5ILPhShBqgNti8QE40EEjbBN8NbKg9cIiL00eob1Y0crKsRYdUnf+SHQKE
	jI58HaqA2JWB/8oZRcqaVWvMOvGXah718/FW16Mp67JwcqtNIudCGPOo07om7jaPNVJubLkKrpAeg
	JzZGqXP5qgIGyTjkCWWSZa+YnjUn1QhCGcQu2LjdCXNXaJQfiN1JkmPaQe5sQ4/FB08Y6Eah12DIn
	N3sw4fXBOtzwKv6adgoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i25Tk-0001xs-WB; Mon, 26 Aug 2019 03:15:37 +0000
Received: from mail-eopbgr20053.outbound.protection.outlook.com ([40.107.2.53]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i25T0-0001pc-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 03:14:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RNDYIGLvGAcxO93XasJmmohuWY7qmdYu02dZCD9N3K1PzyfXTQE0YiVJDZGiQnQ6UHDNwbJuw0aKAw+NjTVAfdA7SxGNe//GIUkTJcej5y7QMpkusPoBTTltgXfhxHPp+P6UvMv9rfDFGi/DCkfjj24UytWdcbhrmsVkW5DgfY+gHYz2IAHjrvQ2dRzbBqF12Q8M2L+5NS+v7OdQBtUU8YVE78fCPwuCq9PLDeOEhLUwg8oy/gjFxz48Hxs8k1rFRAPKcWkdpXa99fZ/tTVdRzJo5782TEd4pL2hr3Yr58BBT14ld5PRF6J1lMHXt+WE8CZTObdkCIt/Okumo3DHAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OAmHtTMgFgRd54JiOwwMqGiFq1/NA8w9S7iWCnQ616Y=;
 b=KjjzEL5gOvsuAMiDib0YrzX49x/GY7VS9CHibPLBs9YV/NMtmcJWULwC2g6cTigGPMOaeDoNG0Kc4NeXKiDvUsG4LuneQd7Uxu27ebBQ0ir629maEUToFdgmd1umEJRQI/UNujRh2FX0QushZmz/XLs/87vlsNJc31ztMU2B283Q/1jilcduB9euiw5lI5ipqJJaw0S3WOpIVHh5gcvOayGJeuHIMzItWKP2WqPOCWjO0iJT+68Y3jYkkHQLkieCVgY49H+OOUnUyW6sZWqk45XMHbBRI2AS2g3Ajq2UhTRBfA3fPRomef9OBC0a/2Hel6FBpZipAAoOx5XqUTiueQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OAmHtTMgFgRd54JiOwwMqGiFq1/NA8w9S7iWCnQ616Y=;
 b=OY2UFJl8z1NxXZjRKU9voJz274Ww6DVNj3K20hgKTRDIi6Sa5TE8hHu9tViZ4y7qICz+TT4Ig3a6l+veV0ZDIKj5h3gh6NrsEgMzI6Y0jsmGRKPUcMZYHcwD6Lk+ziD1lCviaikh5P5QKS07Il1xRx8EGkSPqEaygFF2KiQGS4U=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5284.eurprd04.prod.outlook.com (20.177.41.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 03:14:41 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::44b4:2932:8e73:d707]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::44b4:2932:8e73:d707%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 03:14:41 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V4 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Thread-Topic: [PATCH V4 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
Thread-Index: AQHVV0rlu0hXHSvML0qy3W+1YgLATqcKs4wAgAIWVEA=
Date: Mon, 26 Aug 2019 03:14:41 +0000
Message-ID: <AM0PR04MB4211047E7632FD0E48D53B9F80A10@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-3-git-send-email-aisheng.dong@nxp.com>
 <20190824192101.GG16308@X250.getinternet.no>
In-Reply-To: <20190824192101.GG16308@X250.getinternet.no>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf1878e0-f1a0-4dd3-49cc-08d729d38930
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5284; 
x-ms-traffictypediagnostic: AM0PR04MB5284:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5284BC279C0CFA247710543F80A10@AM0PR04MB5284.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(366004)(346002)(396003)(199004)(189003)(51914003)(54906003)(53936002)(305945005)(33656002)(476003)(486006)(66066001)(5660300002)(6436002)(53546011)(316002)(14454004)(8936002)(7736002)(26005)(55016002)(3846002)(4326008)(44832011)(6506007)(76176011)(7696005)(446003)(186003)(11346002)(102836004)(86362001)(25786009)(478600001)(99286004)(256004)(71200400001)(8676002)(74316002)(6116002)(81156014)(229853002)(66946007)(2906002)(52536014)(66556008)(64756008)(66446008)(6246003)(81166006)(71190400001)(66476007)(76116006)(9686003)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5284;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qITlmuVcbvDh5pJysVayGDHkik4jNxdJHNmcQ30arEM4sKgqeqc831i4bqlMae/ezI2Gbs7Dujt7Df8u85VO/527KyDjACBW6PIpvNmu/R52NGvQEnqE4I4Aoo+RXoXFfiQgpOvrdBvRJRqHkq8xadTtWNJa6ikEcUOXTDDYPzQG6dTHocvm/R5oisb0MsShBHpZS+LwDBPEgZoQjR63LwqcbRNtA9LvaQFKBK8cya1V/8fU1P+04NHJggGW+6E+Jzc84xbp2pfysTFSjH+lUctRktjPkWrTsBwXF/IrVbfjf9qDpvtjzR2TMJApJMW5q9ciAqhzryzmILnvcIeLVpIIJifdCO610I7ughEwWkZ0jz7XdBgFAgz5sXdm2fixwW+O1G9XVqOmuvp2En+szdsthfvPCGBrJeuLeH8/a8E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf1878e0-f1a0-4dd3-49cc-08d729d38930
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 03:14:41.1706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qLSmjeM0x7+5tQHdrFxZZz7U7A0NJ5RXepF1Yp+lQR5bxeB9cmjD83OJCqIAmPUS/BrjVPcw9R/9PjAy7n8cOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5284
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_201450_079037_26B7B804 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Sunday, August 25, 2019 3:21 AM
> Subject: Re: [PATCH V4 02/11] dt-bindings: clock: imx-lpcg: add support to
> parse clocks from device tree
> 
> On Tue, Aug 20, 2019 at 07:13:16AM -0400, Dong Aisheng wrote:
> > MX8QM and MX8QXP LPCG Clocks are mostly the same except they may
> > reside in different subsystems across CPUs and also vary a bit on the
> availability.
> >
> > Same as SCU clock, we want to move the clock definition into device
> > tree which can fully decouple the dependency of Clock ID definition
> > from device tree and make us be able to write a fully generic lpcg clock
> driver.
> >
> > And we can also use the existence of clock nodes in device tree to
> > address the device and clock availability differences across different SoCs.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Sascha Hauer <kernel@pengutronix.de>
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> Acked-by: Shawn Guo <shawnguo@kernel.org>

Thanks for the review.
Do you think if we have a chance to catch up v5.4?
Will this patch set go through Clock tree or your tree?

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
