Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74633D10F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 16:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K87UUvNYNoWMqQIX1v1Xv3ahD24i6PBAT4faxE4yfO0=; b=JeuQOIXkX7yFYL
	q8DVZSJGJE0vZi46qB07vi6yqf3/+37I10m3VMbz/uUsyimyYEfOzoIa/QmNRnkK4r7M342Yym3ep
	5nFxByEhoxbwHwEUC0lTshgaqISdQeGjJGcrsV7wefh0XMml3PxBiqa46muLRCnZtijPkR6/zi3Yz
	88PNA7rSRFg1mrgIOGs9HiY+ApIL2OTqQtkimOp9YerSNPfcbzrowV83+gU/p3wkg+LWhsZucePcv
	b/qa2LzfM+jO6knV0hOYGsVpWdcmdLoJ3/1/jJcININx84BfF6xLUia8wHPoHdxErzCbqkg38vN84
	XsdgyGJG2BWcvm34aLoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICiV-0007FR-90; Wed, 09 Oct 2019 14:13:27 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICi7-0006dZ-OV
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 14:13:05 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x99EBPS5006630; Wed, 9 Oct 2019 16:12:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=QbIurVBvgoZCd53yYTQJYhqlcMve1Nv/TTF9H7KxqwU=;
 b=JeRUP/963XrLDd/wbsFb42t3HbB0ESbVZS0nOFOWL7Ftlf897g78ulZ2+nDjMNxlO1j6
 MMGvnogGa+7jqTDTPsyJZZGqshqFFVW/CaOaJlBfR54S7vL4669oJIFrK2yvwObStdPy
 2Bq5UM8pqeG/oaN4JQsCoarQ68kLNBGoBceMlycckFqxWpq36ybOHgXwJP7tbLW1qqtF
 08PDj0prDIO7JtYvzJLBXGbSlyWXXDpppLIquOm7asOS0kw1/ljvsOZIOtxSOWo9NarF
 zzCkbJFTiXQdUTUgSZOIo0cE47jAh9iYyuqvH14g4xPYySY5xjWqCzzBcT9WirGLbpBV Mw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxvxcxa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 09 Oct 2019 16:12:57 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8A231100034;
 Wed,  9 Oct 2019 16:12:57 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7B60E21E6AF;
 Wed,  9 Oct 2019 16:12:57 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 9 Oct 2019
 16:12:57 +0200
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 9 Oct 2019 16:12:57 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 1/2] ARM: dts: stm32: Add DAC pins used on stm32mp157c-ed1
Date: Wed, 9 Oct 2019 16:12:51 +0200
Message-ID: <1570630372-24579-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570630372-24579-1-git-send-email-fabrice.gasnier@st.com>
References: <1570630372-24579-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-09_06:2019-10-08,2019-10-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_071304_265433_A94B0FFF 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define pins that can be used by digital-to-analog converter on
stm32mp157c eval daughter board:
- PA4 and PA5 pins are available respectively on JP11 and JP10

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index eeb60d0..1e45b75 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -183,6 +183,18 @@
 				};
 			};
 
+			dac_ch1_pins_a: dac-ch1 {
+				pins {
+					pinmux = <STM32_PINMUX('A', 4, ANALOG)>;
+				};
+			};
+
+			dac_ch2_pins_a: dac-ch2 {
+				pins {
+					pinmux = <STM32_PINMUX('A', 5, ANALOG)>;
+				};
+			};
+
 			dcmi_pins_a: dcmi-0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 8,  AF13)>,/* DCMI_HSYNC */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
