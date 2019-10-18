Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD94DD00B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 22:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1DjBmNLtDAiJsv9rVcngdGrddGbdfr1OIKHsu5nVwA=; b=OBHT6IcRyBn4q8
	pPnhxUHf1aFl2h2+CBEDWPaNuYnTAGCdIaSAuUWnG5Ahh0vyC/QiidZwmlXA2bDyEySek0Lk9c4w3
	mgZ5qMp4xf/16PH+PLeaW8j/gjlxe4gc9Ur74pJuUJi13uOdlNBwZV9MVgiNkBwMhYHKeFv43h8ai
	+0E16lLPG/nwLr68lV+tvQRh2fcEJqvmZ8T10ZueK7CWvhgar3+F03bBkrMUCh91rtgv+muQKqDxQ
	/ZtmpG4GiB1h9/7bVFoa2jBYINRreG8S+pJhfyv+c0Z7Bvp9LhDksRp+V48bzG0HQRIwoHzxgZliv
	VTXUPK/KKmSJp9LCGKOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLYpZ-00068x-0f; Fri, 18 Oct 2019 20:26:37 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLYol-0005eS-4u
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 20:25:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1571430344;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=r8Vy3GR7D6oFV0HKg54ju3w3VTnD+GTmqAIqPn+j/RM=;
 b=qjUJFcXz5fh6VZrzlTBeu55kVbtRXYQQ5xLaA48RiHFZ1t/ohriWTIu/sLbyXGxTFn
 S5PIdK9kMRBGJ5/w9e02H+cQPWcCsCRBSGL5CeLGHdoAXbLfeN5OMh2bpOEL3va9DVB7
 Eldmd41neZh58N7RTIU6nppTdGRNU8XhYWO9DKnm8+CMcB5rWwOHw5pQfKKoPD2bxyx8
 5JnzFRTnBkPsYwq/9pE9LENp8QWFhrLhtGYWLVH8U7GOVKzWsfAkcdj5h6HRV+hTJTHR
 eiEA0QqFaOStvKJvvJd01dCjppJPlHI2qdR4ZeGdXLcKQ+g24HCA3v9y+L/eaq+CiENY
 MV0A==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1mfYzBGHXH6F3CFF60="
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.28.1 DYNA|AUTH)
 with ESMTPSA id R0b2a8v9IKPXDUo
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Fri, 18 Oct 2019 22:25:33 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Mike Rapoport <rppt@linux.ibm.com>, David Sterba <dsterba@suse.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Petr Mladek <pmladek@suse.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Stultz <john.stultz@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH 2/9] net: wireless: ti: wl1251 add device tree support
Date: Fri, 18 Oct 2019 22:25:23 +0200
Message-Id: <13d0a47ea50eacda2a493c8fde5143d6c4f34592.1571430329.git.hns@goldelico.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1571430329.git.hns@goldelico.com>
References: <cover.1571430329.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_132547_393367_E4107140 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5303:0:0:6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 linux-mmc@vger.kernel.org, kernel@pyra-handheld.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We will have the wl1251 defined as a child node of the mmc interface
and can read setup for gpios, interrupts and the ti,use-eeprom
property from there instead of pdata to be provided by pdata-quirks.

Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")

Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 drivers/net/wireless/ti/wl1251/sdio.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/net/wireless/ti/wl1251/sdio.c b/drivers/net/wireless/ti/wl1251/sdio.c
index 677f1146ccf0..c54a273713ed 100644
--- a/drivers/net/wireless/ti/wl1251/sdio.c
+++ b/drivers/net/wireless/ti/wl1251/sdio.c
@@ -16,6 +16,9 @@
 #include <linux/irq.h>
 #include <linux/pm_runtime.h>
 #include <linux/gpio.h>
+#include <linux/of.h>
+#include <linux/of_gpio.h>
+#include <linux/of_irq.h>
 
 #include "wl1251.h"
 
@@ -217,6 +220,7 @@ static int wl1251_sdio_probe(struct sdio_func *func,
 	struct ieee80211_hw *hw;
 	struct wl1251_sdio *wl_sdio;
 	const struct wl1251_platform_data *wl1251_board_data;
+	struct device_node *np = func->dev.of_node;
 
 	hw = wl1251_alloc_hw();
 	if (IS_ERR(hw))
@@ -248,6 +252,15 @@ static int wl1251_sdio_probe(struct sdio_func *func,
 		wl->power_gpio = wl1251_board_data->power_gpio;
 		wl->irq = wl1251_board_data->irq;
 		wl->use_eeprom = wl1251_board_data->use_eeprom;
+	} else if (np) {
+		wl->use_eeprom =of_property_read_bool(np, "ti,wl1251-has-eeprom");
+		wl->power_gpio = of_get_named_gpio(np, "ti,power-gpio", 0);
+		wl->irq = of_irq_get(np, 0);
+
+		if (wl->power_gpio == -EPROBE_DEFER || wl->irq == -EPROBE_DEFER) {
+			ret = -EPROBE_DEFER;
+			goto disable;
+		}
 	}
 
 	if (gpio_is_valid(wl->power_gpio)) {
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
