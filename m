Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3917A106C94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZhzhW0NerZEvWomzMd3RqDZpF4pnP0R7a8zkFvy+Lo=; b=fgefPkre2jk4IB
	ThLhh0uph2kH44vFypYJYyCb28n4DwhS7JSaltv2htxX4nwWS5JOBgSX2znStp0XwZCxzzQWmxihk
	EMXtYzG/dEDsEB+R+cWAc9T/rK3QrDsqSHrW4R8d8lhYKEyULMNHGORfrlNs9aORa38vGq+3qanhm
	JE5YkyVVqebvjW/i8DGKswAcUeEMzbaX2SPwExrG7OspWC95vVU0CGyy+Wvo9EiXUgCxk63QIs+uc
	xXt6Z97OCj/DpAFp8eaZiPojKkAY46Ok5N4byYSij4dzG2LBzfRCgQx0cCsL05KPmgbKZYrLIPjYe
	GdzHphct/Np/x+OC9qnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6ZU-0007PX-Ox; Fri, 22 Nov 2019 10:53:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Wd-00051i-Qx
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:50:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id n188so5118789wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/inLver145cFol/5bUSjQQctnMruvUV98+tylzxeqnk=;
 b=KvntgGm303h0Ssxf9aIFIK2XkoQiqLGKm8oBQdtFp8m6CkhuS563d23h38idVHFBTS
 kkHWOjKBIeiLqtFnIN5JqRxHj/IPpP1+8FLf2khs7+nbgJ0OpH9sMYPdLblXJN/5mPtZ
 Wb+8873vkfkzhOEno3SZc1Y9APZr1NOsSzkKP1ZCQ6Z0rpQLTlKOI9WgdHg2e1LDo7F0
 tBgAB48y5L6SMpiI5ioJ2KIyTBgMturfH5KATIT+F+PcJxgVRRlhZPFK7De+LuxTeNtE
 M4IA2puSbiUMBj2P+pdk0515MczvrK3k66Sn0WsjBltTEdPU0l74IdtDnv4aQdCAd0EZ
 nmsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/inLver145cFol/5bUSjQQctnMruvUV98+tylzxeqnk=;
 b=bpAlh9B/ER/Y+6OfP1e/ZePAkeBLFGCirlDRnOeKipVq7S9q1A2PO4XaYomMVr3Axr
 eaui6KNLJ0zPbeumPqT03GHBH50W+3Y/K4e1tXS+5rtlG8LMUYcwWG6JFAkTwA++cNF7
 eamX9R+gsVxulfF7Um6mXJqDb08ErwT3VYLZLz0ht8hpZ/UizQ7jB/WQpZ/vaaX87pkb
 GdP7TBSq507Up9jlXNvihggpC7+i87m/Gh7M/i9brtqWsOISdiMNORazh2UIlb1MC9vS
 YcXkM57Tq64P5TtGyJLNrOWzTBrHwgg9SGj/V4ukYDME4c2L8jQNW059yRlZvdsJ+exM
 OEUA==
X-Gm-Message-State: APjAAAUvH10VALn+7kTo31io7o2qDRel+5VVXE7KMhnemjiRL7GNStgo
 9TqjP1gs8GG++Y5x3Kdc9f6vEnaflw0=
X-Google-Smtp-Source: APXvYqybl+9ikgvCfSNL7CGfiLoR9Bk+QtDdRzYQU3EDUxB/3MAL7UXcY6vI8QXG4ikVn9LuAUlWLA==
X-Received: by 2002:a05:600c:3cd:: with SMTP id
 z13mr15785876wmd.105.1574419853787; 
 Fri, 22 Nov 2019 02:50:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.50.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:50:53 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 02/13] ACPI: Add VIOT definitions
Date: Fri, 22 Nov 2019 11:49:49 +0100
Message-Id: <20191122105000.800410-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025055_944796_F3387422 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kevin.tian@intel.com, lorenzo.pieralisi@arm.com, mst@redhat.com,
 gregkh@linuxfoundation.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, eric.auger@redhat.com, sebastien.boeuf@intel.com,
 jacob.jun.pan@intel.com, guohanjun@huawei.com, bhelgaas@google.com,
 jasowang@redhat.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is temporary, until the VIOT table is published and these
definitions added to ACPICA.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/acpi/actbl2.h | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/include/acpi/actbl2.h b/include/acpi/actbl2.h
index e45ced27f4c3..99c1d747e9d8 100644
--- a/include/acpi/actbl2.h
+++ b/include/acpi/actbl2.h
@@ -25,6 +25,7 @@
  * the wrong signature.
  */
 #define ACPI_SIG_IORT           "IORT"	/* IO Remapping Table */
+#define ACPI_SIG_VIOT           "VIOT"	/* Virtual I/O Table */
 #define ACPI_SIG_IVRS           "IVRS"	/* I/O Virtualization Reporting Structure */
 #define ACPI_SIG_LPIT           "LPIT"	/* Low Power Idle Table */
 #define ACPI_SIG_MADT           "APIC"	/* Multiple APIC Description Table */
@@ -412,6 +413,36 @@ struct acpi_ivrs_memory {
 	u64 memory_length;
 };
 
+/*******************************************************************************
+ *
+ * VIOT - Virtual I/O Table
+ *        Version 1
+ *
+ ******************************************************************************/
+
+struct acpi_table_viot {
+	struct acpi_table_header header;
+	u8 reserved[12];
+	struct acpi_table_header base_table;
+};
+
+#define ACPI_VIOT_IORT_NODE_VIRTIO_PCI_IOMMU    0x80
+#define ACPI_VIOT_IORT_NODE_VIRTIO_MMIO_IOMMU   0x81
+
+struct acpi_viot_iort_virtio_pci_iommu {
+	u32 devid;
+};
+
+struct acpi_viot_iort_virtio_mmio_iommu {
+	u64 base_address;
+	u64 span;
+	u64 flags;
+	u64 interrupt;
+};
+
+/* FIXME: rename this monstrosity. */
+#define ACPI_VIOT_IORT_VIRTIO_MMIO_IOMMU_CACHE_COHERENT (1<<0)
+
 /*******************************************************************************
  *
  * LPIT - Low Power Idle Table
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
