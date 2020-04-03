Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5187619D1A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0ww3R+ws2Ws7hdN8GvgWBeCZwmyKAzx5uM9P3KrAOQ=; b=BlKdt+pAjtTOHh
	i9z/JN/MIoFXy4hZIcMittImyi1AdlpNSTOR5oTBFYYbbHCHyuEUZMJ+alRKhf30Q89zDDrOEYhZf
	2rMx/DnNbsCm4Vxes24I2S4g5d790NZj3kBLto1jSJj46gE5JMsbBWHMrWena4J3ffExNkmYPNFOx
	tPAeBgk8lHVQPK3fhv+tcghbqG8t3nBnJ99Cv4LvHtXWwgIKl3T0Ov6rsyEOc9kROcaiDwJhJAMfJ
	Uk2eh2ZqlBIiXCJ3zwTzpIwsNBfjQxgRpMwIR7FeJqhBbGhHhQYek5NFZJZQmYxGp288xMxJ0fRCA
	tIKl3rypleEdFZCiSEUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKHJ3-0003Lu-2u; Fri, 03 Apr 2020 08:04:01 +0000
Received: from mail-eopbgr1400119.outbound.protection.outlook.com
 ([40.107.140.119] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKHIs-0003KK-QS; Fri, 03 Apr 2020 08:03:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uiy0+QZIvc64LNvhbOFrkrH0bBEG1BZSk5flbhgnj9f/z1O+NL1irvL6kad+ehBl4CIKkE3aTpkkaP53w5ksPNZoWi2Yz5UIkRBI2J9wT+gKJuw2EwvCuYWlKapUsrTHFS42zTu7CI+naDWnKifmVQY0H1cf1Ue3ZYHnj7E7lrpB3S3i60XyEnUZS1m3TfTYkNo21RQuWDm7wu293jyH3MxNag7MbmUbU2BqKINVaKbippg04vfOMsQrz/V7FKnQQgkb8VAEsdESjQlz3HZyv8HvETRsQDMfWqQWiAvnG+BOJVibjtpET5AW4oiyBapFZnMhvVwuWO7WY2ujuGA0ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=opwQOdpInWInfv8/ILIN8UjJH4voXce+WuFPHYKWLTk=;
 b=T3V9fp6B1tnxlHkzatkKD6XDUyyF9jzq8QHkjakB3AQK3LKFL1FmQFEbcsqdrJOyelkDu8LsGYDU97GWfGGLRZy1QHon+KvEPx8Mqp7Cy4eFGoSp6VPJNE5xTz64nufjdjCt61/VoHg3l3SK752J8ru3u+fmbMUdEGlE77UlfcqIEZyyGp8tsVntsEx69QC67MfJg+0xIZNJvA02tgEM5ldNAR6I4D0cuf3gvOPNfN5lIkSU+O+hiuqStHEaUJNOTnf42VNSAXB+WJOJRak1s4+iAB/1FHgtYW5AY3X0JpnTqdKyaFBgIf5dtrTG+CV91oU1YhEK3WYB1BpAfjdHOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=opwQOdpInWInfv8/ILIN8UjJH4voXce+WuFPHYKWLTk=;
 b=OKnX6OcswQLmH1A4olLgclqcHGGlYFNtFy/MsMLG1KAU2UBwPHsMfQ3RS/Qm2732ZYXXX8d/VlqnePOO6Qn9f8qEouNHaVrvqgPt5OuN45GdAzMFDelYeAlpYymaY9JbNGXyKoEMHkzFuib43/pM3XTKF2ipkBDYgdpvLkePGkY=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB4045.jpnprd01.prod.outlook.com (20.178.139.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Fri, 3 Apr 2020 08:03:47 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 08:03:47 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Geert
 Uytterhoeven <geert+renesas@glider.be>
Subject: RE: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
Thread-Topic: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
Thread-Index: AQHWCSZhTMobSnptQkuFlRDlbRGMO6hnB2ig
Date: Fri, 3 Apr 2020 08:03:46 +0000
Message-ID: <TYAPR01MB454403D69A74036B74CC8220D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1585856319-4380-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cef45f47-5e23-4887-d180-08d7d7a58979
x-ms-traffictypediagnostic: TYAPR01MB4045:|TYAPR01MB4045:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB4045BCEBF22C5D48978D2C9ED8C70@TYAPR01MB4045.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB4544.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(366004)(39860400002)(376002)(136003)(346002)(396003)(66946007)(4744005)(55016002)(52536014)(81156014)(7696005)(26005)(9686003)(86362001)(5660300002)(81166006)(8676002)(4326008)(66476007)(55236004)(33656002)(6506007)(7416002)(71200400001)(110136005)(54906003)(76116006)(186003)(316002)(478600001)(8936002)(2906002)(66446008)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yuou5xOZfJilGRWI+Yr3Dh7if35T29VPK/Kt1FJD3/z+a7CFTQ4lgAsEpWvF+bQoVIe6Z+kDzvQ+r3TN4JaPUouctDnEdKN/dRZGWqMiLjimvHUVK31Gn9Sl5yAGUwbg6zfRO0I5LHMm6AJmMPw8qmPyH+woNjUpoKIp4wwCIyWzuCTvD9uI9zO48pCgrL+MfJc25dNCOrDH1qchh5XcVYJBu1QUfYpwILdejlLgfgS/kHCg3PFRz+nilKbEUFZXjFPvz37vpdazdj2YgPj3M4fRjXNcg9LCdcLZg5ay2l0xAXLNYAKRZ/GtdDB72RTqFpM1ptH3VtOVyhT9LfLEF5hdK2F5DJ+XPU9n6MzPNUYTIjwLrBipVNXRCz8VySlWWXFOWeusr121olTSScmBnBCkXAiZbpqLisXkm1Bt0pBHMOMwb8lNsl6o1gZqKsnC
x-ms-exchange-antispam-messagedata: j5kzffjPnMXPKbWtAfQwFosgeg+M1mDttnSPsJ7HXj/U2Eot1le+HJ5NrSd1PdyaaiGxlyHglnZ3lEGF79sN5PkzI/0onfuPadv16CJR+AoeHr1rFUvg0smtKo3ebohQMSXvYaorAoZ5OL3djlifHg==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cef45f47-5e23-4887-d180-08d7d7a58979
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 08:03:47.0173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mWMPHwwdDOMKlNsPBRBIX0LLFqa5XilvkX6xcBC9+6AdK688YsyEjhNaSxatOPZu4nNgarCCPMw10t4aJm5CuOyF3Cw/JHKrSBrGnmTkPTqAKjvibD7c+yYaYsVrL6Zd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_010350_870910_29532CBD 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.119 listed in list.dnswl.org]
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
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
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

Hi Prabhakar-san,

> From: Lad Prabhakar, Sent: Friday, April 3, 2020 4:39 AM
> 
> config option PCIE_RCAR internally selects PCIE_RCAR_HOST which builds the
> same driver. So this patch renames CONFIG_PCIE_RCAR to
> CONFIG_PCIE_RCAR_HOST so that PCIE_RCAR can be safely dropped from Kconfig
> file.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thank you for the patch!

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

But, I'm thinking this patch (and patch 03/11) should be separated
from this patch series for arm64 subsystem to ease maintenance.
My scenario is:
 1) patch series 1: R-Car PCIe endpoint support.
 -- This means: patch 1, 4 - 9, 11

 2) After the patch series 1 is merged, submit this patch 2/11 to arm subsystem
   and submit the patch 10/11 to misc subsystem.

 3) At last, submit patch 3/11 after the patch 2/11 is merged.

Geert-san, what do you think?

Best regards,
Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
