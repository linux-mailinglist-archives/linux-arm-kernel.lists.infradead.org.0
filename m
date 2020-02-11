Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A844158D09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:56:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4PTggHGqCw+o80ViwsN7qX/lpqtvYy92KWi3FrhKRm0=; b=tETLrLieqKHyFZ
	x1CviN8188t5L5fbxGkn8Q5lEPNQrN+fStnfYZW6CdFBDCyM2bLKcckXIyYB6siD1oDFgi59YD7Xj
	beFvzBEhmQB5yA9u9H01uf+DYInSqRg1Pn/1K/U83s9dGYW3Yg+997f8guKUpjuEamPs19Y2ndCm0
	D6xCM/Cx3TcXlqeZMPY+tZsCezefJMaPubkHWxyhaPA2/07ANk1bhjE39vLYlkHLpELOk7IkUlnyV
	/hDuU2hOMlLveUElnSWVmBYWrgexpTJ0Q2KiAgxcG4866n31dzcIrYF7qCIA/IRF2m15MrLbxs4iq
	8P7e3ZeQ5yVApX+1h/Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1TDc-0000is-72; Tue, 11 Feb 2020 10:56:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1TDR-0000Zm-Ch
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:56:31 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01BAuKJR011415; Tue, 11 Feb 2020 11:56:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=cV1Wais5QMnCi8AYrjauwcQtc7x8Akg7kC3DCHNTrfI=;
 b=cKJVTis8lYfFtJmiAwNtEstgu8ZuVu2qme2/jqgNfi7pG9/H8KjgeBt4JOPrcc/790wY
 ijOpUeKHTdkXZiW4s2GpQ5TARF1uFND/zPKxeJVMfGH/ryd4E4nglrEkvomKjcIfQ8uk
 NpGvOdYh0TnLxQYM7CLRDaaaz6ajHx3kv3l4loO3SAabEbPQEctkz8x6EQLXSmPLbPCv
 WwGQUUXgqs/50JLQEHG9Ho8g5q+ouF1s7IdkRvtR033cAT0Cpqu59gjz81I910V1mZ2x
 mBA1tHHsuktI3Gbi2QXPZE6za+GsD7erMLutX7W/4mdOMHvDKiNhlqVYISlpZIpGqecx PQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ud9m85f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 11 Feb 2020 11:56:25 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A7594100050;
 Tue, 11 Feb 2020 11:56:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 96D282AEAB8;
 Tue, 11 Feb 2020 11:56:20 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 11 Feb 2020 11:56:20 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH] counter: stm32-timer-cnt: remove iio headers
Date: Tue, 11 Feb 2020 11:56:06 +0100
Message-ID: <1581418566-31954-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-11_03:2020-02-10,
 2020-02-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_025629_732526_7582422F 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: benjamin.gaignard@st.com, linux-iio@vger.kernel.org, vilhelm.gray@gmail.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The stm32-timer-cnt driver doesn't use the iio interface. The iio headers
aren't relevant and can be removed as reported by William in [1].
With this change, mod_devicetable.h needs to be added to define the
'of_device_id' struct.

[1] https://lkml.org/lkml/2020/2/10/1516

Reported-by: William Breathitt Gray <vilhelm.gray@gmail.com>
Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
Note this applies on top of:
- "counter: stm32-timer-cnt: add power management support"
---
 drivers/counter/stm32-timer-cnt.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
index 50496f4..ef2a974 100644
--- a/drivers/counter/stm32-timer-cnt.c
+++ b/drivers/counter/stm32-timer-cnt.c
@@ -8,9 +8,8 @@
  *
  */
 #include <linux/counter.h>
-#include <linux/iio/iio.h>
-#include <linux/iio/types.h>
 #include <linux/mfd/stm32-timers.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
