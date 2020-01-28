Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3274814BD1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vweTSGU2ONxI20hHoYNddVmIT4HPupy21Edzc3Z82j0=; b=XtZD6wtzFpovO8
	LuW9hOy5bgj3u3qQg4hVA1iVXNikOEA3u+nu4nVbOyESyMnBgAefz3xMoK4UTeZ1WMGYGp7Rkmdu2
	yHQedGdhYVHuC30BynhvPeEvsTd0ZhllobLzgzU3VmvIl7fkiPZLLdBIrYwclrthHP/g9bWQaPbOc
	unMop4FnYV3q4UkFdSDyuawe2C74/Ey1fJ4gu57uVBWzO8HQ2WU+DNZjoKEev+7CmYMxV/fE1lW+1
	HnTFab1oaoqFnCcO0rsvGeciCiljpBng94YNR0MsxjZS502uzLa6ayHkAHikhisKAXfqXJET7g7FM
	jJlZx7cRz97rkoz0uNyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSyz-0006nH-3A; Tue, 28 Jan 2020 15:40:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSwo-0003tF-Hr
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:38:40 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SFX6T7021991; Tue, 28 Jan 2020 16:38:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=EpLaj1uTqlqIXOijIZ+YGkBlgBoIhfiPnvEapUy+Zj4=;
 b=OP6eHigrOq+xTQR2TTmyl+frb0fPBLoISPaZptCGJaX+DwZ4da5qsIAY3YV+aSTpDz1P
 f0tPorxPoFl8Na68wFAjKxy9L7iIIG72UGAWe+BHrfEiDs3vt8Nal1sY03gTlnCR6GV5
 Ju++ZXpGgAs5kmhdKk14W//VCxyvtXvSARjDBXI38Yd1OD82xi+os+JpFO/G/Ieu2kBL
 RDmPf0arI+R41qBGlrEZZEMlsA5M5tgBNuuoBnPyruAdT2oj5Sxs40fweoSjB5NgCYjN
 1IHLPm9RDol8mjtz44wodaPB9m0QCvbzSVcOEKqCvufo2TpLo6PTptHSz4/uKk58YsKI Pw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcaxxmdw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 16:38:30 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D8BB3100038;
 Tue, 28 Jan 2020 16:38:25 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C5DAD2BF9D0;
 Tue, 28 Jan 2020 16:38:25 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 16:38:25
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <broonie@kernel.org>, <robh@kernel.org>, <arnd@arndb.de>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <fabio.estevam@nxp.com>, <sudeep.holla@arm.com>, <lkml@metux.net>
Subject: [PATCH v2 7/7] ARM: dts: stm32: enable firewall controller node on
 stm32mp157c-ed1
Date: Tue, 28 Jan 2020 16:38:06 +0100
Message-ID: <20200128153806.7780-8-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200128153806.7780-1-benjamin.gaignard@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_05:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_073838_914131_3C698306 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 loic.pallardy@st.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, stefano.stabellini@xilinx.com,
 system-dt@lists.openampproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable ETZPC and set configuration for CEC node

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32mp157c-ev1.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 3789312c8539..5b72ef2a54df 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "stm32mp157c-ed1.dts"
+#include <dt-bindings/bus/firewall/stm32-etzpc.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
@@ -77,6 +78,7 @@
 &cec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&cec_pins_a>;
+	firewall-0 = <&etzpc STM32_ETZPC_CEC STM32_ETZPC_NON_SECURE>;
 	status = "okay";
 };
 
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
