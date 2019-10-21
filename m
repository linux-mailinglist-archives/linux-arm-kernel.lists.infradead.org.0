Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8912DF022
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+Or+hZkBHupuet+qR9VhqME567b7OvLeBinzG+78sc=; b=j+OmKl5by+lrg7
	26RLrAze1GI4U90WaXpqKNRFEOmjSV95aOXenHdZUups+SLX+lSnStnH0P4etO8wuXJkobpf5FQLT
	BU/TdOmHBjqubhzhvJ8who19Wzrw3kB8M7SWJyWWWWJjsFRnDowNiqfPESH75XqjKZqS5sQXxzapH
	Rr+xsxinFU6Dk2Fi7k1VSNDiwUcJ/cKe8UDJRZFO2GsUIw4b6oZZ10syRp+ZnFEt3BfXKBpsPG5Zm
	qED+DUP4AcSR7uX/3GNIRXyZrEWGdCr/BiApfjn7FJi9VGqiRsPpq0UPLEcUnceTZXwmYjQPiKlz4
	gd5sJhcMHHkVnsPddehw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYsk-00005n-Dc; Mon, 21 Oct 2019 14:42:02 +0000
Received: from mail-eopbgr50041.outbound.protection.outlook.com ([40.107.5.41]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYsR-0008Vk-C0; Mon, 21 Oct 2019 14:41:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GIv7uTU0kafNj3RaBYiBJkuOORdVhqqvW4hMPRFZ0SM=;
 b=58McUph24A87dDKykTnXM6IaEEQ1ntcjHGfqJEqAriaak0e8vJo0asjJQPafbkqQkdpun0vYeFCtWKSVGgVUbvpEXk9C3NpsGOSyt07XgYZOMbLLAHwzodHxcNXs7yOUvXl4l8lpobblpoAxsvLBvPSqvVIJRh8ft5rnuGiN/Ag=
Received: from HE1PR0802CA0019.eurprd08.prod.outlook.com (2603:10a6:3:bd::29)
 by AM0PR08MB4148.eurprd08.prod.outlook.com (2603:10a6:208:131::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.21; Mon, 21 Oct
 2019 14:41:36 +0000
Received: from VE1EUR03FT057.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::208) by HE1PR0802CA0019.outlook.office365.com
 (2603:10a6:3:bd::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2367.21 via Frontend
 Transport; Mon, 21 Oct 2019 14:41:36 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT057.mail.protection.outlook.com (10.152.19.123) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Mon, 21 Oct 2019 14:41:35 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Mon, 21 Oct 2019 14:41:29 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ed60c1a4c456ea63
X-CR-MTA-TID: 64aa7808
Received: from 7d88b54680f3.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.12.55]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 5894CF18-030A-4947-98C8-0E8D3553D4E5.1; 
 Mon, 21 Oct 2019 14:41:24 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04lp2055.outbound.protection.outlook.com [104.47.12.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7d88b54680f3.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 21 Oct 2019 14:41:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AgnvxHwKnjI/ziU5ACjgaOzsx9PQclPPMJA8YzYlyt/ciDS4BBMSqUCRvoZXeGcb33lxP2DIzKqRfmnH7zEaRzEZ80SkYNIDiSHwcTyh4Hgc0W2DdsB/9DSic8xTTgm9wgrtZWoOFwFhN1twu+7NKYYXuCQ7U7T/p4GR6ke1/iYiJJx/iHpBzbm66qCfb6s6LGw00H/AcHp0TLnNZIrm7oz6TmZuafmhkn0UAApu10LbE76ucFl669DsjfGDk93Y7DLoVR+5uxBV/+PeejysZ/2H5EJDmGHf4NM4Z8Ju8yDWDgaHZM6AfkCRRt0QTes+ZEt+8ioryvAyTWaTz264ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GIv7uTU0kafNj3RaBYiBJkuOORdVhqqvW4hMPRFZ0SM=;
 b=TLJRHdF9q6qJw1NtpkxrGLUvoEc5KRPwoJ5q8JSx9GyVXOhQQTfJvmQOkLgbIrb2GSslveIBg5bWSoSfFdwdacCr++rQXXptKLEbHS/wM0UaWwTvZbqa0hCh/xVXb9grHx1g21IJDlzQRKSW67uo8pIEig07tO+RlPuARu0KNSPWrhF8xV0kegC7v+wH47+QLospx9iTCpJpRt+Tbnnx10ikkHpBd1MHngN6etKWVrLzAu4nd96V2JojIqk8jBIzihTQbKrDFjTCwWFoxjjhrsoreHq8tzu9P4RH8rMUb9N0YCrUNHGg9vvwyguztFGUmbZ0rcKcVKFL42tFG6pspw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GIv7uTU0kafNj3RaBYiBJkuOORdVhqqvW4hMPRFZ0SM=;
 b=58McUph24A87dDKykTnXM6IaEEQ1ntcjHGfqJEqAriaak0e8vJo0asjJQPafbkqQkdpun0vYeFCtWKSVGgVUbvpEXk9C3NpsGOSyt07XgYZOMbLLAHwzodHxcNXs7yOUvXl4l8lpobblpoAxsvLBvPSqvVIJRh8ft5rnuGiN/Ag=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB3200.eurprd08.prod.outlook.com (52.133.15.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.20; Mon, 21 Oct 2019 14:41:22 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::7d25:d1f2:e3eb:868b]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::7d25:d1f2:e3eb:868b%6]) with mapi id 15.20.2367.022; Mon, 21 Oct 2019
 14:41:22 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: Ayan Halder <Ayan.Halder@arm.com>
Subject: Re: [PATCH 1/2] drm/arm: Factor out generic afbc helpers
Thread-Topic: [PATCH 1/2] drm/arm: Factor out generic afbc helpers
Thread-Index: AQHVgCWkbVOYIG7/eE2VirVnDYzB4adlLKIAgAAOSIA=
Date: Mon, 21 Oct 2019 14:41:22 +0000
Message-ID: <2485717.1SzL54aMiy@e123338-lin>
References: <20191011111813.20851-1-andrzej.p@collabora.com>
 <20191011111813.20851-2-andrzej.p@collabora.com>
 <20191021135013.GA16072@arm.com>
In-Reply-To: <20191021135013.GA16072@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.51]
x-clientproxiedby: LO2P265CA0018.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::30) To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 9e959dac-a82c-41d2-2a05-08d75634c5da
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: VI1PR08MB3200:|VI1PR08MB3200:|AM0PR08MB4148:
X-MS-Exchange-PUrlCount: 3
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB414821C7414F11784F6B22D48F690@AM0PR08MB4148.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0197AFBD92
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(376002)(136003)(366004)(396003)(39860400002)(346002)(199004)(189003)(51914003)(25786009)(14454004)(6116002)(76176011)(66066001)(8936002)(81156014)(8676002)(2906002)(6636002)(3846002)(6862004)(486006)(30864003)(33716001)(476003)(81166006)(86362001)(478600001)(11346002)(446003)(66476007)(66556008)(64756008)(66446008)(66946007)(966005)(52116002)(26005)(229853002)(99286004)(186003)(316002)(5660300002)(6246003)(7736002)(386003)(102836004)(6486002)(256004)(6512007)(54906003)(14444005)(9686003)(6436002)(4326008)(71190400001)(6506007)(6306002)(71200400001)(305945005)(39026011)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3200;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Gueo8KR3M2CV4rD/B422vaVZYxZ40UFnmU6X71Bs0+EdKkDrbOC6RSyWdJ7aJ3AIewa1fLv9vovLZQaB18B83nk5X6+7yzt46jDmTEVKNOjAHfVpjJ9GqwjqWD+vk6JdGhCqu0PjZXbprnjfyqgLPu6FHuKg9Kj/djazvGgzOxn8OUrxdcMLKAY3MslKgZS7MIt/ugnoMTB3ufC5j58/iX7jISxXpOCUpJoLw7CcrJ9EokUHoPvxYFWChDM3RmhwdDmY2rwaGZib4Av6diE2rvGokMWtvcY9b9Mf26D/XDIfIQe1wNBHmgR6se7sPG3oPhN1fHVqUM4oFiUZglug2a0/waBdWMc1IC2CVLd+Ck4VkI19nDxN8ZtgtOJTQxOO+Ek7vTTmuKIi7nEHhRmoCsELxeGPem4dBxtaMfm92vQb8fi2ywNLOieJ7agfs8htv11GNAtHB5p+N9v9lzdMlAPrzFxfp5tG5rOntUhtduo=
Content-ID: <BA4BF98054D1FB45BE382A49F07CEC2A@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3200
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT057.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(376002)(346002)(136003)(396003)(39860400002)(51914003)(199004)(189003)(6306002)(3846002)(6116002)(6486002)(450100002)(5660300002)(229853002)(14444005)(6636002)(99286004)(30864003)(4326008)(6862004)(86362001)(25786009)(76130400001)(6246003)(9686003)(6512007)(8676002)(8936002)(8746002)(81166006)(81156014)(23756003)(7736002)(305945005)(33716001)(47776003)(54906003)(66066001)(386003)(336012)(126002)(11346002)(186003)(50466002)(36906005)(316002)(22756006)(70586007)(70206006)(14454004)(966005)(63350400001)(476003)(26826003)(486006)(76176011)(102836004)(26005)(2906002)(478600001)(446003)(356004)(6506007)(39026011)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4148;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: fef1fec5-de0d-4170-0869-08d75634be21
NoDisclaimer: True
X-Forefront-PRVS: 0197AFBD92
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iEcMTu5zETAsAbgyjQZdWioZ7CcDBfu7o+bBjLuYFAcZ4QbOSvYGr5LrvtNGfDs8IjZlUjzcNw5eOk0SueWvGptouhG1+a4cZ6SiZdy1bOvIPTiBivvtZjo+f9YhE98Pr1/kmndpYtPly0rjWdweIzh7MjBWV6clzDsqeEwxVkEK83BS561H2xkLwQTJzqcRw5MaqzrwYr0ms4jtKjZI5T8fVCJ71pdcXfV6/2L63W+5lj2fs0ZaAh6nq2ro+wVfaHkiH6VLdNcuHdkmDn2RaXr9u9GNxB9iPnENar7DPWfQiDhLt2rLXTq+Xb1haIqFV5p6T3iRPK4TxgpjQDGUQnKQoFk0wPfHt8Xx4e1hgJZGcBRWoc8gKd0KqkKXUiJ3LQvY1tpRYO8KFccGGC/BIUJ//DNLX6oEwhpFhD4OFDKT7u6dAVtdpk4B5JiY2skKO29JTpSm5MgU/nrfwFoF1w==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2019 14:41:35.1890 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e959dac-a82c-41d2-2a05-08d75634c5da
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_074143_581212_413EAA99 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nd <nd@arm.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 "kernel@collabora.com" <kernel@collabora.com>, Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrzej,

On Monday, 21 October 2019 14:50:14 BST Ayan Halder wrote:
> On Fri, Oct 11, 2019 at 01:18:10PM +0200, Andrzej Pietrasiewicz wrote:
> > These are useful for other users of afbc, e.g. rockchip.
> > =

> > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> =

> Hi Andrzej,
> =

> Thanks a lot for doing this. Much appreciated. :)
> It was on our TODO list for a long time.

Seconded, thanks for the patch!

> =

> I have cc-ed james.qian.wang@arm.com, Mihail.Atanassov@arm.com for
> their comments as well.
> =

> > ---
> >  drivers/gpu/drm/Kconfig          |   4 ++
> >  drivers/gpu/drm/Makefile         |   1 +
> >  drivers/gpu/drm/arm/Kconfig      |   1 +
> >  drivers/gpu/drm/arm/malidp_drv.c |  58 ++--------------
> >  drivers/gpu/drm/drm_afbc.c       | 114 +++++++++++++++++++++++++++++++
> >  include/drm/drm_afbc.h           |  25 +++++++
> >  6 files changed, 149 insertions(+), 54 deletions(-)
> >  create mode 100644 drivers/gpu/drm/drm_afbc.c
> >  create mode 100644 include/drm/drm_afbc.h
> > =

> > diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> > index 3c88420e3497..00e3f90557f4 100644
> > --- a/drivers/gpu/drm/Kconfig
> > +++ b/drivers/gpu/drm/Kconfig
> > @@ -195,6 +195,10 @@ config DRM_SCHED
> >  	tristate
> >  	depends on DRM
> >  =

> > +config DRM_AFBC
> > +	tristate
> > +	depends on DRM
> Adding a 'help' would be great here. Stealing the first line from
> https://www.kernel.org/doc/html/latest/gpu/afbc.html
> =

> "AFBC is a proprietary lossless image compression protocol and format.
> It provides fine-grained random access and minimizes the amount of
> data transferred between IP blocks."
> =

> > +
> >  source "drivers/gpu/drm/i2c/Kconfig"
> >  =

> >  source "drivers/gpu/drm/arm/Kconfig"
> > diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> > index 9f0d2ee35794..55368b668355 100644
> > --- a/drivers/gpu/drm/Makefile
> > +++ b/drivers/gpu/drm/Makefile
> > @@ -31,6 +31,7 @@ drm-$(CONFIG_OF) +=3D drm_of.o
> >  drm-$(CONFIG_AGP) +=3D drm_agpsupport.o
> >  drm-$(CONFIG_DEBUG_FS) +=3D drm_debugfs.o drm_debugfs_crc.o
> >  drm-$(CONFIG_DRM_LOAD_EDID_FIRMWARE) +=3D drm_edid_load.o
> > +drm-$(CONFIG_DRM_AFBC) +=3D drm_afbc.o
> >  =

> >  drm_vram_helper-y :=3D drm_gem_vram_helper.o \
> >  		     drm_vram_helper_common.o \
> > diff --git a/drivers/gpu/drm/arm/Kconfig b/drivers/gpu/drm/arm/Kconfig
> > index a204103b3efb..25c3dc408cda 100644
> > --- a/drivers/gpu/drm/arm/Kconfig
> > +++ b/drivers/gpu/drm/arm/Kconfig
> > @@ -29,6 +29,7 @@ config DRM_MALI_DISPLAY
> >  	select DRM_KMS_HELPER
> >  	select DRM_KMS_CMA_HELPER
> >  	select DRM_GEM_CMA_HELPER
> > +	select DRM_AFBC
> >  	select VIDEOMODE_HELPERS
> >  	help
> >  	  Choose this option if you want to compile the ARM Mali Display
> > diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/mal=
idp_drv.c
> > index f25ec4382277..a67b69e08f63 100644
> > --- a/drivers/gpu/drm/arm/malidp_drv.c
> > +++ b/drivers/gpu/drm/arm/malidp_drv.c

This file is GPL-2.0-only. Shouldn't this be preserved when the
substantive bit of the code in drm_afbc.c comes from here?

> > @@ -16,6 +16,7 @@
> >  #include <linux/debugfs.h>
> >  =

> >  #include <drm/drmP.h>
> > +#include <drm/drm_afbc.h>
> >  #include <drm/drm_atomic.h>
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_crtc.h>
> > @@ -33,8 +34,6 @@
> >  #include "malidp_hw.h"
> >  =

> >  #define MALIDP_CONF_VALID_TIMEOUT	250
> > -#define AFBC_HEADER_SIZE		16
> > -#define AFBC_SUPERBLK_ALIGNMENT		128
> >  =

> >  static void malidp_write_gamma_table(struct malidp_hw_device *hwdev,
> >  				     u32 data[MALIDP_COEFFTAB_NUM_COEFFS])
> > @@ -275,24 +274,8 @@ malidp_verify_afbc_framebuffer_caps(struct drm_dev=
ice *dev,
> >  					mode_cmd->modifier[0]) =3D=3D false)
> >  		return false;
> >  =

> > -	if (mode_cmd->offsets[0] !=3D 0) {
> > -		DRM_DEBUG_KMS("AFBC buffers' plane offset should be 0\n");
> > -		return false;
> > -	}
> > -
> > -	switch (mode_cmd->modifier[0] & AFBC_SIZE_MASK) {
> > -	case AFBC_SIZE_16X16:
> > -		if ((mode_cmd->width % 16) || (mode_cmd->height % 16)) {
> > -			DRM_DEBUG_KMS("AFBC buffers must be aligned to 16 pixels\n");
> > -			return false;
> > -		}
> > -		break;
> > -	default:
> > -		DRM_DEBUG_KMS("Unsupported AFBC block size\n");
> > -		return false;
> > -	}
> > -
> > -	return true;
> > +	return drm_afbc_check_offset(dev, mode_cmd) &&
> > +	       drm_afbc_check_size_align(dev, mode_cmd);
> >  }
> >  =

> >  static bool
> > @@ -300,53 +283,20 @@ malidp_verify_afbc_framebuffer_size(struct drm_de=
vice *dev,
> >  				    struct drm_file *file,
> >  				    const struct drm_mode_fb_cmd2 *mode_cmd)
> >  {
> > -	int n_superblocks =3D 0;
> >  	const struct drm_format_info *info;
> >  	struct drm_gem_object *objs =3D NULL;
> > -	u32 afbc_superblock_size =3D 0, afbc_superblock_height =3D 0;
> > -	u32 afbc_superblock_width =3D 0, afbc_size =3D 0;
> >  	int bpp =3D 0;
> >  =

> > -	switch (mode_cmd->modifier[0] & AFBC_SIZE_MASK) {
> > -	case AFBC_SIZE_16X16:
> > -		afbc_superblock_height =3D 16;
> > -		afbc_superblock_width =3D 16;
> > -		break;
> > -	default:
> > -		DRM_DEBUG_KMS("AFBC superblock size is not supported\n");
> > -		return false;
> > -	}
> > -
> >  	info =3D drm_get_format_info(dev, mode_cmd);
> > -
> > -	n_superblocks =3D (mode_cmd->width / afbc_superblock_width) *
> > -		(mode_cmd->height / afbc_superblock_height);
> > -
> >  	bpp =3D malidp_format_get_bpp(info->format);
> >  =

> > -	afbc_superblock_size =3D (bpp * afbc_superblock_width * afbc_superblo=
ck_height)
> > -				/ BITS_PER_BYTE;
> > -
> > -	afbc_size =3D ALIGN(n_superblocks * AFBC_HEADER_SIZE, AFBC_SUPERBLK_A=
LIGNMENT);
> > -	afbc_size +=3D n_superblocks * ALIGN(afbc_superblock_size, AFBC_SUPER=
BLK_ALIGNMENT);
> > -
> > -	if ((mode_cmd->width * bpp) !=3D (mode_cmd->pitches[0] * BITS_PER_BYT=
E)) {
> > -		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE) (=3D%u) "
> > -			      "should be same as width (=3D%u) * bpp (=3D%u)\n",
> > -			      (mode_cmd->pitches[0] * BITS_PER_BYTE),
> > -			      mode_cmd->width, bpp);
> > -		return false;
> > -	}
> > -
> >  	objs =3D drm_gem_object_lookup(file, mode_cmd->handles[0]);
> >  	if (!objs) {
> >  		DRM_DEBUG_KMS("Failed to lookup GEM object\n");
> >  		return false;
> >  	}
> >  =

> > -	if (objs->size < afbc_size) {
> > -		DRM_DEBUG_KMS("buffer size (%zu) too small for AFBC buffer size =3D =
%u\n",
> > -			      objs->size, afbc_size);
> > +	if (!drm_afbc_check_fb_size(dev, mode_cmd, objs, bpp)) {
> >  		drm_gem_object_put_unlocked(objs);
> >  		return false;
> >  	}
> Also can you do the code refactoring for komeda driver as well.
> specifically komeda_fb_afbc_size_check(). I will let
> james.qian.wang@arm.com and Mihail.Atanassov@arm.com have their
> opinion on this.

I'd say that it'd be really nice to get this work done for us ;)
but it doesn't have to be in this patch but rather in a follow-up.

> =

> > diff --git a/drivers/gpu/drm/drm_afbc.c b/drivers/gpu/drm/drm_afbc.c
> > new file mode 100644
> > index 000000000000..3e8a9225fd2e
> > --- /dev/null
> > +++ b/drivers/gpu/drm/drm_afbc.c
> > @@ -0,0 +1,114 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * (C) 2019 Collabora Ltd.
> > + *
> > + * author: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > + *
> > + */
> > +#include <linux/module.h>
> > +
> > +#include <drm/drm_afbc.h>
> > +#include <drm/drm_device.h>
> > +#include <drm/drm_fourcc.h>
> > +#include <drm/drm_gem.h>
> > +#include <drm/drm_mode.h>
> > +#include <drm/drm_print.h>
> > +
> > +#define AFBC_HEADER_SIZE		16
> > +#define AFBC_SUPERBLK_ALIGNMENT		128
> > +
> > +bool drm_afbc_check_offset(struct drm_device *dev,
> > +			   const struct drm_mode_fb_cmd2 *mode_cmd)
> > +{
> > +	if (mode_cmd->offsets[0] !=3D 0) {
> > +		DRM_DEBUG_KMS("AFBC buffers' plane offset should be 0\n");
> > +		return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +EXPORT_SYMBOL_GPL(drm_afbc_check_offset);
> > +
> > +bool drm_afbc_check_size_align(struct drm_device *dev,
> > +			       const struct drm_mode_fb_cmd2 *mode_cmd)
> > +{
> > +
> > +	switch (mode_cmd->modifier[0] & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > +	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > +		if ((mode_cmd->width % 16) || (mode_cmd->height % 16)) {
> > +			DRM_DEBUG_KMS(
> > +				"AFBC buffer must be aligned to 16 pixels\n"
> > +			);
> > +			return false;
> > +		}
> > +		break;
> > +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > +		/* fall through */
> > +	case AFBC_FORMAT_MOD_BLOCK_SIZE_64x4:
> > +		/* fall through */
> > +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8_64x4:
> > +		/* fall through */
> > +	default:
> > +		DRM_DEBUG_KMS("Unsupported AFBC block size\n");
> > +		return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +EXPORT_SYMBOL_GPL(drm_afbc_check_size_align);
> > +
> > +bool drm_afbc_check_fb_size(struct drm_device *dev,
> > +			    const struct drm_mode_fb_cmd2 *mode_cmd,
> > +			    struct drm_gem_object *objs, int bpp)
> > +{
> > +	int n_superblocks =3D 0;
> > +	u32 afbc_superblock_size =3D 0, afbc_superblock_height =3D 0;
> > +	u32 afbc_superblock_width =3D 0, afbc_size =3D 0;
> > +
> > +	switch (mode_cmd->modifier[0] & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > +	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > +		afbc_superblock_height =3D 16;
> > +		afbc_superblock_width =3D 16;
> > +		break;
> > +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> Copying from
> https://cgit.freedesktop.org/drm/drm-tip/tree/drivers/gpu/drm/arm/display=
/komeda/komeda_framebuffer.c#n60
>                 afbc_superblock_width =3D 32;
>                 afbc_superblock_height =3D 8;
> > +		/* fall through */
> > +	case AFBC_FORMAT_MOD_BLOCK_SIZE_64x4:
> > +		/* fall through */
> > +	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8_64x4:
> > +		/* fall through */
> > +	default:
> > +		DRM_DEBUG_KMS("AFBC superblock size is not supported\n");
> > +		return false;
> > +	}
> Can you combine the two switch - case confitions (from this function
> and the one in drm_afbc_check_size_align()) and put it in a separate
> function (say drm_afbc_get_superblock_dimensions()) of its own ?
> This will help to avoid code repetition.
> =


I'm personally a bit on the fence about this - functions should ideally
do one thing. That shared helper would be both getting the dimensions
_and_ checking the mode_cmd is valid, so one place cares about one half
of the function's results, and the other - the second half. =AF\_O_/=AF,
opinions, everybody has them :).

> > +
> > +	n_superblocks =3D (mode_cmd->width / afbc_superblock_width) *
> > +		(mode_cmd->height / afbc_superblock_height);
> > +
> > +	afbc_superblock_size =3D
> > +		(bpp * afbc_superblock_width * afbc_superblock_height)
> > +			/ BITS_PER_BYTE;
> > +
> > +	afbc_size =3D ALIGN(n_superblocks * AFBC_HEADER_SIZE,
> > +			  AFBC_SUPERBLK_ALIGNMENT);
> > +	afbc_size +=3D n_superblocks *
> > +		ALIGN(afbc_superblock_size, AFBC_SUPERBLK_ALIGNMENT);
> > +
> > +	if ((mode_cmd->width * bpp) !=3D (mode_cmd->pitches[0] * BITS_PER_BYT=
E)) {
> > +		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE) (=3D%u) shou=
ld be same as width (=3D%u) * bpp (=3D%u)\n",
> > +			mode_cmd->pitches[0] * BITS_PER_BYTE,
> > +			mode_cmd->width, bpp
> > +		);
> > +		return false;
> > +	}
> > +
> > +	if (objs->size < afbc_size) {
> > +		DRM_DEBUG_KMS("buffer size (%zu) too small for AFBC buffer size =3D =
%u\n",
> > +			objs->size, afbc_size
> > +		);
> > +
> > +		return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +EXPORT_SYMBOL(drm_afbc_check_fb_size);
> > diff --git a/include/drm/drm_afbc.h b/include/drm/drm_afbc.h
> > new file mode 100644
> > index 000000000000..ce39c850217b
> > --- /dev/null
> > +++ b/include/drm/drm_afbc.h
> > @@ -0,0 +1,25 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * (C) 2019 Collabora Ltd.
> > + *
> > + * author: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > + *
> > + */
> > +#ifndef __DRM_AFBC_H__
> > +#define __DRM_AFBC_H__
> > +
> > +struct drm_device;
> > +struct drm_mode_fb_cmd2;
> > +struct drm_gem_object;
> > +
> > +bool drm_afbc_check_offset(struct drm_device *dev,
> > +			   const struct drm_mode_fb_cmd2 *mode_cmd);
> > +
> > +bool drm_afbc_check_size_align(struct drm_device *dev,
> > +			       const struct drm_mode_fb_cmd2 *mode_cmd);
> > +
> > +bool drm_afbc_check_fb_size(struct drm_device *dev,
> > +			    const struct drm_mode_fb_cmd2 *mode_cmd,
> > +			    struct drm_gem_object *objs, int bpp);
> > +
> > +#endif /* __DRM_AFBC_H__ */
> > --
> > 2.17.1
> > =

> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> =


Overall the patch LGTM as-is, nice and straightforward
mostly-cut-n-paste, just let's sort out the SPDX identifier question
I have, then I'll be happy.

-- =

Mihail




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
