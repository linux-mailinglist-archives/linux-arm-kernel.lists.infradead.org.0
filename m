Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3ED187A19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 07:59:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pp6Hw4yiz8ctUHPRJ0MpNWTBHaABETfj5RNGhNeFPjg=; b=j967QUuhXmZySw
	M7I8ZdgtlurHjjuo/ZtRuLzvWYagkCFCjGP08kLWyFZFu3Q73zXqhNwKe1xITcX6dhbaLTuu1Z32o
	YBT+eztwkSrRQmIj5KxF0D0N7r+t8sJpLUsDM96F2dVA0podX/t4kU3cBUbP2yhi6jugzhh8Xellc
	cJ7JPd849ALmysgp74JvTx2jK10qeSxJlJXou3Z1j3MFv7c8UuJgEVF7m7c6J4o0COVtaYCG54EJv
	SmIoVQvy8l/fdK97aHgHAusXI0UYqfit8owx/DymsSJl5farJ25eR0VohJXQN2yZ7K87BEHrZNA2/
	Utu0VzmPHVfuna3T7yaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE6CR-0007KL-TX; Tue, 17 Mar 2020 06:59:39 +0000
Received: from mail-eopbgr1400128.outbound.protection.outlook.com
 ([40.107.140.128] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE6CI-0007Jj-ON; Tue, 17 Mar 2020 06:59:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S+f+WDnSpMXdh2HyiGWGsfj+RocSy08aznAMfXJHZTae/qme0sugB2gFljGghtAvkvopGBnw+UZLpUntbb0zmM1ortreDmBvCN69TfmUKMe6ThkFCcn3QASrARSjHd2Mg7R1mEM7MTkFn1GSIVLNozyBlNUiwYAFKonoCihsN1vpQvyrsVRtjH0Ce0GXaMqk8AatoxP5PbR6bbhN3BUyVe1L8iAJC5SVlmhIrbs5A1bGxl4mMRQ7wAtbX+t2t+VRUP3mJD1hJIeBOrmuWAM292TBvCqPv9S0B0loo7sG6h5cenlRLs+apjFCvAjqS9lmCsjhtDR3BU6nmjLdKuYtuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bvgBaiYMFl65vwB9pUqq2lPz6PHp29Rl9ZCxeQoChxU=;
 b=f7kITLagq1uEE4O4kI805DCcWDT4bPUCj7GxMLG1VpXqLla3a3SpwHjg5t4nm9bYbNWKBI5iTdJonA3a4xAzrj3Z30YNfrZeZp9OsNHJATFj0s9cvyPpKyYxVpQNvbiajc0LlU+po5u2xPac2rCjb5SiTUiw5BOii8dTH4Vt4eQG+FS5hSvnP55gNfkG3lV71UwW5azyROtVtwMug7vbslG+kZ6VNEmwi2Ld+2FlO3nqLavOAEAjel5g6AhYpxyknR+JXYkS9UwEmWvLyqG0UaZGMHgIApX/V/WX6xAlTz0lUaQ4qPDcvRY1+yTq7WXyDsmnl33IFcxrcpc29jXWYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bvgBaiYMFl65vwB9pUqq2lPz6PHp29Rl9ZCxeQoChxU=;
 b=rf0qVzXBJJTkrMcLzSMyVKslXcC+/VTMQhcXj0/l3UyU3znzQ6m0rwsyVMp3R0/M6OXeKcpsFUa+3hv5tOvk9hE9EZKskDUthSe1zelOkY2LKiRYj448I4dpJOyim9Ysm7iZN6Zj2+jYurKUwRF+29w9gDKeR5oPJPHy3ZqyjAI=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB2271.jpnprd01.prod.outlook.com (52.133.177.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Tue, 17 Mar 2020 06:59:27 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 06:59:26 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 1/7] PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
Thread-Topic: [PATCH v5 1/7] PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
Thread-Index: AQHV7k2WVIVkhQSkg0uFpKD+VtIGFahMctrQ
Date: Tue, 17 Mar 2020 06:59:26 +0000
Message-ID: <TYAPR01MB4544CBB9CD07CAF55D7D3845D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20200228154122.14164-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 67a28bf4-cb8a-4cc7-c1e4-08d7ca40bb89
x-ms-traffictypediagnostic: TYAPR01MB2271:|TYAPR01MB2271:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB22715B73A1D612DC16835B5BD8F60@TYAPR01MB2271.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(396003)(136003)(39860400002)(366004)(376002)(199004)(8936002)(81166006)(8676002)(81156014)(33656002)(2906002)(86362001)(7416002)(478600001)(6916009)(55236004)(5660300002)(316002)(6506007)(54906003)(7696005)(66946007)(52536014)(71200400001)(66446008)(66556008)(64756008)(66476007)(76116006)(186003)(4326008)(107886003)(26005)(9686003)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB2271;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rbGSTNjEH0FVbOC7gK8csi0H0+rctePEOQAAJcOkLbYyQNdlTsvHhbouYb+FXCXeLDTJetCFqdD4mwsP32lZ3mlpP+0UiERdR28pQ4iONdOazgdzAhc6smaUeq2t8vdh0/Fj2TJzIvJ+H4uh9yzrPYJPkSEt32a918qWYIUAnpMpDM1ICP+kNMS1J5O7yuGuQ1+BcpzOc0Ou3AL3oUO+Oa43PGXIvDQ6tV3MWSRtKZRFWCzdzh72bU9trLRqVCXwO1V3y1/uoZKNtY94AlDVmpvwpks+Yq0+e0GkW8FFSmm0U8yllTFVp3jgBiG4Ob/+6rO1SRtiQzITpHC0cl1XTJCs2apwkc35o0lKkiyY7EljyCPbnktWSpxO41b5TBwPULgAm7fVq6Ma3gadlzitokLIewdr/cr9ClbVDUOI78UjbPfdoCfQxzGMLsDYuari
x-ms-exchange-antispam-messagedata: tK/Ev2ARZR9LoKUufpPKieQM4f7zRapAXzfdqzbzU8mf4X6kNPWxn0o9zLXCgZTNoT43lu9ZijxYXcBRCj+DCYt+CIXQ9G1QBd4xgbQdkeoGPiu5bS6LaiRVmqlzW7zYIw9o0OQ5RoPddCyIiYYk+A==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67a28bf4-cb8a-4cc7-c1e4-08d7ca40bb89
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 06:59:26.7500 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UDbEkOriX71qBSGDakZGlMIrNusMpgrTvwm/M2+uBfPV1NrCQ48n+qk3j6J4dmgnjK+EweteNHojyx3SlCIc1Wv3xIasjnlmAzL+6K9bsyWns4zcZ3jhr/dJ7F0jDFz6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_235930_838379_88F96DCD 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.128 listed in list.dnswl.org]
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
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar-san,

Thank you for the patch!

> From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM

Since your email account is different with the Singed-off-by,
I think you should add your From: tag here like your v2 patch series.

> This commit renames pcie-rcar.c to pcie-rcar-host.c in preparation for
> adding support for endpoint mode. CONFIG_PCIE_RCAR is also renamed to
> CONFIG_PCIE_RCAR_HOST to match the driver name accordingly.
> 
> In addition to this defconfig file has also been updated to match the new
> config option.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  arch/arm64/configs/defconfig                             | 2 +-
>  drivers/pci/controller/Kconfig                           | 7 ++++---
>  drivers/pci/controller/Makefile                          | 2 +-
>  drivers/pci/controller/{pcie-rcar.c => pcie-rcar-host.c} | 0
>  4 files changed, 6 insertions(+), 5 deletions(-)
>  rename drivers/pci/controller/{pcie-rcar.c => pcie-rcar-host.c} (100%)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0f21288..7a34fce 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -185,7 +185,7 @@ CONFIG_HOTPLUG_PCI=y
>  CONFIG_HOTPLUG_PCI_ACPI=y
>  CONFIG_PCI_AARDVARK=y
>  CONFIG_PCI_TEGRA=y
> -CONFIG_PCIE_RCAR=y
> +CONFIG_PCIE_RCAR_HOST=y

I think you should separate this change.
To avoid this, I have an idea in the Kconfig like below:
 - adding PCIE_RCAR_HOST.
 - keeping PCIE_RCAR and select PCIE_RCAR_HOST here.
 - adding a description in the help of PCIE_RCAR like "This will be removed after defconfig is updated" is better.

The following is a sample. What do you think?
---
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -58,8 +58,18 @@ config PCIE_RCAR
 	bool "Renesas R-Car PCIe controller"
 	depends on ARCH_RENESAS || COMPILE_TEST
 	depends on PCI_MSI_IRQ_DOMAIN
+	select PCIE_RCAR_HOST
 	help
 	  Say Y here if you want PCIe controller support on R-Car SoCs.
+	  This will be removed after defconfig is updated.
+
+config PCIE_RCAR_HOST
+	bool "Renesas R-Car PCIe host controller"
+	depends on ARCH_RENESAS || COMPILE_TEST
+	depends on PCI_MSI_IRQ_DOMAIN
+	help
+	  Say Y here if you want PCIe controller support on R-Car SoCs in host
+	  mode.
 
 config PCI_HOST_COMMON
 	bool
---

Best regards,
Yoshihiro Shimoda

>  CONFIG_PCI_HOST_GENERIC=y
>  CONFIG_PCI_XGENE=y
>  CONFIG_PCIE_ALTERA=y
> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> index f84e5ff..37e0ea7 100644
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -54,12 +54,13 @@ config PCI_RCAR_GEN2
>  	  There are 3 internal PCI controllers available with a single
>  	  built-in EHCI/OHCI host controller present on each one.
> 
> -config PCIE_RCAR
> -	bool "Renesas R-Car PCIe controller"
> +config PCIE_RCAR_HOST
> +	bool "Renesas R-Car PCIe host controller"
>  	depends on ARCH_RENESAS || COMPILE_TEST
>  	depends on PCI_MSI_IRQ_DOMAIN
>  	help
> -	  Say Y here if you want PCIe controller support on R-Car SoCs.
> +	  Say Y here if you want PCIe controller support on R-Car SoCs in host
> +	  mode.
> 
>  config PCI_HOST_COMMON
>  	bool
> diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
> index 01b2502..4ca2da6 100644
> --- a/drivers/pci/controller/Makefile
> +++ b/drivers/pci/controller/Makefile
> @@ -7,7 +7,7 @@ obj-$(CONFIG_PCI_MVEBU) += pci-mvebu.o
>  obj-$(CONFIG_PCI_AARDVARK) += pci-aardvark.o
>  obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
>  obj-$(CONFIG_PCI_RCAR_GEN2) += pci-rcar-gen2.o
> -obj-$(CONFIG_PCIE_RCAR) += pcie-rcar.o
> +obj-$(CONFIG_PCIE_RCAR_HOST) += pcie-rcar-host.o
>  obj-$(CONFIG_PCI_HOST_COMMON) += pci-host-common.o
>  obj-$(CONFIG_PCI_HOST_GENERIC) += pci-host-generic.o
>  obj-$(CONFIG_PCIE_XILINX) += pcie-xilinx.o
> diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar-host.c
> similarity index 100%
> rename from drivers/pci/controller/pcie-rcar.c
> rename to drivers/pci/controller/pcie-rcar-host.c
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
