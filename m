Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBCE1737AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkbqttRiTpxIaVzCDnrsNjscLZnGp0mTQaQFvPDjOKU=; b=eN3FMB4FZX4Qr9
	0B0i8caL5j4muzWicga9bMWSXVSgoS6/95K19pAD8U8cVqVNiM4mpXR8AQ9R7mOempDOIO3IdFb0C
	nK4N3mY5Zfb4loVr79V1qoI7qKmdbGq45u9spnNBHeB9+SMb/i6RcFInrBEwKmT0tWhYThD68q4Pj
	QVhkQ+IPAX5qieWXjxH3vTCYhcJxMOhR01iPe1OJM9IuaS+3CmlXiOsTBnzRbHZ687pBSmc97Dc7B
	KFdTnki8u+hbtoXTuXYEFM1eBkQ1O8rILvgh/a5V24oy35u2n/0ReT6qK3qCuSygU8drAZz4IXRKq
	QXYU2fY6/0RYCGPw6adw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7f8C-0003Pp-BF; Fri, 28 Feb 2020 12:52:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7f7x-0003OS-Dh
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:52:27 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01SChAOm021775; Fri, 28 Feb 2020 13:52:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=yrQgPlGNcsd3SNy+rWiVt1Cll54CgcO3EV2Kn8KU8q0=;
 b=JWlbeBkvOvlSWTdVqbrG+BguMFrQ8qPYDcbU0P4dRMxrE6PjBTOK2eAv2+qZv1fQvlBC
 akmq8WkiOAVHzmoOnwe3Gbz9DmDCaCVPiXho1SrbTGSeV6KpVZqgcWwVISPEqr27zDtc
 dKMSDvKUNiOFeguSgFwD9qQkfLi1U/c2L7PShRwVVNH8D7KO69PXbhi2ZNROQO+KPByd
 xtvmf5XHD8PIoZZU5BYt6Y0DkAwwXD5xOukX4eGClDAL83qBLBU18KR1vjhoWHv6rYp5
 aveyWH0Z7tVKHGFZTAzIMHVr0EiLJe66nyTcCpNOjMY65rqZLQa617hB0Mv/XnaKv9Yg JA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yepvtbyg7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 28 Feb 2020 13:52:15 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CB88C10003A;
 Fri, 28 Feb 2020 13:52:10 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BDDD72BAEDD;
 Fri, 28 Feb 2020 13:52:10 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 28 Feb 2020 13:52:10
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>
Subject: [PATCH] ARM: dts: stm32: Rename stmfx node names
Date: Fri, 28 Feb 2020 13:52:05 +0100
Message-ID: <20200228125205.8126-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200228125205.8126-1-benjamin.gaignard@st.com>
References: <20200228125205.8126-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-28_04:2020-02-26,
 2020-02-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_045225_906409_FE3BF8DB 
X-CRM114-Status: GOOD (  13.62  )
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

Rename stmfx node names according to yaml description.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32746g-eval.dts  | 2 +-
 arch/arm/boot/dts/stm32mp157c-ev1.dts | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/stm32746g-eval.dts b/arch/arm/boot/dts/stm32746g-eval.dts
index fcc804e3c158..4ea3f98dd275 100644
--- a/arch/arm/boot/dts/stm32746g-eval.dts
+++ b/arch/arm/boot/dts/stm32746g-eval.dts
@@ -165,7 +165,7 @@
 		interrupts = <8 IRQ_TYPE_EDGE_RISING>;
 		interrupt-parent = <&gpioi>;
 
-		stmfx_pinctrl: stmfx-pin-controller {
+		stmfx_pinctrl: pinctrl {
 			compatible = "st,stmfx-0300-pinctrl";
 			gpio-controller;
 			#gpio-cells = <2>;
diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 228e35e16884..3f4668a43afe 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -210,7 +210,7 @@
 		interrupt-parent = <&gpioi>;
 		vdd-supply = <&v3v3>;
 
-		stmfx_pinctrl: stmfx-pin-controller {
+		stmfx_pinctrl: pinctrl {
 			compatible = "st,stmfx-0300-pinctrl";
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -218,7 +218,7 @@
 			#interrupt-cells = <2>;
 			gpio-ranges = <&stmfx_pinctrl 0 0 24>;
 
-			joystick_pins: joystick {
+			joystick_pins: joystick-pins {
 				pins = "gpio0", "gpio1", "gpio2", "gpio3", "gpio4";
 				bias-pull-down;
 			};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
