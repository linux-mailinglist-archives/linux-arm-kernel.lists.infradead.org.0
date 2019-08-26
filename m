Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0D59D637
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 21:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCGeTbcNY84oEVzQlnabnU273QiOUENNIPesv1uUDJ8=; b=J1X2wAT661QlKW
	Z1nUQKk0nzzRQfXYDnraE+xAWUD3Di7QkocHCNsA7OlnR6bxr3VdLe+WvzqKEDW2qoG1yZfj7lMmn
	yvbLcnlCwMtykgBQjgAt0q/9meGSNWUQBOfsw5DNJxVSpwUy9YscaRMPO/2QMatXz1EBMdxFuP8u+
	QXOoL7W/cEFy+YzL5U0UEH9K5Kac4gtRX/HBxf8oN9iaMvLbQ+cXwFR3YMcaVhREFoTRd4GwKxva3
	a4FpwMJCgP8J3agfzS78o66EJGAj9Sqn3QI4CmBTG+TzDqCr5wsDbGffD/8ArQ6LtYKQH+yQi3QCq
	3QEJUWo6CMI/Uow1o2aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KGm-0000nl-H2; Mon, 26 Aug 2019 19:03:12 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KEj-0007Ah-M2
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 19:01:08 +0000
Received: by mail-qk1-x743.google.com with SMTP id p13so14926268qkg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 12:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KCVg9aX8Ei31UqOBsuMHmMbIQ0RCV8gvQ+BUD1iKe9c=;
 b=jvSafae/Pvhx1ePY9KHCUAHQxBA0240DaYA2EEYIeJv90j9mUT/owS3v1JM2H2Fbgm
 Gz6u5l9d2paU6NUyVT7sP3J0+xSnFnzr+3EwrP/3kag9XqVwqJUPqQFRtso7/6a0l0HI
 q/R6/ebth1XnoCuJESeeYoO1XnP2X5HIG1tl+a5dPDYmj+FO2tdCtnWIu832yz+11bXP
 J9AC/S80/rSdJsITUCH2lUO4rZwcsp1g7kgxhtaYD0QHAYSqcyZIQ3+FSdFqqXSv6KiJ
 jERTTw7XIJ8w4vdbznCwiS6UtMSG6hhJ5r5DEisniwbgyz9h+GbMSj5yFTCaIUW5f9jl
 wy4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KCVg9aX8Ei31UqOBsuMHmMbIQ0RCV8gvQ+BUD1iKe9c=;
 b=XOATtKZ5q91dJLK9LRwe4QdN5j2MARqKFP5dq3h0Guaq4glZ6bY7sFDZPH83vvoA2s
 QzgFvaNZw8V0NnrN6ORs7nj/UVeodLE0mHdaLPn8OiG+DC8GuOMwuO3DmduxeReHcGfZ
 sdT8txje7JuVXoayZdrxtOB2Pl42d0r0e7fJNYHQ0io2IiUb2F3fQJIqYSz0bxDKjj51
 YTeyn0Zq9K2HhM/ApsMrOdkKLMKn52uYBIy5Pz+6L4u6v6/myOPoOq17LVg37pTcYeKW
 JmxF/7/I3BYwFyncge8wB4mauzIsfCUg83ShIVzWBFPU+PHiQYZ7MlJP5ezvul4G+zBl
 CmdQ==
X-Gm-Message-State: APjAAAUS0sHo+oRCb4dYaCKPw+9Dfh1nu13WN6Eowx3q/KZl7SoT8rtv
 SmKV6KNysm5RCyE1QX5+VJyhmw==
X-Google-Smtp-Source: APXvYqyHi/lgyXzbqvh1IW/JvUmfZeQrgzncbclhhidqt/Ua9XVbZyYnS+d2hbmlaFxUN3tJbJpaww==
X-Received: by 2002:a37:bac3:: with SMTP id k186mr17515757qkf.61.1566846064932; 
 Mon, 26 Aug 2019 12:01:04 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o45sm8614377qta.65.2019.08.26.12.01.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:01:04 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com
Subject: [PATCH v1 5/6] rqchip/gic-v3-its: move reset pending table outside of
 allocator
Date: Mon, 26 Aug 2019 15:00:55 -0400
Message-Id: <20190826190056.27854-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826190056.27854-1-pasha.tatashin@soleen.com>
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_120105_773430_CEBAC627 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow to use reserved memory for interrupt controller tables.

Currently, it is not possible to do kexec reboots without possible memory
corruption using device tree and GICv3 interrupt controller.

GICv3 can be configured once during boot, and location of tables cannot
be changed thereafter.

The fix is to allow to reserve memory region in interrupt controller device
property, and use it to do allocations.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 82 ++++++++++++++++++++++++++++----
 1 file changed, 72 insertions(+), 10 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index d5f3508ca11f..aeda8760cc4e 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -47,6 +47,54 @@
 
 static u32 lpi_id_bits;
 
+/*
+ * Describes reserved memory region in interrupt controller.
+ * The memory reserved: [pa_start, pa_end)
+ */
+struct of_resv {
+	unsigned long pa_start;
+	unsigned long pa_end;
+};
+
+static struct page __init *get_of_page(struct of_resv *resv, unsigned long size)
+{
+	unsigned long pa = ALIGN(resv->pa_start, size);
+	unsigned long pa_next = pa + size;
+
+	/* Check if there is enough memory reserved to do another allocation */
+	if (pa_next > resv->pa_end)
+		return NULL;
+
+	resv->pa_start = pa_next;
+	memset(phys_to_virt(pa), 0, size);
+
+	return phys_to_page(pa);
+}
+
+/*
+ * Memory controller might have a reserved memory region to be used for table
+ * allocations. This is a requirement for kexec reboots.
+ */
+static void __init its_of_mem_region(struct device_node *node,
+				     struct of_resv **resv,
+				     struct of_resv *resv_buf)
+{
+	struct device_node *np = of_parse_phandle(node, "memory-region", 0);
+	struct resource mem_res;
+
+	if (!np)
+		return;
+
+	if (of_address_to_resource(np, 0, &mem_res)) {
+		pr_warn("%pOF: address to resource failed\n", np);
+		return;
+	}
+
+	resv_buf->pa_start = mem_res.start;
+	resv_buf->pa_end = mem_res.start + resource_size(&mem_res);
+	*resv = resv_buf;
+}
+
 /*
  * We allocate memory for PROPBASE to cover 2 ^ lpi_id_bits LPIs to
  * deal with (one configuration byte per interrupt). PENDBASE has to
@@ -1665,7 +1713,7 @@ static int gic_reserve_range(phys_addr_t addr, unsigned long size)
 	return 0;
 }
 
-static int __init its_setup_lpi_prop_table(void)
+static int __init its_setup_lpi_prop_table(struct of_resv *resv)
 {
 	if (gic_rdists->flags & RDIST_FLAGS_RD_TABLES_PREALLOCATED) {
 		unsigned long pa;
@@ -1676,7 +1724,10 @@ static int __init its_setup_lpi_prop_table(void)
 		lpi_id_bits = (val & GICR_PROPBASER_IDBITS_MASK) + 1;
 
 		pa = val & GENMASK_ULL(51, 12);
-		va = memremap(pa, LPI_PROPBASE_SZ, MEMREMAP_WB);
+		if (resv)
+			va = phys_to_virt(pa);
+		else
+			va = memremap(pa, LPI_PROPBASE_SZ, MEMREMAP_WB);
 		gic_rdists->prop_table_pa = pa;
 		gic_rdists->prop_table_va = va;
 	} else {
@@ -1685,7 +1736,10 @@ static int __init its_setup_lpi_prop_table(void)
 		lpi_id_bits = min_t(u32,
 				    GICD_TYPER_ID_BITS(gic_rdists->gicd_typer),
 				    ITS_MAX_LPI_NRBITS);
-		page = its_allocate_prop_table(GFP_NOWAIT);
+		if (resv)
+			page = get_of_page(resv, LPI_PROPBASE_SZ);
+		else
+			page = its_allocate_prop_table(GFP_NOWAIT);
 		if (!page) {
 			pr_err("Failed to allocate PROPBASE\n");
 			return -ENOMEM;
@@ -2009,7 +2063,8 @@ static void its_free_pending_table(struct page *pt)
 
 /*
  * Booting with kdump and LPIs enabled is generally fine. Any other
- * case is wrong in the absence of firmware/EFI support.
+ * case is wrong in the absence of firmware/EFI support or reserve-memory
+ * in device tree for interrupt controller.
  */
 static bool enabled_lpis_allowed(void)
 {
@@ -2023,7 +2078,7 @@ static bool enabled_lpis_allowed(void)
 	return gic_check_reserved_range(addr, LPI_PROPBASE_SZ);
 }
 
-static int __init allocate_lpi_tables(void)
+static int __init allocate_lpi_tables(struct of_resv *resv)
 {
 	u64 val;
 	int err, cpu;
@@ -2039,7 +2094,7 @@ static int __init allocate_lpi_tables(void)
 		pr_info("GICv3: Using preallocated redistributor tables\n");
 	}
 
-	err = its_setup_lpi_prop_table();
+	err = its_setup_lpi_prop_table(resv);
 	if (err)
 		return err;
 
@@ -2051,7 +2106,10 @@ static int __init allocate_lpi_tables(void)
 	for_each_possible_cpu(cpu) {
 		struct page *pend_page;
 
-		pend_page = its_allocate_pending_table(GFP_NOWAIT);
+		if (resv)
+			pend_page = get_of_page(resv, LPI_PENDBASE_SZ);
+		else
+			pend_page = its_allocate_pending_table(GFP_NOWAIT);
 		if (!pend_page) {
 			pr_err("Failed to allocate PENDBASE for CPU%d\n", cpu);
 			return -ENOMEM;
@@ -3957,16 +4015,20 @@ int __init its_init(struct fwnode_handle *handle, struct rdists *rdists,
 		    struct irq_domain *parent_domain)
 {
 	struct device_node *of_node;
+	struct of_resv resv_buf;
+	struct of_resv *resv = NULL;
 	struct its_node *its;
 	bool has_v4 = false;
 	int err;
 
 	its_parent = parent_domain;
 	of_node = to_of_node(handle);
-	if (of_node)
+	if (of_node) {
 		its_of_probe(of_node);
-	else
+		its_of_mem_region(of_node, &resv, &resv_buf);
+	} else {
 		its_acpi_probe();
+	}
 
 	if (list_empty(&its_nodes)) {
 		pr_warn("ITS: No ITS available, not enabling LPIs\n");
@@ -3975,7 +4037,7 @@ int __init its_init(struct fwnode_handle *handle, struct rdists *rdists,
 
 	gic_rdists = rdists;
 
-	err = allocate_lpi_tables();
+	err = allocate_lpi_tables(resv);
 	if (err)
 		return err;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
