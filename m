Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 506D01245A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:20:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hTH/BZpILJy4QoyN+M5eQQv6an4B8H22OyNP9hNs3OE=; b=mRO0+v7DoSPs5GBL6QlVkr9SwC
	zCFlhBTe2lgf9BL51f2LR5+ZkeU8kGXVtgyiDy21/JPMDXFqZYPxWB3kRdCiovX+79T+UvnXGN/JJ
	MPKngnnJjyvFeDv4wBl4Fbc38d2iUeuMmXK3Bg6XWfGFN3i4nwoWx1TA7u9ZjG0+1v7isT9z859zJ
	BQTW//ipIwRZZTitxiPMzHDIw7h2t3DwHjWr1xddEUpQH0lcg3/Ok4CDS4lAPTJ4JZ+dN9efdE9cM
	HhIWbD6RKkYLH4hkAbIyFkcRn3UFlwGj0lvA1o1El+H6AmFWN6Mq0S7quqDF4hfbGS5K0LXsNlvy9
	d/6AGbJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXNq-0006gv-Uy; Wed, 18 Dec 2019 11:20:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXL3-00031e-Qm
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:17:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 243B3113E;
 Wed, 18 Dec 2019 03:17:57 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3E9843F6CF;
 Wed, 18 Dec 2019 03:17:56 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/11] hwmon: (scmi-hwmon) Match scmi device by both name
 and protocol id
Date: Wed, 18 Dec 2019 11:17:41 +0000
Message-Id: <20191218111742.29731-11-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218111742.29731-1-sudeep.holla@arm.com>
References: <20191218111742.29731-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_031757_922965_8DBFD5A5 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-hwmon@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The scmi bus now has support to match the driver with devices not only
based on their protocol id but also based on their device name if one is
available. This was added to cater the need to support multiple devices
and drivers for the same protocol.

Let us add the name "hwmon" to scmi_device_id table in the driver so
that in matches only with device with the same name and protocol id
SCMI_PROTOCOL_SENSOR. This is just for sake of completion and must
not be used to add IIO support in parallel. Instead, if IIO support is
added ever in future, we need to drop this hwmon driver entirely and
use the iio->hwmon bridge to access the sensors as hwmon devices if
needed.

Cc: Guenter Roeck <linux@roeck-us.net>
Cc: linux-hwmon@vger.kernel.org
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/hwmon/scmi-hwmon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
index 8a7732c0bef3..286d3cfda7de 100644
--- a/drivers/hwmon/scmi-hwmon.c
+++ b/drivers/hwmon/scmi-hwmon.c
@@ -259,7 +259,7 @@ static int scmi_hwmon_probe(struct scmi_device *sdev)
 }
 
 static const struct scmi_device_id scmi_id_table[] = {
-	{ SCMI_PROTOCOL_SENSOR },
+	{ SCMI_PROTOCOL_SENSOR, "hwmon" },
 	{ },
 };
 MODULE_DEVICE_TABLE(scmi, scmi_id_table);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
