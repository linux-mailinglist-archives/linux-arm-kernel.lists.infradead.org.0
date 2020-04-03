Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D432E19D3BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxjlGlLhCvEqKEZp79/RroMG7Fms2YE/CI1VhzJiXwg=; b=AulP7BLDSYKKi0
	8GJXgjnNMe/IYDwlYaoHo/dsd6PhZDerLKVk6HVnHhqeJy0v0ZiyV3hbKmUTEErKftKIUILk0SCvO
	17hezX/I7wtdggqKcFaS0CMnptIE+h9oGe3we2+QQUepNM+URKbus8XlpkV0ULI2hufBNHb4XmFCb
	0B+DZmkol2+i6Ul6QMLue41o3bdHFLhOMHkX/67iSNhWxbLXuc0Lo4Ga1ZPErBo5pssx6HlSpqRDe
	7Y3xZRE4gBC7DnvpwzBtYR5DAOJxJS0F1GNjF90U9tmwxncFCBrpY/VN3V3v/94J1GHIpQgPb2+7f
	oHuHah1bhe8GpVwbD/4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIg8-0001Tn-Oo; Fri, 03 Apr 2020 09:31:56 +0000
Received: from mail-eopbgr1400100.outbound.protection.outlook.com
 ([40.107.140.100] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIg1-0001Si-QG; Fri, 03 Apr 2020 09:31:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n/KPhnHymyFddQxjfmGr+9yvWKQUhLxOXoIGc855DEV0j67f3Sz3sB16Mz0+ewsAWGv1MwWyk4THYDORW90uqElqtKUpIFlIRtu5lq53DpNM6Vmoni0oA1dAptDt8KN7rYM8FIRvTLt5KdwFU5nZTIMI2RHQbPejJmbWgJAgQE5P5EocExO6ZgnVRT31/am2ITQPWqhiBDMx9QFAnzhB+ZajP5ssvzGSitYbuSWoRkAc4AoW08jReKORQ8a1qhCJQYE6bARQGTmKf28GEV8tlCCzcc9UWsFU8dp3psH3+vuWF6lrRhLpjEgIcImdHeUQVPTXdGB8vMjer9lEMTIk9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V70GJYUbz1GXDV9y0hvhxp7NDdSQX8iO22oWTYjEBWA=;
 b=Yima1TKPg7DF8EJQsCFtwjUanjgCRUTwYW8wfEPxVOHOGY6mnuPJ4waYrho3EHhFJ6NVF5t7nSDuVUB6VOM+9isAA5ZIl1ZDVBNcwOjxogeNzrg9yvDyvmlk+f7CMNpHDO8t8Yx0qMYMQhrC2iyCAJ4IawijewcBcZkR8Y6dZWzYyFMSWKh7eowkUEIxOAhUokglMpUptCbmkw2TAUjrSE7TM9v5IAVvUjYwi3pRn3PTRFndA0aTiDQj9pcyvvjYKAw5mKxZNHFYsVOs8gOdWcKkfD/bkqFmoQd/LryoiGQtaHgj1SEQvDdUSzjO1I4lSkoNU/FToi5OVHVRHwlmtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V70GJYUbz1GXDV9y0hvhxp7NDdSQX8iO22oWTYjEBWA=;
 b=Kq36H25bq7M28e6lx3Ic7PravnCHP7I0infMVVPS7z0CPwyxU6SHJLAo23GB53NKjuW2jvYW0DuXOffXT/04Ad4kXpzZCfwQ5f37bWuafd4zU3SYu9FUBnqT4S8vK6b6JUQ7xqCkams0jQ0t66n91pRdxyijiu82Pe1iLHOugzE=
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com (20.178.97.80) by
 OSBPR01MB2021.jpnprd01.prod.outlook.com (52.134.242.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Fri, 3 Apr 2020 09:31:44 +0000
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::490:aa83:2d09:3a0b]) by OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::490:aa83:2d09:3a0b%5]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 09:31:44 +0000
From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>
Subject: RE: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
Thread-Topic: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
Thread-Index: AQHWCSZhFu4QxmekC0qbQMp4EyLiHqhnCn8AgAAG1YCAAAopgIAABS5g
Date: Fri, 3 Apr 2020 09:31:43 +0000
Message-ID: <OSBPR01MB35905B0D9DB55E8FBA340341AAC70@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB454403D69A74036B74CC8220D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <CAMuHMdVWn=U82k5RJnBaRUgRHh3bRfdncOupmX67-u-nbwsG9w@mail.gmail.com>
 <TYAPR01MB4544B6B749588A7390323D28D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB4544B6B749588A7390323D28D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=prabhakar.mahadev-lad.rj@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c96b77a3-e098-464b-2924-08d7d7b1d2c7
x-ms-traffictypediagnostic: OSBPR01MB2021:|OSBPR01MB2021:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB2021078E9DCA28E57CAA542DAAC70@OSBPR01MB2021.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB3590.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(376002)(396003)(39860400002)(366004)(346002)(26005)(81166006)(81156014)(71200400001)(66446008)(478600001)(186003)(54906003)(316002)(86362001)(110136005)(53546011)(6506007)(7696005)(76116006)(33656002)(55016002)(7416002)(4326008)(8676002)(5660300002)(9686003)(8936002)(2906002)(66946007)(52536014)(66556008)(66476007)(64756008);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YeIsbFxwYIWRZM0FB7AH+zKdPT9mRcjSROP04dxv+BiO2aZpZTICkU09LazdEPmvcWVHJ1ZvVUMnjP5mhG+MmVq8vpUk/EQtXW5Mvjhauj+OHOJvn4XObtyjWjEeFeyM4Zx60IJis4A4/0pLCkOd5t99jiQdWLZYf23qwXtO2aj6UxzV1H25se1hqB9LCtqNErxIsXFLSYyKgoUc2sm3a3AJBRfVZqRDs3mbIufzw3P7jJ/n2t5ZNl0ClT6dOnDURsow78fdufyiIWAimJg2QmdLfIr0Kq3UrMlX5o5E4c9keZtQHMdToGe5hbMKWiGi23uavNJc5b93eDAk/SsKaOkcjjkniqKyx/C1A2HKVmNlGV+qhINg5ewdIIZPLVbfDl6w9ya1+TzlYPWh/Rdjy9iharPczbo3PXo3SGP29Xrpa3gRy1vDGy936tsEuBPc
x-ms-exchange-antispam-messagedata: GVV7CB3PNuk9Bamfa+ZPVQgqgWZRYhj2qLqU1GRNpL/Mep0LXkMedzGVEzgH8wgIGVGsrpQllfv02fkHsAsRiwnA5/Znks1wXP9A9c/Eny5gYq5eySfdZ4mJFliiWKBB6cNNy09X/gwsVaYr07by7A==
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c96b77a3-e098-464b-2924-08d7d7b1d2c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 09:31:43.8577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4VMvEqtGHKer2dhPJECeDBN4X+JioRP7vXuM6mrdsUWYF6NkRuu9hMwxUW3cm+CzHatRRKYb3qQZQp1Jw/BfWGzmg/KlQE2zgi/tFqTM23653gDTNxvGIXXTdLw0ngmv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB2021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_023149_854705_8093CE4D 
X-CRM114-Status: GOOD (  27.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.100 listed in list.dnswl.org]
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

Hi Shimoda-san/Geert-san,

> -----Original Message-----
> From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Sent: 03 April 2020 10:05
> To: Geert Uytterhoeven <geert@linux-m68k.org>; Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Cc: Will Deacon <will@kernel.org>; Geert Uytterhoeven <geert+renesas@glider.be>; Catalin Marinas <catalin.marinas@arm.com>; Arnd
> Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Andrew Murray <andrew.murray@arm.com>;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-renesas-soc@vger.kernel.org; Chris
> Paterson <Chris.Paterson2@renesas.com>; Frank Rowand <frowand.list@gmail.com>; Gustavo Pimentel
> <gustavo.pimentel@synopsys.com>; Jingoo Han <jingoohan1@gmail.com>; Simon Horman <horms@verge.net.au>; Shawn Lin
> <shawn.lin@rock-chips.com>; Tom Joseph <tjoseph@cadence.com>; Heiko Stuebner <heiko@sntech.de>; linux-
> rockchip@lists.infradead.org; Lad Prabhakar <prabhakar.csengg@gmail.com>; Magnus Damm <magnus.damm@gmail.com>; Kishon Vijay
> Abraham I <kishon@ti.com>; Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>; Marek Vasut <marek.vasut+renesas@gmail.com>; linux-
> pci@vger.kernel.org; Bjorn Helgaas <bhelgaas@google.com>; Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>
> Subject: RE: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
>
> Hi Geert-san,
>
> Thank you for your comments!
>
> > From: Geert Uytterhoeven, Sent: Friday, April 3, 2020 5:28 PM
> <snip>
> > > But, I'm thinking this patch (and patch 03/11) should be separated
> > > from this patch series for arm64 subsystem to ease maintenance.
> > > My scenario is:
> > >  1) patch series 1: R-Car PCIe endpoint support.
> > >  -- This means: patch 1, 4 - 9, 11
> > >
> > >  2) After the patch series 1 is merged, submit this patch 2/11 to arm subsystem
> > >    and submit the patch 10/11 to misc subsystem.
> > >
> > >  3) At last, submit patch 3/11 after the patch 2/11 is merged.
> > >
> > > Geert-san, what do you think?
> >
> > Thanks, I agree with your summary.
> >
> > I can take patch 2/11 through renesas-devel.
> > Probably it's best if I submit it to arm-soc as a fix for v5.8, after
> > the driver part
> > has been merged into v5.8-rc1, so 3/11 can be submitted for v5.9.
>
> Thank you! I got it.
>
Thank you, Ill split the patches accordingly and post a v7.

> > BTW, I'm wondering about "[PATCH v6 05/11] PCI: rcar: Fix calculating
> > mask for PCIEPAMR register". Can the issue fixed by this patch happen with
> > the current driver in host mode, or is that limited to ep mode?
> > In case of the former, please submit it to the PCI maintainer as a separate
> > fix.
>
> Thank you for pointed it out. I think this is the case of the former.
> IIUC, if such a small window PCIe device exists, the issue happens.
>
> Prabhakar-san, is my understanding correct?
>
This issue will only be hit on EP, when in host mode the sizes will be fixed to 1 Mbytes /2 Mbytes /128 Mbytes

Cheers,
--Prabhakar

> Best regards,
> Yoshihiro Shimoda



Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, 40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldorf, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WEEE reg. no.: DE 14978647
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
