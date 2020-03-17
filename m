Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 210AF187DF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EAuQ22seYKEob6FP2XW1zd5kH6/VP0Jlc5JsvjqUnM=; b=Ffj+QgE5s/ikmR
	02sztpyknt7PB2yEAUR78e4m3bkGq+sO1XK2am2u6e235ysoI2JcWc+JOAvumx9fRX+Mopn7ISRs7
	KUXs5sCes1ZCdd5jov0hRdDMIEYXIWtcEvRhMDnbTSOO3lbATDeRwl515UfoHySaAjNsnj2SziJVg
	l5EKNKVdXsFdeEroJWZkkGiCCg5og2FLArNQROaWru+x7psqaCkBfl+/jzc4eMi0JgpMVmAG3EpAD
	A1PLCfLKofmWifvKFM7dPi+nfbZF1jtfwlMftUnVAb1FJ81h21LYmuv6cvotffRqivy/5tZJSxjGF
	WS3VWWEYpw1Y0//Z3LUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9Fn-0002xE-Ds; Tue, 17 Mar 2020 10:15:19 +0000
Received: from mail-eopbgr1410139.outbound.protection.outlook.com
 ([40.107.141.139] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9FV-0001hz-Ix; Tue, 17 Mar 2020 10:15:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LMny3N0+KVqDHu+pEhVH+k5i/aAlrpB/09j6XbdlGomOcIL8qVqRZeadSjRmrIKA2kHoJCl2YdwHJrpYwzOvqm/sewnAdcxY+ikDNAEhAxsxycvTYbQZ6+PvVFsqqDGhg5xdfPzXq6l0eWCRoyMVBFg4oBq0S7YQaKqh74om5dFf8SGr8fwxeyo82G13FenDjftyV2Bb7KMHT5sppbXScWB8zfoyB/wHJ5qefR7MR39s/UHGUT0TWVek3Jpo5IybrfR8VDw+04EOwIzlpNC2Sqv7qxiDW21RLAEzcDV5KsjZ6lm71YredQXBvMMhF3GKEARlmxu1/N9BAyIydsy1kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2XmtuWXdmw92wQOC5V0vBeshHzT80BFMkZUKPPttbE0=;
 b=Wj1hccD9vbuSsxeuCQ4XLGdUD421JHOuB+aN6ZIw6VtUv5EUO0Xb7BIJOGQSsN12gjbK1+cE7tfduunVP5Tcx51lfkdavUyHGwWgIqvpoHHnHhLW2D+Pqm+UdOL4nBjc7oPLG9IIvFUppFoGvLmaMRFYxwem4gxQZaRiWFvZJ1isoAPNAOtSaVB8Sh0fVCaK5o70eo0/IjlTO7ljxy3/RYrGi7objmXgTbV0q0ii75qtkC+cMHQjdeSVhtabEELiXpOAo0MWCN7DwH3Ap4h8j26D8+rdzo3+8L5MTihlEPIQLWoMLm6P+DknD4GyfdKzw8wrIMOIgZ/cHZQMkd6MTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2XmtuWXdmw92wQOC5V0vBeshHzT80BFMkZUKPPttbE0=;
 b=l4ZfgNHpcb2YHFLTb79BoA801cIn2dbSg1FsJEWTROxIFT6S0CDVJkg8ZQBvquPJZW86bX1K0kkZl7V6kVj3n50GmA440MgYcbkMwqvz3911Ft7bgW65SnwJzwFhBVmFvukqfy7Mhk7BoSVS+zwJ6ImWfiwEnVhGY3H9SHg84Zw=
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com (20.178.97.80) by
 OSBPR01MB2454.jpnprd01.prod.outlook.com (52.134.253.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Tue, 17 Mar 2020 10:14:40 +0000
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::490:aa83:2d09:3a0b]) by OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::490:aa83:2d09:3a0b%5]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 10:14:40 +0000
From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Lad Prabhakar
 <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 6/7] PCI: rcar: Add support for rcar PCIe controller in
 endpoint mode
Thread-Topic: [PATCH v5 6/7] PCI: rcar: Add support for rcar PCIe controller
 in endpoint mode
Thread-Index: AQHV7k2o26WkjnS8fk2KjcbLYSuAj6hMqNeAgAABMfA=
Date: Tue, 17 Mar 2020 10:14:39 +0000
Message-ID: <OSBPR01MB3590B241F5BBC991DE6ABED2AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB4544EAC877ADD0664CB93FF5D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB4544EAC877ADD0664CB93FF5D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=prabhakar.mahadev-lad.rj@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 17704d6a-1d79-4b15-b3e0-08d7ca5c012f
x-ms-traffictypediagnostic: OSBPR01MB2454:|OSBPR01MB2454:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB2454E859201518F88A24A03AAAF60@OSBPR01MB2454.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(376002)(39860400002)(346002)(366004)(199004)(316002)(110136005)(54906003)(2906002)(76116006)(4326008)(5660300002)(52536014)(33656002)(7416002)(66946007)(66476007)(64756008)(66446008)(8676002)(86362001)(7696005)(26005)(66556008)(186003)(71200400001)(8936002)(53546011)(81156014)(6506007)(478600001)(9686003)(81166006)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB2454;
 H:OSBPR01MB3590.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KvUeP7XuG7nYNxUow8LB5GXbXo9FDhsBKRNQcwwPGK45t3GPvkFyKMFcsn2VPRmxtIeRue2lSo8jxqS96jEOTWeQUCym5/L3E8uNptUAT2RBPkGCJpgiQKuK0qtonbXJ+4gj+57fWhCVL1rk9LqFN985t+wFWdxqPf7gSAVtzMe6PYLFl3f03/+0GYUc3ZVBHl1BkW9p/+7Sp3NtBQnkS5da1HnsichhsEIhFfkT0FVtHc1R3XSWEl/YhlDTB52U3qI4/WnKeeRyrRs5vgTy5xvA9fcJK7eb0bGpO6WapxTfNknb9E5PhmdbPUjxYX8S/jFkgyiU10UNvGx2StQgSqUSWzx8085sFEmhY5gGVEqTnMuoqmcC4BOfjVt/LFL0a2jQBB7V7W2FJFzk0Ay8v4RjkwPEdJGccbCJxCxhosaAEK8RivSJoR3tV47BSLOo
x-ms-exchange-antispam-messagedata: 3PVgGe28oOVoyc1aWEX4gERuJpyO85sfo4L4uFkvZbwKYCaXIRdrGaYsDE4gnjst6yEa198kgCQW6Ju5mCHal4aoPd0+xTUaU+xaVvKgmvTSmqrbvPpUnNzSAQLTNf3NrCg4h/HGK25QO4ZpXoWWGQ==
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17704d6a-1d79-4b15-b3e0-08d7ca5c012f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 10:14:39.9771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j3vx+jtYPdzxrQAricawLILMFkEfQoOp0Fx/854yX8l6DqluH7KaYI83w1bwH9c6/sApaZvGB8RIL8YbsohMnsHxS0r05Yny77jZ7c7SnDRp97qkaGiNAKupYn5S5Vbu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB2454
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_031511_126748_945132C3 
X-CRM114-Status: GOOD (  31.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.139 listed in list.dnswl.org]
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

Hi Yoshihiro-san,

Thank you for the review,

> -----Original Message-----
> From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Sent: 17 March 2020 09:59
> To: Lad Prabhakar <prabhakar.csengg@gmail.com>
> Cc: Andrew Murray <andrew.murray@arm.com>; linux-pci@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-renesas-soc@vger.kernel.org;
> linux-rockchip@lists.infradead.org; linux-kernel@vger.kernel.org;
> devicetree@vger.kernel.org; Prabhakar Mahadev Lad <prabhakar.mahadev-
> lad.rj@bp.renesas.com>; Bjorn Helgaas <bhelgaas@google.com>; Rob
> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> Catalin Marinas <catalin.marinas@arm.com>; Will Deacon <will@kernel.org>;
> Kishon Vijay Abraham I <kishon@ti.com>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Arnd Bergmann <arnd@arndb.de>; Greg
> Kroah-Hartman <gregkh@linuxfoundation.org>; Jingoo Han
> <jingoohan1@gmail.com>; Gustavo Pimentel
> <gustavo.pimentel@synopsys.com>; Marek Vasut
> <marek.vasut+renesas@gmail.com>; Shawn Lin <shawn.lin@rock-
> chips.com>; Heiko Stuebner <heiko@sntech.de>
> Subject: RE: [PATCH v5 6/7] PCI: rcar: Add support for rcar PCIe controller in
> endpoint mode
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
>
> > From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
> >
> > This patch adds support for rcar PCIe controller to work in endpoint mode.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> lad.rj@bp.renesas.com>
> > ---
> >  drivers/pci/controller/Kconfig        |   8 +
> >  drivers/pci/controller/Makefile       |   1 +
> >  drivers/pci/controller/pcie-rcar-ep.c | 490
> ++++++++++++++++++++++++++++++++++
> >  drivers/pci/controller/pcie-rcar.h    |   4 +
> >  4 files changed, 503 insertions(+)
> >  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> >
> > diff --git a/drivers/pci/controller/Kconfig
> > b/drivers/pci/controller/Kconfig index 37e0ea7..9bf4b02 100644
> > --- a/drivers/pci/controller/Kconfig
> > +++ b/drivers/pci/controller/Kconfig
> > @@ -62,6 +62,14 @@ config PCIE_RCAR_HOST
> >    Say Y here if you want PCIe controller support on R-Car SoCs in host
> >    mode.
> >
> > +config PCIE_RCAR_EP
> > +bool "Renesas R-Car PCIe endpoint controller"
> > +depends on ARCH_RENESAS || COMPILE_TEST
> > +depends on PCI_ENDPOINT
> > +help
> > +  Say Y here if you want PCIe controller support on R-Car SoCs in
> > +  endpoint mode.
> > +
> >  config PCI_HOST_COMMON
> >  bool
> >  select PCI_ECAM
> > diff --git a/drivers/pci/controller/Makefile
> > b/drivers/pci/controller/Makefile index b4ada32..067bd33 100644
> > --- a/drivers/pci/controller/Makefile
> > +++ b/drivers/pci/controller/Makefile
> > @@ -8,6 +8,7 @@ obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
> >  obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
> >  obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
> >  obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar.o pcie-rcar-host.o
> > +obj-$(CONFIG_PCIE_RCAR_EP) += pcie-rcar.o pcie-rcar-ep.o
> >  obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
> >  obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
> >  obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o diff --git
> > a/drivers/pci/controller/pcie-rcar-ep.c
> > b/drivers/pci/controller/pcie-rcar-ep.c
> > new file mode 100644
> > index 0000000..db89bbe
> > --- /dev/null
> > +++ b/drivers/pci/controller/pcie-rcar-ep.c
> > @@ -0,0 +1,490 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * PCIe endpoint driver for Renesas R-Car SoCs
> > + *  Copyright (c) 2020 Renesas Electronics Europe GmbH
> > + *
> > + * Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
> > +#include <linux/of_address.h>
> > +#include <linux/of_irq.h>
> > +#include <linux/of_pci.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/pci.h>
> > +#include <linux/pci-epc.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/platform_device.h>
> > +
> > +#include "pcie-rcar.h"
> > +
> > +/* Structure representing the PCIe interface */ struct rcar_pcie {
> > +phys_addr_t*ob_addr;
>
> I think "ob_mapped_addr" is better.
>
OK will rename that.

> > +struct pci_epc_mem_window *ob_window;
>
> I think we can get these windows from "array of address space of the
> endpoint controller" in struct pci_epc. If so, we can remove this member.
>
I shall see if this can be dropped.

> > +struct pci_epc*epc;
>
> This member can be removed like pcie-cadence-ep.c because this is not used
> except saving the epc value from devm_pci_epc_create().
>
OK will drop it.

> <snip>
> > +static int rcar_pcie_ep_start(struct pci_epc *epc) {
> > +struct rcar_pcie *ep = epc_get_drvdata(epc);
> > +
> > +rcar_pci_write_reg(ep->base, CFINIT, PCIETCTLR);
>
> The following setting is needed before CFINIT like host.
>
> rcar_pci_write_reg(pcie->base, MACCTLR_INIT_VAL, MACCTLR);
>
I shall add this as part of rcar_pcie_ep_hw_init()

> > +
> > +return 0;
> > +}
> > +
> > +static void rcar_pcie_ep_stop(struct pci_epc *epc) {
> > +struct rcar_pcie *ep = epc_get_drvdata(epc);
> > +
> > +rcar_pci_write_reg(ep->base, 0, PCIETCTLR); }
> > +
> > +static const struct pci_epc_features rcar_pcie_epc_features = {
> > +.linkup_notifier = false,
> > +.msi_capable = false,
> > +.msix_capable = false,
> > +/* use 64-bit bars so mark bar1/3/5 as reserved */
> > +.reserved_bar = 1 << BAR_1 | 1 << BAR_3 | 1 << BAR_5,
> > +.bar_fixed_64bit =  (1 << BAR_0) | (1 << BAR_2) | (1 << BAR_4),
>
> These parentheses are not needed like .reserved_bar.
>
Agreed.

> <snip>
> > +err = pci_epc_mem_init(epc, pcie->ob_window, pcie-
> >num_ob_windows);
> > +if (err < 0) {
> > +dev_err(dev, "failed to initialize the epc memory space\n");
> > +goto err_pm_put;
> > +}
> > +
> > +rcar_pcie_ep_hw_init(pcie);
>
> I'm not sure, but I wonder if we should call this hw init before
> pci_epc_mem_init().
>
Ideally shouldn't matter because in pci_epc_mem_init(), we just tell the framework
our windows properties.  But shall move hw_init() before mem_init().

> <snip>
> > +builtin_platform_driver(rcar_pcie_ep_driver);
> > diff --git a/drivers/pci/controller/pcie-rcar.h
> > b/drivers/pci/controller/pcie-rcar.h
> > index b529d806..5564ca8 100644
> > --- a/drivers/pci/controller/pcie-rcar.h
> > +++ b/drivers/pci/controller/pcie-rcar.h
> > @@ -17,6 +17,7 @@
> >  #define PCIECDR0x000020
> >  #define PCIEMSR0x000028
> >  #define PCIEINTXR0x000400
> > +#define  ASTINTX_SHIFTBIT(16)
>
> Just "ASTINTX" is better.
>
Shall replace it.

> >  #define PCIEPHYSR0x0007f0
> >  #define  PHYRDYBIT(0)
> >  #define PCIEMSITXR0x000840
> > @@ -55,12 +56,15 @@
> >
> >  /* Configuration */
> >  #define PCICONF(x)(0x010000 + ((x) * 0x4))
> > +#define  INTDIS_SHIFTBIT(10)
>
> Same here (we can remove "_SHIFT").
>
OK.

Cheers,
--Prabhakar

> Best regards,
> Yoshihiro Shimoda
>
> >  #define PMCAP(x)(0x010040 + ((x) * 0x4))
> >  #define EXPCAP(x)(0x010070 + ((x) * 0x4))
> >  #define VCCAP(x)(0x010100 + ((x) * 0x4))
> >
> >  /* link layer */
> > +#define IDSETR00x011000
> >  #define IDSETR10x011004
> > +#define SUBIDSETR0x011024
> >  #define TLCTLR0x011048
> >  #define MACSR0x011054
> >  #define  SPCHGFINBIT(4)
> > --
> > 2.7.4



Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, 40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldorf, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WEEE reg. no.: DE 14978647

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
