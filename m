Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312D61F749A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 09:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QGP+Tg+JuT3BlxPGM0llDVEust3j5WjEITOPUYeX9gw=; b=TCJ6UoyUJxlzJ8
	XXBMOZD6SKDAmriCKAX4N1q4SW2u5GqClW0UhZOlb/s9gKqp/E09+Mec5dHaMdR4OqM4k6odewQrG
	ZSBxWtG2MZaQMrIclEQ2pC+LYrbwIjGvXhxnYd8u1Fybvksup1PnD6/pmyZO2qt2J7K5mJUhlsUcP
	A97gU0+lJBiNF158hQ8ZZMzdnVYzspCq/5BjDY1jzcYyuwoDJ3ie/EoWNBqHD3vCDJfgEY08nI5ZU
	CDDv+GdPTut35Gk6ho2IX+neUgjsR9v8JpLESPmVj3/AFjLC7T9VBczXPWtK5EsPzW0KYAyg+I/13
	r/3gBTtAE0Yf5oc/Q3ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jje82-0007Da-Q2; Fri, 12 Jun 2020 07:29:30 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jje7u-0007Cu-Hz
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 07:29:24 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05C7NZDm021034; Fri, 12 Jun 2020 09:29:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=9NAA+9cKZ/kIbCpAlrsaa+GS6yrhN/7VAfW5Ht3g5Cw=;
 b=jH8SbsSpiAPLvArNfqxH4fXnFflp0jen+BfFrBqm5pgkYROJLUlpAZQ3iXV3u9W0nphh
 3dbjafBIbbXyx/yTjXRX5eDkaf/zzfX9wsbsiKHjrsuDssQtdrmOKn/5OshQUGgMe7zH
 qdRJuZ27bgVcOUKwi0HcZIBNLTviyyjfENLK/XAECEXUGR8pHNIsg6TQMWwAJf9icneS
 YXdYAG2JGmY2dcSQwCbO6Oo+Y4ANUNL7Qqtt/ect9UHhHpF7m4jN+e+RI/PANN+/UjPL
 2/X0v9OLvy5YdWpPaG0pkD1HN1+0J8DyafSdp09pdLzIoUtMF6K7izptqotPATMVkz/6 dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31jppp4bn9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 12 Jun 2020 09:29:06 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E5E1C100034;
 Fri, 12 Jun 2020 09:29:05 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B2D572AC93E;
 Fri, 12 Jun 2020 09:29:05 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 12 Jun 2020 09:29:05 +0200
From: Ludovic Barre <ludovic.barre@st.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <marc.zyngier@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] irqchip/stm32: fix return value of stm32_exti_h_set_affinity
Date: Fri, 12 Jun 2020 09:29:01 +0200
Message-ID: <20200612072901.14388-1-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-12_06:2020-06-11,
 2020-06-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_002923_057263_92332C58 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

exti hardware point of view, there is no specific action on set_affinity.
So the affinity must be forwarded to parent if there is a
descendent irqchips, otherwise just return IRQ_SET_MASK_OK_DONE.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/irqchip/irq-stm32-exti.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
index faa8482c8246..1a0a60ee7140 100644
--- a/drivers/irqchip/irq-stm32-exti.c
+++ b/drivers/irqchip/irq-stm32-exti.c
@@ -555,7 +555,7 @@ static int stm32_exti_h_set_affinity(struct irq_data *d,
 	if (d->parent_data->chip)
 		return irq_chip_set_affinity_parent(d, dest, force);
 
-	return -EINVAL;
+	return IRQ_SET_MASK_OK_DONE;
 }
 
 static int __maybe_unused stm32_exti_h_suspend(void)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
