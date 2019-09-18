Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5511DB6301
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jA5QzZYvFOFbgVJ6H+5ORNM2l0z2boiQd55iCrKbGl0=; b=UG8PfdNNCA1EwC
	B02OmuYqn19M7a729lcvQFnyEXm6RGBLAPzFTz4B8RIP2qXhZN02J3tZSV/Pi/mVVT4AAG4BiJcXs
	qW9jXOnCrXlKni3Md16E5yNJ4sKjTmBVxnC716CAlhTaHmrhGjoq6SC4T05BRHcfbn2ZjvAiI1P5v
	BeK1yEnVswnXxDdzRmmBs44orVM0YtVw6KnsYY0+xivvuDPZcAAk4fU4fkN2y9eGC9Nz/QBREbZc5
	5xxTOqCfUr8/hJc8XHYppzk1MBh0iwSaUjQWi3AlpYgZurl7EjWA6FKsL/N97FtJp3CifUSrGpzh3
	VEuIlqyDD9d96L9mDLgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAYz0-0004EQ-Jt; Wed, 18 Sep 2019 12:22:54 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYyl-0004Dx-SI
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:22:41 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8IBxCbN020861; Wed, 18 Sep 2019 14:22:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=RebjsdANV2RzBT+nKVyZPCTFFvdkml0nlo0oKVk0ci8=;
 b=oipJ2ouUjUahB3dmJ4OqaGkvNR6lRCvhtpKxSkkUoeCN5vsRw1HNa1L1WuBo/QBdIVqS
 HMlU74EipnCxVFIksMwBCCxnMxWQ7RrY1gyIzU0Yri1MuCcC/3OH5KSbp8Wd1+FpSf57
 ovlemkzcYOBffmOiVS0nijuG1kUiYaS9GteEst8NbasI0Mg8Xwlz3A/D6NILOrRvx8Cc
 MXEYu7rziBf4sQTs4U2nvwoA5HR4JK0v5ZIF91rzbIwNgvVZqrFZzQtS76er1epe96Fx
 BLWutbYImcqD6p4SF8nihNqCvuvF3vvMkVxPB447o3D/fDWOoI4YO7tz210/6LSqHbEw 3w== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v37kh456y-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 18 Sep 2019 14:22:33 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 9C42B4C;
 Wed, 18 Sep 2019 12:22:29 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D8E3E2C5B2F;
 Wed, 18 Sep 2019 14:22:28 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 18 Sep
 2019 14:22:28 +0200
Received: from localhost (10.48.1.232) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 18 Sep 2019 14:22:28 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <vilhelm.gray@gmail.com>
Subject: [PATCH] counter: stm32-timer-cnt: fix a kernel-doc warning
Date: Wed, 18 Sep 2019 14:22:03 +0200
Message-ID: <1568809323-26079-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.1.232]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-18_07:2019-09-17,2019-09-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_052240_209320_EB20D74C 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, jic23@kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following warning when documentation is built:
drivers/counter/stm32-timer-cnt.c:37: warning: cannot understand function
prototype: 'enum stm32_count_function'

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 drivers/counter/stm32-timer-cnt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
index 644ba18..e425dd1 100644
--- a/drivers/counter/stm32-timer-cnt.c
+++ b/drivers/counter/stm32-timer-cnt.c
@@ -28,7 +28,7 @@ struct stm32_timer_cnt {
 };
 
 /**
- * stm32_count_function - enumerates stm32 timer counter encoder modes
+ * enum stm32_count_function - enumerates stm32 timer counter encoder modes
  * @STM32_COUNT_SLAVE_MODE_DISABLED: counts on internal clock when CEN=1
  * @STM32_COUNT_ENCODER_MODE_1: counts TI1FP1 edges, depending on TI2FP2 level
  * @STM32_COUNT_ENCODER_MODE_2: counts TI2FP2 edges, depending on TI1FP1 level
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
