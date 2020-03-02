Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8E2175559
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 09:17:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=aDuNfmjWEFuG4nWpPNTnqgkm3SAW8Cn7weH52Z/Mgyg=; b=eas+W1SJsxZb/Q
	wdzZ2CQLUlMZKx+LjPDAczRfV0mHXtCdNXtODly+v7XTWXkagZ3/CVGCnarDSSj41pDd/uMVnQV1l
	FSMcd6RnrKQklVZiqrYLL0qf8QEuGb3dZbnykzUAHEG4GXJ5nIa7Lc7fJ/9JUQmHceIbFTId1xFyc
	a+o3ZzU+26fCUrQxeOdlW9MPfZUa6W5ZlwivIucDXWdu6N0vT8yJ2NCUIutxNXPjktAA82ZR436Ir
	/dDfAIXA49MHPNpCdVjYPsU+A+HmzGbyEhG+siaQslFv17VWBp6b+KrYgKS8QIDZ3Y6j52VK8D30A
	SNwq9d1PUz+84Nb4UZ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8gGi-0006sl-8H; Mon, 02 Mar 2020 08:17:40 +0000
Received: from mail-am6eur05on2055.outbound.protection.outlook.com
 ([40.107.22.55] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gGZ-0006rA-Or
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 08:17:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oMl5xZiZDYxmA9IER81/Ms3V13HSmPtm7+J5gmZr2l9lX8x2jRYpuz9uSfKXcImyeJxSntvJGuGFNV1GLywSjwmozDT1KRKmPTwLc56qNzeLdu99SVZb62tGThWwmeE/TW0dhbIdebrAJZymJWuWb8FKC2hsavR9wlUXwJe8L8EvQqhrcsvAj7GrYfwr75oFX33+2EWQqMp3zCS5cnO7TS0fnlaGoiI781qX7Ivbr8K9GybHf9roMFeMgeNbxLUyRS0xm6cTHmnPXgXEBgYWsHiXqF1OSTJZ+7STbioLgya7g54bh2KeE5HOcag5LtoqGVRUc0nSZoyE/YBsEYdG/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AacDFEEEq0oC3BZUdYs1DCJEO11Omnm4+cgCsxyXKSE=;
 b=GlgAMomynL558sVhD2Ufx6fRJFYAhalN1U94nHG1zYwEX4kU5czXOmqLJ2oWSP2QoukXZt/S8Km+qQtfxRUBFGmqdgGP6jpLBB09Zoro+CJ/ZWLa8wXCIJvA4Z0JNSdndme8eBzDRO0MLmvvh9QpHu1a1u+4MNsvltv2TSKZIMrCO27fd5oRGrgPcri6uIaGcVQ0vOM7DcexoDu5OJt2girZkTqY0babFSm1/AJLy9jZWE9bV6tW4C8WJ+N7UqzNlm0So8vy+ZEZHIjIq490k6e88fMUYbc4WS8ner3sm6Fhg0fbf8FF6a69NWz9lbVFQb2ZFhHXohQd6PBFs3Q1YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AacDFEEEq0oC3BZUdYs1DCJEO11Omnm4+cgCsxyXKSE=;
 b=DPbqMB03XLFUXU2SWGzHoFBL4fTxoW6bi1KpyPsvN3sm9MwnoSzKWLhJ3YiKIE5mtbNoWuze8WZIJO4R+aNKmZx5puGcO1SWtMEeFUetE36Rlc95E465tMyq3TfP6LgzNi87GI4ud4D10HymGULQH1CuzPSJnCGV3LkkrbvBa8Q=
Received: from AM0PR0402MB3476.eurprd04.prod.outlook.com (52.133.50.141) by
 AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Mon, 2 Mar 2020 08:17:23 +0000
Received: from AM0PR0402MB3476.eurprd04.prod.outlook.com
 ([fe80::dc6e:5cc4:dd53:3088]) by AM0PR0402MB3476.eurprd04.prod.outlook.com
 ([fe80::dc6e:5cc4:dd53:3088%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 08:17:23 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: =?iso-8859-2?Q?Andr=E9_Draszik?= <git@andred.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: crypto: fsl-sec4: add snvs clock to
 pwrkey
Thread-Topic: [PATCH v2 1/6] dt-bindings: crypto: fsl-sec4: add snvs clock to
 pwrkey
Thread-Index: AQHV6/ZSv/DVqZ+iC02h9uEXERTtvg==
Date: Mon, 2 Mar 2020 08:17:23 +0000
Message-ID: <AM0PR0402MB347685AB405373EBED8A386498E70@AM0PR0402MB3476.eurprd04.prod.outlook.com>
References: <20200225161201.1975-1-git@andred.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 197ad76b-7fb0-462a-d815-08d7be822305
x-ms-traffictypediagnostic: AM0PR0402MB3556:|AM0PR0402MB3556:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR0402MB35568B27391383708C495DF398E70@AM0PR0402MB3556.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(366004)(39860400002)(346002)(189003)(199004)(33656002)(55016002)(9686003)(110136005)(54906003)(26005)(2906002)(186003)(7416002)(76116006)(7696005)(6506007)(71200400001)(64756008)(66446008)(5660300002)(4326008)(66946007)(66556008)(52536014)(66476007)(53546011)(91956017)(478600001)(316002)(4744005)(44832011)(8676002)(81166006)(81156014)(8936002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3556;
 H:AM0PR0402MB3476.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fdDP+iDFFTIcvN3C7M08xoNNbI7FaLi7LgTwdR+GubC33BqJ8gNWByo6NOUgw/ftqja6AZiEDhwfLTwatPcU10n0k/4pOUcyT7Vt0pNe5IEUtL92zC2ULgI2fXmFGqZNmLCvnECwi1s/XqdjuQSr04hp5Z1MGS1LeXIkZDP4dI9PDYN2SMAm9erDCYv73+kZaocG4/IfUsVJRAYOiXDCjcmeI3CwMqdJrQfy0ZrylkDGmaiDNw8NPEiVfy/dVByrtGjcToqrJRZm5jqkIm53iZamidKXtjeAJagWbs5F62wyI21cHnRcTyut8L9HwF4HH0+boqE/iqElwzVcX4rNdn0XsBtClyAbqu1wJGsmO8A/rhgR6odgQpjhWn4NA5tZeZvgFHAPITrnC9Fq1U1ILMgbTTVvzPZqICeaHq9aWRONaMHajvYktiVPOEJ9DgqE
x-ms-exchange-antispam-messagedata: gHr8CuxSNKT77vOO5YAwFQMyghbVCWFmCVdFtyyk7RcnRnWbTxuQaeNn3G91bAGS353LPiiN6ItIXXU15KzW6qoyKww6hI7f0nfeifACuKJXwrK2M/OUxMj+6z5ooEyn/AX5fqihNCsZZEigZll8rA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 197ad76b-7fb0-462a-d815-08d7be822305
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 08:17:23.7746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TsPH7FCxkyNqZQfbkzm3KAOp74O3WPGU7MmpSdv6rBvbyRfN8Aeln4d3KepL6ihBV9yNScyqlpZX2ausndAchg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3556
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_001731_811445_E91A802A 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/25/2020 6:12 PM, Andr=E9 Draszik wrote:
> On i.MX7 and i.MX8M, the SNVS requires a clock. This is similar to the
> clock bound to the SNVS RTC node, but if the SNVS RTC driver isn't
> enabled, then SNVS doesn't work, and as such the pwrkey driver doesn't
> work (i.e. hangs the kernel, as the clock isn't enabled).
> =

> Also see commit ec2a844ef7c1
> ("ARM: dts: imx7s: add snvs rtc clock")
> for a similar fix.
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>
> Acked-by: Rob Herring <robh@kernel.org>
> Cc: "Horia Geant=E3" <horia.geanta@nxp.com>
> Cc: Aymen Sghaier <aymen.sghaier@nxp.com>
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: Anson Huang <Anson.Huang@nxp.com>
> Cc: Robin Gong <yibin.gong@nxp.com>
> Cc: linux-crypto@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-input@vger.kernel.org
Reviewed-by: Horia Geant=E3 <horia.geanta@nxp.com>

Thanks,
Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
