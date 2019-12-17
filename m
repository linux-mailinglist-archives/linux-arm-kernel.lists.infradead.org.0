Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66C412284A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 11:05:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ANuuhch6JTm1acuWO2cGhLdECinj4JIMudND4tQN1zQ=; b=SwvIDU09wf9PKD
	U0NrYipKviDcIhHl4L7H7kgIQ59ULhnO30D3YEvtOonDj5w9WxsXsVjgZrwYCGe0BOWSBZktECSXU
	OTc5O2QeoXmGzHvIHr3h2Izgeuafn9Ig6+C3TTwEW87tFDqX4l3gcoSJBeyaJPfQf/Eg1PkywwD/e
	avOT+0GjmZB8UjfzWX0Ycszk5RY/iHud93M0E3BqyDt+j4AjiFYSd8OyrWQu5rMQ98mO2dvZVa7I2
	VD2eDiYe/nmkTgk9f4/JSUqPKzDOO9vOk2ywHTJHmX0EgxQNF86Q6fouu39Xv/9BaRQLCYxMH3vJT
	43WdjXJGm1kb8VaW0PBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih9jb-0001Xi-1W; Tue, 17 Dec 2019 10:05:43 +0000
Received: from mail-eopbgr150085.outbound.protection.outlook.com
 ([40.107.15.85] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih9jP-0001Wv-V3
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 10:05:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xrm7srM+Xe4Jr986aos3VVSisI1sEo5bMa6MU6RqfPxv0TfSnJX2rjwIBGAfXmxMMGIZ9pKoIRa3mDqFLGatafMFlhlRKKMk50HgqWMVYfilATVjsnutsLlTLWarG94Nw4wiLv9UcbrY81REziGN8ES+Dqqlnd7oZjg3a+pMoUHQtEP/GrSY1hTGZGfjuwW1Uimx7xpHcFBI/ZopK9os57DclysM4fICkcklaBGj63SmL+kL9e3DiF5mvhHCQeSf/ZtXCFfUEmRZQQpWXkM62U4FMuYbJ2xgjtO9+5QPbtL8+cqb0Sa0MgwC6sf0e36nRNIERKWo3yZo+PD89lmo7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/wP5vR514tAMVNEUebFaz/uvXPw9OcdmOfsZXCY63AQ=;
 b=B7761rc88+jirUu2qfr7AZIWSX3mFdSqkLtPu6Lue/toFWetOT+GnNGy9Lj+DklegpcsJpwrV3qPgh9IDqJq5jwVIUDx1ugNQeWyAk8ZYX/A8A039j5J1WJStTb26Hxi0pyvrRbaW8FlNCPWhzITXditZzEvg1SbZqMALYqJv1/RliS+LBxp2qM4rgPpdXagX1aXtqDJyOLOY74iAiJFd7TCcCH6c/aRqp6DNJkJgcxCEO/rSZStIVSlGw9/zBym9BRlylZKvSQrKUZXs1FczzpWt71NNHphB+GlKqo8JoxhXM7a4Iaul6F+xuVetWAaiv2YjBJeKWnZnr3jU50bxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/wP5vR514tAMVNEUebFaz/uvXPw9OcdmOfsZXCY63AQ=;
 b=VAUBSWK1TDcPt2Nl+ZXzLiOlaQYyqTmsO2I2/10cnmlH2cHVbAZq5JiUG8XPYpOHWCWHu1JlUjHWxtp4iq/b5/iw7XhhIrfAM6EcD1wqzH+g28SOYIuqFP0FeLKAov313kNh2/wxtBUYnjRKHtQcMgT4f3Ol/zBQ2z6OqRyXXbc=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3341.eurprd04.prod.outlook.com (52.134.7.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.20; Tue, 17 Dec 2019 10:05:25 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::64c8:fba:99e8:5ec4]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::64c8:fba:99e8:5ec4%6]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 10:05:25 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Adam Ford <aford173@gmail.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH V2 1/3] crypto: caam: Add support for i.MX8M Mini
Thread-Topic: [PATCH V2 1/3] crypto: caam: Add support for i.MX8M Mini
Thread-Index: AQHVsct+bxOq3Vv9C0WchDcVUZ6qgg==
Date: Tue, 17 Dec 2019 10:05:25 +0000
Message-ID: <VI1PR0402MB34855AC446EBA2E2C669F75D98500@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20191213153910.11235-1-aford173@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [94.69.234.123]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: beefb638-4ef7-4143-c4f3-08d782d8a2fc
x-ms-traffictypediagnostic: VI1PR0402MB3341:|VI1PR0402MB3341:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB33418F6E399799677111324798500@VI1PR0402MB3341.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(346002)(39860400002)(396003)(199004)(189003)(66556008)(64756008)(54906003)(66446008)(110136005)(76116006)(7696005)(186003)(316002)(91956017)(86362001)(33656002)(8936002)(81156014)(53546011)(4326008)(26005)(6506007)(558084003)(66946007)(81166006)(8676002)(52536014)(7416002)(2906002)(66476007)(478600001)(55016002)(9686003)(71200400001)(44832011)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3341;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6dNRRyyS8yfCcSgWBdIwXK6HEV6yGiio6v3VSorbGgHC8JP5v3aAAQH5OpOxL927mD+JCICsPlhd7L3qJIgCVvOCob5x4qjv8AeI+0qH7zenaTjvdfIEvTyElov3h2vknXhRta7eDoOuJhraj7sLx18wzLJn7WkrataLfbHGt4dh30QmcsH47Jscw1gmwYIgoXOp4paNfc66WTyLgM7k/9MMkvsrfAhLX1IcB0YQYjKpj1GgaYreZqP7I5vNL1TK4+f56b9erMQt4/6d24kStZzXSZ0KdQbvSNhjiGfJgqsCLyUDR8mmjICeAvb8MVR7AHrOyjMY6GbHmPo1d8/Fe3e2o9a8pfS2wft092MjYmAZEOQFme+DCtYa0/nRN7OAn72jyff5LBlc8E4T8IXehncj+zljmbMYsRzPqYNbLbY1JSwZQZgpZ/BYZVoT7wF0
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: beefb638-4ef7-4143-c4f3-08d782d8a2fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 10:05:25.3556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tv1rK74cnXYBfUnvN5ibtJGi0le/t8RcscAW+x/oXyhza8oRMIkhaCMKqGzgpUyT4P/McY/MAOhXKUroZ5nc+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3341
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_020532_027708_A1505BA2 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/13/2019 5:39 PM, Adam Ford wrote:
> The i.MX8M Mini uses the same crypto engine as the i.MX8MQ, but
> the driver is restricting the check to just the i.MX8MQ.
> =

> This patch expands the check for either i.MX8MQ or i.MX8MM.
> =

> Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Horia Geant=E3 <horia.geanta@nxp.com>

Thanks,
Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
