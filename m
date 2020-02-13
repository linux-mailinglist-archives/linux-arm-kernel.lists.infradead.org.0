Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F9315C8E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:53:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGUW+f2LKvql3tpduOm0wz27xyokFBfcNqWGlDFrRAY=; b=VYXYygJRRYubw3
	tT7zSjiMkfU07P+zU5S2h15/NN0udWLhfK0KwdfLcG1zsPw/1QpdVLYXO93JL26MxxOQ5fJrq7+lN
	2J9mfakG+RB/y98RL1IZ+3g9I3nVPCFqGpm/ONqRHC4qqyNMdD314zEbhrSG+WpYbGDHNzH3c8dRo
	Lt8tQovxEKggoEKP7cOlbM8taVqpEAmnSR2E5RKT+UAj1vLoHD9kWVu21wGgDq2GBzh5w6iDQjumK
	qNLF8HLABuMAAJMY20wn5DK+1KsKwnB9Gz65PWJS/AH9EDKrvp4nHvlG7pkTrIjePPu0lzxxLrdfk
	3KNH5lvAS5NEaYvK3v6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hjg-0006b2-LP; Thu, 13 Feb 2020 16:53:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hii-0005q7-JH
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so7554143wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oJuZlZp89pOsXq+0VjXQ9jH+YMeD48viPFbAUV42/7c=;
 b=am+o3vVNolOAaASmrjBUw9hY20zh4HtDIeCV6yutj5xzyXVGB72Y16IHxHQIChWN4K
 RwEtBXyPJzyBdLrUiuDB9WebfVID313RPtxibqDBWL2qI4fEdVhWvQdYBtq8iutE2Txo
 w88Wt4/3NYU97+1x1rVFsDxgWkSkf5Y5U5yAYg/nOTIQTDbrGTepdUcz0DlVUZ3/K36x
 9H8N+uDIR/4lAvu+ulNTEYXWpYhtxoIrTTyYBvEDAkg3aGBagLnZaGfdsHrcMOkeYCLH
 gUkMaS0Nl4Eix25KyyEsKtyXrPM+71nsvKDJsWYCA2NZQ4m0FRLUlADHZ2WFOr3VOT/B
 q1bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oJuZlZp89pOsXq+0VjXQ9jH+YMeD48viPFbAUV42/7c=;
 b=mZFjNHOGx+VVRjTPOwy7qH9ywbhqfM2NuHHefPSBMpUsdR0BLqlg+yUMHhem4Ndb6i
 b3TyKKfy67ouFnlpTDOs1MsNhZNV4AXj2R6UK1ltbNPgRt9smDAZLw5ecIOCmiaaLhzw
 zyHG9Z/Qcf1l7UhIqU25lUlThLlmt2xpOO1YQIPYI6Ii1gCqYlJ/60OShktTjrDXBKs9
 M+zi3jiH4l2z6fdAgrFWqZrXJvNM1Mhb3g/e0uEtkLaeVuaUW0tCl6wnav6hRybBAX4e
 E3coNtPuxAcFLdcMeaAgtG6BS0fBEKv+G72yBsL/dXdkSBf+n2NRHjgP+9iRbdlc57z0
 egdA==
X-Gm-Message-State: APjAAAX5xDZ/Q7yQoYnH/V3Pbg+ieZBBBQAdT33rkQPas2plL5PuXJHl
 k8IlSrpkysHCxkLWrwFPWx9E8A==
X-Google-Smtp-Source: APXvYqyRdKXRvNXU931mCSFJbrbPQ+3L84wtnv9cjPTz5Ed5dcoIv/1s7/DTUZ9TwVfpeh22DgxFBg==
X-Received: by 2002:adf:f1c6:: with SMTP id z6mr21737194wro.279.1581612727305; 
 Thu, 13 Feb 2020 08:52:07 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:06 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 03/11] PCI: OF: Check whether the host bridge supports ATS
Date: Thu, 13 Feb 2020 17:50:41 +0100
Message-Id: <20200213165049.508908-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085208_642445_25AD3A0C 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
 guohanjun@huawei.com, amurray@thegoodpenguin.co.uk, robin.murphy@arm.com,
 dwmw2@infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Copy the ats-supported flag into the pci_host_bridge structure.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/pci/controller/pci-host-common.c | 1 +
 drivers/pci/of.c                         | 9 +++++++++
 include/linux/of_pci.h                   | 3 +++
 3 files changed, 13 insertions(+)

diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
index 250a3fc80ec6..a6ac927be291 100644
--- a/drivers/pci/controller/pci-host-common.c
+++ b/drivers/pci/controller/pci-host-common.c
@@ -92,6 +92,7 @@ int pci_host_common_probe(struct platform_device *pdev,
 		return ret;
 	}
 
+	of_pci_host_check_ats(bridge);
 	platform_set_drvdata(pdev, bridge->bus);
 	return 0;
 }
diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 81ceeaa6f1d5..4b8a877f1e9f 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -576,6 +576,15 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(pci_parse_request_of_pci_ranges);
 
+void of_pci_host_check_ats(struct pci_host_bridge *bridge)
+{
+	struct device_node *np = bridge->bus->dev.of_node;
+
+	if (!np)
+		return;
+
+	bridge->ats_supported = of_property_read_bool(np, "ats-supported");
+}
 #endif /* CONFIG_PCI */
 
 /**
diff --git a/include/linux/of_pci.h b/include/linux/of_pci.h
index 29658c0ee71f..2d0af410438c 100644
--- a/include/linux/of_pci.h
+++ b/include/linux/of_pci.h
@@ -7,12 +7,14 @@
 
 struct pci_dev;
 struct device_node;
+struct pci_host_bridge;
 
 #if IS_ENABLED(CONFIG_OF) && IS_ENABLED(CONFIG_PCI)
 struct device_node *of_pci_find_child_device(struct device_node *parent,
 					     unsigned int devfn);
 int of_pci_get_devfn(struct device_node *np);
 void of_pci_check_probe_only(void);
+void of_pci_host_check_ats(struct pci_host_bridge *bridge);
 #else
 static inline struct device_node *of_pci_find_child_device(struct device_node *parent,
 					     unsigned int devfn)
@@ -26,6 +28,7 @@ static inline int of_pci_get_devfn(struct device_node *np)
 }
 
 static inline void of_pci_check_probe_only(void) { }
+static inline void of_pci_host_check_ats(struct pci_host_bridge *bridge) { }
 #endif
 
 #if IS_ENABLED(CONFIG_OF_IRQ)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
