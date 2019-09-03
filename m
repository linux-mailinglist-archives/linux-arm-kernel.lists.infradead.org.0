Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B102EA6B2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iFLumI1fruwaWVPz9IuQALGdBIq7OEU18a+GNsj66jQ=; b=FEFqSWTkmPt7ls
	B7sBPrAU1d267zka69NwYLDnfxNXGlo7xkySERkbjNf6RwUfhqtXh1npDwTJdIMUJ1YAL6NFqt2BV
	UIY8s0H4YIG2yeI94XT3udB/8R3TGJ0fE8VyIGL3RjLArUJzW5AkYkrOSiVDyCRuhXWJDsADnMM4m
	VMBhXPx2++n4+IeYQyOX2VqNhmQDbQ6yoHw0cYGlBUpor0YHUJPY6QPnhhePTB/KS9Q3Z5bC936kM
	5RknlHBx3tDtPbLOVyv8N3PI5t0sTQTc+oVyNsCd42s6oQ9yhjAFQon2XdnmV4pH/Rx20exiDkAvK
	B5FL2DUCht5g6cEzABEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59g4-00038T-7n; Tue, 03 Sep 2019 14:21:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59fg-0002zM-7Y
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:20:37 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E2BE22D6D;
 Tue,  3 Sep 2019 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567520434;
 bh=ygZcufiEa4tPWQUTLwsIpxN5DMwkrJv3yH0ESnqY4bQ=;
 h=From:To:Cc:Subject:Date:From;
 b=qO+VPZHZBEPdHZs0lMom5N2QPKLnYZHR+43Y+b8JoVwKXDe/uARpF7uubMFjc/1zV
 W0nmnVF9tczCPEB3PoaGXpuF+4g66gM/IwLC9kQ4O4Q1oufMBr7bE5JQXCsDKDrojN
 YKD1RvVt8Uv2xoMWNmjE5BR9bH2BB8INavDEF33Y=
From: Dinh Nguyen <dinguyen@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv7] drivers/amba: add reset control to amba bus probe
Date: Tue,  3 Sep 2019 09:12:15 -0500
Message-Id: <20190903141215.18283-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_072036_299188_035F5F86 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux@armlinux.org.uk, dinguyen@kernel.org, p.zabel@pengutronix.de,
 ccross@android.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
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
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
v7: added Philipp Zabel's Reviewed-by:
v6: remove the need to reset_control_get_count as
    of_reset_control_array_get_optional_shared is already doing that
v5: use of_reset_control_array_get_optional_shared()
v4: cleaned up indentation in loop
    fix up a few checkpatch warnings
    add Reviewed-by:
v3: add a reset_control_put()
    add error handling
v2: move reset control to bus code
    find all reset properties and de-assert them
---
 drivers/amba/bus.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 100e798a5c82..f39f075abff9 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -18,6 +18,7 @@
 #include <linux/limits.h>
 #include <linux/clk/clk-conf.h>
 #include <linux/platform_device.h>
+#include <linux/reset.h>
 
 #include <asm/irq.h>
 
@@ -401,6 +402,19 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
 	ret = amba_get_enable_pclk(dev);
 	if (ret == 0) {
 		u32 pid, cid;
+		struct reset_control *rstc;
+
+		/*
+		 * Find reset control(s) of the amba bus and de-assert them.
+		 */
+		rstc = of_reset_control_array_get_optional_shared(dev->dev.of_node);
+		if (IS_ERR(rstc)) {
+			if (PTR_ERR(rstc) != -EPROBE_DEFER)
+				dev_err(&dev->dev, "Can't get amba reset!\n");
+			return PTR_ERR(rstc);
+		}
+		reset_control_deassert(rstc);
+		reset_control_put(rstc);
 
 		/*
 		 * Read pid and cid based on size of resource
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
