Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A04721818B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRW3bcn3oWkWPOel6qtGT/pGDGgHCFkUqz6ncNGiaw8=; b=Vg2XvvgszSTihj
	GWFFtj0ieXvl82Xkh8v+rj6HezxSYGvWUP4uGD9WKZFlKiB44d5Rwx1ftsy0Uw6369uyHv+zICqph
	XU05f6EnJ1EO4Ay20vHPma2Vy63XghtMUT0oEGOmPJ5h7moSt104sz23bVL3dgrAaRrvHaQ4p8rtZ
	cit6/X/DOJ/pQ+3KXB7W/KcKm0xl24vlXcU80opmpYRJb06NJQCasfA1ak2Khpr3nYYmx73U0R1AU
	aSIZDEjq/tk1R5EY1YkEKSFLJ6Q9JiAUgH/c14qK6QVJfyP1Qokg9Q430IEFSgVKloSOM/CIwJhCu
	vEHD8HjjF8pZWmglANqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0mu-0000zi-H3; Wed, 11 Mar 2020 12:48:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lK-00085g-He
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:47:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id a132so1946949wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b6OCZpMX/zgjbiuYOZTv/yFn5g+Ml1pLP7pmNaB6uOk=;
 b=MjFUpxHpBskH8AZCa8gyvEeUFGWD8nE+I7Ccpw5x/EXEZNlkDfyhMtLIM9pIzDpMVv
 yv0WXrEyAyadtJ8laExtvI33SAK/Yj/XjyQUF33QkNa3LaJWSWjjXypqpRKmE99YyjLb
 Kzy38i8AKYH4slxDJSkaJhQqvJ0EyrgpZHy986v4LgMtDJY23CAifDPwM90WBTpJll1C
 aCNKlrXt1hD1ylm12EIODmL0J+kS46opQN5Wu90Eqk0d9OEv7vwJtW1G2hoWdmN9jEBN
 PsbTfgKubpyqXHQuVx5zuV7EXMF/qnMdkHydeM2T9wWjSBiZg5D3b6eUELp4nBntbfqe
 BObw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b6OCZpMX/zgjbiuYOZTv/yFn5g+Ml1pLP7pmNaB6uOk=;
 b=XqECdGcG/ZOSns+7sER5g3JW9nVt3rf0w+SznNTZ1vCx136hjn7BJ8jQK27kNJps4R
 A3DbKjrYSHaif1eBpmgOHlBziXPeTUIhkbqZcntivU2v7F/m0MGVr9ZlJ0LtzbG86c2H
 2Z38KRLj3AoAQLymFecywHfUxfUNYA906O2Kqhz9ajXwqH9v62QqIpNdcj4ky2xABH1T
 xsAo1PZ18+3rPe1VHBG1w+Stzfq+B2jdeJqj1Ya3CeM6CuSaYod18SdZTqNupoG1xuPE
 8XsJsvLlkQphDLZ0NzVYVP7//tCLsYaiI7Bq3ovkk6AqI7S3pIYCklJzwMZ1q6QNptyt
 sx/w==
X-Gm-Message-State: ANhLgQ22UJzBndNAgskkYvrE+3WiGGpaJqXOXJ/LVv235Bc4LdYGVRQV
 H8vkiVuotYVVb6wff6FoJJrJwA==
X-Google-Smtp-Source: ADFU+vtkHVanNQvPFzQ2zU8Odytq9w4wgEuuvipDqHybssyuXsKZkeB4j+7vEMafMywcklgaRLR7SA==
X-Received: by 2002:a7b:c414:: with SMTP id k20mr3677774wmi.119.1583930820944; 
 Wed, 11 Mar 2020 05:47:00 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.46.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:47:00 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 05/11] PCI/ATS: Gather checks into pci_ats_supported()
Date: Wed, 11 Mar 2020 13:45:00 +0100
Message-Id: <20200311124506.208376-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311124506.208376-1-jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054702_757460_5662A570 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 lorenzo.pieralisi@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, rjw@rjwysocki.net, guohanjun@huawei.com,
 amurray@thegoodpenguin.co.uk, robin.murphy@arm.com, dwmw2@infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IOMMU drivers need to perform several tests when checking if a device
supports ATS.  Move them all into a new function that returns true when
a device and its host bridge support ATS.

Since pci_enable_ats() now calls pci_ats_supported(), the following
new checks are now common:
* whether a device is trusted.  Devices plugged into external-facing
  ports such as thunderbolt are untrusted.
* whether the host bridge supports ATS, which defaults to true unless
  the firmware description states that ATS isn't supported by the host
  bridge.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/pci/ats.c       | 30 +++++++++++++++++++++++++++++-
 include/linux/pci-ats.h |  3 +++
 2 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
index 390e92f2d8d1..bbfd0d42b8b9 100644
--- a/drivers/pci/ats.c
+++ b/drivers/pci/ats.c
@@ -30,6 +30,34 @@ void pci_ats_init(struct pci_dev *dev)
 	dev->ats_cap = pos;
 }
 
+/**
+ * pci_ats_supported - check if the device can use ATS
+ * @dev: the PCI device
+ *
+ * Returns true if the device supports ATS and is allowed to use it, false
+ * otherwise.
+ */
+bool pci_ats_supported(struct pci_dev *dev)
+{
+	struct pci_host_bridge *bridge;
+
+	if (!dev->ats_cap)
+		return false;
+
+	if (dev->untrusted)
+		return false;
+
+	bridge = pci_find_host_bridge(dev->bus);
+	if (!bridge)
+		return false;
+
+	if (!bridge->ats_supported)
+		return false;
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(pci_ats_supported);
+
 /**
  * pci_enable_ats - enable the ATS capability
  * @dev: the PCI device
@@ -42,7 +70,7 @@ int pci_enable_ats(struct pci_dev *dev, int ps)
 	u16 ctrl;
 	struct pci_dev *pdev;
 
-	if (!dev->ats_cap)
+	if (!pci_ats_supported(dev))
 		return -EINVAL;
 
 	if (WARN_ON(dev->ats_enabled))
diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
index d08f0869f121..f75c307f346d 100644
--- a/include/linux/pci-ats.h
+++ b/include/linux/pci-ats.h
@@ -6,11 +6,14 @@
 
 #ifdef CONFIG_PCI_ATS
 /* Address Translation Service */
+bool pci_ats_supported(struct pci_dev *dev);
 int pci_enable_ats(struct pci_dev *dev, int ps);
 void pci_disable_ats(struct pci_dev *dev);
 int pci_ats_queue_depth(struct pci_dev *dev);
 int pci_ats_page_aligned(struct pci_dev *dev);
 #else /* CONFIG_PCI_ATS */
+static inline bool pci_ats_supported(struct pci_dev *d)
+{ return false; }
 static inline int pci_enable_ats(struct pci_dev *d, int ps)
 { return -ENODEV; }
 static inline void pci_disable_ats(struct pci_dev *d) { }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
