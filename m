Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A7B1DACE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbYJd6vQlN2C4aokPwoD8dXKfgC3yEP10Eih3mG2RGk=; b=pusccK5Bpldv+T
	biSjew4vRnXTwM9TbXtdvLMxM2WRBdJeChuTHDoU+xGMbNg+kVENpxpzCxnBkJFnMMDNWzWwMgVHe
	uzjK3BvOw6koDxucYjT5nuSSZWKQQMpjznro5XaxH3UBlcEBLMf0eRXZZlVLIzGtKcu51vJLPZxdE
	8dNmSYAL+eYzadoZKYL/sSkHiQtfgi8U9TqNdh2tyhy2qGJmOjS9zrCvtBJe7/FVMgKUxOtRY3/E0
	SnveinavYbXIGnj1G5oqL39fQfE0hy+1xb5fSl76sMQEykLiMBKds7ybTWL7T7ZErn5/bhHyfboJu
	jI8uNQqTtVaKsWmvtYrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJkP-0002Ew-AG; Wed, 20 May 2020 08:06:41 +0000
Received: from mail-eopbgr00074.outbound.protection.outlook.com ([40.107.0.74]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJkE-0002EH-DC
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:06:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FdcFJeonoiGoS0iTJQ1lmoSzd+oKL+WJWvM+GNmJr2RTo3TScylqpgWLZe354FZtUaLfARfxXGC5bRZY0Elzt/6Xwn9/MY+icGPvUbqYGyg8/H8/Kmgn829nCbmt+/QHEbssQ+qXm9b46DJHBz3o5o9M42bfwQi6O1rkNkTLiaVDAQWvn2TRtzKxLcoJ15VxoSobxCK4xFDMyKTQxlq9RNeg5Z+7k6LhUfnqCyHA4I5Y/byHJiaofI2YTMVtt746edlJ63SnI1XATTt7NAO9Y/+a0+F9N6A52RRDc7NSlRG1OTmeqInljiHtfvEFsjm3cdmLxBUPLr756MY76eARyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uZaM9KIvbTZMAFXnRSAzRkrCr+uDwriaL1bHOM35y5k=;
 b=PoONAaBAM/oxh1BH5TlvVtcbIRSRaH2SjPwGkqnoIiMQv4I5BbyBfhCZ11AwTJbHbayJA27HNZmnD+R0NVPzNwdqx9CYYVaywXXREd/MWVV7JTtIjcr9RHbySEQrUGRGNNxDPi06yZg8adscgsP3WiM/tZ31tPSfomhU14LI0PY5H3OO/MskMl1Zm4cHL3LnPVB0vXU/hM4Moamk32MzShfsvq/sPrV36NQBGe8ZqoK6KWTqOkdrLp8dbMEJ1WzyIGKK3JPcb8r1EJlCNY3IKNgXcZrZ+q3VlBCZkXwNbb4CyCFvNeAd6KEbA92zPKzyY71j1jzJIAkINKggyw0FHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uZaM9KIvbTZMAFXnRSAzRkrCr+uDwriaL1bHOM35y5k=;
 b=DVj0nkZ2wX/E1tRlgr25O50v6hOf++ICjNDoOi0bYgCBJFUunPftAqezhhtztjoNGtvPFs/W8Y/AHv3nQ3pqdyLGkNi1VrYbxZXTT0afRLCh1VjP30YUTmmpAlug4iUdQnuft090+4T6wBjHcYTFNrWUryHs+ZsDUuGN+KpcTMU=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5637.eurprd04.prod.outlook.com (2603:10a6:20b:ac::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 08:06:25 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 08:06:25 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Thread-Topic: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Thread-Index: AQHWLnGKahSSyBKEm0SO3VgjiRIl16iwl6BQgAABCwCAAASd8A==
Date: Wed, 20 May 2020 08:06:25 +0000
Message-ID: <AM6PR04MB496661BDF6B5F966A218092380B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589956216-22499-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49663B517C218072B2845DBF80B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39167A0961963B73758F6CA9F5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39167A0961963B73758F6CA9F5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: eb958955-d4e0-4407-2c98-08d7fc94b10e
x-ms-traffictypediagnostic: AM6PR04MB5637:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5637FB3821A673EB6EDA8F7E80B60@AM6PR04MB5637.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EoXeCz4jlnnierrDoRANxM3kFITQz3hkuErjv0MNGJ2UkzEjyJOR4cWcDrxwvDtYjG8hrWATYRFq/GbIFwNH4v0uxIoyEstsmLsd8c7FiOaPiiut2CfdEM1+9JNEDAQjiIsPHBZMR4URmEjBDyCaAtJxCG/c679iK3cU5G57wXBlZgoUAC8nsp5q11fa/9/Cm2LiuTERTxFABdFkrJfqDeHKjS3qalgHVWTNKYQafw900QAyN69c2Emdi4fTzj3o6hRJxxvAlnRE+cn2bOEWfQxL1CUG+EBtCLDcBLGbqGNJ3C1Zj+Cvv9xnC2H4ESXAIK6X7MEIwhm1pOtm64CszUREQD9wX858bO2HR5y73GFRclmpM9UXsAnSFHmQzZZIDwrvXvCNwHYryuH36amAm0diV4MC6utzWOe21ikAQKwoJVnkdcz9bYdPamdaJuJ5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(396003)(376002)(346002)(55016002)(44832011)(8676002)(53546011)(4326008)(6506007)(7696005)(9686003)(33656002)(2906002)(52536014)(8936002)(5660300002)(26005)(110136005)(316002)(71200400001)(66446008)(478600001)(64756008)(86362001)(66556008)(66476007)(66946007)(186003)(4744005)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: b1mO4bxormPF3h6KKFLiCd1eTIh+aaMt3d2s6yHyhfS4ILpwa4zQo/HpP9/EKQfk1tdhJzig05YYXHdlCA31C8cphF3dyyGXieaBpWDLFk6vghdnqE64ubFJ97ZDuUpa26ohRqSRXxUl9ho4mVLpOtEC+o+fMewM9yiuReT1SpunNMN42RA6IXsCgzd7S94IjGTmMldPwuOjJqfm1WYVSkRbujioyUXdjWrKJHLUWtj0C6bcKNhuCI2uP3tmVawaE2pRj1U230GtQ1Yb1sCgF8PmdJANX0vVGV7zi8nKVyGMY/lffb4DYCMgIeySI97i/yvAFBe0k45XwDy6TxmMw88RhSiJg2AbNmImr4HlKTT5BOLOSDpeMzgm+BozhuR1/3dh12Uay3ligezaK7ndGeDmiEHy0EyV+iT43YabO9tUWlO/sRH82kjf6TUfVSWlEMtdOu1AmiC+Ozev5zUt5V0DZ0lfRKEq5q/BwbzXAiZAkH7mDFv2Idhpby62v44e
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb958955-d4e0-4407-2c98-08d7fc94b10e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 08:06:25.0441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6CRgIOypIo5XuDuLJmn8uLiteu+eTa5e/5IAeeTsoa0RKLZ6JJXjevSc4dY3YIVZnt3uthTdo3SAB5z+ElXbww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_010630_445500_C7065D22 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.74 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> From: Anson Huang <anson.huang@nxp.com>
> Sent: Wednesday, May 20, 2020 3:47 PM
> 
> > Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of
> > anatop node
> >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > Sent: Wednesday, May 20, 2020 2:30 PM
> > >
> > > i.MX6/7 SoCs' temperature sensor is inside anatop module from HW
> > > perspective, so it should be a child node of anatop.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> >
> > BTW, I think you also need a binding doc for this change.
> 
> The binding doc is the imx-thermal.yaml I sent out, it is suggested by Rob to
> move tempmon into anatop node, that is why I did this patch to align with the
> binding doc.

That's thermal binding doc.
We need a binding doc to describe the constraints for anatop as well.

Regards
Aisheng

> Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
