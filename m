Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E751056B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 17:13:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vTAhXjYDDa5mLPfAcxXDiTgqoYh3WzSRH/Wjw6QXmeI=; b=PNtRAcPwBEvfXD
	F8W/G5nVr3OtnlWjeMVDBuLXnwAJHtvW/TxH8jmUtbp4Giy0RO8HRom6ko9SRcv40o84bpBfbFtIa
	n1H/ZZfGAan7RzLV+ZtkEhb+E38HrKg8b6epDGMdx6lQDHLVqseZhUvs2E/c/VK6votF8/iqGtSEE
	tTC7d/wmo8mkx/y26hZSwMgEc1lhb1V8b6FIMOC/3FN9kdYAcpYcbrsSZ4cuLbgrshi46O/doanaV
	6QODbR7VxBzh2VOys5394A3QSSsev/t3Kc2ZTN0T0nlb8BUG3QM5HFjTfARSpBZ/NmyOUTChKZGfa
	hJIbZplZCfqTmfGqgglQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXp4q-0007I4-BC; Thu, 21 Nov 2019 16:13:04 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXp4b-0007FN-8x
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 16:12:50 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xALFr4SE014960; Thu, 21 Nov 2019 17:12:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=xSTrsy/epUKJuiZ6PJB9kA43uOI6dkM0JAF9xLrErWM=;
 b=o56rs75WH2zuSmPT/CZYe3wogtb7dmSRD4xNIzfaVDMsrAMWl9AAdZmGRyeezYbtoFan
 tGNhhyfAxQdDYSRR4w6gD9gUQSrHJRyvSVzDWuYn6WybUpjwiqgyBnAiwRIZ508AvprG
 1IUFo2cZ7Bspv//fuPeO0lWD5kd5oElTUxFMLHqJPRgE+ghMTR3+JkTu+FFCTUdNHAma
 9O4p75ZfxnAGURLuAjcylJeXjX//LzqPdp8G5fO35Pcs8ubAyJPHPQqxlLhVAobIrhB4
 1C/3upVfT/TAI+J6vpamgH+Gbof4x8rvjoNseDDiSiR/oG4AkyT0Q2fAswKR1+i+MoQ3 gw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9uvmpc7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 Nov 2019 17:12:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AB24310002A;
 Thu, 21 Nov 2019 17:12:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 978A92FF5E2;
 Thu, 21 Nov 2019 17:12:39 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 21 Nov 2019 17:12:38
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>,
 Russell King <linux@armlinux.org.uk>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 2/5] ARM: dts: stm32: enable USBPHYC on stm32mp157a-dk1
Date: Thu, 21 Nov 2019 17:12:38 +0100
Message-ID: <20191121161238.25655-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-21_03:2019-11-21,2019-11-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_081249_607428_28A90732 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patch enables USBPHYC (USB PHY Controller on stm32mp157a-dk1.
This enables the two usbphyc usb2 ports, which require 3 supplies:
3v3, 1v1 and 1v8.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 arch/arm/boot/dts/stm32mp157a-dk1.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
index 2f9f8cf94b02..2914109db26d 100644
--- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
@@ -605,6 +605,22 @@
 	status = "okay";
 };
 
+&usbphyc {
+	status = "okay";
+};
+
+&usbphyc_port0 {
+	phy-supply = <&vdd_usb>;
+	vdda1v1-supply = <&reg11>;
+	vdda1v8-supply = <&reg18>;
+};
+
+&usbphyc_port1 {
+	phy-supply = <&vdd_usb>;
+	vdda1v1-supply = <&reg11>;
+	vdda1v8-supply = <&reg18>;
+};
+
 &vrefbuf {
 	regulator-min-microvolt = <2500000>;
 	regulator-max-microvolt = <2500000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
