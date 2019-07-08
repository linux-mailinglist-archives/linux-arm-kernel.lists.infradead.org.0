Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A469628B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 20:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6MnRZrLm0GwIL1mZpJ4fNZz9eeO0jp74LoRkI2DD+I=; b=C5up1LTOIeMp6H
	t8I+qW2WEEtfD2GR3xQX11lFT8/rBJmXgtLa2LAcvPxrrtWtRZohYlCvCn/1G4uyUR2xVgGfl+547
	fmh/K3mva+JZdkRAiDC8IaoxhK1gYssEPGvJS6y59ZaQmH67BzggNkXk+tFtJFR1gEYAw6k3iZ+KQ
	aFrN9wtcjvDrpAh0WL29cHTVabFkLzv+gR5CtjoGRClpZvXbvLB0o95Lrrl+ElaeI7DVaY/qaUIWh
	2+ygpKmvm4wdevJQz0fD7RCGg7Mufy067WbIjALBXRUKJSaOn8lMdef7IESGOvx5Bz8JsjYv/0fo0
	xkl8ol6cU8O3t2yPR+mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkYgo-0007qW-3a; Mon, 08 Jul 2019 18:48:38 +0000
Received: from mail-eopbgr20073.outbound.protection.outlook.com ([40.107.2.73]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkYga-0007on-0L
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 18:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Rw3c0lYfhYGbU92as2KehSCWfz5+bp2FLqc/x8iIhc=;
 b=sxOtZW76JnVhrsDTviJL9R3z/aUSNNM4QVUFZhs/YOO0X6M6NX1D5pljworojarLqHloAzju43NLew3W/vuF/BiVKa3xVKKZke4FN5y9D/r2dYtwd5EXzu9rvRljdw7iTPkW5otMjT26tnul7LLRVOlgESiJ1gOSFqiljf0te9A=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.235.152) by
 VE1PR04MB6672.eurprd04.prod.outlook.com (20.179.235.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 8 Jul 2019 18:48:17 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::358c:d36c:4f8:db79]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::358c:d36c:4f8:db79%4]) with mapi id 15.20.2052.010; Mon, 8 Jul 2019
 18:48:17 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Olof Johansson <olof@lixom.net>
Subject: RE: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
Thread-Topic: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
Thread-Index: AQHVJQRRM+rvlXmln0KUqEroTyzJyqaf1DJAgCFaZTA=
Date: Mon, 8 Jul 2019 18:48:17 +0000
Message-ID: <VE1PR04MB668750E96558796A2E81DB678FF60@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20190605194511.12127-1-leoyang.li@nxp.com>
 <20190617114948.7xxtpivve52c2jnb@localhost>
 <VE1PR04MB668773AB42154134CE18A6AB8FEB0@VE1PR04MB6687.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB668773AB42154134CE18A6AB8FEB0@VE1PR04MB6687.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b85f1e69-d2d2-450d-09b7-08d703d4d775
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6672; 
x-ms-traffictypediagnostic: VE1PR04MB6672:
x-microsoft-antispam-prvs: <VE1PR04MB6672175C1F997916169970C88FF60@VE1PR04MB6672.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00922518D8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(13464003)(199004)(189003)(9686003)(71190400001)(6436002)(55016002)(86362001)(71200400001)(229853002)(5660300002)(76176011)(53546011)(6506007)(53936002)(26005)(6246003)(305945005)(7736002)(186003)(81156014)(8676002)(8936002)(25786009)(476003)(81166006)(486006)(11346002)(6916009)(6116002)(99286004)(446003)(4326008)(3846002)(7696005)(68736007)(102836004)(14444005)(256004)(74316002)(66446008)(64756008)(66476007)(66066001)(66556008)(66946007)(33656002)(73956011)(15650500001)(2906002)(478600001)(76116006)(316002)(14454004)(54906003)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6672;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ysCIHcd3Mg+gz9teEzJ6RHH4Qfy9AC00en/UkHDcoIN7ivTKboB7/YLgyOz6YNclMojLpDRd1H9aXVwAqmJ0SPTqfyONqjJtUhPGd1UQchnkTlPg2DxZXLPDwfypZhrzDcM0Ym1e2zoulssDnu2wKhQSB2mQzG+aqXeZ08wHwjoBI2BVIbXQFhQatfDn5qga8Fmo/tdTjMBAlpywTeFGlcLjRH/GjgnQj9fGEPjZ5VSfecA6cSlXEfqJjOBZYQestCntVOmfwVLlVtqgWE8tUi6bTjt+etWerT+id30EPef6+cPV0gzZvAevcZOZ7UK1akNnTrLHKcLDAEwxUh64dCONeYiNCTg1ZoDhoCcPZ7EmQFdLskkrnzMgfweOZohF7EKzNl5d7e4W/kKF28R1BLRrioex4BK0UaorchOghBY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b85f1e69-d2d2-450d-09b7-08d703d4d775
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2019 18:48:17.7477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leoyang.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6672
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_114824_125807_11FEA89F 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.73 listed in list.dnswl.org]
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
Cc: "soc@kernel.org" <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Leo Li
> Sent: Monday, June 17, 2019 8:29 AM
> To: Olof Johansson <olof@lixom.net>
> Cc: arm@kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; shawnguo@kernel.org
> Subject: RE: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
> 
> 
> 
> > -----Original Message-----
> > From: Olof Johansson <olof@lixom.net>
> > Sent: Monday, June 17, 2019 6:50 AM
> > To: Leo Li <leoyang.li@nxp.com>
> > Cc: arm@kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org; shawnguo@kernel.org
> > Subject: Re: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
> >
> > On Wed, Jun 05, 2019 at 02:45:11PM -0500, Li Yang wrote:
> > > Hi arm-soc maintainers,
> > >
> > > This is a rebase of patches that missed 5.2 merge window together
> > > with some new patches for QE.  Please help to review and merge it.
> > > We would like this to be merged earlier because there are other
> > > patches depending on patches in this pull request.  After this is
> > > merged in arm-soc, we can ask other sub-system maintainers to pull
> > > from this tag and apply additional patches.  Thanks.
> >
> > Li,
> >
> > You never followed up with a reply, or removed, the previous tag. So
> > when we process the pull requests that come in, we've already merged it.
> 
> Sorry about that.  Will reply the previous pull request and remove the old tag
> if update is needed next time.
> 
> >
> > So, I've merged the previous version. Can you send an incremental pull
> > request on top of that branch/tag instead of a rebase like this was, please?
> 
> Actually the new pull request is based on the old pull request this time.  I
> sent the new one as V2 hoping that you can see this first and avoid merging
> two times.  Since you have already merged the first one, you can merge the
> second pull request as an incremental pull request directly.

Hi Olof,

I was on vacation for the past two weeks to follow up on this.  Hope this is not too late for this merge window.  Like I mentioned, the new tag is on top of the previous tag (you merged) so that it should be able to be merged incrementally.  The only thing is that the description of the new tag also included patches you merged with old tag.  Do you want me to regenerate the tag before you can merge it?

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
