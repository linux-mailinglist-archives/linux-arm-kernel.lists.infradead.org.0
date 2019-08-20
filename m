Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5D09639F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zlbfjQLWIHm/sIxVpf8UHiI9MTdzZBxSE5e5hDdftg=; b=MqFcOa3lqyvzjE
	9ozs0Rf50aZF+bfhe7ivYPTzB8gH1bvdYSirs54VhLcxiXN9xAEk0IRp0Tp/ic8RWQe12FZgOByPv
	5nHWh0quV57E/GR75jn8rkPVL1p0H//L7YSwpy+rqZvml26v+zi/aJerg56fXW6miySeEK5PJfaAg
	xwOCZ02rR8R+l/46QHBZGxmIMzk7R4uo+SYAWA0dN7OlrXncNP37bn8EkUlLqkh0tqCFvTBFxP1pf
	U1tDyrB1DEsSoAIl73yztdalhZRmaz7TFDBL1j8v5dWKiO2yRB5ysm0vFUOJnNyeNyIH1NqE1rLa4
	FZcjkYFFyw1JkOxMt9Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05eu-0001cF-G3; Tue, 20 Aug 2019 15:02:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05b6-0005Nf-Hw
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:58:58 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6FBC2339E;
 Tue, 20 Aug 2019 14:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566313136;
 bh=5au+uySpHKMUgQfB6f0HCtqCGXnnNO/toEwWtCgwQRU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Elx0d63ofvknVaHHM1m3EBtPbefELcg0n3vF+T4OsO7EWe2obiob7hBXk34t8DXgX
 /deiwyMkNRRojaOHdjBUgvAmPYJsQlgR/ggamqiW/EdmVZ/NOiFZPauXKUMKL5VDar
 337mhbwmYMfLpXYOpuzq/e/sIXYbvJmJvJ9o6yMg=
From: Dinh Nguyen <dinguyen@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [RESEND PATCHv4 1/1] drivers/amba: add reset control to amba bus probe
Date: Tue, 20 Aug 2019 09:58:34 -0500
Message-Id: <20190820145834.7301-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190820145834.7301-1-dinguyen@kernel.org>
References: <20190820145834.7301-1-dinguyen@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075856_691499_7321AC0D 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: robh@kernel.org, daniel.thompson@linaro.org, tony.luck@intel.com,
 manivannan.sadhasivam@linaro.org, keescook@chromium.org,
 devicetree@vger.kernel.org, linus.walleij@linaro.org, anton@enomsg.org,
 linux@armlinux.org.uk, dinguyen@kernel.org, ccross@android.com,
 frowand.list@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The primecell controller on some SoCs, i.e. SoCFPGA, is held in reset by
default. Until recently, the DMA controller was brought out of reset by the
bootloader(i.e. U-Boot). But a recent change in U-Boot, the peripherals
that are not used are held in reset and are left to Linux to bring them
out of reset.

Add a mechanism for getting the reset property and de-assert the primecell
module from reset if found. This is a not a hard fail if the reset properti
is not present in the device tree node, so the driver will continue to
probe.

Because there are different variants of the controller that may have
multiple reset signals, the code will find all reset(s) specified and
de-assert them.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v4: cleaned up indentation in loop
    fix up a few checkpatch warnings
    add Reviewed-by:
v3: add a reset_control_put()
    add error handling
v2: move reset control to bus code
    find all reset properties and de-assert them
---
 drivers/amba/bus.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 100e798a5c82..76a1cd56a1ab 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -18,6 +18,7 @@
 #include <linux/limits.h>
 #include <linux/clk/clk-conf.h>
 #include <linux/platform_device.h>
+#include <linux/reset.h>
 
 #include <asm/irq.h>
 
@@ -401,6 +402,26 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
 	ret = amba_get_enable_pclk(dev);
 	if (ret == 0) {
 		u32 pid, cid;
+		int count;
+		struct reset_control *rstc;
+
+		/*
+		 * Find reset control(s) of the amba bus and de-assert them.
+		 */
+		count = reset_control_get_count(&dev->dev);
+		while (count > 0) {
+			rstc = of_reset_control_get_shared_by_index(dev->dev.of_node, count - 1);
+			if (IS_ERR(rstc)) {
+				if (PTR_ERR(rstc) == -EPROBE_DEFER)
+					ret = -EPROBE_DEFER;
+				else
+					dev_err(&dev->dev, "Can't get amba reset!\n");
+				break;
+			}
+			reset_control_deassert(rstc);
+			reset_control_put(rstc);
+			count--;
+		}
 
 		/*
 		 * Read pid and cid based on size of resource
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
