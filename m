Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D4B12744A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 04:54:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YAcAxupINoywujfldcMtQtC95klNc2/4ZUjsFQvEK4Q=; b=Dmr
	GSoVArbB+YZsd4Q+bi8pV+e75Uo0PgWwd/Tz1YQfPJIPC4pKhN46P3bN6MslsNcIfkH4DFqflRIKj
	kjNk1pYZ6kzJhWurEsJ3pKphVd57S1Hg7KcSMHOYHVpIXmTxe9NWHpN8Qqwv7kx/g6u0QJD5jQAou
	NV+JwYD6AlmtUdnaYX3Myzb0pXAwDapQqYKBUIpZnWykonDDA2Za2lIo6mTAk1pRVeW3W8//X29B+
	61oSKuLyDEbfPgVGCa7VSqEQhSADQWfrgkRIpv+sFvFd6m7K5alQzunYsir/WYpBYqjajF2UgTmUy
	u3idQtsXIgO23a8sNKn5kX2hG/LhpvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii9ND-0000bZ-Kz; Fri, 20 Dec 2019 03:54:43 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii9N5-0000b9-TG
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 03:54:37 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s7so3525190pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 19:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=PoLshNDzrJ34zNiIcguyofrG58V/A2F+YEa2ClLgm0M=;
 b=J7pcTxw2cF3I1+9MhU6RvI2RCWdIsCwvKIRtRkrOgsADvQScweskX2fQ21XcvlXRGD
 YXMvNbK9KYj9Ixm2dXRnRNkFMtGW13JfRdGr/Sq6lQbIW/7+uJbZ10Htlt2lcW0iwhLR
 2+o3yepAZjv1lsnqqssRQ+VSURCqIFraFtJHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PoLshNDzrJ34zNiIcguyofrG58V/A2F+YEa2ClLgm0M=;
 b=H/LTLKwKVYWOY7Ewvqxq8KmYkdQzXeFStAcqMxvU2hhQka1dx2KNCZReJ9l7ux2u0h
 KItmmz1xlDq9a7oiDSLnshSzCEjYFFbPro9VPiv6gkojWQIVWBDCuNXlSWuB+qyiUdAJ
 rZBkq5SMtTmLIHsy1m3VxCttwSYNpkXVdig38jz4ZR4wjQULHAk3s7UFxkfJ4NPrsaQf
 UV7/PGoUs6L+uugut7pvQ0AdK5K5GDgnhOUjCj+DEJoB2R81uopVZE/fgos0ezO+Txrg
 iJIbFialFY3YLTvsrNbx6A+3KHL42Q6x39/HV3am547aP0TkV067fCA0Ph6sOLFvf7uy
 VHEg==
X-Gm-Message-State: APjAAAX3mCGMqAz0brAl81GM34AH4alL82XkGM470sNnuJ3BZgEs+cLO
 7tiEiqKtoXIGem1UbqnSF3k4Lw==
X-Google-Smtp-Source: APXvYqz5gbwIuxN8xP8ES2rSbow/hVGo5nLVK4ha6qxGjm0meTH2KyQMRtB2mycw7ogT+3QFA53bNg==
X-Received: by 2002:a17:902:b90c:: with SMTP id
 bf12mr12676383plb.286.1576814074673; 
 Thu, 19 Dec 2019 19:54:34 -0800 (PST)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id t65sm10522205pfd.178.2019.12.19.19.54.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 19 Dec 2019 19:54:33 -0800 (PST)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v4 0/6] PAXB INTx support with proper model
Date: Fri, 20 Dec 2019 09:24:12 +0530
Message-Id: <1576814058-30003-1-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_195435_941705_E0529905 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Srinath Mannam <srinath.mannam@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds PCIe legacy interrupt (INTx) support to the iProc
PCIe driver by modeling it with its own IRQ domain. All 4 interrupts INTA,
INTB, INTC, INTD share the same interrupt line connected to the GIC
in the system. This is now modeled by using its own IRQ domain.

Also update all relevant devicetree files to adapt to the new model.

This patch set is based on Linux-5.5-rc1.

Changes from v3:
  - Addressed Andrew Murray's comments
  - Add change to dispose VIRQ when disabling INTx

Changes from v2:
  - Addressed Lorenzo's comments
    - Corrected INTx to PIN mapping.

Changes from v1:
  - Addressed Rob, Lorenzo, Arnd's comments
    - Used child node for interrupt controller.
  - Addressed Andy Shevchenko's comments
    - Replaced while loop with do-while.

Ray Jui (6):
  dt-bindings: pci: Update iProc PCI binding for INTx support
  PCI: iproc: Add INTx support with better modeling
  arm: dts: Change PCIe INTx mapping for Cygnus
  arm: dts: Change PCIe INTx mapping for NSP
  arm: dts: Change PCIe INTx mapping for HR2
  arm64: dts: Change PCIe INTx mapping for NS2

 .../devicetree/bindings/pci/brcm,iproc-pcie.txt    |  48 +++++++--
 arch/arm/boot/dts/bcm-cygnus.dtsi                  |  30 +++++-
 arch/arm/boot/dts/bcm-hr2.dtsi                     |  30 +++++-
 arch/arm/boot/dts/bcm-nsp.dtsi                     |  45 +++++++--
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi   |  28 +++++-
 drivers/pci/controller/pcie-iproc.c                | 108 ++++++++++++++++++++-
 drivers/pci/controller/pcie-iproc.h                |   6 ++
 7 files changed, 268 insertions(+), 27 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
