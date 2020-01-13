Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74DF138A6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:51:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wypEE4+UCCgVyhzJYbcXOSTsCNq6jVhBjrpXqQUdVfg=; b=CTknaehIeHF54g
	Qt1Pm47rvs5rfe4QzRJmuQdHbcYE18IyXG3A8EBqU7qq4iDtbACIgMjbVLtuJJxV78oUk2tSbMhGs
	Pdrk1HurRlhVes105vznoArqdZZJ4H13NG8+EjaB1ybWJMrLNOSHNS9n/50D0nplg0xMbIiKTVdKO
	uzGF7Oq5pG4ElXp0W5chwYuIcX/lYdQwPGJGwSSiSr2f/Q4pbcpE/+/HxwI35YUeFE/HncC6e6j3c
	FXIQ4Ov/5gmn5HXXqKNOaXNrGm3V2z2/ZPmjsSLnxbBHQQaS8xqmjAvEYIIHLQ43zc6+q2NWuSUsF
	ARQ11pIjDtIrcIshnHuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqrgn-00027o-L4; Mon, 13 Jan 2020 04:50:57 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqrff-0000AJ-RW
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:49:50 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id EB0AB6126;
 Sun, 12 Jan 2020 23:49:38 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 12 Jan 2020 23:49:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=reXcLSbb+prTw
 I8AliRHNqGV5b9kALgHS1AE29T8AYU=; b=H4U1i2ZQj1rYKQQzTkEtBJnqb6xbM
 Phiq+UP9EMm+BWiL4BjDtXfMY7v5LIA6f+h3m10scf6jaH8bXdheafC2ueYogxRU
 5MQ66O6OP6l/XSoz5O2YVo4kgHEDI+QiIKpWoi5GNWJs9KAlG593RREQ2WQrixz9
 XX50/Wnzanm5W98IwMeTj4Roafbzsr6J5MNZrxqGD+A8k35Rrxgbnqyrf8GX702f
 CQaO+bhgsp2CmR1cYkaU5r9HY5r7P71qLIG9Ss2WHFCRiQia9WRPWDI10SLc/N3p
 s+EIGf6v15/7H1fXhsdfvM+X+7Z6QvRszpzx7K6MsjV46Cag90pvGJp1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=reXcLSbb+prTwI8AliRHNqGV5b9kALgHS1AE29T8AYU=; b=suCHuiSv
 dgYZl1S5aUrQvib47ij59kfAFjwWGbgddDTSpnlvVTUB7q5ywK2hyb14Qx1zfb/4
 uUc3/YxYyOnqc/XOp7swbCzwoUDh5WiU15UykHynx/vNCuvzWO5qI6RQz7+eig4k
 KT3TFWSmeZrC6TLTcwpahzfC0a44tH3hI+ipj59kN9kArE3Rng03UE+TRTNGKm9A
 2qQ11mU+hw8T5xmDpbpoecf+CT5n6ny8kVD1kHYZk9z5LYLwDuVoSfLkza+qtEc/
 sBSJII4HJ0qc9lnhrUB4Lyr/bkoxiiCuirS5KabpWLNJCtZB4pfE4vIMPPGg8c7R
 vhsGmDbvM7cleA==
X-ME-Sender: <xms:4vYbXiSXlyqL0twguZloHZTmDwsoj5XmtYPtZWcmHSU9guT_-3pkkQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:4vYbXo1pNsmj1-IFkLAfvsx3EpDRLRIR34drhDj7nMsv0wKyLSXY-w>
 <xmx:4vYbXix0g1k4fg1sctfBk7_PYkdcjYjrue-lMeNmJajaOmLdcE-YeA>
 <xmx:4vYbXrtEwspzYo-6poOAysiOWa3zdNFAdhKNJ5ZOvFU-sYck_XHAzA>
 <xmx:4vYbXiLOf9kEezbv0VoBrwp4vIPJCs8sxTNKg-0AKdAmXsLc7Riw8w>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2F96030602DB;
 Sun, 12 Jan 2020 23:49:38 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 2/9] irqchip/sun6i-r: Add wakeup support
Date: Sun, 12 Jan 2020 22:49:29 -0600
Message-Id: <20200113044936.26038-3-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113044936.26038-1-samuel@sholland.org>
References: <20200113044936.26038-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_204948_047050_15A38FD6 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We maintain a mask of wake-enabled IRQs, and enable them in hardware
during the syscore phase of suspend (once IRQs are globally turned off).
We restore the original mask (either nothing or NMI only) during resume.

This serves two purposes. First, it lets power management firmware
running on the ARISC coprocessor know which wakeup sources Linux wants
to have enabled. That way, it can avoid turning them off when it shuts
down the remainder of the clock tree. Second, it preconfigures the
ARISC coprocessor's interrupt controller, so the firmware's wakeup logic
is as simple as waiting for an interrupt to arrive.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/irqchip/irq-sun6i-r.c | 53 +++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/irqchip/irq-sun6i-r.c b/drivers/irqchip/irq-sun6i-r.c
index 37b6e9c60bf8..f4a4e335061b 100644
--- a/drivers/irqchip/irq-sun6i-r.c
+++ b/drivers/irqchip/irq-sun6i-r.c
@@ -3,12 +3,14 @@
 // Allwinner A31 and newer SoCs R_INTC driver
 //
 
+#include <linux/atomic.h>
 #include <linux/irq.h>
 #include <linux/irqchip.h>
 #include <linux/irqdomain.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
+#include <linux/syscore_ops.h>
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 
@@ -31,6 +33,9 @@ enum {
 static void __iomem *base;
 static irq_hw_number_t parent_offset;
 static u32 parent_type;
+#ifdef CONFIG_PM_SLEEP
+static atomic_t wake_mask;
+#endif
 
 static void sun6i_r_intc_irq_enable(struct irq_data *data)
 {
@@ -108,6 +113,21 @@ static int sun6i_r_intc_irq_set_type(struct irq_data *data, unsigned int type)
 	return irq_chip_set_type_parent(data, type);
 }
 
+#ifdef CONFIG_PM_SLEEP
+static int sun6i_r_intc_irq_set_wake(struct irq_data *data, unsigned int on)
+{
+	if (on)
+		atomic_or(BIT(data->hwirq), &wake_mask);
+	else
+		atomic_andnot(BIT(data->hwirq), &wake_mask);
+
+	/* GIC cannot wake, so there is no need to call the parent hook. */
+	return 0;
+}
+#else
+#define sun6i_r_intc_irq_set_wake NULL
+#endif
+
 static struct irq_chip sun6i_r_intc_chip = {
 	.name			= "sun6i-r-intc",
 	.irq_enable		= sun6i_r_intc_irq_enable,
@@ -118,6 +138,7 @@ static struct irq_chip sun6i_r_intc_chip = {
 	.irq_set_affinity	= irq_chip_set_affinity_parent,
 	.irq_retrigger		= irq_chip_retrigger_hierarchy,
 	.irq_set_type		= sun6i_r_intc_irq_set_type,
+	.irq_set_wake		= sun6i_r_intc_irq_set_wake,
 	.irq_set_vcpu_affinity	= irq_chip_set_vcpu_affinity_parent,
 };
 
@@ -171,6 +192,36 @@ static const struct irq_domain_ops sun6i_r_intc_domain_ops = {
 	.free		= irq_domain_free_irqs_common,
 };
 
+#ifdef CONFIG_PM_SLEEP
+static int sun6i_r_intc_suspend(void)
+{
+	/* All wake IRQs are enabled during suspend. */
+	writel(atomic_read(&wake_mask), base + SUN6I_R_INTC_ENABLE);
+
+	return 0;
+}
+
+static void sun6i_r_intc_resume(void)
+{
+	u32 mask = atomic_read(&wake_mask) & BIT(NMI_HWIRQ);
+
+	/* Only the NMI is relevant during normal operation. */
+	writel(mask, base + SUN6I_R_INTC_ENABLE);
+}
+
+static struct syscore_ops sun6i_r_intc_syscore_ops = {
+	.suspend	= sun6i_r_intc_suspend,
+	.resume		= sun6i_r_intc_resume,
+};
+
+static void sun6i_r_intc_syscore_init(void)
+{
+	register_syscore_ops(&sun6i_r_intc_syscore_ops);
+}
+#else
+static inline void sun6i_r_intc_syscore_init(void) {}
+#endif
+
 static int __init sun6i_r_intc_init(struct device_node *node,
 				    struct device_node *parent)
 {
@@ -215,6 +266,8 @@ static int __init sun6i_r_intc_init(struct device_node *node,
 	/* Clear any pending interrupts. */
 	writel(~0, base + SUN6I_R_INTC_PENDING);
 
+	sun6i_r_intc_syscore_init();
+
 	return 0;
 }
 IRQCHIP_DECLARE(sun6i_r_intc, "allwinner,sun6i-a31-r-intc", sun6i_r_intc_init);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
