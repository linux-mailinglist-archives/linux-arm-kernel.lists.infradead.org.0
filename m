Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D55641E5992
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeESgNzMAztzVLPo7q6ibMYmWauK+JU4mVyMjgHdkOA=; b=dmfx8OE0uS5Llo
	Hzd1GwZKZhD5w/6vRGHCCb1mHNKVeH+64E8GeLaKVA6CoK/aLydAAt2NDSVDW8zZYagDLwZlG1U7b
	FwvB3JFl9jEl2q3y+HPeyJPHzkH8L/y/uXQYRPv7GGi4d8jlAoQHxdBOWWAfx7VJ18lw56nNYQfFs
	7kTZAsxUPXvg/3Z+Kdsxc6lX8KC6UU+53x7z0rjFzwJ/o1i5JM+67dH51Yw1m6aRUIYhkJ9fhGIxO
	6huO+DG9n3RmHDgCXHRSf8upB+qsHLOK4WB+PS56r+8+iIGjCHaiXy+QXr5HSw2mixJhB2bOeLfEm
	S6QAxYiu2BwnmcCrWIDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDF0-0006i4-TB; Thu, 28 May 2020 07:46:14 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD9g-0007cb-Qe
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:40:48 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04S7bYSH027361; Thu, 28 May 2020 09:40:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Vziesq9T1Vwi7upsEQvfvn3cU0cCEod7h3VYJIhC8yg=;
 b=KEKiprLqJ7Sk6r/DQgHEsQcyorHeHwSRlogYl6HilJ1CIZ82wBTqBmCbKRztaHS4Uc/N
 HX2d6kfmr4L5rbiIKApkEDbSlO80UH9dzY+y9QaBs9Ag/02mmrQkcDUUKwg5dwB+T/gi
 OXxcGkkmHRMBHz7yTWDylkhxlIiLDlPcjP2Me8jKUSP1rQDSv3P3USUvnz5Nv7nm4XB7
 gDBKcIVjaUZHhQGy5II/M4rN/QHSuWL/5kUap4zivThy0DoRuY0avcXPqe1QXhIRrSMV
 NHj5FE1P9dcZXkBg0EO95qrtsMRn7g/hUu74f9Z7qv9FofCy8I2DT60tPeelSPwu51cF pg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316tqh9nck-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 28 May 2020 09:40:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1C45810002A;
 Thu, 28 May 2020 09:40:36 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0E01F2B188D;
 Thu, 28 May 2020 09:40:36 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 28 May 2020 09:40:35
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 4/5] ARM: dts: stm32: add uart7 support to stm32mp15xx-dkx
 boards
Date: Thu, 28 May 2020 09:40:28 +0200
Message-ID: <20200528074029.24962-5-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528074029.24962-1-erwan.leray@st.com>
References: <20200528074029.24962-1-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-28_02:2020-05-28,
 2020-05-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_004045_162750_1CC60605 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, Erwan Le Ray <erwan.leray@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds uart7 node to stm32mp15xx-dkx and uart7 alias to stm32mp157a-dk1 and
stm32mp157c-dk2 boards. uart7 pins are connected to Arduino connector.
uart7 is disabled by default.

Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
index 65ee61b7667a..4c8be9c8eb20 100644
--- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
@@ -19,6 +19,7 @@
 		ethernet0 = &ethernet0;
 		serial0 = &uart4;
 		serial1 = &usart3;
+		serial2 = &uart7;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/stm32mp157c-dk2.dts b/arch/arm/boot/dts/stm32mp157c-dk2.dts
index fb690a817e28..ffbae4a8753d 100644
--- a/arch/arm/boot/dts/stm32mp157c-dk2.dts
+++ b/arch/arm/boot/dts/stm32mp157c-dk2.dts
@@ -20,6 +20,7 @@
 		ethernet0 = &ethernet0;
 		serial0 = &uart4;
 		serial1 = &usart3;
+		serial2 = &uart7;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
index 243aa4b2063d..cfbe3e2afef2 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
@@ -591,6 +591,14 @@
 	status = "okay";
 };
 
+&uart7 {
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&uart7_pins_c>;
+	pinctrl-1 = <&uart7_sleep_pins_c>;
+	pinctrl-2 = <&uart7_idle_pins_c>;
+	status = "disabled";
+};
+
 &usart3 {
 	pinctrl-names = "default", "sleep", "idle";
 	pinctrl-0 = <&usart3_pins_c>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
