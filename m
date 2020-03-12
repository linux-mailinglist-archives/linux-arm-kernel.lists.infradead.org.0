Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDD318319B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:33:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RHMJ8UQlq5b7xDD3SDWn6N3ySOXDL1VYTZ9C8iVUrg=; b=teGvbo2PX6MHwu
	ewjG7GuOO0n/6ABsPZFJYfOqTEfncFBZLaxEfn1xXNC0afixPJK+MhMhY9sG+vhEEY62X6r0vhdDS
	KArgatSy/glNOSydLkVtlomrNVtQ29QlhXleahCn6lxeOYjvxIVAwcjsd9xBuB4UL/fCjtGsXMF1P
	xbBp7b16gkNVEDHxRQMtjSbIcdPNN8k82Dqk2xL8NSgJUroMHluUzk97a5J7lRgD58R8tEDxGt+uI
	Qmt0As16ZmxtSQa6IYhvazq6c6VW/3ZC8jCz1bRIeEXB1E5VeC4I9dAtiUx1VdBO8DCVvZkoUt/YS
	XYvsXNpHqt6VzIl87c7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNy2-0005Kg-Rz; Thu, 12 Mar 2020 13:33:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNw5-0003VE-LI
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:31:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so6300187wme.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 06:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xtd57ANFwEVXtL9Ksemj5kAkfq1D3BufSA8HrwoNyGM=;
 b=crid5weIqLsxtB221E29RJHYKJ4O8HbVMdLMr8N6vDiqh1vo6BPFf2nP8ki8C+Hj8F
 +Eomn9sIwNriAp2P+lvdLmD3bLHQD41BfoRK0DA+NDGzpeqsduE/C8bCF7ddw/du1GCo
 Bk8QhkCflUQipTosllgUBmooWikSHyWLX41R+o7Y549gWUexa0zGki1FxTzDCyKwB3uX
 y7oGBx5v2Wj0zm9UF8t6TJ+FIFqG3+lrwSCDLTgST+UV7KPrFhT5JP3zGvgDqWIVdYFL
 ypuMa+rtMVyG3c+zwI1/YAeJckKDrQpo4SbcYzOoGd4hZELK5JKBcyBH/eGX9YrL5BLP
 ayfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xtd57ANFwEVXtL9Ksemj5kAkfq1D3BufSA8HrwoNyGM=;
 b=b7BvDcSzzH+ZUgRb3mvjMBEWihpa9fOaDYSy+1nUhynvhCHR2wYlvdD7BaDYVbLDav
 2Aa8Dc4RjXK/G8hvGV0fPhU1kp4U7w7ODxNo/I3EJ3QYPEs9zYe4GOqbIYTTw6ySi2IE
 E4sQISLnLmI+ziq9MIw3BzvELYVf6vOlv5c6WLrbBjxA1eUxSXzlBG/Uj8RkkLnO2K1A
 2c7t3ChSBxvUI/xhUoY6YSC95BD9ToakMgXpyXtZI4ThElWGY6BEkPA5f9Mwy7eI2xtt
 1jd/2MkGt6RfjsdO45XxkqfopWJoqITEH5A31wUZHP3f8gv1WJ30UbxE2pqFEF9i3o77
 dXlg==
X-Gm-Message-State: ANhLgQ24o9nnhawfRVAf6nbjBtul8Ny5tVsW0xuMgJVwcWrOMyq+a57f
 LJVjLWVgtoe+P4jh1K7uV8G0Qg==
X-Google-Smtp-Source: ADFU+vv/Bf0cjqi786SLwyoflMdPEUVQYzJUoEEq10USnSQe6YhOpU8nPOsloJnqi5KX9B8MoPtHgg==
X-Received: by 2002:a1c:4805:: with SMTP id v5mr4776912wma.98.1584019900193;
 Thu, 12 Mar 2020 06:31:40 -0700 (PDT)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m21sm12242885wmi.27.2020.03.12.06.31.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 06:31:39 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: broonie@kernel.org
Subject: [PATCH 6/9] spi: meson-spicc: setup IO line delay
Date: Thu, 12 Mar 2020 14:31:28 +0100
Message-Id: <20200312133131.26430-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200312133131.26430-1-narmstrong@baylibre.com>
References: <20200312133131.26430-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_063141_736960_2E5A23FE 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now the controller can support frequencies higher than 30MHz, we need
the setup the I/O line delays in regard of the SPI clock frequency.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/spi/spi-meson-spicc.c | 61 ++++++++++++++++++++++++++++++++++-
 1 file changed, 60 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-meson-spicc.c b/drivers/spi/spi-meson-spicc.c
index b5bd3a897e8f..4494a791f4a7 100644
--- a/drivers/spi/spi-meson-spicc.c
+++ b/drivers/spi/spi-meson-spicc.c
@@ -106,7 +106,21 @@
 #define SPICC_SWAP_RO		BIT(14) /* RX FIFO Data Swap Read-Only */
 #define SPICC_SWAP_W1		BIT(15) /* RX FIFO Data Swap Write-Only */
 #define SPICC_DLYCTL_RO_MASK	GENMASK(20, 15) /* Delay Control Read-Only */
-#define SPICC_DLYCTL_W1_MASK	GENMASK(21, 16) /* Delay Control Write-Only */
+#define SPICC_MO_DELAY_MASK	GENMASK(17, 16) /* Master Output Delay */
+#define SPICC_MO_NO_DELAY	0
+#define SPICC_MO_DELAY_1_CYCLE	1
+#define SPICC_MO_DELAY_2_CYCLE	2
+#define SPICC_MO_DELAY_3_CYCLE	3
+#define SPICC_MI_DELAY_MASK	GENMASK(19, 18) /* Master Input Delay */
+#define SPICC_MI_NO_DELAY	0
+#define SPICC_MI_DELAY_1_CYCLE	1
+#define SPICC_MI_DELAY_2_CYCLE	2
+#define SPICC_MI_DELAY_3_CYCLE	3
+#define SPICC_MI_CAP_DELAY_MASK	GENMASK(21, 20) /* Master Capture Delay */
+#define SPICC_CAP_AHEAD_2_CYCLE	0
+#define SPICC_CAP_AHEAD_1_CYCLE	1
+#define SPICC_CAP_NO_DELAY	2
+#define SPICC_CAP_DELAY_1_CYCLE	3
 #define SPICC_FIFORST_RO_MASK	GENMASK(22, 21) /* FIFO Softreset Read-Only */
 #define SPICC_FIFORST_W1_MASK	GENMASK(23, 22) /* FIFO Softreset Write-Only */
 
@@ -328,6 +342,49 @@ static irqreturn_t meson_spicc_irq(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static void meson_spicc_auto_io_delay(struct meson_spicc_device *spicc)
+{
+	u32 div, hz;
+	u32 mi_delay, cap_delay;
+	u32 conf;
+
+	if (spicc->data->has_enhance_clk_div) {
+		div = FIELD_GET(SPICC_ENH_DATARATE_MASK,
+				readl_relaxed(spicc->base + SPICC_ENH_CTL0));
+		div++;
+		div <<= 1;
+	} else {
+		div = FIELD_GET(SPICC_DATARATE_MASK,
+				readl_relaxed(spicc->base + SPICC_CONREG));
+		div += 2;
+		div = 1 << div;
+	}
+
+	mi_delay = SPICC_MI_NO_DELAY;
+	cap_delay = SPICC_CAP_AHEAD_2_CYCLE;
+	hz = clk_get_rate(spicc->clk);
+
+	if (hz >= 100000000)
+		cap_delay = SPICC_CAP_DELAY_1_CYCLE;
+	else if (hz >= 80000000)
+		cap_delay = SPICC_CAP_NO_DELAY;
+	else if (hz >= 40000000)
+		cap_delay = SPICC_CAP_AHEAD_1_CYCLE;
+	else if (div >= 16)
+		mi_delay = SPICC_MI_DELAY_3_CYCLE;
+	else if (div >= 8)
+		mi_delay = SPICC_MI_DELAY_2_CYCLE;
+	else if (div >= 6)
+		mi_delay = SPICC_MI_DELAY_1_CYCLE;
+
+	conf = readl_relaxed(spicc->base + SPICC_TESTREG);
+	conf &= ~(SPICC_MO_DELAY_MASK | SPICC_MI_DELAY_MASK
+		  | SPICC_MI_CAP_DELAY_MASK);
+	conf |= FIELD_PREP(SPICC_MI_DELAY_MASK, mi_delay);
+	conf |= FIELD_PREP(SPICC_MI_CAP_DELAY_MASK, cap_delay);
+	writel_relaxed(conf, spicc->base + SPICC_TESTREG);
+}
+
 static void meson_spicc_setup_xfer(struct meson_spicc_device *spicc,
 				   struct spi_transfer *xfer)
 {
@@ -346,6 +403,8 @@ static void meson_spicc_setup_xfer(struct meson_spicc_device *spicc,
 		writel_relaxed(conf, spicc->base + SPICC_CONREG);
 
 	clk_set_rate(spicc->clk, xfer->speed_hz);
+
+	meson_spicc_auto_io_delay(spicc);
 }
 
 static int meson_spicc_transfer_one(struct spi_master *master,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
