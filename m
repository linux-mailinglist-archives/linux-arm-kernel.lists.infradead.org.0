Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3460719D319
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZLpxfUa1qNiSpHvcHPG+Wy5rEQxgfoqZLQydFrwNfY=; b=bVgsn+3CwQhXVJ
	VXohUuNcheqo9Guop6PYxmsV1n3eWWokhZVQPwbY4V+5I2MR3VpJ0QmlPgTNZpOg2xHg9eQoCDQPt
	wLZZ7RqWKxPpx2sFBdtwqUTUR7gHEATaR+zsMBMdelPKe7zgamqKgRUjGnW7yLN3EJY8PRmL7eQWI
	YZfH3bao4tx02c89Gwqhc0q+xJXnHg9Ry07vqE3LFMlikW+L0TCpnOusvrwJnBeCF5uJnbDMufKEz
	zJotapZuk9X77EEKxrcnyImvVzBML0f8jbRIJRM2BO+uubNy1nqYFJPFAn12tPFnNHfYVm4m+w87K
	4Dv8Roezs/TUHAon7l+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIG5-0006wE-0a; Fri, 03 Apr 2020 09:05:01 +0000
Received: from mail-eopbgr1400095.outbound.protection.outlook.com
 ([40.107.140.95] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIFm-0006uw-MV; Fri, 03 Apr 2020 09:04:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j0n3puH/GVwvduVGu5FT+K7XQVQxgoeGw0EHWLe2LXiUcQZaAKkL5eDTTOu60l3OfmfvQLfz2VN0zrHWuBVflF9wIxO4pTqzU3P431eEbDgVY6fJLevwlNGMufNIz/9ySsMf0KdB19U0p9hVHrk9sRiIuNSs9kTM+tj2fKizOi/1/XZGSKrrTCqrM4kUOghmYiz/dJDRQkZhaUc0d77wsnLv63jh/eoOcBpP6t/fbRoiLa1m7IQ+BNnXTL0tJh81o5CNAcBULiCpMHWgThj7Hy8suHhxTGltYKsF3W93h2DrBke6UOhW8Fau8Mko6yCFe6k70Mf5PP8FVu7OuU8lzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ifLh57Z6sOZphu+sZr0zvImBA+VoFBmuIfXY7gz6Mo=;
 b=YIpsqXxq4afCBxUaep/hm6qLKNckw5N/GhoV4CLwW6TJIIyuOKKe6Lm/goyPc55LFx7/ffmS5aBiqbKXOUF/XjSNy1PIyhTjJ4enKdAYSfILul/M6HZl6DwkjP+b05p5j0jPB0yvHBiV2YVODAaot90NRaQtI3uXiU6qaVGD9NOmJfTjl0g1Ol0LeHiLiLwAvq/RHqQiGZHgU3+rMK7Om9xsd7dvtlo+yPJZyBJSVyoIYmXXaYPK/X2T1L+m7PArPlak9gyZ2TJ1Fx1LRsjf8pDr5504FZ99ATMzYC/eCL/W6t10RarHuZVoj7GijstchzcMGr1W4KStbQ+XX3d/jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ifLh57Z6sOZphu+sZr0zvImBA+VoFBmuIfXY7gz6Mo=;
 b=CShNSqGXYeIxVlm6fqCZkL/rwzDMCZtEXV2dT2mNdXh8e70nrLxU8nwN2RWR8iYmMSiaa5JzsmzaKpIyrFJbVaodrxutZdVy6GK6rXNfX//BDrdGwugkC48BvMBvLG+0TAREEvRz7qQxsHm2iq6czDy6Ct4JWoqUlxisowssuMw=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB3935.jpnprd01.prod.outlook.com (20.178.138.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.16; Fri, 3 Apr 2020 09:04:36 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 09:04:36 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Prabhakar Mahadev Lad
 <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: RE: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
Thread-Topic: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
Thread-Index: AQHWCSZhTMobSnptQkuFlRDlbRGMO6hnB2iggAAJ7ICAAAiQUA==
Date: Fri, 3 Apr 2020 09:04:35 +0000
Message-ID: <TYAPR01MB4544B6B749588A7390323D28D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB454403D69A74036B74CC8220D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <CAMuHMdVWn=U82k5RJnBaRUgRHh3bRfdncOupmX67-u-nbwsG9w@mail.gmail.com>
In-Reply-To: <CAMuHMdVWn=U82k5RJnBaRUgRHh3bRfdncOupmX67-u-nbwsG9w@mail.gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9f82b092-c362-4abf-ad12-08d7d7ae0874
x-ms-traffictypediagnostic: TYAPR01MB3935:|TYAPR01MB3935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB393569785400BEBB42F9278FD8C70@TYAPR01MB3935.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB4544.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(366004)(39860400002)(396003)(376002)(346002)(54906003)(66446008)(478600001)(66946007)(7696005)(55236004)(76116006)(81156014)(6506007)(52536014)(81166006)(8936002)(8676002)(5660300002)(33656002)(7416002)(64756008)(110136005)(66476007)(66556008)(26005)(316002)(2906002)(86362001)(71200400001)(4326008)(55016002)(186003)(9686003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vL7tDxgRsZwkt8tfT4prhfnRjbQcGbfmQGvY7epBO5xoBNjhEsuw4mUYvrU74TN2CaXWVxBPZk/Kozs56Q0T7CDUKSNj/M9nJRb5TOeKKioehdLfzpJEq8DA1ZEPGfl9WKLK+e/n43friFAzcYQVzD8cKkdLpGzIfIO1nLVd7i9Ro9ro9YLk/JdqfZfJJJvvBU2TQyXW2KOVHRGvPszVq0kCIdyP/eLKO1JlRJxtnlyjmkc6O9iApmHHzGUrWVojrMBuyf9vMMIk0boK28bpYFavvmF/B7NwJLYK3afNAoqShypPLbrTLbP5+/gkcL6rrK+3pV/EHEZjYMHgegxPqRwhNPWaV3j80lw7R39fiX8yXTqUPka6Tjhw+v4MC4URIlaw4Gu/AxQG6eDRVzVSQMu0JkyDMrrq+4LIPXyNJAK2cMsn5KCBK9kxlB8Axete
x-ms-exchange-antispam-messagedata: Bei40bURwk4ntSHAOXcI92gT3Tq+P7fWE+P2wamilfiMNZni7pD9yKkWvNdP9Qyl2OcwB4PgZZvdSw/0gInW2WYkZDNE4OYze7IvCQsw82cD1hKkSCPJ0KsHPvCxwgb3JWWAofSd5YN7XppHqoNc6Q==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f82b092-c362-4abf-ad12-08d7d7ae0874
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 09:04:36.0061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zs9OsfD+bzy5u38XCPW8G92/sr7Hy3sp7dphMlYW25j5wHkGhkc2X11rSWuclGZDtGqEE5Q2+KUvyPlIqmItDiib+CRS/2JgBOo9Ksf6wRgTty8DqwhCvX+KwXEag+SA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_020442_737387_AD9913A1 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Arnd Bergmann <arnd@arndb.de>,
 Simon Horman <horms@verge.net.au>, Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert-san,

Thank you for your comments!

> From: Geert Uytterhoeven, Sent: Friday, April 3, 2020 5:28 PM
<snip>
> > But, I'm thinking this patch (and patch 03/11) should be separated
> > from this patch series for arm64 subsystem to ease maintenance.
> > My scenario is:
> >  1) patch series 1: R-Car PCIe endpoint support.
> >  -- This means: patch 1, 4 - 9, 11
> >
> >  2) After the patch series 1 is merged, submit this patch 2/11 to arm subsystem
> >    and submit the patch 10/11 to misc subsystem.
> >
> >  3) At last, submit patch 3/11 after the patch 2/11 is merged.
> >
> > Geert-san, what do you think?
> 
> Thanks, I agree with your summary.
> 
> I can take patch 2/11 through renesas-devel.
> Probably it's best if I submit it to arm-soc as a fix for v5.8, after
> the driver part
> has been merged into v5.8-rc1, so 3/11 can be submitted for v5.9.

Thank you! I got it.

> BTW, I'm wondering about "[PATCH v6 05/11] PCI: rcar: Fix calculating
> mask for PCIEPAMR register". Can the issue fixed by this patch happen with
> the current driver in host mode, or is that limited to ep mode?
> In case of the former, please submit it to the PCI maintainer as a separate
> fix.

Thank you for pointed it out. I think this is the case of the former.
IIUC, if such a small window PCIe device exists, the issue happens.

Prabhakar-san, is my understanding correct?

Best regards,
Yoshihiro Shimoda

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
