Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE831347A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FrGIJODdv0qZr1X+VWhc1oRKQr8zHoIOQEl+Ng6s2+k=; b=klKCcC5jAOfsg+
	G2uqq2jvESXj16OtBAZv86hA0ZyLEmm+/8SJECe5h/qmSpWnluqd+4JrwFmdvJ/TTbInIIrGFskBJ
	fsdKwMRCDMCDUitCjYzdHlkWUGr9BlZaePJU2zsNWdt34pbjT8YER2hRJ/bBmI8DHmzjvkT+6Ib4S
	9rh7J12fJJ7X8GhOmo8ySv/Gv3206tIT9TuPp2kj/UeemiEKf+j2WeA1mWiwuClhqQdYj56pAUU3t
	JOqT+TDiJKsCYMAv6MDKIDnETqWlaHV2JtFqH76K61vjsXkbxnvHDQC1CqZc0pbd8Tmz3EOrFD6du
	98lW3M5gqD09YMV1zbNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipE6G-0000ln-Io; Wed, 08 Jan 2020 16:22:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipE62-0000lH-TZ; Wed, 08 Jan 2020 16:22:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so4052328wro.2;
 Wed, 08 Jan 2020 08:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cUbkapGV6usokmQ+FjkB5jOvk1qHqcO9wl6AKNn00Nk=;
 b=h8knQN1o2rUkXrs6cmqV6R0pZjpNIqTB7V3oR6JagTvF2BpOTk33TgZQ2VL93ruQ7P
 NNtDsRaibXPh7F02dYHtJ23M3Y3TC1viY/GMDwFXVwsH7Drp2dVaq+ui+IOEhKqEWxww
 RkI1XxZjkJLPRpBc3L41n30oe3o1GEAs4M3Vf0C9LFw4uYItxRTiYzLwTXE8YL6e6lF7
 ejW2UtnyvBVNEuAw3RGFEgpsA20udS2bYVFlzlOWNZ6OhFIWCLIfEayHqXthpZXu3lfl
 ruevaOxPDyQiiiDNRjoGGGj4DGK0ynXBLEITcvzszreVeWlDIGmLWGx9Dl8JZK2FYWcR
 rrxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cUbkapGV6usokmQ+FjkB5jOvk1qHqcO9wl6AKNn00Nk=;
 b=aB9vbuhggDZRahFxPQ61BKqgHoRE4b9y8oq24RsBlnPkvNYT3/8t/qtSvuwN48ga/6
 7OdpqO2dughmN9yeOSLU+pxNQ3jWOV50tQbznv7RuhQdXOBvAqcVEoKzuCjJXusvZnHb
 KBTsC1pbdn144/1GZwW5yH+Qgp9WQeObXreBp+Asp8Oe9HwECgztmFcvNBbEbTKzyGzN
 yEZ+Qg2H4UqVUvGlGTUpYN/9uaHMFrmuQO30n8Wx7Ek4oLS24XtoufDlQpQ2nIdC3Zmp
 1ncCKBc8qR5pf70iwtOYaEilIskh+JG8XmYOBLG65CBwBsu9eU18I/olpcKJBoZQvZun
 JDmg==
X-Gm-Message-State: APjAAAXH6a+2MaYeXizqUTuBHSrxX1rbhDmxMu+QnAAfhj2VKnaWSu0T
 O4l+NuQMB3U2nKNLSARqA/0=
X-Google-Smtp-Source: APXvYqwhZnXB7Q+A6al2Q81sPowDetau5NML4GV6kVoXXoSM8NYtMGUCa8Dyubp6uMZAvSBs3Fp6EA==
X-Received: by 2002:a05:6000:12c9:: with SMTP id
 l9mr5761235wrx.304.1578500533082; 
 Wed, 08 Jan 2020 08:22:13 -0800 (PST)
Received: from prasmi.home ([2a00:23c6:d18:6d00:2811:8b65:294e:fa09])
 by smtp.gmail.com with ESMTPSA id q3sm5112180wrn.33.2020.01.08.08.22.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:22:12 -0800 (PST)
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
Subject: [v3 0/6] Add support for PCIe controller to work in endpoint mode on
 R-Car SoCs
Date: Wed,  8 Jan 2020 16:22:05 +0000
Message-Id: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_082214_955153_0DB361FB 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
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

This patch series adds support for PCIe controller on rcar to work in
endpoint mode, this also extends the epf framework to handle base region
for mapping PCI address locally..

Note:
The cadence/rockchip/designware endpoint drivers are build tested only.

Changes for v3:
1] Fixed review comments from Bjorn and Kishon.
3] Converted to DT schema

Changes for v2:
1] Fixed review comments from Biju for dt-bindings to include an example
   for a tested platform.
2] Fixed review comments from Kishon to extend the features of outbound
   regions in epf framework.
3] Added support to parse outbound-ranges in OF.

lspci output on host:
=====================

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
                Address: 00000004fa36d000  Data: 0001
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


Lad Prabhakar (6):
  PCI: rcar: Preparation for adding endpoint support
  PCI: rcar: Fix calculating mask for PCIEPAMR register
  PCI: endpoint: Add support to handle multiple base for mapping
    outbound memory
  dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
    controller
  PCI: rcar: Add support for rcar PCIe controller in endpoint mode
  misc: pci_endpoint_test: Add Device ID for RZ/G2E PCIe controller

 .../devicetree/bindings/pci/rcar-pci-ep.yaml  |   76 +
 arch/arm64/configs/defconfig                  |    2 +-
 drivers/misc/pci_endpoint_test.c              |    3 +
 drivers/pci/controller/Kconfig                |   11 +-
 drivers/pci/controller/Makefile               |    3 +-
 .../pci/controller/cadence/pcie-cadence-ep.c  |   12 +-
 .../pci/controller/dwc/pcie-designware-ep.c   |   31 +-
 drivers/pci/controller/pcie-rcar-ep.c         |  497 +++++++
 drivers/pci/controller/pcie-rcar-host.c       | 1044 ++++++++++++++
 drivers/pci/controller/pcie-rcar.c            | 1232 +----------------
 drivers/pci/controller/pcie-rcar.h            |  132 ++
 drivers/pci/controller/pcie-rockchip-ep.c     |   14 +-
 drivers/pci/endpoint/functions/pci-epf-test.c |   29 +-
 drivers/pci/endpoint/pci-epc-core.c           |    7 +-
 drivers/pci/endpoint/pci-epc-mem.c            |  199 ++-
 include/linux/pci-epc.h                       |   46 +-
 16 files changed, 2064 insertions(+), 1274 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
 create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
 create mode 100644 drivers/pci/controller/pcie-rcar-host.c
 create mode 100644 drivers/pci/controller/pcie-rcar.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
