Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 976DC15B774
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Evkm71E/vcLnepctLpXiTYruFEG7oEZqzkYCPpk6EQQ=; b=NlanRocCC0T2Xg
	khCODhim6ZtIz+R4HSd2+KoIs4je5MmFxhg5OursusVJDie/3Zu2AiA9kO+uB1wGUnx6uHlGsKDM7
	WtJX+RxM/tXJunX+vV5lNHNaHWV9+2fYIidDX46z2pIe30PTDqWO9erB/Gp9bsvsRsEmKrIC0XBrb
	qfhlY8d+5Vr0X2fW0mQlbq+9HzBAbgbX4+lD6JV34cynBr5z+2ZGkhG2Rg3XYaCipg2gmtbAv3D+M
	czvsIppIEGvJOv2ILjJQFu81a72/f3AwScaxFl5xGJSsJ8zxy9hq3ME17t8kRAGt6wQ2i6BEG8k9v
	31u8hLTQoffjC3bS65uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24jm-0003Qb-90; Thu, 13 Feb 2020 03:00:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24jE-0002Iw-2U
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 02:59:49 +0000
Received: by mail-pg1-x542.google.com with SMTP id d9so2277233pgu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 18:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w1ACxcpxWUpfzA7rugNOMv+lfet19/IxHVNmDiRm8Aw=;
 b=daxpuG2mhvKGy6M+bSiOIwXjqRUVAN/lbjca+U36wYkrCCZX2EKevydXjk2r45oCpf
 vpkx5vstvROVHer+RuxLdwhIpYKjcvbwuwzTGzvg1xGRkPmItTiKij9A0UZHMCBvQCHq
 Xf4+FdrE9h2r9bx9Eu6Vxie/UfNPcQrcoNxBi8m2vNUZHZG1/hmsdm5mAhqhhgbpbYzr
 JPkmknGHuTRViDawI41aenAiSQpSweWVwounqIVc4+06YXSoMkYUQ8veXkCkxn3gMT19
 OgVtOBuju6iHCFv6Y3XQmrWnrzN5OWVFobvYJEy720vHiib4d/1r+mE9d9DAFjag+9ib
 O3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w1ACxcpxWUpfzA7rugNOMv+lfet19/IxHVNmDiRm8Aw=;
 b=NaWVATdfehj3dSAJeEVgzSqnAdWR3ma6ZQ2avi5qQyVeRo/y85RWVCis9vj1MMicrU
 oKffJwT8QSOJ2HN0VUYFHNdSdUngUK/P3JWe8v+sT1Ww0tce1OmJ8KtP9T/LpGhh7wiJ
 boBoetea7Cj2GZU6UYvN6cpj/YfK2jUKyDPa+BvCzBHc3I1h1hvu4eCEr6lFDvoDraMU
 HaWnHoashbhu+bKdDXLjDwKWPlG5gMvDp6at/hQoo5rIK+2qqBqisCjTCxhpjVJTdgmt
 zXgeItGEH2j0OTaJRv5YbkGSK8W5FzKezlelL2Esx3gxU0lA3t0R96gZGRL/VMSqj30P
 qCNg==
X-Gm-Message-State: APjAAAW9yU+WScR/8zq7PD+O39xeUhBPhzPH7k6cQVnMFvk+oA2VhkxB
 +j5Hw1t0pVaR/TDR1oYJ2Ps=
X-Google-Smtp-Source: APXvYqxWHZU6f5pO82paK++ztXzf5iJMlD9SeitS31R2oQJvZ/P1yqFU3xfce65klYAvkb3EDr0Huw==
X-Received: by 2002:a05:6a00:2b7:: with SMTP id
 q23mr11460797pfs.43.1581562787459; 
 Wed, 12 Feb 2020 18:59:47 -0800 (PST)
Received: from localhost.localdomain ([125.130.116.2])
 by smtp.gmail.com with ESMTPSA id 64sm602643pfd.48.2020.02.12.18.59.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Feb 2020 18:59:47 -0800 (PST)
From: Jaedon Shin <jaedon.shin@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 1/3] PCI: brcmstb: Enable ARCH_BRCMSTB
Date: Thu, 13 Feb 2020 11:59:28 +0900
Message-Id: <20200213025930.27943-2-jaedon.shin@gmail.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
In-Reply-To: <20200213025930.27943-1-jaedon.shin@gmail.com>
References: <20200213025930.27943-1-jaedon.shin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_185948_131873_473F7BA7 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaedon.shin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Jaedon Shin <jaedon.shin@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PCIe support for ARM-based Broadcom STB SoCs.

Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
---
 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml | 8 +++++++-
 drivers/pci/controller/Kconfig                           | 2 +-
 drivers/pci/controller/pcie-brcmstb.c                    | 1 +
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 77d3e81a437b..fb1a78606f78 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -14,7 +14,13 @@ allOf:
 
 properties:
   compatible:
-    const: brcm,bcm2711-pcie # The Raspberry Pi 4
+    oneOf:
+      - description:
+          BCM2711 based Boards
+        const: brcm,bcm2711-pcie
+      - description:
+          ARM-based BCM7XXX Broadcom STB Boards
+        const: brcm,bcm7445-pcie
 
   reg:
     maxItems: 1
diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index 20bf00f587bd..c60a27cff81a 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -254,7 +254,7 @@ config VMD
 
 config PCIE_BRCMSTB
 	tristate "Broadcom Brcmstb PCIe host controller"
-	depends on ARCH_BCM2835 || COMPILE_TEST
+	depends on ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST
 	depends on OF
 	depends on PCI_MSI_IRQ_DOMAIN
 	help
diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index d20aabc26273..34581a6a7313 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -996,6 +996,7 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id brcm_pcie_match[] = {
 	{ .compatible = "brcm,bcm2711-pcie" },
+	{ .compatible = "brcm,bcm7445-pcie" },
 	{},
 };
 MODULE_DEVICE_TABLE(of, brcm_pcie_match);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
