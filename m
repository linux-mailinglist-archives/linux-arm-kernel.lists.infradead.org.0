Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B228A9FD8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ikrRS5VOK4/EJkoXL0gk0LIcDihRAm2nQQyfBy4ic6w=; b=psr
	C1euxbWxZUkUxWrZm9dkx41bIZNt/PDjGdfmB+cp49oBef/XPQ/YAfJvk0Wv+MyCELgmSJqP12bPe
	dT+q/StAZBHbIzvvvHt1CH8WRhSs0oONCvTts8B12Rj3wAgWkIfm8QUf/FDOeTdD0t32d5z9dvC7U
	Q79QjIWw4+/rET3Y3A9G2clA26+PbGDaL8bUO4WeIDJde+mjUKhTek3LmzB4Q61sHjMZRC4ycl6x1
	BIH2qu+s+fSFPRSXFPZ5hp5Mek0cjl0ap5Ybj1M8BH4zdH2ASENoLA4pgJq41b/xJy/77Uba8jmMk
	B3SxbaBmhVFoTQ1nzOrCc7FYRIYlCtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tjZ-00027l-Ny; Wed, 28 Aug 2019 08:55:17 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tjL-0001Ty-Os
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:55:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so1095044pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 01:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ZLhox3MGYU3vCPS8rU4RE1IvC0ssD0tDNzjTJYofQ/w=;
 b=In1ofVVkExdB/56av3bUTO7avmdkFk/Pqr0JvQXtiAgUAfC2H8Rx0juj7UBNDrFfF7
 mkpDwsuMPI+mgcWm4y66DB3z3GDqQXCk/goKJbknEzXrWSQnyL9lwR3wHQ79x7Q51a27
 GXz2PmbWzsZvywqAGjIKFzooojw8P1cChYuMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZLhox3MGYU3vCPS8rU4RE1IvC0ssD0tDNzjTJYofQ/w=;
 b=ZVl+mJX+oVpYCZyPATvRp2hzGQuVVDX2S4fdMNE+2Ax3P2SXNZw7SKe+4YURKt0nty
 WOjugNtYeBJ/jHFJpzq2tHrjfkoGymF8cuNZochdPFyBo+KZBdvzO6QfYihXnEBtow3V
 3KQ07JG38z1RKD1Q2hOD4XHVpEAH1T7RyYSW5/sJJPidSq4/Mot3KtQ1QDMuaWQJZNQ9
 7AuGDd6LAac/m5fYW2/Deo3I+Dl74AukP2kz3+U9eIRt6fdUtPLWWOponNgmGekYrhpV
 U3Lynu9opKJ/8b/OMrMz//GAbxPXFuIggom7aom3YsE1zG3E0JqTJ59VvJIgwyxqCSFY
 yTpQ==
X-Gm-Message-State: APjAAAWBu163GAm+LD55MuzDf26dUK6CDF2H7xFoboylNTQqoQkduzUJ
 0MZLbvh/WymT5X4fUg9GBXR7og==
X-Google-Smtp-Source: APXvYqytDZtQ/1TFhyJ4wMqNxJBsNjny0aOoAimJi3RhZ1BROAWcLL8bfzDNHGtwKRyViN7YtxaPaw==
X-Received: by 2002:a17:90a:fe0e:: with SMTP id
 ck14mr3113158pjb.78.1566982502193; 
 Wed, 28 Aug 2019 01:55:02 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id z189sm2431386pfb.137.2019.08.28.01.54.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 01:55:01 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 0/6] PAXB INTx support with proper model
Date: Wed, 28 Aug 2019 14:24:42 +0530
Message-Id: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_015503_822903_26A50512 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch set is based on Linux-5.2-rc4.

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
