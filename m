Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0F811DFB5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+riPxobKM2TvAnHfIgcDFSPne6aQ1jDiaNxomroDr4A=; b=ntXd2nhoMoFgVO
	agwMTZPhktW0COev4jaTDNSu1j8Mjb9DdRPOSYPAl9drjmBMkmD2ceJL656ScBPa2dHgCw6t2bc+p
	RMFHWI+bHDXDkTFDiUzyqQa4rIpKpX2d1i0kI52EO/dMDuYElx0iPAk6xMvDboxUfg3tJyp9JaXvL
	CkdSSDJzvXnpbpmSbc37k+j0D3eCs0z0rrVWzwtveO2O+xzImDEZaedeAoNAo2xN0hYAyvEp64ngT
	4BG83q47fYFALLJaP4v5zZ90l0gvFowIX8iyPDqw209RGENkmvszhlZB0Nof7OKLZal80Axnm2gHO
	M0tAKmen4F1dwv0T/nJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgcQ-0005uQ-Cp; Fri, 13 Dec 2019 08:48:14 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgcD-0005tQ-QA; Fri, 13 Dec 2019 08:48:03 +0000
Received: by mail-pl1-x643.google.com with SMTP id bc8so943404plb.12;
 Fri, 13 Dec 2019 00:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=faCBlmgTPQdYlEVpkeE4GNu+nPqEqsfQJpXTYDba5FY=;
 b=razj/7vZ+JbucAknGmxck6+vSzm5wRHRzOWy+lxigo91chdg+RZNqKWqZLz5UnasAa
 nM3svl9rWcegDadG0F32DfWvS3lwWb+b7IiieoollGSgm4Ru1LxV4Sz++ZwCxL199eqY
 5AYzdVnOM8vPrMqe4NtHYIS/2wzqsHoTSMBr8yQJ+Z2kVgsE79bSBkXH5tkLkmSYASb5
 VkSgCiGgWUBq6b73uhCHrvEW+2++cB/P+pC3wleeDo5AYqaLCuOr3eaxYjIa3Yzxwzjz
 lfPNR64+8x3FaUI+krXPecsw7dSiNmwBpJl71Tcu9qxBDLq2WDxU4lqKHyDiDJVhnq8O
 iEJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=faCBlmgTPQdYlEVpkeE4GNu+nPqEqsfQJpXTYDba5FY=;
 b=W4vy757FpJHid90FFAuTrumwjeUNnmUf/Gy3fDYt3H2y+rxmHWht2nuv4EQXedm53/
 F8kIV0BQdx3x6P/JTL1a/T4ptu6IVbpUeLTTWsDFfkRRq097CR20RGzY5tm5nZJtv+dy
 DAlOWkEsYK13uI4NSXc2qQv/wVC+fbvg/yQ/sGuhNCHfhLV8sGe5x6+KfR1PzT3qMbT2
 6DZbWhESHjiL5no0nqPSAcD4sXmb4MX8EFEpMc+EIKx/Hh9kZi1+pFHtO3BK45yRROPv
 xuADiFsptDSgmPkXQQYoLosTYPh0kUZNE8qHDoFCvYdHU2aifXN2nk0PXxbkyLkVHp0V
 CcAQ==
X-Gm-Message-State: APjAAAWn+NMS7vPFa01rbPTPJzNXykSY3pshWKTuqcHC4KI6CShNbQxL
 iyD3LZ9Ge01xc2HLDNNbNQ4=
X-Google-Smtp-Source: APXvYqxLS8SmpcnrtfIR9E7GHF2j8As78boRZwVuSxFdSNtc8n66W9/XnnKOusFfrKiYhQE90NkjzQ==
X-Received: by 2002:a17:902:8bc4:: with SMTP id
 r4mr14931561plo.82.1576226879597; 
 Fri, 13 Dec 2019 00:47:59 -0800 (PST)
Received: from prasmi.domain.name ([103.219.60.167])
 by smtp.gmail.com with ESMTPSA id 68sm9985632pge.14.2019.12.13.00.47.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 00:47:58 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org
Subject: [v2 0/6] Add support for PCIe controller to work in endpoint mode on
 R-Car SoCs
Date: Fri, 13 Dec 2019 08:47:42 +0000
Message-Id: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_004801_877460_5256FA40 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-kernel@vger.kernel.org, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>

This patch series adds support for PCIe controller on rcar to work in endpoint mode,
this also extends the epf framework to handle features of outbound regions.

Note:
The cadence/rockchip/designware endpoint drivers are build tested only.

Changes for v2:
1] Fixed review comments from Biju for dt-bindings to include an example
   for a tested platform.
2] Fixed review comments from Kishon to extend the features of outbound
   regions in epf framework.
3] Added support to parse outbound-ranges in OF.

lspci output on host:
====================

01:00.0 Unassigned class [ff00]: Renesas Technology Corp. Device 002d
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0
        Interrupt: pin A routed to IRQ 152
        Region 0: Memory at fe200200 (64-bit, non-prefetchable) [size=128]
        Region 2: Memory at fe200000 (64-bit, non-prefetchable) [size=256]
        Region 4: Memory at fe200100 (64-bit, non-prefetchable) [size=256]
        Capabilities: [40] Power Management version 3
                Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
                Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
        Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
                Address: 00000004fa36f000  Data: 0001
                Masking: fffffffe  Pending: 00000000
        Capabilities: [70] Express (v2) Endpoint, MSI 00
                DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s unlimited, L1 unlimited
                        ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset- SlotPowerLimit 0.000W
                DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
                        RlxdOrd- ExtTag+ PhantFunc- AuxPwr- NoSnoop+
                        MaxPayload 128 bytes, MaxReadReq 128 bytes
                DevSta: CorrErr+ UncorrErr+ FatalErr- UnsuppReq+ AuxPwr- TransPend-
                LnkCap: Port #0, Speed 5GT/s, Width x1, ASPM L0s, Exit Latency L0s unlimited
                        ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp-
                LnkCtl: ASPM Disabled; RCB 64 bytes Disabled- CommClk-
                        ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
                LnkSta: Speed 5GT/s, Width x1, TrErr- Train- SlotClk- DLActive- BWMgmt- ABWMgmt-
                DevCap2: Completion Timeout: Not Supported, TimeoutDis+, LTR-, OBFF Not Supported
                         AtomicOpsCap: 32bit- 64bit- 128bitCAS-
                DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-, LTR-, OBFF Disabled
                         AtomicOpsCtl: ReqEn-
                LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-
                         Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
                         Compliance De-emphasis: -6dB
                LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-, EqualizationPhase1-
                         EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
        Capabilities: [100 v1] Virtual Channel
                Caps:   LPEVC=0 RefClk=100ns PATEntryBits=1
                Arb:    Fixed- WRR32- WRR64- WRR128-
                Ctrl:   ArbSelect=Fixed
                Status: InProgress-
                VC0:    Caps:   PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
                        Arb:    Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
                        Ctrl:   Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
                        Status: NegoPending- InProgress-
        Kernel driver in use: pci-endpoint-test
00: 12 19 2d 00 06 00 10 00 00 00 00 ff 00 00 00 00
10: 04 02 20 fe 00 00 00 00 04 00 20 fe 00 00 00 00
20: 04 01 20 fe 00 00 00 00 00 00 00 00 00 00 00 00
30: 00 00 00 00 40 00 00 00 00 00 00 00 98 01 00 00

BAR Test
========
root@g2e:~# pcitest -b 0
BAR0:           OKAY
root@g2e:~# pcitest -b 1
BAR1:           NOT OKAY
root@g2e:~# pcitest -b 2
BAR2:           OKAY
root@g2e:~# pcitest -b 3
BAR3:           NOT OKAY
root@g2e:~# pcitest -b 4
BAR4:           OKAY
root@g2e:~# pcitest -b 5
BAR5:           NOT OKAY

Note: BAR test for 1/3/5 fail because they are configured to be 64bits

Interrupt Test
==============
root@g2e:~# pcitest -i 0
SET IRQ TYPE TO LEGACY:         OKAY
root@g2e:~# pcitest -l
LEGACY IRQ:     OKAY

Read Test
=========
root@g2e:~# pcitest -r -s 1
READ (      1 bytes):           OKAY
root@g2e:~# pcitest -r -s 1024
READ (   1024 bytes):           OKAY
root@g2e:~# pcitest -r -s 1025
READ (   1025 bytes):           OKAY
root@g2e:~# pcitest -r -s 1024000
READ (1024000 bytes):           OKAY
root@g2e:~# pcitest -r -s 1024001
READ (1024001 bytes):           OKAY

Write Test
==========
root@g2e:~# pcitest -w -s 1
WRITE (      1 bytes):          OKAY
root@g2e:~# pcitest -w -s 1024
WRITE (   1024 bytes):          OKAY
root@g2e:~# pcitest -w -s 1025
WRITE (   1025 bytes):          OKAY
root@g2e:~# pcitest -w -s 1024000
WRITE (1024000 bytes):          OKAY
root@g2e:~# pcitest -w -s 1024001
WRITE (1024001 bytes):          OKAY

Copy Test
=========
root@g2e:~# pcitest -c -s 1
COPY (      1 bytes):           OKAY
root@g2e:~# pcitest -c -s 1024
COPY (   1024 bytes):           OKAY
root@g2e:~# pcitest -c -s 1025
COPY (   1025 bytes):           OKAY
root@g2e:~# pcitest -c -s 1024000
COPY (1024000 bytes):           OKAY
root@g2e:~# pcitest -c -s 1024001
COPY (1024001 bytes):           OKAY

Lad, Prabhakar (6):
  pci: pcie-rcar: preparation for adding endpoint support
  pci: endpoint: add support to handle features of outbound memory
  of: address: add support to parse PCI outbound-ranges
  dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
    controller
  pci: rcar: add support for rcar pcie controller in endpoint mode
  misc: pci_endpoint_test: add device-id for RZ/G2E pcie controller

 .../devicetree/bindings/pci/rcar-pci-ep.txt        |   37 +
 arch/arm64/configs/defconfig                       |    2 +-
 drivers/misc/pci_endpoint_test.c                   |    3 +
 drivers/of/address.c                               |   44 +-
 drivers/pci/controller/Kconfig                     |   11 +-
 drivers/pci/controller/Makefile                    |    3 +-
 drivers/pci/controller/dwc/pcie-designware-ep.c    |   30 +-
 drivers/pci/controller/pcie-cadence-ep.c           |   11 +-
 drivers/pci/controller/pcie-rcar-ep.c              |  494 ++++++++
 drivers/pci/controller/pcie-rcar-host.c            | 1056 +++++++++++++++++
 drivers/pci/controller/pcie-rcar.c                 | 1229 +-------------------
 drivers/pci/controller/pcie-rcar.h                 |  129 ++
 drivers/pci/controller/pcie-rockchip-ep.c          |   13 +-
 drivers/pci/endpoint/functions/pci-epf-test.c      |   47 +-
 drivers/pci/endpoint/pci-epc-core.c                |    7 +-
 drivers/pci/endpoint/pci-epc-mem.c                 |  216 +++-
 include/linux/of_address.h                         |   21 +
 include/linux/pci-epc.h                            |   72 +-
 18 files changed, 2152 insertions(+), 1273 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
 create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
 create mode 100644 drivers/pci/controller/pcie-rcar-host.c
 create mode 100644 drivers/pci/controller/pcie-rcar.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
