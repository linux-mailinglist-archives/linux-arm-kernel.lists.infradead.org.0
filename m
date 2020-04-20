Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304781B0522
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpEaU+T2cn2pshUTjjzlDhd7lpm06EIFpLviv1OVdts=; b=Y+36dmnIZ5c2iP
	O4zUSxEafsmUmpnIPpDp8y4Hy/8gP+doIZrLodNRcE01b7zKp1b/6jjFE+lYjAmfMX5yFpJr9Xb2x
	cTXaN1YRYegYISS6h5TZ3lYV/4y5DqbifnMIcAodrUyZnAFCXsl7/yTeZf8YTfOL+bNGUugnunC/Z
	thpqst8qIbDnWR773TZLZjwEFvS+Ktx3geCJA7Q8DFKNu+RiTmQavR4hShF6sPiznEb5d91BeDHKZ
	6GPcddLzHSQkl9I30t3OO639+gWISUAOGwQcWiL8Po1NxDJE+qM5SftxPweDja8aplMx/SVHt98US
	FCJVWLZg37S1tiD/uQNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSJL-00028W-4H; Mon, 20 Apr 2020 09:01:51 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSHP-0006YZ-8Y
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:59:52 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03K8vqjm012176; Mon, 20 Apr 2020 10:59:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=AXPGvtsGWLkKS+I+Kb5oNNnn9+C77me7iOpHlW+3zcQ=;
 b=fAQ/5ohXEFRIIS0Rv4JtlKhyAtqrA29l9pDaHYDho6y0+3pD5E+MS49aUyxSuViPicXq
 J6hccefle5xmWWSyNQ5ZpiBEnamoEHVlq7m1171KJoLcAM3Vm+RU3U4oDHHKVmHC47Wp
 Y0Ch390NWxgA3MYzZb/GaJQV+WkBFUAX0kTvfxcjHxr8kWy9IwoEp60bb0MnQmxLd1bd
 oZ9zGSA10WX8RUF1bGd5YZ9siXIm4jvvD9U5S7XedGUqASrdlvw1uj9fERVpTdN/W4JM
 D6YVldTPIZmTNCj7rlMYH9e/CCXxdvs7zl686rsRviT0Zdyn84ESdkircDMiniI5MY7x ww== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq119ah1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 10:59:41 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5382310002A;
 Mon, 20 Apr 2020 10:59:41 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 44DB12BC7DA;
 Mon, 20 Apr 2020 10:59:41 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr 2020 10:59:40
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <fabrice.gasnier@st.com>, <lee.jones@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [RESEND v6 6/6] ARM: mach-stm32: select low power timer for STM32MP157
Date: Mon, 20 Apr 2020 10:59:30 +0200
Message-ID: <20200420085930.26989-7-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200420085930.26989-1-benjamin.gaignard@st.com>
References: <20200420085930.26989-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_03:2020-04-17,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_015951_601303_3E327859 
X-CRM114-Status: GOOD (  11.86  )
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

Make MACH_STM32MP157 select CLKSRC_STM32_LP to get a broadcast timer.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/mach-stm32/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-stm32/Kconfig b/arch/arm/mach-stm32/Kconfig
index 57699bd8f107..d78f55b7b1d0 100644
--- a/arch/arm/mach-stm32/Kconfig
+++ b/arch/arm/mach-stm32/Kconfig
@@ -46,6 +46,7 @@ if ARCH_MULTI_V7
 config MACH_STM32MP157
 	bool "STMicroelectronics STM32MP157"
 	select ARM_ERRATA_814220
+	select CLKSRC_STM32_LP
 	default y
 
 endif # ARMv7-A
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
