Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4A31E05DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 06:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RO7p9efHgSdoewUsz076gm7npdA7c+wMBD44qJt2Jlc=; b=JuX5hDmeIzd8SF
	wrVm7e09H2KsEc9KXrYv3IP8NGdixxvX25UTJbEXr0kOOlh4pmAbnXZpu5OGU3cwHukakQQSZ+IXE
	Pde05QblsmsIHafhYHqayvxgyd8HB6zP8i0C+6r36ZliJT6Un7EW0E03ZZpoGgC94/+U8wy3tPqtD
	1mJ2b0KT/XNaonJuZfo0kAh5uNlVY2T5zJ7QGkQQAx2peC2LRzYCz+THsij7amgB98QRWgCzpq7Wm
	mket9b2vcvsGk15m7ac7G+kWEFuEGLOza4Azsj1/ihbYqZbBaZP4Cpngwo74XMuQMA+m/O8Ad7/vw
	UFUgWcaM7x6e6vHofpJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd4Uw-0000l9-Oi; Mon, 25 May 2020 04:13:58 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd4Tf-00008f-LC
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 04:12:42 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1645558008B;
 Mon, 25 May 2020 00:12:39 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 25 May 2020 00:12:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Xrn0lUcE0vYS+
 TYAfF+PxgGbwGOEAVyhKE+EutZlw7o=; b=jeyPm6p1W2pH0ex81eyyNM8nrghkZ
 BOsNNl3zRKwTqY5tyKPNdVw+Wa/X3aDbfIqzGiQO+oDMOIes0aDwY306W//4QklT
 5GGuj4qFjCrdPQXiGZqiC61uthi8AHmSQOwhbP0juuxgbGrr6XXf5k69m4Qc8KYy
 VQ5/UPbW8nTuYZc4QchEc1JcM6fqHCohD+vWVEwE93AU2wmny+zdjYrrsbDhokU2
 JXF97UgIe/paAHnEkTAWp1j8LOhbKSRKEkWt+wHeFYB9t7Sy2AY0+TyAU8Gc2zrk
 uAKc6UnnXKsZJYl13j8XjSe7Aud6olpGqo/yB1n4K9atkhW3+DCbSG6ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Xrn0lUcE0vYS+TYAfF+PxgGbwGOEAVyhKE+EutZlw7o=; b=P8gT7tWR
 c4T+vsC7CKDXzdIOAPZbP4ghGdnxHldTkdxiVfTyXBS6cmpYLDr4TtloEUhqE3eP
 rP9J9dwD9k+cG6iOP5XbvMzFf2E6wVxkx0rMaSmY3ihRMChHpOXOJ60f6khfzJs4
 1kI5A8jFWR278ZvokgCDe3HgtOtHMOyDWqhn5hk5rSGABz4GAiYCuzUkkIOWOtAB
 YLIeEyAcM+bFMKp4KcitRwPpLwNS2s8XNCzuCHDgsaQQYE40T0kuRQSeM6R4gLhZ
 at/bcF7MUn2LRW+WubthlUOmGR/bWsZ1iXwe90xAQG1acDPIcotO9ZyYVg2jjySO
 Byj+o/CAJc984Q==
X-ME-Sender: <xms:tkXLXmsFYa9LdwjxfgZJUzpFeHy_g5rWskP95FNTA8nd9N3bdbRB2g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudduledgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucfkphepjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghn
 ugdrohhrgh
X-ME-Proxy: <xmx:tkXLXreMx-f7YZt1b40PvqrDXoAx_eMUSEUIYV5cCc-7MdO81uOgNw>
 <xmx:tkXLXhysd1qx5L8kOsQMdb1LUUIxL2xUhaVh92-zaRhvomfOwz0b4g>
 <xmx:tkXLXhPcSEBhKptNu_Vs-TcMCuSvc4BnNqCOSzrvumrMSowR5DNHvQ>
 <xmx:t0XLXn2W8IWg1qdsAjAwH9dpgO_lypih_umdBgog4B9S2kzjhoEeZw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5F2E9306653A;
 Mon, 25 May 2020 00:12:38 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2 2/9] irqchip/sun6i-r: Add wakeup support
Date: Sun, 24 May 2020 23:12:55 -0500
Message-Id: <20200525041302.51213-3-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200525041302.51213-1-samuel@sholland.org>
References: <20200525041302.51213-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_211239_824753_0029029B 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Maintain a mask of wake-enabled IRQs, and enable them in hardware
during the syscore phase of suspend. The restore the original mask
of enabled IRQs (just the NMI) during resume.

This serves two purposes. First, it lets power management firmware
running on the ARISC coprocessor know which wakeup sources Linux wants
to have enabled. That way, it can avoid turning them off when it shuts
down the remainder of the clock tree. Second, it preconfigures the
coprocessor's interrupt controller, so the firmware's wakeup logic
is as simple as waiting for an interrupt to arrive.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/irqchip/irq-sun6i-r.c | 51 +++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/irqchip/irq-sun6i-r.c b/drivers/irqchip/irq-sun6i-r.c
index f8bfa5515f20..a5deea92057f 100644
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
 
@@ -24,6 +26,9 @@
 static void __iomem *base;
 static irq_hw_number_t parent_offset;
 static u32 parent_type;
+#ifdef CONFIG_PM_SLEEP
+static atomic_t wake_mask;
+#endif
 
 static struct irq_chip sun6i_r_intc_edge;
 static struct irq_chip sun6i_r_intc_level;
@@ -106,6 +111,20 @@ static int sun6i_r_intc_irq_set_type(struct irq_data *data, unsigned int type)
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
+	return 0;
+}
+#else
+#define sun6i_r_intc_irq_set_wake NULL
+#endif
+
 static struct irq_chip sun6i_r_intc_edge = {
 	.name			= "sun6i-r-intc",
 	.irq_ack		= sun6i_r_intc_irq_ack,
@@ -116,6 +135,7 @@ static struct irq_chip sun6i_r_intc_edge = {
 	.irq_set_type		= sun6i_r_intc_irq_set_type,
 	.irq_get_irqchip_state	= irq_chip_get_parent_state,
 	.irq_set_irqchip_state	= irq_chip_set_parent_state,
+	.irq_set_wake		= sun6i_r_intc_irq_set_wake,
 	.irq_set_vcpu_affinity	= irq_chip_set_vcpu_affinity_parent,
 	.flags			= IRQCHIP_SET_TYPE_MASKED,
 };
@@ -129,6 +149,7 @@ static struct irq_chip sun6i_r_intc_level = {
 	.irq_set_type		= sun6i_r_intc_irq_set_type,
 	.irq_get_irqchip_state	= irq_chip_get_parent_state,
 	.irq_set_irqchip_state	= irq_chip_set_parent_state,
+	.irq_set_wake		= sun6i_r_intc_irq_set_wake,
 	.irq_set_vcpu_affinity	= irq_chip_set_vcpu_affinity_parent,
 	.flags			= IRQCHIP_SET_TYPE_MASKED |
 				  IRQCHIP_EOI_THREADED,
@@ -170,6 +191,34 @@ static const struct irq_domain_ops sun6i_r_intc_domain_ops = {
 	.free		= irq_domain_free_irqs_common,
 };
 
+#ifdef CONFIG_PM_SLEEP
+static int sun6i_r_intc_suspend(void)
+{
+	/* All wake IRQs are enabled during system sleep. */
+	writel_relaxed(atomic_read(&wake_mask), base + SUN6I_R_INTC_ENABLE);
+
+	return 0;
+}
+
+static void sun6i_r_intc_resume(void)
+{
+	/* Only the NMI is relevant during normal operation. */
+	writel_relaxed(NMI_HWIRQ_BIT, base + SUN6I_R_INTC_ENABLE);
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
@@ -211,6 +260,8 @@ static int __init sun6i_r_intc_init(struct device_node *node,
 	writel_relaxed(NMI_HWIRQ_BIT, base + SUN6I_R_INTC_PENDING);
 	writel_relaxed(NMI_HWIRQ_BIT, base + SUN6I_R_INTC_ENABLE);
 
+	sun6i_r_intc_syscore_init();
+
 	return 0;
 }
 IRQCHIP_DECLARE(sun6i_r_intc, "allwinner,sun6i-a31-r-intc", sun6i_r_intc_init);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
