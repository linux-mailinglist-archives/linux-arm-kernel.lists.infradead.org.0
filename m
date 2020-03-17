Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CABD187B2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 09:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQM50EJzJkp5QDoNdFBMPjJYO/VOK5Cr7m/qnDblHxI=; b=rkzq4QOYe+/bHD
	1H7dZFnstwg/0zhdTcEKks2xIbcc0Ade3q3ynD9DETRmaeR13jAKLiFIRlQUgmW9NuyyJmf7SWjt3
	pdblBClvn2q4mAgN2q/RLOdWJFT49vbCgHvGpjlwoaC5ztjtBkNRjAtaSXmTeGGof6DOn1Dwuwjjx
	Lr5LM+XFe6rz+3N+mzjUFkx/fY6Lr55uFls+41kIibsuG7+vHro8IHK/n8nq+U271+3JW0EJRRCN9
	M3laVTQlM8WF76WZ/qoPw5VxvLMm8+LEiunE2bK+YGdxBidN3eQv/OPYaRSuSDNoX40hlb1BgGIt+
	yy1F6dPGS2NRMgeJP0Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE7ZA-0002Qc-US; Tue, 17 Mar 2020 08:27:12 +0000
Received: from mail-eopbgr1410100.outbound.protection.outlook.com
 ([40.107.141.100] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE7Z0-0002Oi-SZ; Tue, 17 Mar 2020 08:27:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yz1OXHwff72d8k9ZbgwHr5/KDy7ODmaW66wLZjrXxClulS+Q8BNt/FryCHjCuhIFPTM4oW2Q/lI26qYJp9doGzrDNq8Oe1OpKh1ScF7BmFqO8zxNe/bFwjyHimw4rOcLgOki9DA9hPLJw5/c8UjCXdmv+XpklFmzT9lZxog4u2KxrneUAc5jBxJTVJreJM6HfCnrnL1JKTHBxC0tMu5zq/1dBF9Ub+V+F6J1SHEqESStWdyiDScfQFkNqMULuKGdj3lJ4ntzDX/3iS47xw0RfJGNQB594Cacky4zISe03Guu7LUG8UBwv/X11u/t04m5VmxFdSol1siL9SLkMiVNIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/1gEkCI98zl7L29eWbZ6rnF8Wmpwo2CBJXV5ctD3dag=;
 b=A1C05eeVHTADb4bF8zmNgrZX4syM6o9GlsP6JYNbLZCWq0M0MQIzKG8KyphjpmoVuE2L6BF5qEFi1OhvQmujmWyrPL+DoiLMJmBNBikYeMc1UPDfZaqSnZnLiLV4tz0szgUsENVWSdvyY8E1ER25pyMzTBUt71tGj9ZJG7ew0afDqIb6zaoAE6Ozn0fbOIboLCu07iIAKuT52NKQopiQaeFBcA5o66awOYHQNACZag5yIcECcE0ERdKV67PwM4kYACQJ7NZuM7w5+sSWCaF95tSNYxbcl9mAZRMUtcs7p+DCk7RAoYZnS4pHWrMOObhVJ4udQSJJvchd5ddQrToQfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/1gEkCI98zl7L29eWbZ6rnF8Wmpwo2CBJXV5ctD3dag=;
 b=NY3l3S9giVoUIyHtzxoYjTYXZbVQebKZ3/BkDG2ROTukwK5v4/9mBTA8wIB9N26QaAlwGYsW64NGkLU1MGyJneku8JqxFr9NHSF5r+PIoHBcpf5V0jIwzvddUgf12dVhibBGjoTt5WpgLwQDvY7QvTpSfydEpMXHIucLV+AI7Kk=
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com (20.178.97.80) by
 OSBPR01MB4744.jpnprd01.prod.outlook.com (20.179.182.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Tue, 17 Mar 2020 08:26:54 +0000
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::490:aa83:2d09:3a0b]) by OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::490:aa83:2d09:3a0b%5]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 08:26:53 +0000
From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Lad Prabhakar
 <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 1/7] PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
Thread-Topic: [PATCH v5 1/7] PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
Thread-Index: AQHV7k2X6mltGGzBFUuO7BIKhB4Qs6hMdpUAgAAWhjA=
Date: Tue, 17 Mar 2020 08:26:53 +0000
Message-ID: <OSBPR01MB359098590FC973A243BBCE2CAAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB4544CBB9CD07CAF55D7D3845D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB4544CBB9CD07CAF55D7D3845D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=prabhakar.mahadev-lad.rj@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 123a1227-f313-4ab3-f199-08d7ca4cf2f9
x-ms-traffictypediagnostic: OSBPR01MB4744:|OSBPR01MB4744:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB4744A7CA52266C3E3C9684F3AAF60@OSBPR01MB4744.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(4326008)(186003)(26005)(66476007)(2906002)(76116006)(66946007)(64756008)(66556008)(86362001)(8936002)(33656002)(66446008)(5660300002)(55016002)(52536014)(81166006)(478600001)(81156014)(8676002)(9686003)(6506007)(53546011)(316002)(110136005)(54906003)(7696005)(71200400001)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB4744;
 H:OSBPR01MB3590.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nZaUnogw+52S0Jmrz8XQIVZggbPsB6dlny7Sr+ZljnoP58cnLopiYhWW0TY+zjX+8MnLOmA3V0xJ1i17jR3jMUPQbCAj6TI6Q+FdWCfNbpaksXO8WKYjmCTHdOyPggFHjsQhEpEwWvAEjclBLIp+4EL8zQjPrBWUoJMs/kamocSo+SOiCddUAdWA4TWLo8VyAz8J2LRMw2WS9YPTLl5TyfWf4zR62cSAwg3MXDh7hv/lNs64rPPnWEW9cSte/VlUFD/9bHUbIKJzTiYXbnzi59Ggo8x+ECpiirzAMFFjLrcksqEoC98jcjdXfdH9Xp9eMWWULiu+TrgL3GEIuVO2E8jjbL0FC7xRHad/LqEnJkPMVKCYjRyRygqxXqWC2MfC5X2f98IIKctVrcGE07cbpTrFv/ntByaWxiq8N/ykLLnW+PCRCzzDn89qQHXehh0i
x-ms-exchange-antispam-messagedata: L4QyeWQSvUPAxUtnFux0fHubp3vlCRynXNp1P4X9KXzcZLJ9bKlyGi7FbWjP6vr8j/jCPEhdMrtWV9Lhn8NZ/jhRiu7OpAV2qiV5PIOyBhSbwAK+IPiTMGyb5eoL26uC1+vjMcoOj8ghyWKeKf9MHw==
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 123a1227-f313-4ab3-f199-08d7ca4cf2f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 08:26:53.6587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e7kQp1PvJHYyXmeZ8zzeJ3hEdEH746Luc2EMESIvAbspBE61ttHYD8wJj9kYOI8q8HQKWY2la0f7b6NM/oZ4iSStm8BB44zOQZ/ITitbDW0OjBNKIw4psIzDtZJIPqiJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4744
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_012702_927141_6AF01690 
X-CRM114-Status: GOOD (  29.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.100 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yoshihiro-San,

Thank you for the review.

> -----Original Message-----
> From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Sent: 17 March 2020 06:59
> To: Lad Prabhakar <prabhakar.csengg@gmail.com>
> Cc: Andrew Murray <andrew.murray@arm.com>; linux-pci@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-renesas-soc@vger.kernel.org;
> linux-rockchip@lists.infradead.org; linux-kernel@vger.kernel.org;
> devicetree@vger.kernel.org; Bjorn Helgaas <bhelgaas@google.com>; Rob
> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> Catalin Marinas <catalin.marinas@arm.com>; Will Deacon <will@kernel.org>;
> Kishon Vijay Abraham I <kishon@ti.com>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Arnd Bergmann <arnd@arndb.de>; Greg
> Kroah-Hartman <gregkh@linuxfoundation.org>; Jingoo Han
> <jingoohan1@gmail.com>; Gustavo Pimentel
> <gustavo.pimentel@synopsys.com>; Marek Vasut
> <marek.vasut+renesas@gmail.com>; Shawn Lin <shawn.lin@rock-
> chips.com>; Heiko Stuebner <heiko@sntech.de>; Prabhakar Mahadev Lad
> <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Subject: RE: [PATCH v5 1/7] PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
>
> > From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
>
> Since your email account is different with the Singed-off-by, I think you
> should add your From: tag here like your v2 patch series.
>
> > This commit renames pcie-rcar.c to pcie-rcar-host.c in preparation for
> > adding support for endpoint mode. CONFIG_PCIE_RCAR is also renamed to
> > CONFIG_PCIE_RCAR_HOST to match the driver name accordingly.
> >
> > In addition to this defconfig file has also been updated to match the
> > new config option.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> lad.rj@bp.renesas.com>
> > ---
> >  arch/arm64/configs/defconfig                             | 2 +-
> >  drivers/pci/controller/Kconfig                           | 7 ++++---
> >  drivers/pci/controller/Makefile                          | 2 +-
> >  drivers/pci/controller/{pcie-rcar.c => pcie-rcar-host.c} | 0
> >  4 files changed, 6 insertions(+), 5 deletions(-)  rename
> > drivers/pci/controller/{pcie-rcar.c => pcie-rcar-host.c} (100%)
> >
> > diff --git a/arch/arm64/configs/defconfig
> > b/arch/arm64/configs/defconfig index 0f21288..7a34fce 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -185,7 +185,7 @@ CONFIG_HOTPLUG_PCI=y
> CONFIG_HOTPLUG_PCI_ACPI=y
> > CONFIG_PCI_AARDVARK=y  CONFIG_PCI_TEGRA=y -
> CONFIG_PCIE_RCAR=y
> > +CONFIG_PCIE_RCAR_HOST=y
>
> I think you should separate this change.
> To avoid this, I have an idea in the Kconfig like below:
>  - adding PCIE_RCAR_HOST.
>  - keeping PCIE_RCAR and select PCIE_RCAR_HOST here.
>  - adding a description in the help of PCIE_RCAR like "This will be removed
> after defconfig is updated" is better.
>
> The following is a sample. What do you think?
Sound like a plan will do that, I will just append the description "This will be removed
after defconfig is updated" to PCIE_RCAR config option.

Cheers,
--Prabhakar

> ---
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -58,8 +58,18 @@ config PCIE_RCAR
>  bool "Renesas R-Car PCIe controller"
>  depends on ARCH_RENESAS || COMPILE_TEST
>  depends on PCI_MSI_IRQ_DOMAIN
> +select PCIE_RCAR_HOST
>  help
>    Say Y here if you want PCIe controller support on R-Car SoCs.
> +  This will be removed after defconfig is updated.
> +
> +config PCIE_RCAR_HOST
> +bool "Renesas R-Car PCIe host controller"
> +depends on ARCH_RENESAS || COMPILE_TEST
> +depends on PCI_MSI_IRQ_DOMAIN
> +help
> +  Say Y here if you want PCIe controller support on R-Car SoCs in host
> +  mode.
>
>  config PCI_HOST_COMMON
>  bool
> ---
>
> Best regards,
> Yoshihiro Shimoda
>
> >  CONFIG_PCI_HOST_GENERIC=y
> >  CONFIG_PCI_XGENE=y
> >  CONFIG_PCIE_ALTERA=y
> > diff --git a/drivers/pci/controller/Kconfig
> > b/drivers/pci/controller/Kconfig index f84e5ff..37e0ea7 100644
> > --- a/drivers/pci/controller/Kconfig
> > +++ b/drivers/pci/controller/Kconfig
> > @@ -54,12 +54,13 @@ config PCI_RCAR_GEN2
> >    There are 3 internal PCI controllers available with a single
> >    built-in EHCI/OHCI host controller present on each one.
> >
> > -config PCIE_RCAR
> > -bool "Renesas R-Car PCIe controller"
> > +config PCIE_RCAR_HOST
> > +bool "Renesas R-Car PCIe host controller"
> >  depends on ARCH_RENESAS || COMPILE_TEST
> >  depends on PCI_MSI_IRQ_DOMAIN
> >  help
> > -  Say Y here if you want PCIe controller support on R-Car SoCs.
> > +  Say Y here if you want PCIe controller support on R-Car SoCs in host
> > +  mode.
> >
> >  config PCI_HOST_COMMON
> >  bool
> > diff --git a/drivers/pci/controller/Makefile
> > b/drivers/pci/controller/Makefile index 01b2502..4ca2da6 100644
> > --- a/drivers/pci/controller/Makefile
> > +++ b/drivers/pci/controller/Makefile
> > @@ -7,7 +7,7 @@ obj-$(CONFIG_PCI_MVEBU) += pci-mvebu.o
> >  obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
> >  obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
> >  obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
> > -obj-$(CONFIG_PCIE_RCAR) += pcie-rcar.o
> > +obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar-host.o
> >  obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
> >  obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
> >  obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o diff --git
> > a/drivers/pci/controller/pcie-rcar.c
> > b/drivers/pci/controller/pcie-rcar-host.c
> > similarity index 100%
> > rename from drivers/pci/controller/pcie-rcar.c
> > rename to drivers/pci/controller/pcie-rcar-host.c
> > --
> > 2.7.4



Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, 40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldorf, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WEEE reg. no.: DE 14978647

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
