Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD0D1A8F7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 02:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjRQylmff9bAzod3UC8ZEL4+LmOeYVvkQfpuBu9e+LU=; b=GGAfdOMmTI+9Bu
	EwXQ3mE3CBRKNlFVgqJZuaOdYKsYt1SfwdnzxuBzf25+JRgRyIpULxwSyfJT+kqTnPujEES7fywmk
	Cn/iGFHSfOiuuky1kwNtS+AcY+pI9n2AuM32gXwLfftawvi9CpUsXvMIC6nMNqMhoQKvT0/7Ze0pS
	LDaOE2RoHsIzBBQEuYXpN0vHulfJmtExj0EgY0FzAOhcsb1mnLQqR2xW1SHNg6aTXXFyoZjrED+Us
	0JH6/B5671B0bZdht4oS39AK3ePzJa6FYXzGc78/yGevbU8cxs+OloIEhJAGhKffUPxGyvlvaTC2z
	6M9UYF7GG6oVAC3ushSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOVe7-0000Nw-KU; Wed, 15 Apr 2020 00:11:15 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOVdw-0000MT-3N; Wed, 15 Apr 2020 00:11:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586909475; x=1618445475;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=s6ep7W/HppDBO3nHh+/ZPTIouvLBfg2YTb4NfjKh+KQ=;
 b=DMx5E1UKVgkgO5Objc5ie+xfLgxXFkJPVH6w0PlUdF4P2XGqLcqYiCQ/
 QXOE3DP5YK5roE2pt2OH60CIrNUivvBw9MWDFV6S8NxjL07AqTar05AQv
 9tgJ0Uknk3r/xkIuhx/DPkszIAzds0TuupkhSxbAoxU6bg6KkpJ2czOMd
 4LjKw87Tt+ieJWW1VXPQ8Z3jiQ0KEppkFSHqaO63ZgjJGEMjz2Yp73iC8
 n3ALYEg9sVEpsTdjQmIJa/5S14+G1HaEcLwcrc4TcrXgbidPrhtXFaDte
 KXgbQudVCZzJrFyJCozggzet95GK9sXUj/4fwoR3/DVsVvlDHvD3hfezZ g==;
IronPort-SDR: /2tkpiofbu6Kam6qVT77Tb2cr6GR6ua8KtEqv6GqngALZgg2SSXwJN/gR9uEm7gaGL5L8McMGE
 Pq0bxTkHK6x/GHe+xOBXP6T3cHotqUmaLEMg1l1TxDzs2LNtg0CD6FRbPyQfF8cndAOKMooQ3h
 V5uBwc3ldKSM0kfCdpRKu+EBpN2HV4c0IU3mAjcAHUyHu8m0PbigeraJB9vB4Fy5BYHv5pTkI2
 SWdwT4+8klpNBT2fNaFCsiae9D1pO7KgQsWvh9zdM0A29H9fFTLH0gswlpokktxPr+sOHrfq+n
 Ios=
X-IronPort-AV: E=Sophos;i="5.72,384,1580745600"; d="scan'208";a="237762944"
Received: from mail-bn8nam12lp2168.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.168])
 by ob1.hgst.iphmx.com with ESMTP; 15 Apr 2020 08:11:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mWWMWpWrqwH1ruNHaZZcz9uaUJgPR/kPIUTdhZntn6EHifuFEC+cy4y5jM6sAQ7yZhsOQFlIoovoub2mah+/xpsIIhZbRuyrbymhkQXeuqUhCUFzQWoVgbdlQUQBbKbbWOBdgvdaqar5FoXnMZErAznZ6ZPgug9oqRQGRzJoxfHQEcKz0ufmPaZdKJeTAPk6+w3dj/FQsgvDNAjU0sw6KoInhx6+q01/dV12fWvGTWtuBblH8hmjFm91yB+WqxauXOjcM/GH8cc+sM/FwvK+uHcdmy3HIZ3aQUS6DcLm7c2rRujLbTwP8Uz03/QYnXjTFJGx1rPAMwfIiphLLAu7AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s6ep7W/HppDBO3nHh+/ZPTIouvLBfg2YTb4NfjKh+KQ=;
 b=RpIIEC1gZjPSySIDe7Mdh7h2l7eM3qKDLg/L5nyQCkJ0R/UOoI3zZsaFwa9suT9XKkNgh0FNYEBNfXvW/M3AsdMHYdsze23DLryaD+27yuBzLP1oi+nDIzwJPjo+gz9lP1afR3sLQtWJx/A3pRD4vTUWJ4/1ViXkRMjlAXIYBFJmQwCyZv+mvvGh9lLCBThfU3ciYJ/2/giCikjQzquj4FvlKXQ1s8XuHrhBVYzFpGDZvpzZ0/ja6mlUz4U6xfz/7lx7KbNwivP/YoFHg3R2A0QzXWNytKosMLYKzexRQx4qc4K2QySkRLkWXa4FaH6zYSbppWEmOzbAmdnr2cPVKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s6ep7W/HppDBO3nHh+/ZPTIouvLBfg2YTb4NfjKh+KQ=;
 b=F9rH7Bwv7qkdQWQ5nZLvs1rmjGSknplJI7GI2fkE6LMqNd4/JKgf5sis3Ti/oZJTPQzplErk1LkheeTVLNSsV+Vn7TQycWXZ7cS/FE3NywlSywBvU2kn6mqZD75CLlGjsuyZuHxJEyI49/66TKWjhPLAT5E6jjarDepaSwQxjxM=
Received: from BY5PR04MB6724.namprd04.prod.outlook.com (2603:10b6:a03:219::15)
 by BY5PR04MB6977.namprd04.prod.outlook.com (2603:10b6:a03:22e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Wed, 15 Apr
 2020 00:10:54 +0000
Received: from BY5PR04MB6724.namprd04.prod.outlook.com
 ([fe80::5591:a2e7:4fad:6b0c]) by BY5PR04MB6724.namprd04.prod.outlook.com
 ([fe80::5591:a2e7:4fad:6b0c%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 00:10:54 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "ardb@kernel.org" <ardb@kernel.org>
Subject: Re: [v2 PATCH 5/5] RISC-V: Add EFI stub support.
Thread-Topic: [v2 PATCH 5/5] RISC-V: Add EFI stub support.
Thread-Index: AQHWEdqivWpOyR7aBU6t3f1dB6NUcah4PKIAgAEUT4A=
Date: Wed, 15 Apr 2020 00:10:53 +0000
Message-ID: <092b7101d0a72700435f64581e4356fe92d9ece8.camel@wdc.com>
References: <20200413212907.29244-1-atish.patra@wdc.com>
 <20200413212907.29244-6-atish.patra@wdc.com>
 <CAMj1kXEiQRORXMe4s_-iqmOefv-mbsPCtMT9ivJPvnkja+v0oQ@mail.gmail.com>
In-Reply-To: <CAMj1kXEiQRORXMe4s_-iqmOefv-mbsPCtMT9ivJPvnkja+v0oQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [98.248.240.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9cb3d845-3df5-45d3-1c8e-08d7e0d176c1
x-ms-traffictypediagnostic: BY5PR04MB6977:
x-microsoft-antispam-prvs: <BY5PR04MB6977CA5AB9A6E5D97B41AE20FADB0@BY5PR04MB6977.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0374433C81
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6724.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(39860400002)(346002)(366004)(376002)(396003)(136003)(186003)(6916009)(81156014)(26005)(71200400001)(66556008)(66946007)(478600001)(76116006)(66446008)(36756003)(64756008)(5660300002)(66476007)(30864003)(54906003)(4326008)(6506007)(8676002)(7416002)(6512007)(2616005)(6486002)(316002)(86362001)(8936002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NBJ94+71X2bOMaljTLSyRRNDPyp8gfognTGDJUhzKI8+u9AUpgTf0v2Nrr1MNCnl+BJ9IGPuxGnGe81pR6+SK5vJ3mqqvokYi6U/TlITtBq+8Da2ZLLqERRjH0nWd2vt3GsGh7Q4oHSn9DTdiwwIzJbFd6K+Cg+iJWM7uJlPVvsXn7a8XpzfPnQ6oo7jCajEKGm43d7tM6Spvxmdfa6Pz6bWyW7zZL2ZNsNHr48OEngJ+KJEnrpd06nrzaEt5ZcHjhrG77NiO7bJOBBEEWKgf6kszdzDg55z2HU4GrHgPBSmsWyX+vpxf4jAQaS2Akte+RcdO4hwPQrmTeQmfbmvusyBa0DRX5Kzt/yaU9FlGd+NinZkgXMEjuD9AM5vuZNaZKSC9vh9rKkbGJ7F89Sj1C4JDrPvZ1QiXk9lkdTzfydyUtDHx64Zl+3dW/5QQsyO
x-ms-exchange-antispam-messagedata: GSlxGTWqczS+NS9ujjOMzbKjMsnRC/Bcy83VhY8VcUG1ilzeUcFYExBs2MUxReseet5FBUXGGjPmXIfTnUUAeo3aw4xiQGlgXJ7cB8ZOCRJgf1bX7vAZB4pkv+z+8HimKwPIOn9p5YBYPkleYEtLZw==
x-ms-exchange-transport-forked: True
Content-ID: <202BFF1CAC490A458D371180EE332A7C@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cb3d845-3df5-45d3-1c8e-08d7e0d176c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2020 00:10:53.9914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lh9Lp0Z0s3cdzJgSFwjj9jan+JI/Cst7WWymD7IUx7hSjHs9EGgyo0pdiS1CI/0s8ZACVkzPunDzKxGNyedfeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6977
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_171104_320052_EC936789 
X-CRM114-Status: GOOD (  27.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>, "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-04-14 at 09:41 +0200, Ard Biesheuvel wrote:
> On Mon, 13 Apr 2020 at 23:29, Atish Patra <atish.patra@wdc.com>
> wrote:
> > Add a RISC-V architecture specific stub code that actually copies
> > the
> > actual kernel image to a valid address and jump to it after boot
> > services
> > are terminated. Enable UEFI related kernel configs as well for
> > RISC-V.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/Kconfig                        |  20 ++++
> >  arch/riscv/Makefile                       |   1 +
> >  arch/riscv/configs/defconfig              |   1 +
> >  arch/riscv/include/asm/efi.h              |  45 ++++++++
> >  drivers/firmware/efi/Kconfig              |   2 +-
> >  drivers/firmware/efi/libstub/Makefile     |   8 ++
> >  drivers/firmware/efi/libstub/riscv-stub.c | 131
> > ++++++++++++++++++++++
> >  7 files changed, 207 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/riscv/include/asm/efi.h
> >  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
> > 
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index f39e326a7a42..eb4f41c8f3ce 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -379,10 +379,30 @@ config CMDLINE_FORCE
> > 
> >  endchoice
> > 
> > +config EFI_STUB
> > +       bool
> > +
> > +config EFI
> > +       bool "UEFI runtime support"
> > +       depends on OF
> > +       select LIBFDT
> > +       select UCS2_STRING
> > +       select EFI_PARAMS_FROM_FDT
> > +       select EFI_STUB
> > +       select EFI_GENERIC_STUB
> > +       default y
> > +       help
> > +         This option provides support for runtime services
> > provided
> > +         by UEFI firmware (such as non-volatile variables,
> > realtime
> > +          clock, and platform reset). A UEFI stub is also provided
> > to
> > +         allow the kernel to be booted as an EFI application. This
> > +         is only useful on systems that have UEFI firmware.
> > +
> >  endmenu
> > 
> >  menu "Power management options"
> > 
> >  source "kernel/power/Kconfig"
> > +source "drivers/firmware/Kconfig"
> > 
> >  endmenu
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index fb6e37db836d..079435804d6d 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -80,6 +80,7 @@ head-y := arch/riscv/kernel/head.o
> >  core-y += arch/riscv/
> > 
> >  libs-y += arch/riscv/lib/
> > +core-$(CONFIG_EFI_STUB) +=
> > $(objtree)/drivers/firmware/efi/libstub/lib.a
> > 
> >  PHONY += vdso_install
> >  vdso_install:
> > diff --git a/arch/riscv/configs/defconfig
> > b/arch/riscv/configs/defconfig
> > index 4da4886246a4..ae69e12d306a 100644
> > --- a/arch/riscv/configs/defconfig
> > +++ b/arch/riscv/configs/defconfig
> > @@ -129,3 +129,4 @@ CONFIG_DEBUG_BLOCK_EXT_DEVT=y
> >  # CONFIG_RUNTIME_TESTING_MENU is not set
> >  CONFIG_MEMTEST=y
> >  # CONFIG_SYSFS_SYSCALL is not set
> > +CONFIG_EFI=y
> > diff --git a/arch/riscv/include/asm/efi.h
> > b/arch/riscv/include/asm/efi.h
> > new file mode 100644
> > index 000000000000..ba0a6d35cc15
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/efi.h
> > @@ -0,0 +1,45 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (C) 2020 Western Digital Corporation or its
> > affiliates.
> > + * Based on arch/arm64/include/asm/efi.h
> > + */
> > +#ifndef _ASM_EFI_H
> > +#define _ASM_EFI_H
> > +
> > +#include <asm/io.h>
> > +#include <asm/mmu_context.h>
> > +#include <asm/ptrace.h>
> > +#include <asm/tlbflush.h>
> > +
> > +#define VA_BITS_MIN 39
> > +
> > +/* on RISC-V, the FDT may be located anywhere in system RAM */
> > +static inline unsigned long efi_get_max_fdt_addr(unsigned long
> > dram_base)
> > +{
> > +       return ULONG_MAX;
> > +}
> > +
> > +/* Load initrd at enough distance from DRAM start */
> > +static inline unsigned long efi_get_max_initrd_addr(unsigned long
> > dram_base,
> > +                                                   unsigned long
> > image_addr)
> > +{
> > +       return dram_base + SZ_256M;
> > +}
> > +
> > +#define efi_bs_call(func, ...) efi_system_table()->boottime-
> > >func(__VA_ARGS__)
> > +#define efi_rt_call(func, ...) efi_system_table()->runtime-
> > >func(__VA_ARGS__)
> > +#define efi_is_native()                (true)
> > +
> > +#define efi_table_attr(inst, attr)     (inst->attr)
> > +
> > +#define efi_call_proto(inst, func, ...) inst->func(inst,
> > ##__VA_ARGS__)
> > +
> > +#define alloc_screen_info(x...)                (&screen_info)
> > +extern char stext_offset[];
> > +
> > +static inline void free_screen_info(struct screen_info *si)
> > +{
> > +}
> > +#define EFI_ALLOC_ALIGN                SZ_64K
> > +
> > +#endif /* _ASM_EFI_H */
> > diff --git a/drivers/firmware/efi/Kconfig
> > b/drivers/firmware/efi/Kconfig
> > index 2a2b2b96a1dc..fcdc789d3f87 100644
> > --- a/drivers/firmware/efi/Kconfig
> > +++ b/drivers/firmware/efi/Kconfig
> > @@ -111,7 +111,7 @@ config EFI_GENERIC_STUB
> > 
> >  config EFI_ARMSTUB_DTB_LOADER
> >         bool "Enable the DTB loader"
> > -       depends on EFI_GENERIC_STUB
> > +       depends on EFI_GENERIC_STUB && !RISCV
> >         default y
> >         help
> >           Select this config option to add support for the dtb=
> > command
> > diff --git a/drivers/firmware/efi/libstub/Makefile
> > b/drivers/firmware/efi/libstub/Makefile
> > index d590504541f6..b1db3a793c43 100644
> > --- a/drivers/firmware/efi/libstub/Makefile
> > +++ b/drivers/firmware/efi/libstub/Makefile
> > @@ -22,6 +22,8 @@ cflags-$(CONFIG_ARM64)                := $(subst
> > $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> >  cflags-$(CONFIG_ARM)           := $(subst
> > $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> >                                    -fno-builtin -fpic \
> >                                    $(call cc-option,-mno-single-
> > pic-base)
> > +cflags-$(CONFIG_RISCV)         := $(subst
> > $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> > +                                  -fpic
> > 
> >  cflags-$(CONFIG_EFI_GENERIC_STUB)      +=
> > -I$(srctree)/scripts/dtc/libfdt
> > 
> > @@ -56,6 +58,7 @@ lib-$(CONFIG_EFI_GENERIC_STUB)                +=
> > efi-stub.o fdt.o string.o \
> >  lib-$(CONFIG_ARM)              += arm32-stub.o
> >  lib-$(CONFIG_ARM64)            += arm64-stub.o
> >  lib-$(CONFIG_X86)              += x86-stub.o
> > +lib-$(CONFIG_RISCV)            += riscv-stub.o
> >  CFLAGS_arm32-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
> >  CFLAGS_arm64-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
> > 
> > @@ -80,6 +83,11 @@ STUBCOPY_FLAGS-$(CONFIG_ARM64)       += --
> > prefix-alloc-sections=.init \
> >                                    --prefix-symbols=__efistub_
> >  STUBCOPY_RELOC-$(CONFIG_ARM64) := R_AARCH64_ABS
> > 
> > +STUBCOPY_FLAGS-$(CONFIG_RISCV) += --prefix-alloc-sections=.init \
> > +                                  --prefix-symbols=__efistub_
> > +STUBCOPY_RELOC-$(CONFIG_RISCV) := R_RISCV_HI20
> > +
> > +
> >  $(obj)/%.stub.o: $(obj)/%.o FORCE
> >         $(call if_changed,stubcopy)
> > 
> > diff --git a/drivers/firmware/efi/libstub/riscv-stub.c
> > b/drivers/firmware/efi/libstub/riscv-stub.c
> > new file mode 100644
> > index 000000000000..acb69eae187a
> > --- /dev/null
> > +++ b/drivers/firmware/efi/libstub/riscv-stub.c
> > @@ -0,0 +1,131 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2013, 2014 Linaro Ltd;  <roy.franz@linaro.org>
> > + * Copyright (C) 2020 Western Digital Corporation or its
> > affiliates.
> > + *
> > + * This file implements the EFI boot stub for the RISC-V kernel.
> > + * Adapted from ARM64 version at
> > drivers/firmware/efi/libstub/arm64-stub.c.
> > + */
> > +
> > +#include <linux/efi.h>
> > +#include <linux/libfdt.h>
> > +#include <linux/libfdt_env.h>
> > +#include <asm/efi.h>
> > +#include <asm/sections.h>
> > +
> > +#include "efistub.h"
> > +/*
> > + * RISCV requires the kernel image to placed TEXT_OFFSET bytes
> > beyond a 2 MB
> > + * aligned base for 64 bit and 4MB for 32 bit.
> > + */
> > +#ifdef CONFIG_64BIT
> > +#define MIN_KIMG_ALIGN SZ_2M
> > +#else
> > +#define MIN_KIMG_ALIGN SZ_4M
> > +#endif
> > +/*
> > + * TEXT_OFFSET ensures that we don't overwrite the firmware that
> > probably sits
> > + * at the beginning of the DRAM.
> > + */
> > +#define TEXT_OFFSET MIN_KIMG_ALIGN
> > +
> 
> Again, this is not the right approach. If there are any allocations
> in
> memory that EFI cannot touch, you have to mark them as reserved in
> the
> EFI memory map. Otherwise, anything running in the EFI context (GRUB,
> systemd-boot, shim, etc) could step on it, not just the kernel.
> 

Correct. That's why I added the U-Boot series which takes care of
modifying the DT to add the reserved memory regions. With those
changes, any memory marked reserved by the firmware will be marked
reserved in the EFI memory map. The proper kernel will
also never map those memory regions if "nomap" is set.

To be honest, I forgot to remove the TEXT_OFFSET in this series. I
have removed it in the next version.

> > +typedef __attribute__((noreturn)) void
> > (*jump_kernel_func)(unsigned int,
> > +                                                          unsigned
> > long);
> > +efi_status_t check_platform_features(void)
> > +{
> > +       return EFI_SUCCESS;
> > +}
> > +
> > +static u32 get_boot_hartid_from_fdt(unsigned long fdt)
> > +{
> > +       int chosen_node, len;
> > +       const fdt32_t *prop;
> > +
> > +       chosen_node = fdt_path_offset((void *)fdt, "/chosen");
> > +       if (chosen_node < 0)
> > +               return U32_MAX;
> > +       prop = fdt_getprop((void *)fdt, chosen_node, "boot-hartid", 
> > &len);
> > +       if (!prop || len != sizeof(u32))
> > +               return U32_MAX;
> > +
> > +       return fdt32_to_cpu(*prop);
> > +}
> > +
> > +/*
> > + * Jump to real kernel here with following constraints.
> > + * 1. MMU should be disabled.
> > + * 2. a0 should contain hartid
> > + * 3. a1 should DT address
> > + */
> > +void __noreturn efi_enter_kernel(unsigned long entrypoint,
> > unsigned long fdt,
> > +                                unsigned long fdt_size)
> > +{
> > +       unsigned long kernel_entry = entrypoint + (unsigned
> > long)stext_offset;
> > +       jump_kernel_func jump_kernel = (void (*)(unsigned int,
> > unsigned long))kernel_entry;
> > +       u32 hartid = get_boot_hartid_from_fdt(fdt);
> > +
> > +       if (hartid == U32_MAX)
> > +               /* We can not use panic or BUG at this point */
> > +               __asm__ __volatile__ ("ebreak");
> > +       /* Disable MMU */
> > +       csr_write(CSR_SATP, 0);
> > +       jump_kernel(hartid, fdt);
> > +}
> > +
> > +efi_status_t handle_kernel_image(unsigned long *image_addr,
> > +                                unsigned long *image_size,
> > +                                unsigned long *reserve_addr,
> > +                                unsigned long *reserve_size,
> > +                                unsigned long dram_base,
> > +                                efi_loaded_image_t *image)
> > +{
> > +       efi_status_t status;
> > +       unsigned long kernel_size, kernel_memsize = 0;
> > +       unsigned long preferred_offset;
> > +
> > +       /*
> > +        * The preferred offset of the kernel Image is TEXT_OFFSET
> > bytes beyond
> > +        * a KIMG_ALIGN aligned base.
> 
> MIN_KIMG_ALIGN
> 
> > +        */
> > +       preferred_offset = round_up(dram_base, MIN_KIMG_ALIGN) +
> > TEXT_OFFSET;
> > +
> > +       kernel_size = _edata - _start;
> > +       kernel_memsize = kernel_size + (_end - _edata);
> > +
> > +       /*
> > +        * Try a straight allocation at the preferred offset. It
> > will also
> > +        * ensure that, on platforms where the [dram_base,
> > dram_base + TEXT_OFFSET)
> > +        * interval is partially occupied by the firmware we can
> > still place
> > +        * the kernel at the address 'dram_base + TEXT_OFFSET'. If
> > the straight
> > +        * allocation fails, efi_low_alloc tries allocate memory
> > from the lowest
> > +        * available LOADER_DATA mapped memory as long as address
> > and size meet
> > +        * the alignment constraints.
> > +        */
> > +       if (*image_addr == preferred_offset)
> > +               return EFI_SUCCESS;
> > +
> > +       *image_addr = *reserve_addr = preferred_offset;
> > +       *reserve_size = round_up(kernel_memsize, EFI_ALLOC_ALIGN);
> > +
> > +       status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
> > +                               EFI_LOADER_DATA,
> > +                               *reserve_size / EFI_PAGE_SIZE,
> > +                               (efi_physical_addr_t
> > *)reserve_addr);
> > +
> > +       if (status != EFI_SUCCESS) {
> > +               pr_efi("straight allocation failed do a low
> > alloc\n");
> > +               *reserve_size = kernel_memsize + TEXT_OFFSET;
> > +               status = efi_low_alloc(*reserve_size,
> > MIN_KIMG_ALIGN,
> > +                                      reserve_addr);
> > +
> 
> So, instead of the above, could we simply allocate kernel_memsize
> bytes using efi_allocate_pages(), with the max address set to
> 'round_up(dram_base, MIN_KIMG_ALIGN) + kernel_memsize + TEXT_OFFSET -
> 1'? This should work in the majority of cases, and not trample on the
> TEXT_OFFSET bytes at the start, regardless of whether they are
> reserved or not.
> 

As per my understanding, efi_allocate_pages aligns as per
EFI_ALLOC_ALIGN. But the kernel needs to be placed at a memory aligned
to MIN_KIMG_ALIGN. That's why efi_allocate_pages may not work.

> In the future, I imagine you may want to relax the requirements
> regarding the physical placement of the kernel, in which case you can
> start falling back to a suitably aligned allocation anywhere in
> memory.
> 
> 
> 
> > +               if (status != EFI_SUCCESS) {
> > +                       pr_efi_err("Failed to relocate kernel\n");
> > +                       *reserve_size = 0;
> > +                       return status;
> > +               }
> > +               *image_addr = *reserve_addr + TEXT_OFFSET;
> > +       }
> > +       memcpy((void *)*image_addr, image->image_base,
> > kernel_size);
> > +
> > +       return EFI_SUCCESS;
> > +}
> > --
> > 2.24.0
> > 

Actually, we don't have any kernel placement restriction other than
2MB/4MB alignment.
(considering that firmware now marks all the reserved memory in DT).

Can we just use efi_allocate_pages_aligned similar to arm64 ? It seems
to work during my testing. But I wanted to make sure that I didn't
misunderstand anything.

-- 
Regards,
Atish
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
