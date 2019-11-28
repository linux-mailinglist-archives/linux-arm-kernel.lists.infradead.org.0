Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E6910C5A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 10:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7lat+Q7CLIZbyC28mR+a3B8o581EHuzT3m7uZsDj1OI=; b=IbIJbM4w02RtOU
	YHXV/Q9XqVonoSPHzEM2kVM+W80FZ126t1abu+H8WytwlzpstaGtdq9d/rIcet4L1pZZht3nDAQtv
	mkPKzPCx8HeIQWIY5i+mE+iAuSL4kINRKQXHIuDjTiX+Iq9BLNolaMaviBGAbiKVRZ+xw/L8qnHkD
	35psTimMofbyd+JpKntekl3p0fshiIO+6ovM7Qmxby8AsmYLbQXtM9KwTj0I+e10tBMnih0MeE6rN
	YKzjvHphu4CuD00VofHypSpFYcCqkZXHyrMYP0FZjm5MFneDzZGoluTCZqXHUziBeWSGTseOpmH+q
	4hJZuPa4VavY5we//PBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaFmS-00029W-Tg; Thu, 28 Nov 2019 09:08:08 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaFmH-00027K-M1
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 09:08:00 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 538A8517B63887E92DE5;
 Thu, 28 Nov 2019 17:07:51 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.439.0; Thu, 28 Nov 2019 17:07:48 +0800
From: Daode Huang <huangdaode@hisilicon.com>
To: <tglx@linutronix.de>, <jason@lakedaemon.net>, <maz@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <fabien.dessenne@st.com>
Subject: [PATCH] irqchip/stm32: Fix "WARNING: invalid free of devm_ allocated
Date: Thu, 28 Nov 2019 17:04:40 +0800
Message-ID: <1574931880-168682-1-git-send-email-huangdaode@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_010757_907741_141F6735 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since devm_ allocated data can be automaitcally released, it's no
need to free it apparently, just remove it.

Fixes: cfbf9e497094 ("irqchip/stm32: Use a platform driver for
stm32mp1-exti device")
Signed-off-by: Daode Huang <huangdaode@hisilicon.com>
---
 drivers/irqchip/irq-stm32-exti.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
index e00f2fa..46ec0af 100644
--- a/drivers/irqchip/irq-stm32-exti.c
+++ b/drivers/irqchip/irq-stm32-exti.c
@@ -779,8 +779,6 @@ static int __init stm32_exti_init(const struct stm32_exti_drv_data *drv_data,
 	irq_domain_remove(domain);
 out_unmap:
 	iounmap(host_data->base);
-	kfree(host_data->chips_data);
-	kfree(host_data);
 	return ret;
 }
 
-- 
2.8.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
