Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B56DBCB40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nd7uolZOifZBI6OObpReqa4Mb9N+9WiR+28AwfPOou8=; b=WuGfWJfxvGRkKs
	+Qr2u9Oi3UxZeDsiVreQ3EH1n/MkpKxu7ccCIUknUeHJjjXMKfUnaq83X2EGsSg+T2f5JnGbS1t/n
	Z5T9322Mvmy4aadpxfZYrLdjerapcLmIeI3nrG0UxDQ0zThD3X+LS2S9w13z5P2o3HjnpHhcFkZOv
	qaHwxDZeQ47mn0ziLIFTakIcn6REi+z0wKmVoFaWbuQUwm2mzUUwbXUmSHZ2F8NjSBRqmscF7Bs4N
	RscfajTacRb4RWsLSYGery0UxoJvg+SinOnXAigy5Nd+nEhcXyz6F5iiOcL/Vvzu8r23m/4WAz2p4
	sabcte4IH0tEFzDdb9yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmgA-0003kx-TC; Tue, 24 Sep 2019 15:24:39 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmf0-00030z-6W
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:23:30 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 532B4BCC54BC3747BF23;
 Tue, 24 Sep 2019 23:23:22 +0800 (CST)
Received: from linux-Bxxcye.huawei.com (10.175.104.222) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 23:23:14 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <qemu-arm@nongnu.org>, <qemu-devel@nongnu.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
Subject: [RFC PATCH 01/12] linux-headers: import arm_sdei.h
Date: Tue, 24 Sep 2019 23:21:40 +0800
Message-ID: <1569338511-3572-2-git-send-email-guoheyi@huawei.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.104.222]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082326_960521_9BD6DAF5 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>,
 "Michael S. Tsirkin" <mst@redhat.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Cornelia Huck <cohuck@redhat.com>, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Heyi Guo <guoheyi@huawei.com>,
 wanghaibin.wang@huawei.com, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Import Linux header file include/uapi/linux/arm_sdei.h from kernel
v5.3 release.

This is to prepare for qemu SDEI emulation.

Signed-off-by: Heyi Guo <guoheyi@huawei.com>
Cc: Peter Maydell <peter.maydell@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: "Michael S. Tsirkin" <mst@redhat.com>
Cc: Cornelia Huck <cohuck@redhat.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>
---
 linux-headers/linux/arm_sdei.h | 73 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 linux-headers/linux/arm_sdei.h

diff --git a/linux-headers/linux/arm_sdei.h b/linux-headers/linux/arm_sdei.h
new file mode 100644
index 0000000..af0630b
--- /dev/null
+++ b/linux-headers/linux/arm_sdei.h
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/* Copyright (C) 2017 Arm Ltd. */
+#ifndef _UAPI_LINUX_ARM_SDEI_H
+#define _UAPI_LINUX_ARM_SDEI_H
+
+#define SDEI_1_0_FN_BASE			0xC4000020
+#define SDEI_1_0_MASK				0xFFFFFFE0
+#define SDEI_1_0_FN(n)				(SDEI_1_0_FN_BASE + (n))
+
+#define SDEI_1_0_FN_SDEI_VERSION			SDEI_1_0_FN(0x00)
+#define SDEI_1_0_FN_SDEI_EVENT_REGISTER			SDEI_1_0_FN(0x01)
+#define SDEI_1_0_FN_SDEI_EVENT_ENABLE			SDEI_1_0_FN(0x02)
+#define SDEI_1_0_FN_SDEI_EVENT_DISABLE			SDEI_1_0_FN(0x03)
+#define SDEI_1_0_FN_SDEI_EVENT_CONTEXT			SDEI_1_0_FN(0x04)
+#define SDEI_1_0_FN_SDEI_EVENT_COMPLETE			SDEI_1_0_FN(0x05)
+#define SDEI_1_0_FN_SDEI_EVENT_COMPLETE_AND_RESUME	SDEI_1_0_FN(0x06)
+#define SDEI_1_0_FN_SDEI_EVENT_UNREGISTER		SDEI_1_0_FN(0x07)
+#define SDEI_1_0_FN_SDEI_EVENT_STATUS			SDEI_1_0_FN(0x08)
+#define SDEI_1_0_FN_SDEI_EVENT_GET_INFO			SDEI_1_0_FN(0x09)
+#define SDEI_1_0_FN_SDEI_EVENT_ROUTING_SET		SDEI_1_0_FN(0x0A)
+#define SDEI_1_0_FN_SDEI_PE_MASK			SDEI_1_0_FN(0x0B)
+#define SDEI_1_0_FN_SDEI_PE_UNMASK			SDEI_1_0_FN(0x0C)
+#define SDEI_1_0_FN_SDEI_INTERRUPT_BIND			SDEI_1_0_FN(0x0D)
+#define SDEI_1_0_FN_SDEI_INTERRUPT_RELEASE		SDEI_1_0_FN(0x0E)
+#define SDEI_1_0_FN_SDEI_PRIVATE_RESET			SDEI_1_0_FN(0x11)
+#define SDEI_1_0_FN_SDEI_SHARED_RESET			SDEI_1_0_FN(0x12)
+
+#define SDEI_VERSION_MAJOR_SHIFT			48
+#define SDEI_VERSION_MAJOR_MASK				0x7fff
+#define SDEI_VERSION_MINOR_SHIFT			32
+#define SDEI_VERSION_MINOR_MASK				0xffff
+#define SDEI_VERSION_VENDOR_SHIFT			0
+#define SDEI_VERSION_VENDOR_MASK			0xffffffff
+
+#define SDEI_VERSION_MAJOR(x)	(x>>SDEI_VERSION_MAJOR_SHIFT & SDEI_VERSION_MAJOR_MASK)
+#define SDEI_VERSION_MINOR(x)	(x>>SDEI_VERSION_MINOR_SHIFT & SDEI_VERSION_MINOR_MASK)
+#define SDEI_VERSION_VENDOR(x)	(x>>SDEI_VERSION_VENDOR_SHIFT & SDEI_VERSION_VENDOR_MASK)
+
+/* SDEI return values */
+#define SDEI_SUCCESS		0
+#define SDEI_NOT_SUPPORTED	-1
+#define SDEI_INVALID_PARAMETERS	-2
+#define SDEI_DENIED		-3
+#define SDEI_PENDING		-5
+#define SDEI_OUT_OF_RESOURCE	-10
+
+/* EVENT_REGISTER flags */
+#define SDEI_EVENT_REGISTER_RM_ANY	0
+#define SDEI_EVENT_REGISTER_RM_PE	1
+
+/* EVENT_STATUS return value bits */
+#define SDEI_EVENT_STATUS_RUNNING	2
+#define SDEI_EVENT_STATUS_ENABLED	1
+#define SDEI_EVENT_STATUS_REGISTERED	0
+
+/* EVENT_COMPLETE status values */
+#define SDEI_EV_HANDLED	0
+#define SDEI_EV_FAILED	1
+
+/* GET_INFO values */
+#define SDEI_EVENT_INFO_EV_TYPE			0
+#define SDEI_EVENT_INFO_EV_SIGNALED		1
+#define SDEI_EVENT_INFO_EV_PRIORITY		2
+#define SDEI_EVENT_INFO_EV_ROUTING_MODE		3
+#define SDEI_EVENT_INFO_EV_ROUTING_AFF		4
+
+/* and their results */
+#define SDEI_EVENT_TYPE_PRIVATE			0
+#define SDEI_EVENT_TYPE_SHARED			1
+#define SDEI_EVENT_PRIORITY_NORMAL		0
+#define SDEI_EVENT_PRIORITY_CRITICAL		1
+
+#endif /* _UAPI_LINUX_ARM_SDEI_H */
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
