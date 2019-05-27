Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F402B33B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcZ61ooioCsEOEFuXpME2wA4QPdp+vX386FOl4BHeAg=; b=C/eOq/0tKaQuzz
	QLdKq5BLckxfK35e+QfHawWDVgWGInoUi1F5aukVaGIAvPM/EPoHy05hWPBZMbSqL/fVOPoPTeSSC
	7MryYSPJdLPBt7CJNkJT9Z9edEH9rG41CSSsyxyyINclvs/7yRPPhwnR/vyVRhMvEvRqE3RA9bX7A
	nBvg0MVNtDgTUGBDIJOtIyCZiA4C2PuWe83arpIEAP2bY/YzpRDoFphCu02qugRcAdf4jiilr6ek4
	DZmrIEuXgyYI1Z6qprnIYr90ga1OgBOsLeTdPvFd+VU95f2zhibAPCItaUQaeXj4sPOiPZSaVJUJd
	FabiIbAUqFwTJpS04UUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDn9-00077Y-Um; Mon, 27 May 2019 11:27:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDmq-0006uW-Mm
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:27:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id t4so8300578wrx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 04:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e4u6FsMjt7h1mCBbzF7v4CGj5ydrGz7m3OWmqqT2YeQ=;
 b=I9mAK54lsjfxBtfVgVx+UfCZ5AuAj4rEdu91KUk/42mbkyOYaJRKTY+IcGjZ0wIFAm
 Bn10OFQ9b3dXWOnNG5ohdDY/Dy5wSjvON2EsYDp4deuNhfh1tghQ2gMuIUWsL6wEUS69
 2cqOMV4tgfEbrGN+Znr3aHUr3nmrRGcTvJt+P8IkMQlQUDdD6gFdgyToEtEe3wfARh9J
 gh1NCsHs2kZ04wnKApvp81FDuCfdSPEUTSfimaCXW0wykCXioIQrVyfhzoXFEfzDXh5V
 ej+hCnIV3Q2y4FYUxQ9uHHWef7TfQvOWcTHCKhcD7KBPYV+o/1DaxMrxZcuAzSNjpTfg
 NF6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e4u6FsMjt7h1mCBbzF7v4CGj5ydrGz7m3OWmqqT2YeQ=;
 b=SQog5oYwxJIGBUk32zzRIqUSCIKpG3K8l9p9R4XqB6rbQbhXNJh+vncdHeBtsA+rNW
 qnTJdGufT3AV2Qta61w5U53dPWUn/O70KQYi3lNE/myIZgLkaQ2klg3cQx4oi947Mvd1
 htAXCD6Zu3dV3bwMqbdodSeePtXdmSINDI73D9ni2wkrHvyxd/Zauk+j9HYLnBXSPT/r
 LSMtUXR7WvloQXgcGf5v3SZOqJTqJmArgT2ZXFnXoi3OeyOEjSJfIg2bXJ7knGfjb5ND
 HxN6bRRywqo4y/+svntZdiDppZ3j0DNCMV24OX/5uvVbdICwc89gIdbMY38vFPb6iGBb
 yfeQ==
X-Gm-Message-State: APjAAAUiFZ7nlYouZLfQVoVAnVq3ZCvJUDxEois5pG8bRjgjbmRsvxlH
 fAleYR8R/zBI2SpYvKkJaIBZWvFbWq3v0C37
X-Google-Smtp-Source: APXvYqwnB2Gk0QqWOibtkylqFHxJGe0tfUyzEORIvpkrV+qc60/5I4wSEzsHkwdlyHFZyLeCi1AWaQ==
X-Received: by 2002:adf:ce03:: with SMTP id p3mr6636532wrn.94.1558956446659;
 Mon, 27 May 2019 04:27:26 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:ccdd:dadc:1517:f416])
 by smtp.gmail.com with ESMTPSA id l6sm9677747wmi.24.2019.05.27.04.27.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 04:27:25 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/4] acpi/irq: implement helper to create hierachical
 domains
Date: Mon, 27 May 2019 13:27:17 +0200
Message-Id: <20190527112720.2266-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_042728_744537_CDDA1611 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
mode, we need a helper that implicitly grabs the default domain for
unqualified interrupts as the parent of the hierarchy.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/acpi/irq.c   | 20 ++++++++++++++++++++
 include/linux/acpi.h |  7 +++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/acpi/irq.c b/drivers/acpi/irq.c
index c3b2222e2129..39824a6bbcd5 100644
--- a/drivers/acpi/irq.c
+++ b/drivers/acpi/irq.c
@@ -295,3 +295,23 @@ void __init acpi_set_irq_model(enum acpi_irq_model_id model,
 	acpi_irq_model = model;
 	acpi_gsi_domain_id = fwnode;
 }
+
+/**
+ * acpi_irq_create_hierarchy - Create a hierarchical IRQ domain with the default
+ *                             GSI domain as its parent.
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
