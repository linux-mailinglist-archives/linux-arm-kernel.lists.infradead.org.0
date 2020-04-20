Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16401B051F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsZ0HEENhOzJSERTbxpNBy3ZqZ5r+Zl/2NteitMZtxk=; b=WX+i8XYo/zQKdn
	UuEnhUCtWieYG5jGyJLIAfJ/gBVEckwJlKO65OWsQSTavjDw7SG6tFqJMqqM/wb0p1levKxTjRW0g
	ftMBXfOHa07SMhqN9XWNWu6R2MJm2E5Y6eQE/nIWjta/KAaEJ89UJneRo/erzZSyZe0bWiwA7eFoC
	0czdazClrX+Nn4QTA29ktb8AnjjXZewKznUAtzggbEH2yilC27708Q3vXzZ5O3XhxaIRbbDuN4XYH
	IxVH1JvetPmGVk3pXYpNMnt1pimag5iO+z5wJPLJ/yIOdv/dVlAnRTJ6OEK+vBSk40Dqd4BGG57tW
	poGH3Wzo4oCF45uLgGKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSIs-0001fZ-3m; Mon, 20 Apr 2020 09:01:22 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSHM-0006W4-Ob
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:59:52 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03K8vogN012164; Mon, 20 Apr 2020 10:59:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=1o0Izbp2L810/aRMfi0HxXPaokBREpCphH53oslSJGg=;
 b=Hr2JS7PSJEKC+GA9kiUvOqrui5ijyaQxMwA2eGyZek//jBvLqHadCgIvybGEjDlZRI3Z
 WCBJkS9aWyD2VkBrYpBjPTjUiKDVtbLIDpICNwWG8hXYEHsjeBZ5T+DKqhIiefxyp0YB
 GtcJgWsg/VXUFNzym+ablJfpa72SShQj4wQxtQUbLWlA91zs0sWpQLfeE3tC+qSGX532
 AlRabesYoTMf20UaQFYg9xYmjqTxViKcHdpkzvkvtXGRTTT6M+Zxzo7AXEvrpcxMuLfG
 Sv0B3L6gbWShUSgwsLXCPikGKi0VVeqsfxSAG1R5pgDFlx5+JzTr5lYiw7i5oqeIT83i hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq119agr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 10:59:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DB57810002A;
 Mon, 20 Apr 2020 10:59:37 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CDA572BC7DA;
 Mon, 20 Apr 2020 10:59:37 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr 2020 10:59:37
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <fabrice.gasnier@st.com>, <lee.jones@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [RESEND v6 3/6] mfd: stm32: Add defines to be used for clkevent
 purpose
Date: Mon, 20 Apr 2020 10:59:27 +0200
Message-ID: <20200420085930.26989-4-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200420085930.26989-1-benjamin.gaignard@st.com>
References: <20200420085930.26989-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_03:2020-04-17,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_015949_296289_3D5E675F 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add defines to be able to enable/clear irq and configure one shot mode.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Acked-by: Lee Jones <lee.jones@linaro.org>
---
 include/linux/mfd/stm32-lptimer.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/mfd/stm32-lptimer.h b/include/linux/mfd/stm32-lptimer.h
index 605f62264825..90b20550c1c8 100644
--- a/include/linux/mfd/stm32-lptimer.h
+++ b/include/linux/mfd/stm32-lptimer.h
@@ -27,10 +27,15 @@
 #define STM32_LPTIM_CMPOK		BIT(3)
 
 /* STM32_LPTIM_ICR - bit fields */
+#define STM32_LPTIM_ARRMCF		BIT(1)
 #define STM32_LPTIM_CMPOKCF_ARROKCF	GENMASK(4, 3)
 
+/* STM32_LPTIM_IER - bit flieds */
+#define STM32_LPTIM_ARRMIE	BIT(1)
+
 /* STM32_LPTIM_CR - bit fields */
 #define STM32_LPTIM_CNTSTRT	BIT(2)
+#define STM32_LPTIM_SNGSTRT	BIT(1)
 #define STM32_LPTIM_ENABLE	BIT(0)
 
 /* STM32_LPTIM_CFGR - bit fields */
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
