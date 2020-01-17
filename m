Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F64A141332
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 22:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tL1EMHZ2amzl6rO7YmUgvty50kW7mJreeWbEg1EeV0M=; b=T+Ku2OmU0lauzv
	KP0rSm9RCSW1GlmxoKZYnIc9GXfFvg4loUlPpzUytQmF6VR+wq5Vtg2PzXhT37kAlDN4bXJCmS1Yx
	+HzE5CW/fSR+qJr/UPjq0DC+RDwGznkVLAnxi2ppHdYetuMWSjGdoYxiSA+jexaYl6kAXeAx6Ut9i
	89lrOD1/rzeqLS6G9s/Qh8iayk8Lafd3MMSy69MgyvyQkTGvmDb8BedkhNHfGD0SANVTGLfnckX6L
	TlxdZTBpD5oikwa2aoe+PlceXuUhTzY5Rnt8ZBu1ggujcqX/vk+sNxGSieNt80f/u3UgE6qIscYsL
	ui75JxeDM5/WiRXkwvnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZG2-0004Rz-2C; Fri, 17 Jan 2020 21:34:22 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZFf-0004GJ-8x
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 21:34:01 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 769D25FF;
 Fri, 17 Jan 2020 16:33:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Fri, 17 Jan 2020 16:33:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=SdKZFOHmIi4bNTeW6qOOV5SAlt
 jiwbYypCEPg9/G1Ok=; b=kni8y1/KswKEsd50YOqBrchNHB/lFc7Mf72oMhCplM
 9FBU6DSdmpAOAVYrS+CBf6AH+ZFw6/9qTGmco9Zz1ygbD0jLVq7hH0hJ/0hymCwq
 t4MWw8Rtgdf3p6htEvca0w05UBvtZyXEjW71y53zlM8GBEqrUPX0W8Teudqz/dNU
 HKH/eEpia78OxBs13ZQuznoM8iJqo33i8/MbsuHOz+Q4D+vNa1Zhk7FMsETfWGJv
 vUtf9NqZkrW/7ucVep1/v2kEllu0f4wHQFyjf6Y3QR7ehqv+UHIYRO6Y7tg9Iqn2
 6l1HUO82Dbq8/La+Dgu3Qq3GDRjxIQsXo3QSrGrHHoTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=SdKZFOHmIi4bNTeW6
 qOOV5SAltjiwbYypCEPg9/G1Ok=; b=uP5IsFwcxSDoIIrk7Ps3dTCImUsP3l/xx
 GqMnEBbOMsw20QWASJqp425AStjNtZnqH0lDs49eNyn1K92+8YPm/H5sLy9Wn7n9
 lRSRh0Xu9Pn8ukfmj/Kd8Aa4kg52mN2ik9zvsNvJ4Iv8EEJ6jUaq61zI8CjKj/oK
 mzn3+aN4+wAEwKDcedgI3sXll6LTDw5x7ngNF4AtW48CpeyPzRDLPu1grVHNP8Mr
 yVC5ZWmi1xQYmqjTCmrUloWZVryjXT8oujKL26h8Xi/FKp6br5LucZ+n/NtqQvD1
 AStBwudtZMnQSBpxZnwmlhQRxXfN9qJiOEMQHDky7mi9cosJUAzfA==
X-ME-Sender: <xms:NSgiXv2nzkYfp6TI2mq6-4IMy2JeuJt7tlV5800rV8f6GVyIiLHGxw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrtdekgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghlucfj
 ohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtd
 drudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghl
 sehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:NSgiXr4AxUIzI8Gs_eOGX9qMswveztffU1Gl_acOG49z60IlolFGVw>
 <xmx:NSgiXiODqgYlZwo06AooX5np6DrWytsem5jw2fZxWvI9SG59yM7nsw>
 <xmx:NSgiXoBnYt59qBynLG87jpaiv_u7Lp61Lu5NKv_40r3ma7fimviXUw>
 <xmx:NigiXv9sX4AC5qVwLFRgbA86OL4fYwLlrKMmeNE0E-dKOqfYRRBvjA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id EE9E48005C;
 Fri, 17 Jan 2020 16:33:40 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 1/2] pinctrl: sunxi: Forward calls to irq_set_irq_wake
Date: Fri, 17 Jan 2020 15:33:39 -0600
Message-Id: <20200117213340.47714-1-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_133359_359122_ADBBA602 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pinctrl irqchip may be connected to an irqchip that implements the
.irq_set_wake callback, such as the R_INTC on A31 and newer sunxi SoCs.
In order for GPIOs to be able to trigger wakeup, the IRQ from the
pinctrl to the upper irqchip must also be enabled for wakeup. Since the
kernel's IRQ core already manages the "wake_depth" of each IRQ, no
additional accounting is needed in the pinctrl driver.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/pinctrl/sunxi/pinctrl-sunxi.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/sunxi/pinctrl-sunxi.c b/drivers/pinctrl/sunxi/pinctrl-sunxi.c
index 0cbca30b75dc..df79da76321e 100644
--- a/drivers/pinctrl/sunxi/pinctrl-sunxi.c
+++ b/drivers/pinctrl/sunxi/pinctrl-sunxi.c
@@ -13,6 +13,7 @@
 #include <linux/io.h>
 #include <linux/clk.h>
 #include <linux/gpio/driver.h>
+#include <linux/interrupt.h>
 #include <linux/irqdomain.h>
 #include <linux/irqchip/chained_irq.h>
 #include <linux/export.h>
@@ -1058,6 +1059,14 @@ static void sunxi_pinctrl_irq_ack_unmask(struct irq_data *d)
 	sunxi_pinctrl_irq_unmask(d);
 }
 
+static int sunxi_pinctrl_irq_set_wake(struct irq_data *d, unsigned int on)
+{
+	struct sunxi_pinctrl *pctl = irq_data_get_irq_chip_data(d);
+	u8 bank = d->hwirq / IRQ_PER_BANK;
+
+	return irq_set_irq_wake(pctl->irq[bank], on);
+}
+
 static struct irq_chip sunxi_pinctrl_edge_irq_chip = {
 	.name		= "sunxi_pio_edge",
 	.irq_ack	= sunxi_pinctrl_irq_ack,
@@ -1066,7 +1075,7 @@ static struct irq_chip sunxi_pinctrl_edge_irq_chip = {
 	.irq_request_resources = sunxi_pinctrl_irq_request_resources,
 	.irq_release_resources = sunxi_pinctrl_irq_release_resources,
 	.irq_set_type	= sunxi_pinctrl_irq_set_type,
-	.flags		= IRQCHIP_SKIP_SET_WAKE,
+	.irq_set_wake	= sunxi_pinctrl_irq_set_wake,
 };
 
 static struct irq_chip sunxi_pinctrl_level_irq_chip = {
@@ -1081,7 +1090,8 @@ static struct irq_chip sunxi_pinctrl_level_irq_chip = {
 	.irq_request_resources = sunxi_pinctrl_irq_request_resources,
 	.irq_release_resources = sunxi_pinctrl_irq_release_resources,
 	.irq_set_type	= sunxi_pinctrl_irq_set_type,
-	.flags		= IRQCHIP_SKIP_SET_WAKE | IRQCHIP_EOI_THREADED |
+	.irq_set_wake	= sunxi_pinctrl_irq_set_wake,
+	.flags		= IRQCHIP_EOI_THREADED |
 			  IRQCHIP_EOI_IF_HANDLED,
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
