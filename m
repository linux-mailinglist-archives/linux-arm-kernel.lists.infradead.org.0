Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A458E4EB2B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 16:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nvHYXuOJCp8sSnu07VFg+j3ANxa7f+eUsnppumEBec=; b=NetmrF9Hcbts+v
	bufPi+IgRvhQufK70jxouDvHnQqq8+YYvLGunS3r94i6wAE2awwEOLbGphKJSiLsLsU6xG3EJKtBv
	DLnBnAB7Yrz92QHYc8yG8uqy7LvyKtFJSYcIYW+VtbW/F1wPpDU7rsYZH5FSmQY/JI0W/DVIXlE6c
	nZa22QM6Owl3FvBsA6rH6zUrAlUT/j3padCvQADCrW36LxR3m4RV/4y+dtn6HiiW/qMPBo5xhTfTT
	Br7lu+KiZmEc8alneizQ9QnuE0oRpzPrgFOfH2c7Gzf41K+iTZTkqv4pCn0s69NbpSSYyRVk3h4Jx
	Yaj6bWTQ1WpKDBOu/OrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKsw-0007ej-4k; Fri, 21 Jun 2019 14:51:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heKsS-0007S0-7Q
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 14:50:57 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5LEag9T027335; Fri, 21 Jun 2019 16:50:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=ZZpvRfgXUheBHfuAk2fJFbyjGOPB1yCbsnahTGNt+E8=;
 b=CZYcXET/fKOXQ/igv3GuZrPwANSoLrSM4aXr/Toe1J/RrsWodBqs1BelovZQ4o3IARt8
 dK7krBSNZmkd72wIy+I2rIOSTfe/M7jRbYwSSNr/IVxHDJdsgSCO6vtZEe1pNbu79+Q7
 ZJDeBwXJ9+D64PW1UjzWPUOU830hXC7VG8Uwt+TYarAqCUhDnGVgd1YggEI36tZLhAo3
 Rxcq4iMcXsHXxKGlWNDR9S78kDiuPDMjl84IRaHtr2p/XVLJL/bGp0cz3AAMUWIk0bUa
 nWrhnTq7HptxZ8XLflvm55GeZAY2nZRu12Hz/d/AzZbWRmZ8HEdQNaYhXZgfyBgL5Men +w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t781v81ue-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 21 Jun 2019 16:50:45 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2144C34;
 Fri, 21 Jun 2019 14:50:45 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0226B2BDE;
 Fri, 21 Jun 2019 14:50:45 +0000 (GMT)
Received: from localhost (10.75.127.48) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 21 Jun 2019 16:50:44 +0200
From: Christophe Kerello <christophe.kerello@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <alexandre.torgue@st.com>,
 <linux@armlinux.org.uk>, <olof@lixom.net>, <arnd@arndb.de>
Subject: [PATCH 1/4] ARM: dts: stm32: add FMC2 NAND controller support on
 stm32mp157c
Date: Fri, 21 Jun 2019 16:49:47 +0200
Message-ID: <1561128590-14621-2-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1561128590-14621-1-git-send-email-christophe.kerello@st.com>
References: <1561128590-14621-1-git-send-email-christophe.kerello@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-21_10:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_075056_705158_9D9DFD82 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Christophe Kerello <christophe.kerello@st.com>,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds FMC2 NAND controller support used by stm32mp157c SOC.

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 0c4e6eb..f2bda28 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1239,6 +1239,25 @@
 			dma-requests = <48>;
 		};
 
+		fmc: nand-controller@58002000 {
+			compatible = "st,stm32mp15-fmc2";
+			reg = <0x58002000 0x1000>,
+			      <0x80000000 0x1000>,
+			      <0x88010000 0x1000>,
+			      <0x88020000 0x1000>,
+			      <0x81000000 0x1000>,
+			      <0x89010000 0x1000>,
+			      <0x89020000 0x1000>;
+			interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+			dmas = <&mdma1 20 0x10 0x12000A02 0x0 0x0>,
+			       <&mdma1 20 0x10 0x12000A08 0x0 0x0>,
+			       <&mdma1 21 0x10 0x12000A0A 0x0 0x0>;
+			dma-names = "tx", "rx", "ecc";
+			clocks = <&rcc FMC_K>;
+			resets = <&rcc FMC_R>;
+			status = "disabled";
+		};
+
 		qspi: spi@58003000 {
 			compatible = "st,stm32f469-qspi";
 			reg = <0x58003000 0x1000>, <0x70000000 0x10000000>;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
