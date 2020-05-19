Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522341D9391
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ptvos06ndQ6Ot5mTXu/I6ThTj6Y2XPJLi+wPuzrt/SQ=; b=mkK00OsJU25USt
	mtk0wa/Hd/A4rqQxHzafAnrUJgYrzNF3gx3uw/bFlV6Xu8juLgweEDo49kdegEd1OYmoTrnXMltb8
	TP704G+RhskeQw1DiqdnVDqEvsmghAhn/ZVaNvMM7OrXVSAS9G8HsrkQWTqmEr+UfjZ7jQAD1++5X
	71n4bV5LbvC7eVRepqcXgIE8BjDVonGi8ZtEyizc8A0Vo0Icul+QqSw9Ox+KLao+WiSwlQtYOzSB6
	CGbrM56zvK05hk3noANWrsblSamx6mQc78trMYiY/hbDDVGIlF3/EyMo1h/eSrtLAT+uGamMuStmu
	kX2PAusQToN4a6p0J5/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayl1-0004fi-2f; Tue, 19 May 2020 09:41:55 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaykY-0004T9-Oi
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:41:28 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04J9bCoK002859; Tue, 19 May 2020 11:41:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=8umFBsqpXSyvV7P7Pt39jOOMGvMU9GE2G14TF8W9jgU=;
 b=CjcChvegMRR43kcF7VLmveYY3LeTbNP17nhluegroU/5+HEvQtGYduaZa4aBSWaz6hbm
 jZkaPjuVERGrfu3I5Yzf2SpMK08NSarRsty9Ffp1fxTff6Y9ykpSKjGNjQ+Fm1gsk5JX
 a5r0LvSOqXWI6MVOOIv45q9zV1YlsTKD6p5udChBW/fCXtow3Arj7pG2JAAlDk1wZopb
 g+ZOGREMtPrvN2goEFx4njwzqBHI12NAb5+vQVcm2rm1xKbqJrHKVRV09x8D1HHetv6r
 nzHbked10gKBadtATbbVKu2HXMNM1edJW6VQxNNNvfdTBXoB+UQa8Uv1wz3xLmcvikNB 8A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3125xxs1b2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 May 2020 11:41:13 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D257310002A;
 Tue, 19 May 2020 11:41:10 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BD9F12B1881;
 Tue, 19 May 2020 11:41:10 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 19 May 2020 11:41:10
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre
 Torgue <alexandre.torgue@st.com>, Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH 1/1] serial: stm32: add no_console_suspend support
Date: Tue, 19 May 2020 11:41:04 +0200
Message-ID: <20200519094104.27082-1-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-19_03:2020-05-19,
 2020-05-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_024127_271651_4471F1B5 
X-CRM114-Status: GOOD (  13.18  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Erwan Le Ray <erwan.leray@st.com>,
 linux-serial@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to display console messages in low power mode, console pins
must be kept active after suspend call.

---
Initial patch "serial: stm32: add support for no_console_suspend" was part
of "STM32 usart power improvement" series, but as dependancy to
console_suspend pinctl state has been removed to fit with Rob comment [1],
this patch has no more dependancy with any other patch of this series.

[1] https://lkml.org/lkml/2019/7/9/451

Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 9cfcf355567a..5afd29162f6c 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -1425,7 +1425,18 @@ static int __maybe_unused stm32_serial_suspend(struct device *dev)
 	else
 		stm32_serial_enable_wakeup(port, false);
 
-	pinctrl_pm_select_sleep_state(dev);
+	/*
+	 * When "no_console_suspend" is enabled, keep the pinctrl default state
+	 * and rely on bootloader stage to restore this state upon resume.
+	 * Otherwise, apply the idle or sleep states depending on wakeup
+	 * capabilities.
+	 */
+	if (console_suspend_enabled || !uart_console(port)) {
+		if (device_may_wakeup(dev))
+			pinctrl_pm_select_idle_state(dev);
+		else
+			pinctrl_pm_select_sleep_state(dev);
+	}
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
