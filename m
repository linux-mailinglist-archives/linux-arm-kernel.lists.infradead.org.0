Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32FAF5153
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:38:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IvlZojGVlT/45Enn0c+xrOo9rILkbL2X52qPk8L9Jw=; b=UaNrvg4bgsXMc3
	hciDPocFhCrFbrMD0F5TEIxWepjd2mCRs016/DRJYB1cWrLDaZHE3P/OrJLTxjv2OYjIf/T0qaZMi
	juNTXf+ygLtqa/rvBCAbmuRmbQXSU/laCbOIQrFAXRG8gwMuFPmjB3rUjA5b8+IVstjg+WzFOCXEE
	znJ6+Z6sdJWs1461dmX4tm/pcix7rygj3mlbtfgCPpNIWvqIygMeYCG3hw70AcM4hjaO5c8O969/d
	frSlVgUe2PUy0PejVfDE1QbWVyv4RJF1+liULjxqYLXvx7ZtRikGfTkf5AzC56S0gA2ITC/HvGpwU
	pPr1sp89DV1ZbD5Cv9yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7HR-0001gq-N0; Fri, 08 Nov 2019 16:38:37 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7Gn-0001F1-9W
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:37:59 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA8GMENE032766; Fri, 8 Nov 2019 17:37:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=smoPj/z5Sn90v90H2JHjnC4eM+rbToGswr/u4f90j/g=;
 b=vOZvnoNT0YRkphaJ2ZC3jspcjSv811wxUyT0b9/ZWw5tLJmJqA4sBs5DoWg97XZODQjH
 aJWcICZALYH86Hkrcb+O8b1TTHAi+ntFz0bBX5co2GlXx4qk2kO+iu8a//U+DYeXx8ln
 rLG570a9czCepj+Q5dsQ0QyQfMK47rWkEBOXeJYcCuUmBWO9OtXLjH9okTcNFWY25rH8
 Ly0dbrzclGaVJjkzFtbb6PNI8AFJ+W1A1qhSuALX/0d2xsP/Jgwut836msmunfZHTkE4
 fahvm3uD91TBOpBcCxybYKxBidp6NfR9h14UTXW9oogkIo54URafitsGD2EjSAD4bw5T eQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w41vmvpvw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 17:37:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1290D10002A;
 Fri,  8 Nov 2019 17:37:50 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 064AF2C38AC;
 Fri,  8 Nov 2019 17:37:50 +0100 (CET)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019
 17:37:49 +0100
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Fri, 8 Nov 2019 17:37:49 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 2/2] ARM: dts: stm32: add ADC support to stm32mp157c-ed1
Date: Fri, 8 Nov 2019 17:37:39 +0100
Message-ID: <1573231059-395-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573231059-395-1-git-send-email-fabrice.gasnier@st.com>
References: <1573231059-395-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-08_05:2019-11-08,2019-11-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_083757_609505_F85FD3F3 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ADC support to stm32mp157c-ed1 board.
Following ADC signals are dedicated for analog and routed to connectors:
- ADC1/2 in0 (ANA0)
- ADC1/2 in1 (ANA1)
- ADC1 in6 (PF12)
Configure ADC1 with these signals. But keep it disabled by default, so
PF12 can be used as gpio by default.
Add VDD and VDDA supplies to ADC on stm32mp157c-ed1 board. This allows to
get full ADC analog performances in case VDDA is below 2.7V (not the case
by default).

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp157c-ed1.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index b8cc0fb..d889813 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -89,6 +89,22 @@
 	};
 };
 
+&adc {
+	/* ANA0, ANA1 are dedicated pins and don't need pinctrl: only in6. */
+	pinctrl-0 = <&adc1_in6_pins_a>;
+	pinctrl-names = "default";
+	vdd-supply = <&vdd>;
+	vdda-supply = <&vdda>;
+	vref-supply = <&vdda>;
+	status = "disabled";
+	adc1: adc@0 {
+		st,adc-channels = <0 1 6>;
+		/* 16.5 ck_cycles sampling time */
+		st,min-sample-time-nsecs = <400>;
+		status = "okay";
+	};
+};
+
 &dac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&dac_ch1_pins_a &dac_ch2_pins_a>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
