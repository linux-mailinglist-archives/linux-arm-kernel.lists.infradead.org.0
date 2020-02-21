Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8361516700B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 08:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYavEGfYq6sSEkKDo39zA26e/1sL9p2KTK9Fy244oc8=; b=NAV2GcJHKZkTjP
	C3e8b064BRdBdEf2lrYGyAYaCJgscdX64SS/GnKEjaZkSMNpYPZadtnMqCwMnzwesEgSd2CJdYAfd
	6tLJntBBHQeii1ClG6uHI5SUM6R5lQS4PaDQKBCSBfXIwpalVweVk9KR5gMD64of1JUXHU9C0LYVW
	iqR9zqKgLtKqor1cqXxTwZ9XcrI1KfoHeBae5Q9wxz4KE8T4ks0r6dTcRa8VHYPz7zpx5FpD2vtE+
	6R+2I7K61/s0hwAMelBHa2L9NuyZdFS4lqIKCp+enXFOtq5eoHFKA1vF4vpPT6jTYMlByLrgSdeCj
	5VufMLebmJZQXuf0j0Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j52R0-0001lO-9d; Fri, 21 Feb 2020 07:09:14 +0000
Received: from mail-eopbgr80042.outbound.protection.outlook.com ([40.107.8.42]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j52Qo-0001kk-AW
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 07:09:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dW4/dPi+XSk2fESGDLBnCIcWmMOEZgyZM2LQ9wYsJImkLP/Mb5zorAX3FZK9uiew3Zm7e7QGQqpVMhZFYpkI3M6Pa42utWlMnO/KeA5QP9cF+RlTMZslt+6EiDR0BrINOoNBVN7WY287l7tis+3E5eX47UV6Lj6Dy4F7zNFcm9ihDbQzbEdSNbDGfC+PC3QklfHe7XRNqA0w0y9H/pQfUZ5g7uskEjEmaEA47JtDc+Us7cT4Ksj2bUCXv288vesll9R4q9tSTt6MjW4hMERRenR8SSrDYk8gUaZWdAKr0yF6cfY8h9iyBWsx1FXJqg31CiCprsiXEyQyoKbBHChqiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7vcwqgm+Gu4rKE3VBkf2FJQXbKYYmoaTnj4Qe/cGhAU=;
 b=RIgWD/7SXoRXXAK6sJ88RLMYoCL2hhWzdPo3ygC6EswxocIsZdb2Q8IlmEV4qhiCeiqgxBrmG8HE7tNtV1/Q+Ec4FlSZOfGi7yMcH3/vx5LCGEE201NEk39S0KGVEz8xKeoR1UMmXWRMucO+WVvEs35QBGJXw1Hcrpki3psD/lfCSnM2K/Cy5nVnUmBo0Qq36OK1EbbTlk0hZ9CWRevAmu1nGSWSQaw5lJjqBFHwjkzplg/YqDRPqElUTgOKoTQuQHhyj0cBqkM46hwDZaGwI/LxfP4cRGOHX9purQBcFpVrNUgbyiCZFVaTPQvrWr3z2l8oyaGTddZjLT69lxld0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7vcwqgm+Gu4rKE3VBkf2FJQXbKYYmoaTnj4Qe/cGhAU=;
 b=cO+t8xvpF/x/61zdXRbP0XojIl8L0O2T2PlRzuMma0m/Tg1P+NFr0FPJM8DkBOkPQegVzRiLPLEj8l7iYkysAF3dGep2WmkXVwWvuiPMfIXp997kPTzK+MgojC2J0AgsTXvUsBUJ3H9SQYMUYKCxQxbF9UkNJkneNr11+JhZD1A=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5715.eurprd04.prod.outlook.com (20.178.117.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Fri, 21 Feb 2020 07:08:58 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 07:08:58 +0000
From: Peng Fan <peng.fan@nxp.com>
To: =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
Thread-Topic: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
Thread-Index: AQHV5vbmWntOo1W/0E+zZvFdhH2I6KglOM8AgAAASJCAAALmgIAAAW/A
Date: Fri, 21 Feb 2020 07:08:57 +0000
Message-ID: <AM0PR04MB4481DFEF5C53E3B749496FDB88120@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <20200221065140.mn4wxk5c2xayqwan@pengutronix.de>
 <AM0PR04MB4481C4C811F139665AB1C54088120@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200221070303.kndekskjj6cvwtkb@pengutronix.de>
In-Reply-To: <20200221070303.kndekskjj6cvwtkb@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fe100c76-1faa-41df-30bd-08d7b69ceba1
x-ms-traffictypediagnostic: AM0PR04MB5715:|AM0PR04MB5715:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB57150D942809955623E9470A88120@AM0PR04MB5715.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:298;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(376002)(396003)(39860400002)(366004)(346002)(136003)(189003)(199004)(9686003)(5660300002)(33656002)(6506007)(316002)(966005)(45080400002)(26005)(71200400001)(54906003)(478600001)(186003)(2906002)(81156014)(81166006)(44832011)(4326008)(8676002)(8936002)(76116006)(7416002)(66446008)(64756008)(66476007)(55016002)(52536014)(66556008)(7696005)(86362001)(6916009)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5715;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IbwRjma45FA5UkQxfKD17AysQcjZEbV6ZWyMF/FXQ8wHNW9GJpowRQOZhgx+NoBHlOkGwP5Xtx/BybIJUuF0ydxamEIhF29LpCwjRvhMUnUBd4kErz5YM+gbVEvvRmh6czxsy1Ya2It3hmyJEUA3Tid71t6aEZoGimrZtAu1cJDQ+hImKZgPRtnVvHbNh1vqC6LhzPEXVwHoiscpwTB87GT5c0ZodpkcAEj1YRUzUhEuAEwhYoz+IGGvi0w/RCYHJyV565KNEdpDbq3CnIn2RKMrwJAdTu/BtWDRrNv+sBTc+XX3PSbAk1vWA2DAwXEuRf9qh8YrBOqzkBHiymwhBzaSr2GadbfGgISEuVOuJUkCWz+/qUXVNkK788wGk42Idr77VC0CleyAAPdrRzMWAubZC50fcdKSFhSV7/wIy4tfBER1BWalmChYabGvMFb2qdK0zHG9QKiqSaV7876cpWmpDVQe34bJyYhn+7rarx6gSYshyNj3G6WwxnVIOkhcJUQH2BSK3tNwxKkSXPiq04uWyCFFWYAiiCV+KCU9WxITS6W9UuvV8Yim0K0WmAPg2UeGoyx+CLMzJ+QnUeIQ/4IIIbt2k6HASsiA2hl9/BIENIZbJote6DSN66tf0FDg
x-ms-exchange-antispam-messagedata: c61kTO9hpGP05WC4Ua7J30BlZZ34FZoJQHGuTjMOq3F/xs24bh5+noYXM0k5t5OMXPCuBIS6vy0PvgOCPBr3QcUuKp5SxfmYf4iuL2hACpSqHzfTjbSl6OqMNItgqukOMs3/LqbIuU8FyaMd6jAFNA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe100c76-1faa-41df-30bd-08d7b69ceba1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 07:08:57.9368 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wlXsr/mxM3MV/IS3bX6q9v6QqTcrMO6lj2ZL0phUDxfxtm2LML5CeUISiHPS3Y5XGgkD3CyYhEa1VF+ru9A0Zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5715
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_230903_336891_6BA176FC 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "ohad@wizery.com" <ohad@wizery.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
> =

> Hello,
> =

> On Fri, Feb 21, 2020 at 06:56:02AM +0000, Peng Fan wrote:
> > > Subject: Re: [PATCH 0/9] remoteproc: imx_rproc: support
> > > i.MX8/8M/7ULP i can't apply your patches on kernel master HEAD. Do I
> need some extras?
> >
> > The patchset is based on Shawn's for-next branch. With Loic' V4 patch
> > applied as showed in cover-letter.
> =

> BTW, the generic approach to formalize that is using --base to
> git-format-patch (or git-send-email). See

Thanks for tips. I'll follow when do new patches.

Thanks,
Peng.

> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fpeople
> .kernel.org%2Fmonsieuricon%2Fall-patches-must-include-base-commit-info&
> amp;data=3D02%7C01%7Cpeng.fan%40nxp.com%7C9cd4c63fe8974353439408
> d7b69c1b2f%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63717
> 8653890207488&amp;sdata=3D6fvjPjemWlSzZVcDMqWPtjuyEFdOBOttGcO7bS
> uxsyY%3D&amp;reserved=3D0
> =

> Best regards
> Uwe
> =

> --
> Pengutronix e.K.                           | Uwe Kleine-K=F6nig
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.
> pengutronix.de%2F&amp;data=3D02%7C01%7Cpeng.fan%40nxp.com%7C9cd4c
> 63fe8974353439408d7b69c1b2f%7C686ea1d3bc2b4c6fa92cd99c5c301635%
> 7C0%7C0%7C637178653890207488&amp;sdata=3D1XRpT97ML%2FLpYjdbZb%
> 2BTdp6DfW6FSMq0Jnxv%2B7%2BX59Y%3D&amp;reserved=3D0 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
