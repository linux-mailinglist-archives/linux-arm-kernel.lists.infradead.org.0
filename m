Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E916A795
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRegjIxWO4ZTVdJgkcTJDXJBCaPirqdMEQr5Aq4ARGc=; b=dE6izZecGE/F9P
	VRd5vHhZCarXmWJH9B4+mQ78AmgPc5Dee5EuMVZsh9paiDYSIyr9rNHrL5VLdWq4sxKquTgtvdgL0
	E5uMTWUmInkUvDxA1k8rFjCMEL04p1xG8MQ0FIJA0dlzVRzGCO7weOsr5cQt7dEo4Tx1Ze6Ega4+t
	aTBVyvXr2vkiM8aaYqGv5Qtwo8KGucmxIOymz+qHY6pLU1T2Y+3pYuh4ePyFlIOZbcWm9D13T9q8b
	fix+yO0gZFVOZ8K+dEczezaEwLD2SXrgpnmTkSFLtbcIeWi+iUguhAw/ECVNlzQyD6cN58i+/AuGP
	YrwBLz+xuOfeT2+QK3CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLr6-00056M-Jl; Tue, 16 Jul 2019 11:42:48 +0000
Received: from mail-eopbgr790133.outbound.protection.outlook.com
 ([40.107.79.133] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLqt-00054A-9g
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:42:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iAR+wiwErDFrYoBGPyUvIsGb1gS4HK/t7gYyBUxbRvlFYvNKb0yQhN8TUKolgaQ4Lkgp2Y+d4hqQRtSqBwvLyCZty39FnmspnrejtdzNcsO3MzVzfaaBDZyMb2yc5Y8ryPQk3f4MaPb/+lTavhFYzLv7A8nupkzAVusc+3gt540CVO+rrZKMmeu/ez/Di9/vBNNGzwAk+PG0gTDc70s+95ge0i2Azm0uNQSD2YNKEM0mUlnqfNAvTVXLYsrEvjrq/vV6uqofH4c2mhx65Xr0RNczi6OM8g56oljqjhKHDJXlV0Bfl7QQcVXoPIiU/8UTOWA7YUsKOG/nWZ2Jcfxadw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5h8tABCJzsxE2qmQ9CG9PmZ//DE/W5dzQF1ycVlUs+M=;
 b=RaK/VNm2IvM/AV+Ljs7sBqMFT2SiBORQK2pf3f+GNWZuNIvEcqAx2LkjrG6m9gAVU+XIeXPdHNIfD/0TjHr0XR7CqIK/xl2N7ylZpyo3xWEGLQxarB4AMUsTIaUqDoLxAPYU05QHKKcxMoSxhM1krpjhkxKq4nTE9SvNHi6dTaPU9GxGfhdq18/zt1P4oKfsQV47UMz18rZRFTveaLlW0dayqxixdMicM015rf0jwF6Pib2V7CqxRl31XBLg51mJ8dNIQ1jfts9kVMnks5n4JrWB/4EQTCM0cbf0bcmkdo9rKu6LzPhutR/LdphUh86hFVHRbMdzpO+v0af/KRjOjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wavesemi.onmicrosoft.com; s=selector1-wavesemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5h8tABCJzsxE2qmQ9CG9PmZ//DE/W5dzQF1ycVlUs+M=;
 b=nORXN4Nc8wEmqwTCDsOfDSTNt7prkYCxo+uWAt/WY7fT/7LvIZnGT+X/e5vJhmxD1phfIwvm9rWk+QSivfyi3Clb74hxAhjE1APi2VV06dYwX06DLoyn0Z8uFxv4ETI2NQpA7yxCco4DF5q2WXLwl3M4v4QH4FOven1igQ2PiT8=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1552.namprd22.prod.outlook.com (10.174.170.165) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Tue, 16 Jul 2019 11:42:27 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::746d:883d:31:522e]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::746d:883d:31:522e%5]) with mapi id 15.20.2073.012; Tue, 16 Jul 2019
 11:42:27 +0000
From: Paul Burton <paul.burton@mips.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] MIPS: fix some more fall through errors in arch/mips
Thread-Topic: [PATCH] MIPS: fix some more fall through errors in arch/mips
Thread-Index: AQHVOwtgel77smof50yH54sFVwDx+abNIPEA
Date: Tue, 16 Jul 2019 11:42:27 +0000
Message-ID: <MWHPR2201MB12779F73ACB565148B256387C1CE0@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190715224640.5e086766@canb.auug.org.au>
In-Reply-To: <20190715224640.5e086766@canb.auug.org.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0072.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::36) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.140.138.203]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80dbaf4d-f130-4fce-5f23-08d709e2ad36
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1552; 
x-ms-traffictypediagnostic: MWHPR2201MB1552:
x-microsoft-antispam-prvs: <MWHPR2201MB155269C46285DB7C539486E6C1CE0@MWHPR2201MB1552.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(396003)(39830400003)(136003)(376002)(199004)(189003)(42882007)(5660300002)(52536014)(8676002)(81166006)(66946007)(66476007)(71190400001)(64756008)(66446008)(71200400001)(66556008)(81156014)(8936002)(68736007)(54906003)(316002)(6916009)(74316002)(229853002)(7416002)(7736002)(305945005)(6116002)(3846002)(11346002)(66066001)(4326008)(2906002)(7696005)(52116002)(478600001)(76176011)(99286004)(386003)(6436002)(6246003)(25786009)(186003)(26005)(33656002)(14454004)(9686003)(53936002)(55016002)(4744005)(44832011)(476003)(446003)(256004)(6506007)(102836004)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1552;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Yj6zyCOZ1E5Kzfqy4sNNL5T3SCdnVehY/28gRLShhFVQYw8U8fiYY18A0FMjpVpEYvQFAjF/K+5i1SV/SFEBfXSPZ2RN6+c1Zgo3uZZxP4yPTctk+CBM25ppbYrbaGlbKjfWmIHxdSjkcuaTSSUPWan9CQ09FLglQdd1AhE4oTaa11tdapIyKQ58ltLydWdHlcBi/0RRFtkTdef/E9VefYog+N65gYtCauWOK+WgK6uTb+LEPCSpMl9iAv1JEjEP7Pki7eRlzAFPJJQYI1NLFxM0G0kGNma6YLlC9w5T11GzrNVLu1KkEx0Xs0qZJHlZA9CUe+Z5mNYzaDyMBzHOkres5hPA/xvc2zw2Y6LGG+qne9AiB8pxWgnCYNu264Ycc8lV2fYIBLiNk0amxNI5FFvfAVzt065J/ETOmcNp+Yk=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80dbaf4d-f130-4fce-5f23-08d709e2ad36
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 11:42:27.5740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1552
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_044235_483114_D7B22619 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Burton <pburton@wavecomp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 James Hogan <jhogan@kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, John Crispin <john@phrozen.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Matthias Schiffer <mschiffer@universe-factory.net>,
 =?Windows-1252?Q?Petr_=8Atetiar_?= <ynezz@true.cz>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Stephen Rothwell wrote:
> Fix these errors:
> =

> arch/mips/cavium-octeon/executive/cvmx-pko.c:489:7: error: this statement=
 may fall through [-Werror=3Dimplicit-fallthrough=3D]
> arch/mips/bcm63xx/dev-flash.c:89:3: error: this statement may fall throug=
h [-Werror=3Dimplicit-fallthrough=3D]
> arch/mips/ath79/setup.c:155:17: error: this statement may fall through [-=
Werror=3Dimplicit-fallthrough=3D]
> arch/mips/ar7/setup.c:50:3: error: this statement may fall through [-Werr=
or=3Dimplicit-fallthrough=3D]
> =

> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: John Crispin <john@phrozen.org>
> Cc: Matthias Schiffer <mschiffer@universe-factory.net>
> Cc: "Petr =C5=A0tetiar" <ynezz@true.cz>
> Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>

Applied to mips-next.

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
