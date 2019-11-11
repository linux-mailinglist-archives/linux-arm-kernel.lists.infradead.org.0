Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B36CF6C17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 01:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EY0JHaiG3DixcVZxYlBnZjIlMruScHcucGS2axlxVgQ=; b=niojWj9Epr27CR
	psksV8Plj/GFISUqNYqVD+rJKL/qZpe8wxLL9n4eIQOUcKYwayLCv4IHOyMg4On1zzhRXYsVEzF0h
	jcEQDaxzz6yFWQo1u3cu2sZxCu5moCpWQKyirU1i4YlNAniMKbo9/HpfzzewcPNqyBrw+1ziYMhVw
	/et6r2b/KSZf0yCDLlzzNjPXF8TpQ9z9EL0M6602vJu3ND1ce3cLd4Cq6bBjaddEqQXtMiqzaByF0
	uadiXFWifHIBcheaa8Jow/E3BugHHbi1ejfswbJTW6DK9EN60u53LIC9iNsVZjljOrn57/DSHzNsJ
	rJkUFtmEEPlqaqc/eBqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTxzE-0006IN-5s; Mon, 11 Nov 2019 00:55:20 +0000
Received: from mail-eopbgr140052.outbound.protection.outlook.com
 ([40.107.14.52] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTxz5-0005z7-FW
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 00:55:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WaF3SIqI89nwfDYcJ0gJ4q33deveIDKWBROshoUrCAnB+kbcDnUQ7YDqdQRqeTkhr+yWff/suLaz1QFfKY57lwD926ZHNNoFIhA8CQxaSrkcAoWLEb3C4xHTzZJfGUdhyK0aS/fNdvrXecFePuerxOVr0FPde+ulkPmoJeDqPShKqzxNYDh0j4PDcRy4SLIQNE0lBSHVPyBEGfHEGZIXpQE5qWjTfEWR34BdL6OakxGd1kkJsIoQ9io4ncBK1v2H14KiEUCOPpCGB8Ju9L7pK/BfZuQ21+vJDbnbWD61ergmtHxjVLvVJkWz4zvzzW4zNh8sdRr46Cg2aFN1C5feRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOW3sIz5zgrPDXyA+fA9+c0yjKPHzUqVOc1kjDWei/U=;
 b=iXaM+tBv8N3IR72XpYC2zZFp8ehqPXdwvILSBHmV4+h7J0ospM2UGE6LcehcLcRQJ1dfuT7KJT9LzEcDjj9Kpqj3Mjx94iD7fkLVpBeewtKAAlAsEuwW5DhCEPQow0WDQNuBmk0rVrJ0xa4nUWPyT7Qo+aZ7vN/93v43fDvH+PEFQr00vLzW3JH21RnSvVWfnoz/Mw1edOco+9DlZi30iNfwovBYydYR6eHTX5AAx0AegLLuURJzibMJ8CBnTKxzq4q70p3UyBZUl11pWiydEGlmSQyidRN3uJdIWH8yFozpK561HI2RITJWR/qN4d9HVbAIpi3YwQRFtZi30Dvs8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOW3sIz5zgrPDXyA+fA9+c0yjKPHzUqVOc1kjDWei/U=;
 b=RzvavtsZfqQn52x7qakjMFIoR7WKDQdKnQfo0ghdPRSyQhVrVg4nKhnb/NVljDVfW4ncfM36kOXBFzFvfEmF0QWteqD9AKi4Z2h5ZuvnldXZn8CW4DCqv2xOIntbvzibmjPuPJGY8ZlP6ApF6e+xWUViQNiHOaS8/IPOZ0KPl90=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3738.eurprd04.prod.outlook.com (52.134.70.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Mon, 11 Nov 2019 00:55:06 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::b8dd:75d4:49ea:6360]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::b8dd:75d4:49ea:6360%5]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 00:55:05 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH V2 1/4] ARM: dts: imx6sll: Update usdhc fallback
 compatible to support HS400 mode
Thread-Topic: [PATCH V2 1/4] ARM: dts: imx6sll: Update usdhc fallback
 compatible to support HS400 mode
Thread-Index: AQHVlRA1L7s8cMO6lkuva14Mm0YPYad/2TYAgAVRwyA=
Date: Mon, 11 Nov 2019 00:55:05 +0000
Message-ID: <DB3PR0402MB39160A87354A68AAC2AF72DEF5740@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1573092393-26885-1-git-send-email-Anson.Huang@nxp.com>
 <CAOMZO5CiR7-YmAUggdt9rdZpNYKzQTFY5zGGGQ2k06Qc7pkg_Q@mail.gmail.com>
In-Reply-To: <CAOMZO5CiR7-YmAUggdt9rdZpNYKzQTFY5zGGGQ2k06Qc7pkg_Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 307f14ff-eeb0-4cb3-66f4-08d76641cade
x-ms-traffictypediagnostic: DB3PR0402MB3738:|DB3PR0402MB3738:|DB3PR0402MB3738:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3738C07934B5CC0AEB54D699F5740@DB3PR0402MB3738.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(136003)(396003)(39860400002)(189003)(199004)(2906002)(7736002)(7416002)(14454004)(76176011)(305945005)(1411001)(74316002)(25786009)(81166006)(81156014)(44832011)(8676002)(86362001)(229853002)(7696005)(476003)(486006)(11346002)(446003)(33656002)(8936002)(9686003)(6506007)(316002)(4326008)(53546011)(54906003)(26005)(66446008)(99286004)(64756008)(66556008)(66476007)(66946007)(55016002)(6246003)(71190400001)(71200400001)(66066001)(6436002)(6116002)(3846002)(6916009)(478600001)(14444005)(186003)(15650500001)(52536014)(4744005)(5660300002)(256004)(102836004)(76116006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3738;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: veFvtGsuWUhXKmT4hEBycOdTotlCENRbXSuFaytGDACfzorQ/Eg7ENVOyixHtr39aRd6rY6Xulc0Xo4Wq5iLClcOUxSJAKawrAVhT5JTUDfqSTf9FWGZQYeskyn8KVvMKzwHAK3aOt9eyBhZI2f7+a6QwQ+g74XTlNgytIayhtLrIKjed7BSMbPKUHDT2tgBJAylbjRX7YWkZJ2Dlt+pB1MvatLNPJL4cm0hNr48K1v8tBCkXPDAeaj/OJQVpaxsEZsJjOTk/mgZN0TQjiRNUhmPSscYIc+/g2zy4aLNSQWKN16Ut2CvmeyPDV0h2+5gxvmv3pMNG620lvSaeGErDtQ6izmxgvZPcEqWO/U0O/QA6dXu3T7m2u4MPRIoXpLTX9VRAiNqNwrFMYc5aKgh/va/C3YALdVF71TU4AXIUTiZQRFK62HN/pT2ilC3VMWB
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 307f14ff-eeb0-4cb3-66f4-08d76641cade
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 00:55:05.5906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ilCNa3JHut4z1A+xMrKSCCuRVS0Y3Xp+jUs8lEQG+nGqM6/OpcYXMZcoO0uElAu3iY3RBccXTanUfoHe7KUo2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3738
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_165511_711496_00522D44 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.52 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Fabio

> Hi Anson,
> 
> On Wed, Nov 6, 2019 at 11:08 PM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> >
> > The latest i.MX6SLL EVK board supports HS400 mode, update usdhc's
> 
> Since this is a dtsi patch, it is better not to mention a specific board here in
> the commit log.
> 
> It would be better to say that unlike i.MX6SL, the i.MX6SLL SoC can support
> HS400 mode, hence fsl,imx7d-usdhc should be used as compatible string.

Make sense, thanks for advice, will improve it in V2.

Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
