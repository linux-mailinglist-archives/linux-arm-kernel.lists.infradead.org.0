Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3546C0E71
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 01:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKv56vs1Zci+sRQ/a2pXkvP+bur1eUy30xXdNPpRetc=; b=C5XzF3u5pcQ0x5
	xpu3YAxaAWMVnNS65URwVIA9G5lF3Jsy8n+jk93xFfdvNUwhurvQvRU6NWHiiKeKmcTE/oNdphN9p
	u13q+OtP+y1aLa3x0O31mb4iv6Hgxx6zkHni1f0KrKdAwD+d3AI5PCM3mGy+i+TB48WhqjWG26BXM
	fhcsC9a6zu7O7Tqror/tt+s6ZJX5KlnvQ6dLT/r3kFvrmQyk7Zu7VzOfyzKf5TD8OUffl65y6hNQU
	48o4FUoJwbhMd1MTjlZisVriiBdqYr7x1P63OzGVIDLldIkbZmmwdARqKlMl8c7s3I2wnjfG2Ra+D
	7ALYF1CGHWNy/y5S5seg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDzrB-0004q2-Lg; Fri, 27 Sep 2019 23:41:01 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDzr0-0004of-Le
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 23:40:52 +0000
Received: by mail-lf1-f65.google.com with SMTP id d17so3100182lfa.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 16:40:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/vjA3feuVjhECJGCJlv7w7hKdoWzVAzTRzB0psX8g5s=;
 b=MyzkmDFZJDaM8seIK5Uj/QpCdDoSL521tDUQNuDTEgPc870HearuB+3f1T1V/KcLpV
 spmAZ5pIbqdsK6db+ASfSQ0gUCs4U69C8RoUY0tgrNBTV7hAccTkEwH1T0KdJGgzosS9
 ZM52bTkFldLnVKmq9qVs0fbbFO6mqJw0FY1091pP7yCC7VEn9HD/dD9uSWJTQ/XuzLqC
 VV8PDwEkhCqjrHRH8A3S5mZMh1fol4yWJjlesfsM7FEDkLRz0yrvBCGn45mCzt7sTTp4
 spX/s73SxFvSb2zlLzdENd6LhZrkstqOJj1VkAwxxbgZ5uzhC5j2qKlEl+QhWPESUR2R
 3PCQ==
X-Gm-Message-State: APjAAAWEgsypNCQaTK7to2JEI9n+3TA5Fh8C7UQOAXoNcC/OkeBaQ6/F
 hnOC6ywe+IV2GQuJbjIueqw=
X-Google-Smtp-Source: APXvYqzJjAsZOxffDP6X1PyAJObAmIHMhsLPPyKIAwdxjZFuFJU1hlQRv1yAEhIhnnum3sSXraXujg==
X-Received: by 2002:ac2:568c:: with SMTP id 12mr4300543lfr.133.1569627646034; 
 Fri, 27 Sep 2019 16:40:46 -0700 (PDT)
Received: from localhost.localdomain (broadband-188-32-48-208.ip.moscow.rt.ru.
 [188.32.48.208])
 by smtp.googlemail.com with ESMTPSA id x25sm778810ljb.60.2019.09.27.16.40.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 16:40:45 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH RESEND v3 00/26] Add definition for the number of standard PCI
 BARs
Date: Sat, 28 Sep 2019 02:40:26 +0300
Message-Id: <20190927234026.23342-1-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190916204158.6889-3-efremov@linux.com>
References: <20190916204158.6889-3-efremov@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_164050_717901_6ADE5BB0 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yefremov.denis[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-scsi@vger.kernel.org, kvm@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Denis Efremov <efremov@linux.com>, linux-ide@vger.kernel.org,
 netdev@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-alpha@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Code that iterates over all standard PCI BARs typically uses
PCI_STD_RESOURCE_END, but this is error-prone because it requires
"i <= PCI_STD_RESOURCE_END" rather than something like
"i < PCI_STD_NUM_BARS". We could add such a definition and use it the same
way PCI_SRIOV_NUM_BARS is used. The patchset also replaces constant (6)
with new define PCI_STD_NUM_BARS where appropriate and removes local
declarations for the number of PCI BARs.

Changes in v3:
  - Updated commits description.
  - Refactored "< PCI_ROM_RESOURCE" with "< PCI_STD_NUM_BARS" in loops.
  - Refactored "<= BAR_5" with "< PCI_STD_NUM_BARS" in loops.
  - Removed local define GASKET_NUM_BARS.
  - Removed local define PCI_NUM_BAR_RESOURCES.

Changes in v2:
  - Reversed checks in pci_iomap_range,pci_iomap_wc_range.
  - Refactored loops in vfio_pci to keep PCI_STD_RESOURCES.
  - Added 2 new patches to replace the magic constant with new define.
  - Splitted net patch in v1 to separate stmmac and dwc-xlgmac patches.

Denis Efremov (26):
  PCI: Add define for the number of standard PCI BARs
  PCI: hv: Use PCI_STD_NUM_BARS
  PCI: dwc: Use PCI_STD_NUM_BARS
  PCI: endpoint: Use PCI_STD_NUM_BARS
  misc: pci_endpoint_test: Use PCI_STD_NUM_BARS
  s390/pci: Use PCI_STD_NUM_BARS
  x86/PCI: Loop using PCI_STD_NUM_BARS
  alpha/PCI: Use PCI_STD_NUM_BARS
  ia64: Use PCI_STD_NUM_BARS
  stmmac: pci: Loop using PCI_STD_NUM_BARS
  net: dwc-xlgmac: Loop using PCI_STD_NUM_BARS
  ixgb: use PCI_STD_NUM_BARS
  e1000: Use PCI_STD_NUM_BARS
  rapidio/tsi721: Loop using PCI_STD_NUM_BARS
  efifb: Loop using PCI_STD_NUM_BARS
  fbmem: use PCI_STD_NUM_BARS
  vfio_pci: Loop using PCI_STD_NUM_BARS
  scsi: pm80xx: Use PCI_STD_NUM_BARS
  ata: sata_nv: Use PCI_STD_NUM_BARS
  staging: gasket: Use PCI_STD_NUM_BARS
  serial: 8250_pci: Use PCI_STD_NUM_BARS
  pata_atp867x: Use PCI_STD_NUM_BARS
  memstick: use PCI_STD_NUM_BARS
  USB: core: Use PCI_STD_NUM_BARS
  usb: pci-quirks: Use PCI_STD_NUM_BARS
  devres: use PCI_STD_NUM_BARS

 arch/alpha/kernel/pci-sysfs.c                 |  8 ++---
 arch/ia64/sn/pci/pcibr/pcibr_dma.c            |  4 +--
 arch/s390/include/asm/pci.h                   |  5 +--
 arch/s390/include/asm/pci_clp.h               |  6 ++--
 arch/s390/pci/pci.c                           | 16 +++++-----
 arch/s390/pci/pci_clp.c                       |  6 ++--
 arch/x86/pci/common.c                         |  2 +-
 arch/x86/pci/intel_mid_pci.c                  |  2 +-
 drivers/ata/pata_atp867x.c                    |  2 +-
 drivers/ata/sata_nv.c                         |  2 +-
 drivers/memstick/host/jmb38x_ms.c             |  2 +-
 drivers/misc/pci_endpoint_test.c              |  8 ++---
 drivers/net/ethernet/intel/e1000/e1000.h      |  1 -
 drivers/net/ethernet/intel/e1000/e1000_main.c |  2 +-
 drivers/net/ethernet/intel/ixgb/ixgb.h        |  1 -
 drivers/net/ethernet/intel/ixgb/ixgb_main.c   |  2 +-
 .../net/ethernet/stmicro/stmmac/stmmac_pci.c  |  4 +--
 .../net/ethernet/synopsys/dwc-xlgmac-pci.c    |  2 +-
 drivers/pci/controller/dwc/pci-dra7xx.c       |  2 +-
 .../pci/controller/dwc/pci-layerscape-ep.c    |  2 +-
 drivers/pci/controller/dwc/pcie-artpec6.c     |  2 +-
 .../pci/controller/dwc/pcie-designware-plat.c |  2 +-
 drivers/pci/controller/dwc/pcie-designware.h  |  2 +-
 drivers/pci/controller/pci-hyperv.c           | 10 +++---
 drivers/pci/endpoint/functions/pci-epf-test.c | 10 +++---
 drivers/pci/pci-sysfs.c                       |  4 +--
 drivers/pci/pci.c                             | 13 ++++----
 drivers/pci/proc.c                            |  4 +--
 drivers/pci/quirks.c                          |  4 +--
 drivers/rapidio/devices/tsi721.c              |  2 +-
 drivers/scsi/pm8001/pm8001_hwi.c              |  2 +-
 drivers/scsi/pm8001/pm8001_init.c             |  2 +-
 drivers/staging/gasket/gasket_constants.h     |  3 --
 drivers/staging/gasket/gasket_core.c          | 12 +++----
 drivers/staging/gasket/gasket_core.h          |  4 +--
 drivers/tty/serial/8250/8250_pci.c            |  8 ++---
 drivers/usb/core/hcd-pci.c                    |  2 +-
 drivers/usb/host/pci-quirks.c                 |  2 +-
 drivers/vfio/pci/vfio_pci.c                   | 11 ++++---
 drivers/vfio/pci/vfio_pci_config.c            | 32 ++++++++++---------
 drivers/vfio/pci/vfio_pci_private.h           |  4 +--
 drivers/video/fbdev/core/fbmem.c              |  4 +--
 drivers/video/fbdev/efifb.c                   |  2 +-
 include/linux/pci-epc.h                       |  2 +-
 include/linux/pci.h                           |  2 +-
 include/uapi/linux/pci_regs.h                 |  1 +
 lib/devres.c                                  |  2 +-
 47 files changed, 112 insertions(+), 115 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
