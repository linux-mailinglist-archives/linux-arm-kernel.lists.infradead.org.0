Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394782C7DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ak8ixTzSceeVOksVhX//5DVOR7w2KKPZ+n4ok1F5yaY=; b=jYs0fef1bRHr+v
	lY/e9fVFId/rxZ7idzK8U4u0LNvt2pEQdG29BbC2iwBo+SLs3Ge6CXQoiMeHClYQSDRFX26D/+KmR
	XzI8JM0lUPyg+rlzGVx8/zkFaGLGPcidlkqb2KsDgVZ9BCTJDmIS5vlSz4qtxBn6pQMXr5SRjUSWi
	StENKS6D3QhgFg1TLUISebnjMmlkSzyGW/CQkUNIFg2LqZrmjIoiFQAtOn7xuvAcyd58v7aYzpw1i
	OwnLR6HsySR3nxxTfeDmmg/BefpMay2SeJ8484RhbNc4lxkqNSYu749Zj4//gWrqk1b3z0I2W9lP7
	kOFmmstuzKhYI/zbt6Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcI9-0007sJ-RP; Tue, 28 May 2019 13:37:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcHm-0007a3-SX
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:37:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id c2so5076624wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 06:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ce8JB4XUI/WvY+NITbCG46XF1cnECw0qEl06Q1Mp/6Q=;
 b=P/jGceWxx8v4ni8+lxF2N/eLIfQmpPLTRxWN2UiaK2Bp1kohbPKJIrNXBc7yP+Ph/b
 XT7wb92Kbe06wMgapYg99AEwL1lrR+r2KY5jX8JOPyIhRYlC2hD1ZXIKZylwz5WYff8J
 95YCxb0D/XNQOzuA2qIt4qUrIj+OOwhHjlnhwgxIZXJ+hBVMbv6zd2DOCooJKyWH+vtD
 3n4qdvaqtCopkxCxkMRVvJBtXaSVdKmqjKw1A/TUEIsKXm0xGrssVJ66v+bE4N1JYRy2
 TQOSN1fppopXHuPcLxN3r3xxVco9Xphd6RhQNBDHZVTySETNbp7npBDN2cJ/riXq3EBO
 OgUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ce8JB4XUI/WvY+NITbCG46XF1cnECw0qEl06Q1Mp/6Q=;
 b=nnGzE0ZFUx6nydGbsrOGbv3WmnQS5ZvoRTR6Z85DbzBbGLrBhZoJ4wv0raI4NmzLAP
 gQbne/ugMEEKD7ix5yfUkMUFh1oVSRaGvwG3qyHuu+jgSADIfAkDxOxwdnR3B4O682+D
 uSXRKEPljOIDN9BfCR/OpK/RG1dWHLBEuiPZzq9YgNPYwOU1/ZGq8AUe35zama947FOB
 +4kZxLX9xrR+GnTdPlzRoQqJTLD4G42dbvIN250gXVGB4ZCyEApC0enwqn5NpZs4FpVN
 rr/ilfgz7yL4TGvZov5Ub56osbC2jBDFvD2mSGJug1n5XFvPHCrYL8OEsTTiLpkcUnhx
 c8sQ==
X-Gm-Message-State: APjAAAWDBMe86Y4ls3RkZbyYnWlW50pptwrwxC2MYpH59s9NF4sc7BqY
 rUT6EWov+/CkymM0qv5bijRGSxPFv5JChw==
X-Google-Smtp-Source: APXvYqx2CE57SmrhiCjOkLL+8sPrYUtF2G/COWgH9e10bLXzDIkX0v+1Au3LnYdN5q2CDra5lG5b2Q==
X-Received: by 2002:adf:f246:: with SMTP id b6mr4672878wrp.92.1559050617427;
 Tue, 28 May 2019 06:36:57 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:c8c7:f81b:b165:1aa7])
 by smtp.gmail.com with ESMTPSA id 95sm8652668wrk.70.2019.05.28.06.36.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 06:36:56 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/4] acpi/irq: implement helper to create hierachical
 domains
Date: Tue, 28 May 2019 15:36:44 +0200
Message-Id: <20190528133647.3362-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528133647.3362-1-ard.biesheuvel@linaro.org>
References: <20190528133647.3362-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_063703_197646_4919FB60 
X-CRM114-Status: GOOD (  14.85  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 linux-gpio@vger.kernel.org, Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI permits arbitrary producer->consumer interrupt links to be
described in AML, which means a topology such as the following
is perfectly legal:

  Device (EXIU) {
    Name (_HID, "SCX0008")
    Name (_UID, Zero)
    Name (_CRS, ResourceTemplate () {
      ...
    })
  }

  Device (GPIO) {
    Name (_HID, "SCX0007")
    Name (_UID, Zero)
    Name (_CRS, ResourceTemplate () {
      Memory32Fixed (ReadWrite, SYNQUACER_GPIO_BASE, SYNQUACER_GPIO_SIZE)
      Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, 0, "\\_SB.EXIU") {
        7,
      }
    })
    ...
  }

The EXIU in this example is the external interrupt unit as can be found
on Socionext SynQuacer based platforms, which converts a block of 32 SPIs
from arbitrary polarity/trigger into level-high, with a separate set
of config/mask/unmask/clear controls.

The existing DT based driver in drivers/irqchip/irq-sni-exiu.c models
this as a hierarchical domain stacked on top of the GIC's irqdomain.
Since the GIC is modeled as a DT node as well, obtaining a reference
to this irqdomain is easily done by going through the parent link.

On ACPI systems, however, the GIC is not modeled as an object in the
namespace, and so device objects cannot refer to it directly. So in
order to obtain the irqdomain reference when driving the EXIU in ACPI
mode, we need a helper that implicitly grabs the default domain as the
parent of the hierarchy for interrupts allocated out of the global GSI
pool.

Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>
Reviewed-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/acpi/irq.c   | 26 ++++++++++++++++++++
 include/linux/acpi.h |  7 ++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/acpi/irq.c b/drivers/acpi/irq.c
index c3b2222e2129..ce6b25a3b7a7 100644
--- a/drivers/acpi/irq.c
+++ b/drivers/acpi/irq.c
@@ -295,3 +295,29 @@ void __init acpi_set_irq_model(enum acpi_irq_model_id model,
 	acpi_irq_model = model;
 	acpi_gsi_domain_id = fwnode;
 }
+
+/**
+ * acpi_irq_create_hierarchy - Create a hierarchical IRQ domain with the default
+ *                             GSI domain as its parent.
+ * @flags:      Irq domain flags associated with the domain
+ * @size:       Size of the domain.
+ * @fwnode:     Optional fwnode of the interrupt controller
+ * @ops:        Pointer to the interrupt domain callbacks
+ * @host_data:  Controller private data pointer
+ */
+struct irq_domain *acpi_irq_create_hierarchy(unsigned int flags,
+					     unsigned int size,
+					     struct fwnode_handle *fwnode,
+					     const struct irq_domain_ops *ops,
+					     void *host_data)
+{
+	struct irq_domain *d = irq_find_matching_fwnode(acpi_gsi_domain_id,
+							DOMAIN_BUS_ANY);
+
+	if (!d)
+		return NULL;
+
+	return irq_domain_create_hierarchy(d, flags, size, fwnode, ops,
+					   host_data);
+}
+EXPORT_SYMBOL_GPL(acpi_irq_create_hierarchy);
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index 98440df7fe42..70de4bc30cea 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -23,6 +23,7 @@
 
 #include <linux/errno.h>
 #include <linux/ioport.h>	/* for struct resource */
+#include <linux/irqdomain.h>
 #include <linux/resource_ext.h>
 #include <linux/device.h>
 #include <linux/property.h>
@@ -327,6 +328,12 @@ int acpi_isa_irq_to_gsi (unsigned isa_irq, u32 *gsi);
 void acpi_set_irq_model(enum acpi_irq_model_id model,
 			struct fwnode_handle *fwnode);
 
+struct irq_domain *acpi_irq_create_hierarchy(unsigned int flags,
+					     unsigned int size,
+					     struct fwnode_handle *fwnode,
+					     const struct irq_domain_ops *ops,
+					     void *host_data);
+
 #ifdef CONFIG_X86_IO_APIC
 extern int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity);
 #else
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
