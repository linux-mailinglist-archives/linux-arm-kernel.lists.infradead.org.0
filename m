Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BC610F676
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 05:57:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0QFd0CFL4Xpe7nrWYZeH8yL070CI+1bBlEQg/k4KwPE=; b=NSH
	BzG2jrbpsrxIrCbdU2K6UcX6ClsRlCrI1t639o5CfZS4L7tXHofNerN++r9HGtORFIDZhc3BYaqeD
	o2CtoGjGefyVMdpx+CTbh9yonSPj01b78OP8FW6W6Lcu98TpzE+mcxg8RKIXFYDCM4RK/8UpqQkxZ
	FRLjM4Dw60itsi2bi87eniWoxkd3GS2FKkJfnymWcWzi0V7AqC1/d+9cYIaijYH2uOD7V1P3oNQTO
	lGgKXhkD6pGSoDojdTXM26f+cCrzMw1RbCNGe1+14yKo4XZVinjKekIuIXTxS1LW9yw0BjN/sVO3A
	CxmnYckRomuaMv8Bzq1bzAcVwllFjpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic0Fm-0000UV-Fw; Tue, 03 Dec 2019 04:57:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic0Ff-0000To-NU
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 04:57:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id w15so1988588wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 20:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=pbRW1viad/GHjUmf3l7SOTRxkxISCKNgTFW5qUzFG18=;
 b=WLmdWgtocCq7SfivDEJxGQ0qYWEVC1FNP6Ngu0ZWhp++etMTGHgs+n3xeIFW14fTiV
 yhMj5yJWWCPDS2EsRAWEKGXN55BwurbaZnbUTdFro30TSZBmm596DFT99kyC5Rb5b2Zp
 hE6zmZw+W99FOnPwPVSHB2AwA5Hq6AacNcqZg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pbRW1viad/GHjUmf3l7SOTRxkxISCKNgTFW5qUzFG18=;
 b=oeNzT0D8WnzJ/1CLtlLMJ9gT71hRAVtc1oRr2+rZ8lg1eSS6Vi8aRd67o8CS8LhCcA
 reKpzfVB8HYHgTHpUl3idBYZPVLMyO6GBvEBg+UiWys+aMBp+mLFPesR90BM6M3ZzFcJ
 F4ovJLfNi4+RVgCtLarKy+YXNWYJ1CWHYVfzaR24rGN0D+u8F4K0fU4IxOrEtelgxrlr
 zd/OPyt1dPqTOvG088taJ6Qyata26tke0uktNgACYrR5xTwt6yjNw50SG7S+i6wr43lf
 vmXbAf3qdx/MTT8w+0X5oly4qDgWok29HiQ5ShHlLdvFnKVWJvsJbYIWE5Q/6WYflfBt
 T8dA==
X-Gm-Message-State: APjAAAW7rMs6ktIInedUkW0+pq5KVzbls8LbqFaQ6A7lcFuA/c5GrUq5
 rDPemZP1QKd5KGrUkZALoXLQuA==
X-Google-Smtp-Source: APXvYqyUrHD9fDQwouHUkuIiwPBscZSDLCvUsyiXCIoV/4MEv6faKFnYd8o4XCGdWtnIMoM9UkEcaw==
X-Received: by 2002:a5d:5284:: with SMTP id c4mr2679212wrv.376.1575349049792; 
 Mon, 02 Dec 2019 20:57:29 -0800 (PST)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id k4sm1667807wmk.26.2019.12.02.20.57.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 02 Dec 2019 20:57:29 -0800 (PST)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v3 0/6] PAXB INTx support with proper model
Date: Tue,  3 Dec 2019 10:27:00 +0530
Message-Id: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_205731_764696_5932B9C4 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patch set is based on Linux-5.4.

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

 .../devicetree/bindings/pci/brcm,iproc-pcie.txt    |  48 ++++++++--
 arch/arm/boot/dts/bcm-cygnus.dtsi                  |  30 ++++++-
 arch/arm/boot/dts/bcm-hr2.dtsi                     |  30 ++++++-
 arch/arm/boot/dts/bcm-nsp.dtsi                     |  45 ++++++++--
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi   |  28 +++++-
 drivers/pci/controller/pcie-iproc.c                | 100 ++++++++++++++++++++-
 drivers/pci/controller/pcie-iproc.h                |   6 ++
 7 files changed, 260 insertions(+), 27 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
