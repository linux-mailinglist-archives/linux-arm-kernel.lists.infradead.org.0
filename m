Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A919210A05B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 15:34:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kl7QTFSEadJInozpUvfjVaGEOioKn+fCJMY8Vzal610=; b=JTP4J+v2r4UeAC
	d+sf0JNjBmQB3nrVFe/2kEQtovnAwPUIzPghwwyqci6RxRkxcRLV18OmpNyxFj4nd51lgutHkG/n+
	HWJq5cswYOiAcUnmScPqcQ8bmX3jp/yEV98IsIsGdMiMXQChGyGsi8zNfqcbb7dWAnKAjfYFQciVB
	U+50p5oMl5O/D47SCHE09lZboaYL0XRbw/xcnyVmIGGcIM/LrE6WxoKp/+DSNazi/wiT24eTW6R6H
	5YKDbTgwWCOJ+0++AhFUwv3etj1nrBQV2GlvgIUKdLkTCEtovmc0EjxY1DJYQQKXBlnTL2xPCG4tC
	4GPQfUe/O6iX1ekN/DSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZbuw-0005yT-MS; Tue, 26 Nov 2019 14:34:14 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZbub-0005RI-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 14:33:56 +0000
Received: by mail-oi1-x241.google.com with SMTP id l20so16801708oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 06:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6Ke9S+LOVhCSYY/a2D7Vlzb4JuZDRi+EFqSopQYxhvo=;
 b=nj3w38bZg0AIusIt49/mQa4MqrbC8q2I1Gu83u5RhH7p+9zwD+Obg3mc8Ug/E3RIb/
 +OpcBhlBKwiMWWTUHfcBQZyeyJz/QqfNgm/pXQV5UjZAycKx19JMKo1IcGDqKLKpF6bB
 No4+dTgPNLBOUdswSF4JHl4Dco+G6DFR8+iujV3/usRywxvytpKcvu7kIqJoKLvNd29Z
 Yi8AevjDxVXldLY7R688l+AMMCXFEMYWdSEr/v/cJg5qcQnIrNOGWI2F/Fm8A+qDaACI
 ixM6YFWfxrFm2YmbDY5ct9hWCQlaGsMP5kzcnfllU6KHNE9RUkUrY0KoD6Qlxu31qLVC
 zO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6Ke9S+LOVhCSYY/a2D7Vlzb4JuZDRi+EFqSopQYxhvo=;
 b=RnsO8kTjj1NtCk0SqPYVJSQbDFpYpuF/LXBzjpFIZykpho79Rboj99qGMv8mhnYyjD
 EZ5e1KLhJl34k7OVXv3Z7fFZEULoyCy7LadlwZkTWpQHwejxIkxLvfvJ+e2Gv3K6t47a
 ABMKftAlftsPg3Xa/9VuV9IDw2yLp3yl2p/nAqyVMTcVJkGHgrjhDrwqLwVsZbiBjbN6
 MDAbsNhVrvF77UO5YwdDUKukV8sId8jOaaiEFZWKydO0t4037IjatsiT1XDUBVp+8WuH
 IB59JsbUv0sCinA06iLmzKH5Ef8KJoltyqIBx9NjLoKMc0ht/iYdTmAk+5E6BqlzHQBL
 BusQ==
X-Gm-Message-State: APjAAAXgt/MNC/Sd3qt/LDCClYtg8KZ9A879rm2KQLyyiSE3odXF8C4+
 Z8fk5nynT6GBnvLGGRE51/sa+YzyG3AKonZFSeY=
X-Google-Smtp-Source: APXvYqwdIx5fvcr/2eqn6PfsjTtnTEUauTJoJlXG+zzhycInNXig/nGBmY7EZu2DrNnThSLkOUcAJwQqVld3E5i8yP8=
X-Received: by 2002:a05:6808:906:: with SMTP id
 w6mr3714280oih.162.1574778831671; 
 Tue, 26 Nov 2019 06:33:51 -0800 (PST)
MIME-Version: 1.0
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 26 Nov 2019 14:33:25 +0000
Message-ID: <CA+V-a8tVK7oUYggTb5Vi3agMp4CH8gtiKDHet09DzE5-LAfiew@mail.gmail.com>
Subject: Re: [PATCH 0/5] Add support for PCIe controller to work in endpoint
 mode on R-Car SoCs.
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Marek Vasut <marek.vasut+renesas@gmail.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci <linux-pci@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_063354_519359_DCE01428 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn/Kishon,

Gentle ping for this patch set.

On Wed, Nov 6, 2019 at 7:36 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
>
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> This patch series adds support for PCIe controller on rcar to work in endpoint mode,
> this also extends the epf framework to handle multiple outbound regions.
>
Cheers,
--Prabhakar Lad


> Note:
> The cadence/rockchip/designware endpoint drivers are build tested only.
>
> Endpoint configuration:
> $ cd /sys/kernel/config/pci_ep
> $ mkdir functions/pci_epf_test/func1
> $ echo 0x1912 > functions/pci_epf_test/func1/vendorid
> $ echo 0x002d > functions/pci_epf_test/func1/deviceid
> $ echo 32 > functions/pci_epf_test/func1/msi_interrupts
> $ ln -s functions/pci_epf_test/func1/ controllers/fe000000.pcie_ep/
> $ echo 1 > controllers/fe000000.pcie_ep/start
>
> Host side results:
> lspci output:
> 01:00.0 Unassigned class [ff00]: Renesas Technology Corp. Device 002d
>         Flags: bus master, fast devsel, latency 0, IRQ 103
>         Memory at fe200200 (64-bit, non-prefetchable) [size=128]
>         Memory at fe200000 (64-bit, non-prefetchable) [size=256]
>         Memory at fe200100 (64-bit, non-prefetchable) [size=256]
>         Capabilities: [40] Power Management version 3
>         Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
>         Capabilities: [70] Express Endpoint, MSI 00
>         Capabilities: [100] Virtual Channel
>         Kernel driver in use: pci-endpoint-test
>
> pcitest results:
>
> BAR tests
>
> BAR0:           OKAY
> BAR1:           NOT OKAY
> BAR2:           OKAY
> BAR3:           NOT OKAY
> BAR4:           OKAY
> BAR5:           NOT OKAY
>
> Interrupt tests
>
> SET IRQ TYPE TO LEGACY:         OKAY
> LEGACY IRQ:     OKAY
> Read Tests
>
> SET IRQ TYPE TO LEGACY:         OKAY
> READ (      1 bytes):           OKAY
> READ (   1024 bytes):           OKAY
> READ (   1025 bytes):           OKAY
> READ (1024000 bytes):           OKAY
> READ (1024001 bytes):           OKAY
>
> Write Tests
>
> WRITE (      1 bytes):          OKAY
> WRITE (   1024 bytes):          OKAY
> WRITE (   1025 bytes):          OKAY
> WRITE (1024000 bytes):          OKAY
> WRITE (1024001 bytes):          OKAY
>
> Copy Tests
>
> COPY (      1 bytes):           OKAY
> COPY (   1024 bytes):           OKAY
> COPY (   1025 bytes):           OKAY
> COPY (1024000 bytes):           OKAY
> COPY (1024001 bytes):           OKAY
>
> BAR tests for 1/3/5 fail because its configured to use 64bit bars
>
> Lad, Prabhakar (5):
>   pci: pcie-rcar: preparation for adding endpoint support
>   pci: endpoint: add support to handle multiple base for mapping
>     outbound memory
>   PCI: rcar: Add R-Car PCIe endpoint device tree bindings
>   pci: rcar: add support for rcar pcie controller in endpoint mode
>   misc: pci_endpoint_test: add device-id for RZ/G2 pcie controller
>
>  .../devicetree/bindings/pci/rcar-pci-ep.txt   |   43 +
>  arch/arm64/configs/defconfig                  |    2 +-
>  arch/arm64/configs/renesas_defconfig          |    2 +-
>  drivers/misc/pci_endpoint_test.c              |    3 +
>  drivers/pci/controller/Kconfig                |   11 +-
>  drivers/pci/controller/Makefile               |    3 +-
>  .../pci/controller/dwc/pcie-designware-ep.c   |   30 +-
>  drivers/pci/controller/pcie-cadence-ep.c      |   11 +-
>  drivers/pci/controller/pcie-rcar-ep.c         |  483 +++++++
>  drivers/pci/controller/pcie-rcar-host.c       | 1058 ++++++++++++++
>  drivers/pci/controller/pcie-rcar.c            | 1231 +----------------
>  drivers/pci/controller/pcie-rcar.h            |  129 ++
>  drivers/pci/controller/pcie-rockchip-ep.c     |   13 +-
>  drivers/pci/endpoint/functions/pci-epf-test.c |   29 +-
>  drivers/pci/endpoint/pci-epc-core.c           |    7 +-
>  drivers/pci/endpoint/pci-epc-mem.c            |  189 ++-
>  include/linux/pci-epc.h                       |   43 +-
>  17 files changed, 2016 insertions(+), 1271 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
>  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
>  create mode 100644 drivers/pci/controller/pcie-rcar.h
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
