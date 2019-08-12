Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B71089D04
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m6wD2mAOuxwUEro0NKQCs2Op6l4VTGsTM2f4DW3quI8=; b=qfjEmme3xW+yNbzWsaehfvQXIg
	wDHfqzZa9lsbVQPrK+STgPuT1HF3V0Wp8oTeIo+U4NZ34o7C56jDwpnGeTPDlaeHddv2Iqcfbo4cs
	qWSf2TBjMmAuVcjB+UqP3Thel8e5QZKYIGPwoycW6UAEexIhDyyw1FPJkuTsull5JOgVBJeepoEJc
	/WQNJ0cEXRW2M2jbCPdLAljlNpJy+/TN5emiWsJGZg8sG9rTycEqDcU5rkVRJu/4dOPXpkjGV7jDW
	pCq6sjgiiQYLV4LClkkqajdrRwrLAQRNUUQXSjNWZ4sRytetnm3r69I8eigjBj9cE4MmMthbI1xAY
	22IZiQcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8Vv-0001jB-PL; Mon, 12 Aug 2019 11:29:23 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8VZ-0001dv-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:29:05 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 988ECB04B9D23C81953D;
 Mon, 12 Aug 2019 19:28:56 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Mon, 12 Aug 2019
 19:28:47 +0800
To: <linux-gpio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, <linus.walleij@linaro.org>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [PATCH] gpio: pl061: Fix the issue failed to register the ACPI
 interruption
Message-ID: <5D514D6F.4090904@hisilicon.com>
Date: Mon, 12 Aug 2019 19:28:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_042902_976699_42A4F562 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, huangdaode <huangdaode@hisilicon.com>,
 John Garry <john.garry@huawei.com>, Linuxarm <linuxarm@huawei.com>,
 xuwei5@hisilicon.com, Shameerali
 Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>, "Liguozhu
 \(Kenneth\)" <liguozhu@hisilicon.com>, Zhangyi ac <zhangyi.ac@huawei.com>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Invoke acpi_gpiochip_request_interrupts after the acpi data has been
attached to the pl061 acpi node to register interruption.

Otherwise it will be failed to register interruption for the ACPI case.
Because in the gpiochip_add_data_with_key, acpi_gpiochip_add is invoked
after gpiochip_add_irqchip but at that time the acpi data has not been
attached yet.

Tested with below steps on QEMU v4.1.0-rc3 and Linux kernel v5.3-rc4,
and found pl061 interruption is missed in the /proc/interrupts:
1.
qemu-system-aarch64 \
-machine virt,gic-version=3 -cpu cortex-a57 \
-m 1G,maxmem=4G,slots=4 \
-kernel Image -initrd rootfs.cpio.gz \
-net none -nographic  \
-bios QEMU_EFI.fd  \
-append "console=ttyAMA0 acpi=force earlycon=pl011,0x9000000"

2. cat /proc/interrupts in the guest console:
estuary:/$ cat /proc/interrupts
CPU0
2:       3228     GICv3  27 Level     arch_timer
4:         15     GICv3  33 Level     uart-pl011
42:          0     GICv3  23 Level     arm-pmu
IPI0:         0       Rescheduling interrupts
IPI1:         0       Function call interrupts
IPI2:         0       CPU stop interrupts
IPI3:         0       CPU stop (for crash dump) interrupts
IPI4:         0       Timer broadcast interrupts
IPI5:         0       IRQ work interrupts
IPI6:         0       CPU wake-up interrupts
Err:          0

Fixes: 04ce935c6b2a ("gpio: pl061: Pass irqchip when adding gpiochip")
Signed-off-by: Wei Xu <xuwei5@hisilicon.com>
---
  drivers/gpio/gpio-pl061.c | 7 +++++++
  1 file changed, 7 insertions(+)

diff --git a/drivers/gpio/gpio-pl061.c b/drivers/gpio/gpio-pl061.c
index 722ce5c..e1a434e 100644
--- a/drivers/gpio/gpio-pl061.c
+++ b/drivers/gpio/gpio-pl061.c
@@ -8,6 +8,7 @@
   *
   * Data sheet: ARM DDI 0190B, September 2000
   */
+#include <linux/acpi.h>
  #include <linux/spinlock.h>
  #include <linux/errno.h>
  #include <linux/init.h>
@@ -24,6 +25,9 @@
  #include <linux/pinctrl/consumer.h>
  #include <linux/pm.h>

+#include "gpiolib.h"
+#include "gpiolib-acpi.h"
+
  #define GPIODIR 0x400
  #define GPIOIS  0x404
  #define GPIOIBE 0x408
@@ -345,6 +349,9 @@ static int pl061_probe(struct amba_device *adev, 
const struct amba_id *id)
      if (ret)
          return ret;

+    if (has_acpi_companion(dev))
+        acpi_gpiochip_request_interrupts(&pl061->gc);
+
      amba_set_drvdata(adev, pl061);
      dev_info(dev, "PL061 GPIO chip registered\n");

-- 
2.8.1


.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
