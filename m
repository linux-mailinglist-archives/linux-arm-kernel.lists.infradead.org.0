Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC091FF2B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeESgNzMAztzVLPo7q6ibMYmWauK+JU4mVyMjgHdkOA=; b=IbdcezWirKJhKb
	aY/BmFL9beqEqpvQz4lRt6dK3J/aSORsl2cQ9DjF19ba2ezpOKOtPN8XlW1RNj2Aettqr5zi5KTpv
	8spmUTVp7vJw1hAp5xkV3lCnMFf/jnsesOyWXsWi1I++zLAA+R58wP9olXNcR0lTE+a4VxV9O3HQx
	dDxkrey9LgtN8xY3+uHcxN3LCNKpWejTWNqtJdF8YYUkPwFt/d9K0ZioougDhCzWI1eyBBvQt3u3y
	IkfHJOR7+dYowIhMF2QL26G19Mqlc6whoe2XOPBqX4wi6AOzFbsGPUqHuvDR7sW04Iists8nRggY1
	32GOq0AehEsCBVx7imnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluGc-00035M-IB; Thu, 18 Jun 2020 13:07:42 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluG7-0002sM-3j
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:07:12 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05ID2ZvO030173; Thu, 18 Jun 2020 15:07:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Vziesq9T1Vwi7upsEQvfvn3cU0cCEod7h3VYJIhC8yg=;
 b=WVz26PwolGQWQ6MfULl5J9dxPXVnVtSR10s6/VnqukL6XpgLwVtTIjcGdIShtqct/Zcl
 sbPVRldel/J1tmJ7eD09KdcLXzIL/ysv64VJNkGznrZ+pSyGyGhpTHZkj0G+O3/MeuVY
 YRF/AahQuUT+uAvlQftqrYm2xcEapDarXs2VXjq/OVIgh7q0eWVYs5XvAbKnoKx8SxKz
 AcbnB2en62xFRFW6V96U3b89aLWyh6FANEXRebq5JWdSpPox81PNCiwasxZN/udGWrNL
 VvFkYTFmpCugm6wXqtbgaHbNqUacbRjnOBrP7m1MNwu55JH+4N7LxfOav9k75w+6XMIP 5A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31q64cb3fv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jun 2020 15:07:02 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E4367100039;
 Thu, 18 Jun 2020 15:07:01 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D6A452B8A0D;
 Thu, 18 Jun 2020 15:07:01 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 18 Jun 2020 15:07:01
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH v2 4/5] ARM: dts: stm32: add uart7 support to stm32mp15xx-dkx
 boards
Date: Thu, 18 Jun 2020 15:06:50 +0200
Message-ID: <20200618130651.29836-5-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618130651.29836-1-erwan.leray@st.com>
References: <20200618130651.29836-1-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-18_12:2020-06-18,
 2020-06-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_060711_430220_881C4F26 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [91.207.212.93 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
