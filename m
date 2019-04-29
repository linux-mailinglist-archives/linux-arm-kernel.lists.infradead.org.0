Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A35E36D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1LjJzxaSc8UjZJVhgc08fJVblpmNtaQgADia+uaCLc=; b=ljkCekhEpCaibB
	5vwIghacQ9b3L09kSTkGGnjEkoOTjhhrSltIGjKUNmL3oNlv/bnej5+8zs0LWq/ovtqE0z4+288ac
	S+IEzPqI0oB2wxAbw1ytn5XRjmaquEuNubbzLPDIhdmzxXZVUZLy9NmiPTeAU8UY/vxSYJnt9U3G2
	woltXf4PfvaPhW4fx7hH0dVlK5BH45hX7r7/+V/9a4TZLjLLppPpfMvHsY00guXS95UkQihI4fITm
	dzILrtdaHAV/Arfrk/PP00IMkmAYUK9yb90G0w7QXnEI2PpJS2dG7PGQGq8++2yH4NA1f7GFLZxdB
	d6CFyAHErp6CrDYQBcYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL65G-0004Y9-IY; Mon, 29 Apr 2019 13:12:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL64s-0004FE-Pb
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:12:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id t17so15914498wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 06:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zgLkZH7fvnn9ow85IxLoErjzNeQPt/Y/6sGtcm5H+QY=;
 b=JUEtyqTfzgq+eI8JsoNhV2vJVtHVdvLJneMkfVrhS7zClvtLa1COifGGYGf1vqxZsY
 oL/ChqJVd/RBTwXD5iru8C/LUzLz6jjirc+ok6uL3d+L3bwJYu6ptGzutMt9T9KnKne6
 JjCEp7UjWOIjrNKdA6HCoA0ACG6hThLrFTo5rEPUiLMjowlnHb1g2ms6t4iLrT3Pj582
 pItzXWpE2Pg2Qu19ZOF3VQAlYYMPATGQHxZ1N1kSRBpsu5eCmxmGSrK9q2Y7Be12UFYs
 THtw+p6BHyz2Yfrunab4WyoE55JWezpVm8bxfQ8q291n2vU76uMm/3m/XqzF5Bs2NAMt
 oZig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zgLkZH7fvnn9ow85IxLoErjzNeQPt/Y/6sGtcm5H+QY=;
 b=E3oSZ7knecjHfXwDvg9dosJZgoHKrI7Y0qHlKKzgzjtQSJfyXafihBIXsEMJMxDopZ
 P2wrPhsvtqq8tAUyei4katezZV+PytD9xIVnCfKtacezCY9afaPgXyC1X6eqiy8okvwc
 ys/IMvNn121C6SR6Pvyuy5oCyGlxvCQg9qN7c2nC9RqbJSIpilF6hRfQkyuXoVujMWIz
 q9iEVYtyxU1jA+YEXCwf3YtsiwqesCDgu+KiZMZ4Voj/Lf3OGZnlb8cItQemTo4jTpuu
 sLvLimLpnOhzAr0WphUfaw4dE+TAfRP3TC9e/HlM8VlGYEV3YToSDMREgPevnmlX49RY
 4IJQ==
X-Gm-Message-State: APjAAAWxMqiqLgVFzT2vJXWzu1bSxrU7L/5SiP5INMcvwkdgwNrVyNAy
 80CKqvhdgDCIp1XTZN8htioQoA==
X-Google-Smtp-Source: APXvYqwJ8ZujIPozdE+1Ob5C21h/cnNZvQf3dhNn73e7SzG9yWn26X0dddFhBP5DGB/Kau+p1YxQpA==
X-Received: by 2002:a5d:464f:: with SMTP id j15mr19107653wrs.265.1556543533485; 
 Mon, 29 Apr 2019 06:12:13 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:f9fc:88:6502:8fa7])
 by smtp.gmail.com with ESMTPSA id s16sm5410282wrg.71.2019.04.29.06.12.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 06:12:12 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 1/4] acpi/irq: implement getter for GSI irqdomain
Date: Mon, 29 Apr 2019 15:12:05 +0200
Message-Id: <20190429131208.3620-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
References: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_061214_838986_99AD8A60 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
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
mode, we need a helper that returns the default domain for unqualified
interrupts.

This is essentially what the ACPI GSI domain provides, so add a helper
that returns a reference to this domain.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/acpi/irq.c   | 14 ++++++++++----
 include/linux/acpi.h |  1 +
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/acpi/irq.c b/drivers/acpi/irq.c
index c3b2222e2129..d47bbd54d4aa 100644
--- a/drivers/acpi/irq.c
+++ b/drivers/acpi/irq.c
@@ -17,6 +17,14 @@ enum acpi_irq_model_id acpi_irq_model;
 
 static struct fwnode_handle *acpi_gsi_domain_id;
 
+/**
+ * acpi_get_gsi_irqdomain - Retrieve the irqdomain that owns the GSI space.
+ */
+struct irq_domain *acpi_get_gsi_irqdomain(void)
+{
+	return irq_find_matching_fwnode(acpi_gsi_domain_id, DOMAIN_BUS_ANY);
+}
+
 /**
  * acpi_gsi_to_irq() - Retrieve the linux irq number for a given GSI
  * @gsi: GSI IRQ number to map
@@ -29,8 +37,7 @@ static struct fwnode_handle *acpi_gsi_domain_id;
  */
 int acpi_gsi_to_irq(u32 gsi, unsigned int *irq)
 {
-	struct irq_domain *d = irq_find_matching_fwnode(acpi_gsi_domain_id,
-							DOMAIN_BUS_ANY);
+	struct irq_domain *d = acpi_get_gsi_irqdomain();
 
 	*irq = irq_find_mapping(d, gsi);
 	/*
@@ -76,8 +83,7 @@ EXPORT_SYMBOL_GPL(acpi_register_gsi);
  */
 void acpi_unregister_gsi(u32 gsi)
 {
-	struct irq_domain *d = irq_find_matching_fwnode(acpi_gsi_domain_id,
-							DOMAIN_BUS_ANY);
+	struct irq_domain *d = acpi_get_gsi_irqdomain();
 	int irq = irq_find_mapping(d, gsi);
 
 	irq_dispose_mapping(irq);
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index d5dcebd7aad3..1016027dd626 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -316,6 +316,7 @@ static inline bool acpi_sci_irq_valid(void)
 extern int sbf_port;
 extern unsigned long acpi_realmode_flags;
 
+struct irq_domain *acpi_get_gsi_irqdomain(void);
 int acpi_register_gsi (struct device *dev, u32 gsi, int triggering, int polarity);
 int acpi_gsi_to_irq (u32 gsi, unsigned int *irq);
 int acpi_isa_irq_to_gsi (unsigned isa_irq, u32 *gsi);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
