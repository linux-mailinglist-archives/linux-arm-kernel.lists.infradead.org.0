Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DF0106C98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:54:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2M81cwtCnEcPIRGu3JXKWA35IOpxuEMRJNc38/rwkEo=; b=BYQBLNHxO3+Zmm
	0HDgn0+JSErxr80kwAkrxL89/Eu1XT4BPF7ccFY3P5rZ4xDyEExNMok77GGkzy0/JXBjDEVmy2VtM
	FW6US/UuZaszp+zljLP0AYuVTfuV946C0Jzbz063Rn79fjdS/WUfg6V6SvhuMsdSuG2B1D5dg1Jkf
	J1+DMkSgbUaf0iJNYRN1/aaQBiPqwSjhVXV/X3+EhE+2hiEH8UFVhO0wZaVQYohpY741Als6r6ojd
	CiaCLUNZXF1Q+oXXzegJkVXSAVNnXxTk9XasJ6MlwXlZdow17lr8HIfo7b2Y6eTm3KMpCdyvbdnhg
	Fw5uSYWzPSmq2/O1p4qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6a2-00086I-3f; Fri, 22 Nov 2019 10:54:26 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6We-00053j-Lk
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:51:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id s5so8071249wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QSOEuqiwSkp0pKauWHbGWQ/ZTlyMXXOkwS/8GtifrN4=;
 b=W7hCSd2ZSVICv1YxYegFWXSVd6l1oG1ycKu4xwLtfaqmJ1Sr/sS7CGCIhL5OUFctgV
 rFlDn4NTpw09pBYMHxwU6pH2cz9EVPDd82YiD+fipk/QzoM2ZTqkoGqbf2q6XD4JpyS+
 HkMTEjqWyUroxkEhpMb4c/0VyR9Aw+pHVSLPeKpU1gI66GcePWDqG9JF6i6l7iVkhw9O
 HBT/ds4+s3GdaMuNxe380ctWLjNh/MJ2b3Hk57/ghF/Biz69x0PQcTJZJYmGuyc5PIKl
 PPqZBuha1oUQBGfwL1MF98ZPcbDge7wnRdlh9wtxqOZWybLzDV/fSrbPRQTF4GQmLdAt
 HDsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QSOEuqiwSkp0pKauWHbGWQ/ZTlyMXXOkwS/8GtifrN4=;
 b=Hupwj3clb5Zgu77ZRcDniQ16gxJZqgug34J0o9MQ/jSMM5TPvQm85k5fHfHrWO56fN
 1qomLC99vsBjpjVB/knrkUgLVZcIAp49gZA8vE8hPcslgDokHzKoev6kPknB7IIZ9Scv
 AzmhkIZ5zd664XtM3sbMyokVEXfjGuUkDN7okOakVc4wpkG3LJQmd/WxUOrx5AJTM3MG
 TwgjneBpTj45pb+ERSTcfo2WALhk3gfd1oH7aVVig8cLSX7oaoHF82+9l4wHHsgnD+/c
 aMU8wzWuEIxcTVcOJEz3JKVt2y+ou2dl1YRbRLGFy7ukI0lGz16NjE9lMN7ROOlDUlXp
 Lwrg==
X-Gm-Message-State: APjAAAWwgBzC+I6OK/2Pl3AJSxodbJMePac26GpVfysQITywUYVh3qGB
 HosotNcXcCMVh6HbxxrZXoRwDg==
X-Google-Smtp-Source: APXvYqyrNICCuqc5KqD/VdDvmjiGaMlkwy1z/6XvuGideDQTx1xutKKjYm2Bj/850Fnk8Z8ehJdCwA==
X-Received: by 2002:adf:f088:: with SMTP id n8mr17421703wro.115.1574419855065; 
 Fri, 22 Nov 2019 02:50:55 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.50.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:50:54 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 03/13] ACPI/IORT: Allow registration of external tables
Date: Fri, 22 Nov 2019 11:49:50 +0100
Message-Id: <20191122105000.800410-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025056_809664_8090A462 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Add a function to register an IORT table from an external source.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/iort.c       | 22 ++++++++++++++++++++--
 include/linux/acpi_iort.h | 10 ++++++++++
 2 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/iort.c b/drivers/acpi/iort.c
index d62a9ea26fae..9c6c91e06f8f 100644
--- a/drivers/acpi/iort.c
+++ b/drivers/acpi/iort.c
@@ -144,6 +144,7 @@ typedef acpi_status (*iort_find_node_callback)
 
 /* Root pointer to the mapped IORT table */
 static struct acpi_table_header *iort_table;
+static enum iort_table_source iort_table_source;
 
 static LIST_HEAD(iort_msi_chip_list);
 static DEFINE_SPINLOCK(iort_msi_chip_lock);
@@ -1617,11 +1618,28 @@ static void __init iort_init_platform_devices(void)
 	}
 }
 
+void __init acpi_iort_register_table(struct acpi_table_header *table,
+				     enum iort_table_source source)
+{
+	/*
+	 * Firmware or hypervisor should know better than give us two IORT
+	 * tables.
+	 */
+	if (WARN_ON(iort_table))
+		return;
+
+	iort_table = table;
+	iort_table_source = source;
+
+	iort_init_platform_devices();
+}
+
 void __init acpi_iort_init(void)
 {
 	acpi_status status;
+	static struct acpi_table_header *table;
 
-	status = acpi_get_table(ACPI_SIG_IORT, 0, &iort_table);
+	status = acpi_get_table(ACPI_SIG_IORT, 0, &table);
 	if (ACPI_FAILURE(status)) {
 		if (status != AE_NOT_FOUND) {
 			const char *msg = acpi_format_exception(status);
@@ -1632,5 +1650,5 @@ void __init acpi_iort_init(void)
 		return;
 	}
 
-	iort_init_platform_devices();
+	acpi_iort_register_table(table, IORT_SOURCE_IORT);
 }
diff --git a/include/linux/acpi_iort.h b/include/linux/acpi_iort.h
index 8e7e2ec37f1b..f4db5fff07cf 100644
--- a/include/linux/acpi_iort.h
+++ b/include/linux/acpi_iort.h
@@ -11,6 +11,11 @@
 #include <linux/fwnode.h>
 #include <linux/irqdomain.h>
 
+enum iort_table_source {
+	IORT_SOURCE_IORT,	/* The Real Thing */
+	IORT_SOURCE_VIOT,	/* Paravirtual extensions */
+};
+
 #define IORT_IRQ_MASK(irq)		(irq & 0xffffffffULL)
 #define IORT_IRQ_TRIGGER_MASK(irq)	((irq >> 32) & 0xffffffffULL)
 
@@ -27,6 +32,8 @@ int iort_register_domain_token(int trans_id, phys_addr_t base,
 void iort_deregister_domain_token(int trans_id);
 struct fwnode_handle *iort_find_domain_token(int trans_id);
 #ifdef CONFIG_ACPI_IORT
+void acpi_iort_register_table(struct acpi_table_header *table,
+			      enum iort_table_source source);
 void acpi_iort_init(void);
 u32 iort_msi_map_rid(struct device *dev, u32 req_id);
 struct irq_domain *iort_get_device_domain(struct device *dev, u32 req_id);
@@ -37,6 +44,9 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *size);
 const struct iommu_ops *iort_iommu_configure(struct device *dev);
 int iort_iommu_msi_get_resv_regions(struct device *dev, struct list_head *head);
 #else
+static void acpi_iort_register_table(struct acpi_table_header *table,
+				     enum iort_table_source source)
+{ }
 static inline void acpi_iort_init(void) { }
 static inline u32 iort_msi_map_rid(struct device *dev, u32 req_id)
 { return req_id; }
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
