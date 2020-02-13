Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 589FE15C8DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+vRhsWnABbpPm4lKTL12eLCrS6bLV212WhX8uJ1UlM=; b=OyOmeDKQBj3pNf
	LQukbvNmdTFiEWdnyFAj+oqIv/YjjxLQ3pGLHg0rFc3r/vEo8OJvIaqgylq1LdI65W9s6KY/k1twF
	9AIYyCKBul+rg1rjfUx05wMu/hzS3lhlC6a996U5l8AsuvkHDOx42+YN+nxwsnzG6qv3ohz6To/YO
	P+ctG67/mpFnTC4UG5Grvx/I0q6X90/qRnQ+5kU0YJs+q80j13xwf4XJTXri0N+aXovIAnwiaWV9w
	TX65Nrs1UImhcZ4AM61yHkqSkTnaF2SfnbtlIrRp/eu2VFQ7AgLzrJPMjDtK6F+W0qB9LeahLAZQ5
	QwzuWOivXaVsuW+fuedw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HjR-0006Ot-1W; Thu, 13 Feb 2020 16:52:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hih-0005pl-G3
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id s10so7038971wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DLm+diZ2LcHfr0394F1s+yyfGk9eSuidgj94VOIGVJw=;
 b=tiYr7b92oPJK9Rk1Gz7ISnXadjy99eXjJlui5eg7HZk45BvGVN6A61GX0Yu4eKyStX
 vhGv6Ez24Yg8/5hgZtdcD8ly8JxoQmsj0N1Hf7SxEEKVARO5mx5sNNeS0YhSS6e9kq4f
 XotYFn8IB3W5V8rHY+OhK/PWIlMGxUeihlB+8viY5iKvXJKxzAdyjBip2SSKi5kNQJGJ
 C+m9VaqteGLe1AfCrDlGJmNJ9C88TEjEQ9jgLuT5HHgxutbNec16wTRjA7llxO2X0qJH
 mC/avBLY0qWSbS1xsDS5ZHOB8LrkXHdkPiQYRp+vm6UF2MK72kWfz6Rpj2lx/ChK8Sq8
 FOYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DLm+diZ2LcHfr0394F1s+yyfGk9eSuidgj94VOIGVJw=;
 b=bUkCfGoveu/3ALx4TNJDB9621SVwQz5tiixI0e+Q7hLckk7IFivK2uIiUVG7rSaLGg
 sQKbhaqbKYreXLdFo6fQ1AOFKyOZldAm+2TROCHcQEPa93ojEsv9vD0z8fWAd/TQi2Vp
 RKYxCNBvWzjSOdt7kL5GqBf75jEFTpN420cBdmvxDTblusHG/5o2jS2i+Q3E8uFlNhKR
 lMt4l+C/Z14Wk9ffWD0DeI4XK705sOZ14CukZEtgqYPxQWkQzcTJHYadJTCKS+KAhkIV
 60df+f63km52nqBn4jpgIIC7BsYk54X54SX9dMWi2DTc+3DwV6G/a6QUklAd029AJXhy
 8snw==
X-Gm-Message-State: APjAAAUFRAWsRXshyTUm3TqDcULp+dem7BDWdAto1Ql7IyafP/0CDiDU
 j8oK0r0S8bZ7G/qzmspo5izOCQ==
X-Google-Smtp-Source: APXvYqywhPBCuc7YV+pVDcQ5dsIQRL3jciqAiBWcZ6RYHFYVHZcjIZ/wRvt2G4McAzl+fiVmWPpNkw==
X-Received: by 2002:a1c:cc06:: with SMTP id h6mr6948649wmb.118.1581612726195; 
 Thu, 13 Feb 2020 08:52:06 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:05 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 02/11] PCI: Add ats_supported host bridge flag
Date: Thu, 13 Feb 2020 17:50:40 +0100
Message-Id: <20200213165049.508908-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085207_532453_8B6D7914 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Each vendor has their own way of describing whether a host bridge
supports ATS.  The Intel and AMD ACPI tables selectively enable or
disable ATS per device or sub-tree, while Arm has a single bit for each
host bridge.  For those that need it, add an ats_supported bit to the
host bridge structure.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/pci/probe.c | 7 +++++++
 include/linux/pci.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 512cb4312ddd..75c0a25af44e 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -598,6 +598,13 @@ static void pci_init_host_bridge(struct pci_host_bridge *bridge)
 	bridge->native_shpc_hotplug = 1;
 	bridge->native_pme = 1;
 	bridge->native_ltr = 1;
+
+	/*
+	 * Some systems may disable ATS at the host bridge (ACPI IORT,
+	 * device-tree), other filter it with a smaller granularity (ACPI DMAR
+	 * and IVRS).
+	 */
+	bridge->ats_supported = 1;
 }
 
 struct pci_host_bridge *pci_alloc_host_bridge(size_t priv)
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 3840a541a9de..9fe2e84d74d7 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -511,6 +511,7 @@ struct pci_host_bridge {
 	unsigned int	native_pme:1;		/* OS may use PCIe PME */
 	unsigned int	native_ltr:1;		/* OS may use PCIe LTR */
 	unsigned int	preserve_config:1;	/* Preserve FW resource setup */
+	unsigned int	ats_supported:1;
 
 	/* Resource alignment requirements */
 	resource_size_t (*align_resource)(struct pci_dev *dev,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
