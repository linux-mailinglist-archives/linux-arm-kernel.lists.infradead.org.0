Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5E3F3ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7ZQnixNTJX3V+6y+Ibz4s2RML86aGsNCcOfY5BHNhM=; b=fXRM835UVYadCp
	aVMuwYHI/qt/edB8Fe2XnFQYLzydS0zhv/+VY33D7QoJNGHP2IxybFBJAYvWyKMJc9WtLglOMMD/L
	JmyejSPjmQZsCz0fgyLiOoEielL5kdPcmVIfdWVurPyvFkiLdoW0eBExtPfsnhR1Yhsz9xq6aNMbN
	AbaXEplCjePK0i2mbllT+0WBIGyKFtfWhvhqEYp/jtewepTO+jAKmALhwp6TVfGftKeHpZM6Cmq0q
	s5qIzYjy8fnVWlRuOjNpyV2LXH1iXQrz5nkh40AtOZHSSoGPIE+FjK9yFG+HfG9XzLOgPHE/E+bsm
	yZ95EfFdNedR+6G4YTag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPmg-0007aW-BJ; Tue, 30 Apr 2019 10:14:46 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPlh-0006aZ-3S
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:13:52 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x3UADXVA010141;
 Tue, 30 Apr 2019 05:13:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556619213;
 bh=xPQl9JjmQxyn3zo4bM1wLXs+byZ03Zol063XB/EjZcQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=mo6y7xYpMHsgFc7vM+Voz7QCzhSAu67LApEALVUUjrR9mHjKYVlj6KZZ5OYa4qkEZ
 GLnzyuAGX7cvCctyDrINmtiKuEW+B/RZxUHeCy7s/+8x0TsK6idfx3GCN3IChQXbMk
 FqVyxCXmb1/Y1K/P82oNiRAa/N4xlMNl6b8CEtos=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x3UADXLh126058
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Apr 2019 05:13:33 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Apr 2019 05:13:32 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Apr 2019 05:13:32 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x3UAD0Y8085082;
 Tue, 30 Apr 2019 05:13:28 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, Nishanth Menon
 <nm@ti.com>, <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH v8 06/14] genirq: Introduce irq_chip_{request,
 release}_resource_parent() apis
Date: Tue, 30 Apr 2019 15:42:22 +0530
Message-ID: <20190430101230.21794-7-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190430101230.21794-1-lokeshvutla@ti.com>
References: <20190430101230.21794-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_031345_646905_C9668DD4 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, linus.walleij@linaro.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce irq_chip_{request,release}_resource_parent() apis so
that these can be used in hierarchical irqchips.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
Changes since v7:
-None

 include/linux/irq.h |  2 ++
 kernel/irq/chip.c   | 27 +++++++++++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/include/linux/irq.h b/include/linux/irq.h
index 7ae8de5ad0f2..fb301cf29148 100644
--- a/include/linux/irq.h
+++ b/include/linux/irq.h
@@ -625,6 +625,8 @@ extern int irq_chip_set_wake_parent(struct irq_data *data, unsigned int on);
 extern int irq_chip_set_vcpu_affinity_parent(struct irq_data *data,
 					     void *vcpu_info);
 extern int irq_chip_set_type_parent(struct irq_data *data, unsigned int type);
+extern int irq_chip_request_resources_parent(struct irq_data *data);
+extern void irq_chip_release_resources_parent(struct irq_data *data);
 #endif
 
 /* Handling of unhandled and spurious interrupts: */
diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
index 51128bea3846..29d6c7d070b4 100644
--- a/kernel/irq/chip.c
+++ b/kernel/irq/chip.c
@@ -1459,6 +1459,33 @@ int irq_chip_set_wake_parent(struct irq_data *data, unsigned int on)
 	return -ENOSYS;
 }
 EXPORT_SYMBOL_GPL(irq_chip_set_wake_parent);
+
+/**
+ * irq_chip_request_resources_parent - Request resources on the parent interrupt
+ * @data:	Pointer to interrupt specific data
+ */
+int irq_chip_request_resources_parent(struct irq_data *data)
+{
+	data = data->parent_data;
+
+	if (data->chip->irq_request_resources)
+		return data->chip->irq_request_resources(data);
+
+	return -ENOSYS;
+}
+EXPORT_SYMBOL_GPL(irq_chip_request_resources_parent);
+
+/**
+ * irq_chip_release_resources_parent - Release resources on the parent interrupt
+ * @data:	Pointer to interrupt specific data
+ */
+void irq_chip_release_resources_parent(struct irq_data *data)
+{
+	data = data->parent_data;
+	if (data->chip->irq_release_resources)
+		data->chip->irq_release_resources(data);
+}
+EXPORT_SYMBOL_GPL(irq_chip_release_resources_parent);
 #endif
 
 /**
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
