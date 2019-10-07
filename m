Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 338D5CE568
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kgq3N3L7AadwH4FsuYR2ycLWYXEOlXair2vHIwz/cRU=; b=aVHdue5/EVQKMy
	6D4KcO0rVqmJD4ywrKVF4bXL6R0berSiryHouvl4nRPM1Xtk3agDB3C6rYSSpGTU2CsTk1cSXLfzW
	WWHZqWxEEzav2i3P/z/YD24xVBlDY/vlEsS6Ii6ct6hWjdLIExHx9o+fn0aSwE/L3T3e2r3iEwQ+M
	WKJutDOPlLP5KqBV1RX0GabOQDLMec+n9gDaSygEoLUlAeWshAyYG9KyZvNGaMGDocuHK/XdD0aEd
	9qQMBR4MyBc371Fup68u1dqbrOUxbCJaRxmsyzlydvDHSu6+s8KUI9O9oEYk3UQlRz45n58drXYMU
	qhjWmGZP95H7j0jsCGTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHU6E-0007Ku-4c; Mon, 07 Oct 2019 14:34:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHU5W-0006Uy-SG
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:34:16 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97EVXFK021635; Mon, 7 Oct 2019 16:34:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=00YevehFHK1F13kJnntgF+gvC9tm4xH+MBjD/Ezp2L8=;
 b=lozghDNsdOEYmmW7m57zIaKD5bDCowkb7zGcWhFMIqPgNanMzQS94uTELdpD+vAFl0JV
 xAEcAOpC7No9afiJqEsNkANT/8Q4i3LmeDuBkMl7R4hwzZu0bO01myg56iwokdQL0tYN
 2VUv9HtFczmNUxoE37Wkeu3ZzMg7+zCHXKHo92SOB8OhcgIqMtT6xaYlAO6oqTeMQR/u
 pgDCi9jX+AIqUCqo1/JaG/HLX/DXvBd2ikRZgXSsoJBcYeyG+pFlCWeEntUUDSPFOXME
 JMtf125Efl5+Xx9xA47lzeU9KtKdAF4zczFt7ftI5DOvAvrGlax3Z/1EYQkO5+lBLb84 4Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegn0jw3u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 16:34:06 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AAD27100034;
 Mon,  7 Oct 2019 16:34:05 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 989872AC883;
 Mon,  7 Oct 2019 16:34:05 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 16:34:05
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, <arnd@arndb.de>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH 1/4] ARM: dts: stm32: fix memory nodes to match with DT
 validation tool
Date: Mon, 7 Oct 2019 16:33:59 +0200
Message-ID: <20191007143402.13266-2-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007143402.13266-1-alexandre.torgue@st.com>
References: <20191007143402.13266-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_073415_204413_AF738933 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DT validation ("make dtbs_check") has shown that some memory nodes were not
correctly written. This commit fixes this kind of issue:

"stm32f746-disco.dt.yaml: /: memory: False schema does not allow
{'device_type': ['memory'], 'reg': [[3221225472, 8388608]]}"

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/arch/arm/boot/dts/stm32429i-eval.dts b/arch/arm/boot/dts/stm32429i-eval.dts
index ba08624c6237..36ac61d0828c 100644
--- a/arch/arm/boot/dts/stm32429i-eval.dts
+++ b/arch/arm/boot/dts/stm32429i-eval.dts
@@ -60,7 +60,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@00000000 {
 		device_type = "memory";
 		reg = <0x00000000 0x2000000>;
 	};
diff --git a/arch/arm/boot/dts/stm32746g-eval.dts b/arch/arm/boot/dts/stm32746g-eval.dts
index 2b1664884ae7..d7bb2027cfaa 100644
--- a/arch/arm/boot/dts/stm32746g-eval.dts
+++ b/arch/arm/boot/dts/stm32746g-eval.dts
@@ -55,7 +55,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@c0000000 {
 		device_type = "memory";
 		reg = <0xc0000000 0x2000000>;
 	};
diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index e19d0fe7dbda..30c0f6717871 100644
--- a/arch/arm/boot/dts/stm32f429-disco.dts
+++ b/arch/arm/boot/dts/stm32f429-disco.dts
@@ -59,7 +59,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@90000000 {
 		device_type = "memory";
 		reg = <0x90000000 0x800000>;
 	};
diff --git a/arch/arm/boot/dts/stm32f469-disco.dts b/arch/arm/boot/dts/stm32f469-disco.dts
index a3ff04940aec..539aa5903fdd 100644
--- a/arch/arm/boot/dts/stm32f469-disco.dts
+++ b/arch/arm/boot/dts/stm32f469-disco.dts
@@ -60,7 +60,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@00000000 {
 		device_type = "memory";
 		reg = <0x00000000 0x1000000>;
 	};
diff --git a/arch/arm/boot/dts/stm32f746-disco.dts b/arch/arm/boot/dts/stm32f746-disco.dts
index 0ba9c5b08ab9..569d23cc61e5 100644
--- a/arch/arm/boot/dts/stm32f746-disco.dts
+++ b/arch/arm/boot/dts/stm32f746-disco.dts
@@ -55,7 +55,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@c0000000 {
 		device_type = "memory";
 		reg = <0xC0000000 0x800000>;
 	};
diff --git a/arch/arm/boot/dts/stm32f769-disco.dts b/arch/arm/boot/dts/stm32f769-disco.dts
index 6f1d0ac8c31c..1626e00bb2cb 100644
--- a/arch/arm/boot/dts/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/stm32f769-disco.dts
@@ -55,7 +55,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@c0000000 {
 		device_type = "memory";
 		reg = <0xC0000000 0x1000000>;
 	};
diff --git a/arch/arm/boot/dts/stm32h743i-disco.dts b/arch/arm/boot/dts/stm32h743i-disco.dts
index 3acd2e9c434e..e446d311c520 100644
--- a/arch/arm/boot/dts/stm32h743i-disco.dts
+++ b/arch/arm/boot/dts/stm32h743i-disco.dts
@@ -53,7 +53,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@d0000000 {
 		device_type = "memory";
 		reg = <0xd0000000 0x2000000>;
 	};
diff --git a/arch/arm/boot/dts/stm32h743i-eval.dts b/arch/arm/boot/dts/stm32h743i-eval.dts
index e4d3c58f3d97..8f398178f5e5 100644
--- a/arch/arm/boot/dts/stm32h743i-eval.dts
+++ b/arch/arm/boot/dts/stm32h743i-eval.dts
@@ -53,7 +53,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@d0000000 {
 		device_type = "memory";
 		reg = <0xd0000000 0x2000000>;
 	};
diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
index 0615d1c8a6fc..e2aa45e9ba57 100644
--- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
@@ -25,6 +25,7 @@
 	};
 
 	memory@c0000000 {
+		device_type = "memory";
 		reg = <0xc0000000 0x20000000>;
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
