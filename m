Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B0B151B42
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RE9pmv7IsIia739glywPSv/NvS21MCfWZgJCzQKaWQ=; b=hP3oVoRbA28TN3
	Bo6vEfEx3qjhBVC8PZbI9DtdCL2Ehar2aPFiz5UiUeW0yDvJ6uzakRnxwNA+pVI3btlzsqVQGJtyD
	DMFz4vI3ltofFHIrKapLmeFUuKiPNenFumvahE2uOsVhXvmubGhMym9AXQ5vJz5Urb35Ej+w1AHKo
	dnupFmeZnUNjQVSg4CCzj9/BCwGoc3eK7VO57Qa545QsXV/1qcdgcNDg10lFwTaG+e9nrFheNTwBL
	CefpvBm2BdNnlUfHpy5vUTl0KpugQa0JUepy4WoDAfV6gEEu2gHWb0zfRMQes2Hmqgs51zFyrry9Z
	5kgskH+i/oEZ56pdrdMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyEW-00081g-SV; Tue, 04 Feb 2020 13:27:16 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyyDj-0007O3-FC
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:26:29 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 014DN70m018475; Tue, 4 Feb 2020 14:26:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=svNIL8S5ikLq6fC5dYVL1FJyfGZacEgFr1/P7H/Zw64=;
 b=wESYPm8NZ7MqQhZxSsf1kewzyR9WtukfZ9+7H77bjnhQUGqHmBIW735MRm6eLYOvU9g2
 1joyWI2Z0sxhLzw0ZsmG/jcw/tDRSW2Ca3xn20jVFLAmyOzsQcocIh7vvGwAb+8lAyF1
 GG5ygIRZoaWOvBG52snMnyzOYV6EIXgIRWPAjRnIP7E6+poWekKDMh/R3/8Ilj3ZwWPO
 4XJkRh3Y/XJYHbHrHLe080cLWjvTImZhCw7FRoy4LSRbckMbvAXAtRLG8j700FJez2sR
 7tmslg+wDuka/NI83N/OhvDYVbiGnuD8aSy/sNZXHNG+RolSIAxpNVWtA+zvAp2RpNE3 Hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xvyp61uyt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2020 14:26:19 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D14F2100039;
 Tue,  4 Feb 2020 14:26:14 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C6A832BC7BA;
 Tue,  4 Feb 2020 14:26:14 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 4 Feb 2020 14:26:14
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 2/3] ARM: dts: stm32: add USB OTG pinctrl to stm32mp15
Date: Tue, 4 Feb 2020 14:26:05 +0100
Message-ID: <20200204132606.20222-3-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204132606.20222-1-amelie.delaunay@st.com>
References: <20200204132606.20222-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-04_04:2020-02-04,
 2020-02-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_052627_815354_E6A56F46 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pinctrl definition for USB High-Speed OTG ID pin and USB Full-Speed OTG
DP and DM lines that can be used on stm32mp15.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 0237d4ddaa92..345dc18d2224 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -1040,6 +1040,19 @@
 			bias-disable;
 		};
 	};
+
+	usbotg_hs_pins_a: usbotg-hs-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 10, ANALOG)>; /* OTG_ID */
+		};
+	};
+
+	usbotg_fs_dp_dm_pins_a: usbotg-fs-dp-dm-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 11, ANALOG)>, /* OTG_FS_DM */
+				 <STM32_PINMUX('A', 12, ANALOG)>; /* OTG_FS_DP */
+		};
+	};
 };
 
 &pinctrl_z {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
