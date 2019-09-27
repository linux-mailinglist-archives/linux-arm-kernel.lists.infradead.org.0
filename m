Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932E5BFC66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3a5rW7ZESYPGi0jomZ9ZMLYMxNVvCjDEbY01lFD4Npo=; b=Qc7+6qRgHC+v5p
	4eCt7jBG/GJRNAAL1NW3sqIZyN/i3+uJzpYz7Gm4gO+M1lI75M/e7BxM0gg3PKGhedQIbCtjlJOyA
	S7wWE5rHwPlTCuOipZCoACt4TV/+zwewLo4qfYM2DYuNN66r8AWVQsecX5M6476yVWPJIJfD0iYyY
	OSHtalDiDUCw8Q11oLFZeShu4UHXFtrWFbu3cpC7CaTesERe9uCB8LEFTb6rrFPZPA3S3nBTDoPaY
	IPTnaYt/Wj4tvXet72pJkX0uV/3B2nGBI3pHxfrcjsD8uc3S08EGdYWPBUoGXzjTED8xPdkhH3RbA
	CCoc5E8VHkogN0j/wqNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe64-0006Zi-53; Fri, 27 Sep 2019 00:26:56 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4H-0004L9-M1
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:07 +0000
Received: by mail-oi1-f195.google.com with SMTP id k9so3726629oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:25:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/FdaUd4Foou3uzALlTE4nuHwXAnVOybAVTlMM/NfMxM=;
 b=Y+8yx8A/Jfp0ir8lv26W4/PXePkg5OmIB9c14aH9j0aKCSohocs7D5F1+avEXbtzOD
 m7TLacCBOui2kV1df05WCD/FD0s1tlHeDhl9vtfxVVRcYzeQVXpvJLJUjVWqr8P7EbhZ
 xrdxNaSZTt+zDhM+6lUSaFNaqSIHI7brEnksYlqFRPzuSMEjJtH/928+SQaIEn4Xo0nP
 8GbMPoOV92m7i8Qn98rOGHSTZVBtoBLiuBNskC9e9HfwGLNDWSyw6W+EKRhdMhulSw21
 mHCc9ua4jCV9Mw5UWzY9WFcncTDHwsZtvJu1xymZEQ8tgw8iM+kP6bjKhTTm/lCaYTUP
 JGKw==
X-Gm-Message-State: APjAAAWk18WVusAmO4ZRdIKb1ey0gDSIdFffX45V3b+Rf1k+YcjG07K1
 ALXdT+30/6U5MAuBXx8wVA==
X-Google-Smtp-Source: APXvYqxes6fLBSO8a/NFYc1ZhLQ2DJ3dk3ZrSbyT+sGdDBiq/Yncolj5jjG+yPBb+Q9ycO7s7d945A==
X-Received: by 2002:aca:fdc9:: with SMTP id b192mr4641000oii.50.1569543904799; 
 Thu, 26 Sep 2019 17:25:04 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.25.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:25:04 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 05/11] of: Ratify of_dma_configure() interface
Date: Thu, 26 Sep 2019 19:24:49 -0500
Message-Id: <20190927002455.13169-6-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172505_787386_87C73E98 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Frank Rowand <frowand.list@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

For various DMA masters not directly represented in DT, we pass the OF
node of their parent or bridge device as the master_np argument to
of_dma_configure(), such that they can inherit the appropriate DMA
configuration from whatever is described there. This creates an
ambiguity for properties which are not valid for a device itself but
only for its parent bus, since we don't know whether to start looking
for those at master_np or master_np->parent.

Fortunately, the de-facto interface since the prototype change in
1f5c69aa51f9 ("of: Move of_dma_configure() to device.c to help re-use")
is pretty clear-cut: either master_np is redundant with dev->of_node, or
dev->of_node is NULL and master_np is already the relevant parent. Let's
formally ratify that so we can start relying on it.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/device.c       | 12 ++++++++++--
 include/linux/of_device.h |  4 ++--
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index da8158392010..a45261e21144 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -75,7 +75,8 @@ int of_device_add(struct platform_device *ofdev)
 /**
  * of_dma_configure - Setup DMA configuration
  * @dev:	Device to apply DMA configuration
- * @np:		Pointer to OF node having DMA configuration
+ * @parent:	OF node of parent device having DMA configuration, if
+ * 		@dev->of_node is NULL (ignored otherwise)
  * @force_dma:  Whether device is to be set up by of_dma_configure() even if
  *		DMA capability is not explicitly described by firmware.
  *
@@ -86,15 +87,22 @@ int of_device_add(struct platform_device *ofdev)
  * can use a platform bus notifier and handle BUS_NOTIFY_ADD_DEVICE events
  * to fix up DMA configuration.
  */
-int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
+int of_dma_configure(struct device *dev, struct device_node *parent, bool force_dma)
 {
 	u64 dma_addr, paddr, size = 0;
 	int ret;
 	bool coherent;
 	unsigned long offset;
 	const struct iommu_ops *iommu;
+	struct device_node *np;
 	u64 mask;
 
+	np = dev->of_node;
+	if (!np)
+		np = parent;
+	if (!np)
+		return -ENODEV;
+
 	ret = of_dma_get_range(np, &dma_addr, &paddr, &size);
 	if (ret < 0) {
 		/*
diff --git a/include/linux/of_device.h b/include/linux/of_device.h
index 8d31e39dd564..a4fe418e57f6 100644
--- a/include/linux/of_device.h
+++ b/include/linux/of_device.h
@@ -56,7 +56,7 @@ static inline struct device_node *of_cpu_device_node_get(int cpu)
 }
 
 int of_dma_configure(struct device *dev,
-		     struct device_node *np,
+		     struct device_node *parent,
 		     bool force_dma);
 #else /* CONFIG_OF */
 
@@ -107,7 +107,7 @@ static inline struct device_node *of_cpu_device_node_get(int cpu)
 }
 
 static inline int of_dma_configure(struct device *dev,
-				   struct device_node *np,
+				   struct device_node *parent,
 				   bool force_dma)
 {
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
