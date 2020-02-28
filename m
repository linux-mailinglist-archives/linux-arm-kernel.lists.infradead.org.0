Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56771737AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:53:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=juEFp0FVnaoLh8jSuyQqHHZIUPz4J1jKD+EM7iVoiss=; b=nsCpqCRVnvXPq4
	b1uFYHnJV6tfXHfv4wnpbUct0W+CKGthEzdbEvMzhcEBaXZGPAiNwQYdm/Hi0VYveT2UddMv9c4pW
	eko9S3mDj5e0WvEQWNYjVaz15a8i89xO1Vfz4pYytsNouxT6IvrcxdvzQw3xpcDV4uw7ZWGAjxXVO
	mHJddjnr0kWphjDpWD3sf21hgQm9luXlu07k6CvmJRp8/R2qyuHyrEV37fIIjozhkvHWnuk0EUT6h
	HV1jWNz8LunG0mWtLY73Zj5iikm5xhgAUmqOOxtPFTAXNA9znNhrFZvwj7SiJckErsXk8NtozhcxT
	6aqZqj9bTSgxfaNOsYkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7f8S-0003fg-NE; Fri, 28 Feb 2020 12:52:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7f7z-0003OR-AD
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:52:28 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01SChAOl021775; Fri, 28 Feb 2020 13:52:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=pdyoSinecCTRleqbm1e/zsaS5ECX7SBiHqeQex88KWk=;
 b=u2+4KFVmc6kw/xisTp9I63CnA7GOzSz9USqQiwaD8nrbuf2mLz2Sc7X09MYRIcwFKxy6
 rhQy5mH329Y4FS/O1+zXmS5MIsg7C8g8YZWf0yddqU6IxbvHrdq/uZGGwqVMo8ah44NU
 ZWwVH9bNyFuPbJCXtS1pqDhlANfGCIy0x9ZgxiTra4NM4/yIYj3O/jJg4DCFyfzlZDTB
 ZOQJXx/w+xjSIOnJfS6GfoDsXmO0ZyHHzoHL46vgqIrJUKEdIY7/fT+KXxyKN2yqtPW+
 c73gN2ceofJmVrGDF7F5r5tdiD6oze5ZtVDHfzF1JTIwS95T2IkLJdQjSVyuF5UHT6mV 7g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yepvtbyg6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 28 Feb 2020 13:52:14 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 46C02100039;
 Fri, 28 Feb 2020 13:52:10 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 386D42BAEDD;
 Fri, 28 Feb 2020 13:52:10 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 28 Feb 2020 13:52:09
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>
Subject: [PATCH] ARM: dts: stm32: Do clean up in stmpic nodes
Date: Fri, 28 Feb 2020 13:52:04 +0100
Message-ID: <20200228125205.8126-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-28_04:2020-02-26,
 2020-02-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_045227_638884_B38956E1 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unused properties from stpmic node.
The issues have been detected by running dtbs_check.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 8 --------
 arch/arm/boot/dts/stm32mp157c-ed1.dts       | 3 ---
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi      | 3 ---
 3 files changed, 14 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index cbfa4075907e..1583be1966eb 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -135,10 +135,6 @@
 		#interrupt-cells = <2>;
 		status = "okay";
 
-		st,main-control-register = <0x04>;
-		st,vin-control-register = <0xc0>;
-		st,usb-control-register = <0x30>;
-
 		regulators {
 			compatible = "st,stpmic1-regulators";
 
@@ -173,7 +169,6 @@
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-always-on;
-				st,mask_reset;
 				regulator-initial-mode = <0>;
 				regulator-over-current-protection;
 			};
@@ -213,8 +208,6 @@
 
 			vdd_usb: ldo4 {
 				regulator-name = "vdd_usb";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
 				interrupts = <IT_CURLIM_LDO4 0>;
 				interrupt-parent = <&pmic>;
 			};
@@ -240,7 +233,6 @@
 			vref_ddr: vref_ddr {
 				regulator-name = "vref_ddr";
 				regulator-always-on;
-				regulator-over-current-protection;
 			};
 
 			bst_out: boost {
diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index 1fc43251d697..0c304a024e51 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -218,8 +218,6 @@
 
 			vdd_usb: ldo4 {
 				regulator-name = "vdd_usb";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
 				interrupts = <IT_CURLIM_LDO4 0>;
 			};
 
@@ -241,7 +239,6 @@
 			vref_ddr: vref_ddr {
 				regulator-name = "vref_ddr";
 				regulator-always-on;
-				regulator-over-current-protection;
 			};
 
 			bst_out: boost {
diff --git a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
index f6672e87aef3..e50ae7faa0ec 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
@@ -304,8 +304,6 @@
 
 			vdd_usb: ldo4 {
 				regulator-name = "vdd_usb";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
 				interrupts = <IT_CURLIM_LDO4 0>;
 			};
 
@@ -328,7 +326,6 @@
 			vref_ddr: vref_ddr {
 				regulator-name = "vref_ddr";
 				regulator-always-on;
-				regulator-over-current-protection;
 			};
 
 			 bst_out: boost {
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
