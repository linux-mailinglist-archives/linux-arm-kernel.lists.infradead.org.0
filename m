Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA4C1A3D18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AV9xealzGp7yqic61A11MQwHhUZvbwluIkGpW0qvDpQ=; b=UTSwayz/nClLzp
	LksvQzsjSqmUrTBj4Cb9XLkiGn0/cdX0NkQzQs3+8p3k7Isq6BH0hVwWiNrTxt/KtfbjGPes+tebu
	CZadub6eXxcfIMdAVT6ZFZR2v3CAWmKvPgh85O3il1JiOSIb5NdkxomU9/sLpc2gI5+7209JLrtl9
	ItSya/ptRMEd03RKmdWkoUv5qlbmmHkFgJwcjRJtP+saIEqZ3oKbhEAZEh8UOtHFTAc+HwxoMuSCL
	Ox30zc6/GOj8Q17wPhl0yfCso35Zch/50upGPIOAE2HY+mpLEBFnD16XTR5ZBaDIp0JdwjEJlm91H
	pZouiPRFYSqJ9Ev6ZDqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMgvP-00016P-D5; Thu, 09 Apr 2020 23:49:35 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMgvI-00015v-7A
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:49:29 +0000
Received: by mail-io1-f67.google.com with SMTP id o127so236396iof.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 16:49:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/9eaq0H8oGg8K4IrgPtJPslJKNTLiRXhsyT2mSt9uHg=;
 b=eJSfgL71IxDWedzGRej1vTOW18/yKxKb0+bm+UV0z3TXwW5O3fiaVCnBpmpjMPqMuN
 TzRkCXsLoXNfHmROAI62SubrpXzhYYWYXkynk4O5FcQTYyLVwn4K1I1X8cA6W/XXzLex
 G1HnOpMxxnA1+/le+XaoFcijWp1PkOCP4eL9fBrWCg8MrQKsGyVP6ay/eEsIeP0bH4sx
 QLA4rR2goyVP1aPXtZMGcMu47VPgJKT6dd92ALpqjMgmLOgp3cspkoN7MTdnuULQTkyJ
 zWcsrO44mz/IQ5LmVg9+EoQCac5PCb8/axjZ/RvFe+TVk+ux7Nnq+ocO2VC3vIZl3ICk
 M1+Q==
X-Gm-Message-State: AGi0Pua5UaVVQwlSh0uyBib22zxwDzszyKrHn3RvW+igfaa4OQ2frMJX
 B+20IHVzODZe6VPGMMpCOg==
X-Google-Smtp-Source: APiQypIdiMtTCZPPD7LTx2QITtk9ZR5KlqXELktIFYlBTigIR35XweuEgwpB2TujFJ6toR/nxp9cGQ==
X-Received: by 2002:a6b:b512:: with SMTP id e18mr1774396iof.168.1586476167109; 
 Thu, 09 Apr 2020 16:49:27 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id w7sm93416ior.51.2020.04.09.16.49.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 16:49:26 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 0/3] PCI: Modularize host-generic
Date: Thu,  9 Apr 2020 17:49:20 -0600
Message-Id: <20200409234923.21598-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_164928_271403_C206C39A 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mans Rullgard <mans@mansr.com>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 linux-pci@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Len Brown <lenb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is part of a larger effort to modularize ARCH_VEXPRESS. In
particular, the Arm FVP platforms use the host-generic driver. This
conversion was straight-forward. I didn't convert the other ECAM drivers
using host-common to modules, but am happy to do so if there's a strong
desire to do so.

In the process, I noticed that 'const' was being dropped from the match
table .data pointer, so the first patch constifies struct pci_ecam_ops.
I started trying to constify pci_ops too, but that became a never ending
treewide rabbit hole. So I ended up with a cast when we assign pci_ops
from pci_ecam_ops.

Rob


Rob Herring (3):
  PCI: Constify struct pci_ecam_ops
  PCI: host-generic: Support building as modules
  PCI: host-generic: Eliminate pci_host_common_probe wrappers

 arch/arm64/kernel/pci.c                   |  4 ++--
 drivers/acpi/pci_mcfg.c                   |  8 +++----
 drivers/pci/controller/Kconfig            |  4 ++--
 drivers/pci/controller/dwc/pcie-al.c      |  2 +-
 drivers/pci/controller/dwc/pcie-hisi.c    | 19 +++++------------
 drivers/pci/controller/pci-host-common.c  | 18 ++++++++++++----
 drivers/pci/controller/pci-host-generic.c | 26 +++++++----------------
 drivers/pci/controller/pci-thunder-ecam.c | 14 ++++++------
 drivers/pci/controller/pci-thunder-pem.c  | 16 ++++++--------
 drivers/pci/controller/pci-xgene.c        |  4 ++--
 drivers/pci/controller/pcie-tango.c       |  9 +++++---
 drivers/pci/ecam.c                        | 10 ++++++---
 drivers/pci/setup-bus.c                   |  1 +
 include/linux/pci-acpi.h                  |  2 +-
 include/linux/pci-ecam.h                  | 25 +++++++++++-----------
 15 files changed, 78 insertions(+), 84 deletions(-)

--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
