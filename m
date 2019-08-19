Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6553924FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G/gIMma+XdkzXH6QWDhwvslhUYwLU51OkeDQAg4Je3Y=; b=rBnbn6SGW2AW6i
	ecKSXiP3Emt+eNJbHghpmcGBmi7lEc8gE8RkKlWfquwij6U8h42CGuwTE2ZdAjwQ3xsvncGCZWB7V
	lB77f+hoKrvOrPQqkWbj39srAem6+MKQPKGNmDq4+QBVEn9YXQNqc6PhrI6W+G3fQhYYIV1wWgz00
	1QkYz1PoILCUC2ohtddCuuFwUGjHpgRPXDTa/JtrjzGDejcwQ5vG3UL5AsPIdVOkC9jwftkPl0BJp
	5pWJdXJxu5+DC+0GhgsjQskkS9gkVVa2+axJMhrvug5X9Di0lWuV5WIc6YtbaRqA/Cy6mJmT3vsbX
	FmIBoFWP3fX4qmcXVUrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhir-0005ec-KJ; Mon, 19 Aug 2019 13:29:21 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhik-0005dz-1K
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:29:15 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8EC5B6C097E5FE472E6A;
 Mon, 19 Aug 2019 21:29:11 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Mon, 19 Aug 2019 21:29:05 +0800
From: Wei Xu <xuwei5@hisilicon.com>
To: <xuwei5@hisilicon.com>, <linux-gpio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linus.walleij@linaro.org>, <rjw@rjwysocki.net>, <lenb@kernel.org>,
 <mika.westerberg@linux.intel.com>, <andy.shevchenko@gmail.com>
Subject: [PATCH v3] gpio: pl061: Fix the issue failed to register the ACPI
 interrtupion
Date: Mon, 19 Aug 2019 21:27:05 +0800
Message-ID: <1566221225-5170-1-git-send-email-xuwei5@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_062914_236607_1B01AD65 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: salil.mehta@huawei.com, jinying@hisilicon.com, tangkunshan@huawei.com,
 john.garry@huawei.com, linuxarm@huawei.com,
 shameerali.kolothum.thodi@huawei.com, huangdaode@hisilicon.com,
 jonathan.cameron@huawei.com, liguozhu@hisilicon.com, zhangyi.ac@huawei.com,
 shiju.jose@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Invoke acpi_gpiochip_request_interrupts after the acpi data has been
attached to the pl061 acpi node to register interruption.

Otherwise it will be failed to register interruption for the ACPI case.
Because in the gpiochip_add_data_with_key, acpi_gpiochip_add is invoked
after gpiochip_add_irqchip but at that time the acpi data has not been
attached yet.

Tested with below steps:

	qemu-system-aarch64 \
	-machine virt,gic-version=3 -cpu cortex-a57 \
	-m 1G,maxmem=4G,slots=4 \
	-kernel Image -initrd rootfs.cpio.gz \
	-net none -nographic  \
	-bios QEMU_EFI.fd  \
	-append "console=ttyAMA0 acpi=force earlycon=pl011,0x9000000"

The pl061 interruption is missed and the following output is not in the
/proc/interrupts on the v5.3-rc4 compared with the v5.2.0-rc7.

	 43:          0  ARMH0061:00   3 Edge      ACPI:Event

Fixes: 04ce935c6b2a ("gpio: pl061: Pass irqchip when adding gpiochip")
Signed-off-by: Wei Xu <xuwei5@hisilicon.com>
---
v2 -> v3:
* addressed the comments of Andy to show only affected output of
/proc/interrupts and drop the whole log of v5.2.0-rc7

v1- > v2:
* rebased on https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/log/?h=devel
* attached the log based on QEMU v3.0.0 and Linux kernel v5.2.0-rc7
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
@@ -345,6 +349,9 @@ static int pl061_probe(struct amba_device *adev, const struct amba_id *id)
 	if (ret)
 		return ret;
 
+	if (has_acpi_companion(dev))
+		acpi_gpiochip_request_interrupts(&pl061->gc);
+
 	amba_set_drvdata(adev, pl061);
 	dev_info(dev, "PL061 GPIO chip registered\n");
 
-- 
2.8.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
