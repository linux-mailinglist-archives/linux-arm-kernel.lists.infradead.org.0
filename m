Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8E6922C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kpCL3JDcz7fpTGaCeloMX56LgwNeYP4qS8O4LcMBpr0=; b=LeWMhvlMn9LMsu
	xT5g8HWMidHtVKeF3AAPaq/a2YsylzDzy8KlWRWCvlj1BVeKBZQKm1z5O8skxPzneAn5qqz70nLuC
	Dc5jwWUn85xNQCPIhIfT+tNK5eMBOdWqHHJgw/BNpmPYmlkDb/7B/HRFn5M2vKWRHUiiKBsSYra/1
	qrZSzaF9HcTtIeThuAE6+Kr42bBWUvvkJXEg+b8UgLdAEuLEm2OP7gRKoNZ3t8zVPSRg6aZ2jmcsO
	Mp/1bJ026PA+A/zbUNHUR+w4D+0bqEXA1vxankl8x7kA7klqKaULZd9FASJFI8CpDtrm6YJIC7Mb4
	NlYLyH2qfEVvoxB4zY4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgDu-00033y-PF; Mon, 19 Aug 2019 11:53:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgDn-000332-4v
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:53:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so8417895wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 04:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2K8Jpmcg33sO6sZplY+4qwE+wKb080N1/bRHaIx7mAc=;
 b=ghZEcu0OSbIZPIYtUMgCM2aQEsNJwtryVhOXqRYI8w+nnfeqVUS/Ak+ISmSBsvUGyY
 0F7NOK9EolYyNgTiYyslW99h0sYg1mfG4Pdx9yKUk6iKV4jLd4ArsmNFoPLaKbzth0QJ
 dDHdYUmZG2jBClhiakAnyAiKqX+/C107B6dvgI8O+oKS3XKvNpzvXaVhAUMdNbEQbamE
 0+69/0Rjow9C2MSfFyxRimDTcdZmCR2+wLpMM2RRCp8IMqo9i4HW/wYLMYUb16utvySf
 iq4o6JbCC1HdWgDK74UZxFOVcYQBSy+f8xxqNl0hZLnG6wKzt8ykjG/ROsGVNK+ep2Sr
 BQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=2K8Jpmcg33sO6sZplY+4qwE+wKb080N1/bRHaIx7mAc=;
 b=hFfjwG01DfYDmxHz3HtKT/nWHEPFun9hWtuzqKxusV78c5xD0AawbfuOaN+pz48aPb
 FkaKgT3TkgWLmPmh7CAVeaC2wNMCXFLb9c4vbPUi6T/KoG5Dgr+osqNqv71e/46zCSzS
 NehlthfzIuK11s4y9tcfwsjNXFfD0mKDBrA/pj+LXRcGFCUVEMJUxt2nmmAov3HGH7/R
 C1JY3DsHlH14S8aYfEey+Enk+JAQ4fsADJNUMV+3aaVimsVtkO/p6X1mqoa9b+B9OHeq
 r44lb1FN666IoQXy2X3JN8UrcSfpljkq52QEoy4xdkXCNffdqy9FnzxNeWD1yNJ6vFBy
 Vcwg==
X-Gm-Message-State: APjAAAVDRe//iCvSmpJy/L+J8rLyqRs8PnqLoh1e0LS8eJpJ++z0W0HX
 iza1bCjcGLdv7JO0kWfhIPw=
X-Google-Smtp-Source: APXvYqxGFgSI6YXZhC0JfAaRU0VSaVFZ6L9DmCBdPMd6vHTk0lnpryAGiRzI/JEgV4ljg4Xo3P/Ogw==
X-Received: by 2002:a5d:6ccd:: with SMTP id c13mr20359407wrc.4.1566215588274; 
 Mon, 19 Aug 2019 04:53:08 -0700 (PDT)
Received: from localhost.localdomain (ip5f5aef41.dynamic.kabel-deutschland.de.
 [95.90.239.65])
 by smtp.gmail.com with ESMTPSA id a23sm26105630wma.24.2019.08.19.04.53.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 04:53:07 -0700 (PDT)
From: Krzysztof Wilczynski <kw@linux.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: [PATCH] PCI: Fix misspelled words.
Date: Mon, 19 Aug 2019 13:53:06 +0200
Message-Id: <20190819115306.27338-1-kw@linux.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_045311_217503_D067AA4E 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kswilczynski[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Richard Zhu <hongxing.zhu@nxp.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix misspelled words in include/linux/pci.h, drivers/pci/Kconfig,
and in the documentation for Freescale i.MX6 and Marvell Armada 7K/8K
PCIe interfaces.  No functional change intended.

Related commit 96291d565550 ("PCI: Fix typos and whitespace errors").

Signed-off-by: Krzysztof Wilczynski <kw@linux.com>
---
 Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt | 2 +-
 Documentation/devicetree/bindings/pci/pci-armada8k.txt   | 2 +-
 drivers/pci/Kconfig                                      | 2 +-
 include/linux/pci.h                                      | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
index a7f5f5afa0e6..de4b2baf91e8 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt
@@ -50,7 +50,7 @@ Additional required properties for imx7d-pcie and imx8mq-pcie:
 - power-domains: Must be set to a phandle pointing to PCIE_PHY power domain
 - resets: Must contain phandles to PCIe-related reset lines exposed by SRC
   IP block
-- reset-names: Must contain the following entires:
+- reset-names: Must contain the following entries:
 	       - "pciephy"
 	       - "apps"
 	       - "turnoff"
diff --git a/Documentation/devicetree/bindings/pci/pci-armada8k.txt b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
index 9e3fc15e1af8..1aaa09254001 100644
--- a/Documentation/devicetree/bindings/pci/pci-armada8k.txt
+++ b/Documentation/devicetree/bindings/pci/pci-armada8k.txt
@@ -11,7 +11,7 @@ Required properties:
 - reg-names:
    - "ctrl" for the control register region
    - "config" for the config space region
-- interrupts: Interrupt specifier for the PCIe controler
+- interrupts: Interrupt specifier for the PCIe controller
 - clocks: reference to the PCIe controller clocks
 - clock-names: mandatory if there is a second clock, in this case the
    name must be "core" for the first clock and "reg" for the second
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 2ab92409210a..46f4912a370d 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -170,7 +170,7 @@ config PCI_P2PDMA
 
 	  Many PCIe root complexes do not support P2P transactions and
 	  it's hard to tell which support it at all, so at this time,
-	  P2P DMA transations must be between devices behind the same root
+	  P2P DMA transactions must be between devices behind the same root
 	  port.
 
 	  If unsure, say N.
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 463486016290..5a89854bd3cb 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -961,7 +961,7 @@ resource_size_t pcibios_align_resource(void *, const struct resource *,
 				resource_size_t,
 				resource_size_t);
 
-/* Weak but can be overriden by arch */
+/* Weak but can be overridden by arch */
 void pci_fixup_cardbus(struct pci_bus *);
 
 /* Generic PCI functions used internally */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
