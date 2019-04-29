Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51841DFE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 11:55:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dIsZaA9iOPIV/IGDRwcW5Y53bPmBsR0BH/HQUwiscDw=; b=ZF06brHvNL9UXG
	164se5lnCwlKX9RtI13ltnSR83XjX1Jmtelp2XcV3yJR2DvaQ2/oxEhi8F1WCVgeZcmar1k6Fo5x3
	LMTb9NClzcLLVvA+pV8YaSq2Z/SDYKZiv+5k8klzy79ur+bJq32cqHd26Bc21JghG1VNV3UYeItIp
	sUgF8KJ7xg/QLEOe6jT+ZwGx9ltgArrS5ujZy3nn1Vw0rhsDYcT2BI7wWEV63mU6RXkS673Ya3cwi
	Z4LjOql4QyCCt6inwkz3J2QjfwTJn6vkA5iscvAQEw4h558FVUEOixL+B6ypgyv4mTlagcR2AFIel
	xKlqVx/7zWSs+opC0U2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL309-0007WQ-1U; Mon, 29 Apr 2019 09:55:09 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL2zv-0007VX-Bm
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 09:54:57 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x3T9kxuR031685; Mon, 29 Apr 2019 11:54:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=STMicroelectronics;
 bh=NpKHSHilJ8VtsKy2Eh73u7f/s16+/jfGkYS573A6cho=;
 b=URwv2GxebEgOjfAMFTa3Ak+GpQVsVLlauhQc8u9c9crOUnXwEZdquDHQZCqdgi0Fq21g
 JuLUOKDh6yr4vOBZEChwo+VxCcrJAS6zg5ioRLZOHBiwm/Ya8AncCG+daoGZXE3gnBE4
 vR+3S7vKPACustyWcxoEaIhBU1HczcXvlllGv8mU5fcaPHseINPyNPDYHrfyGL/plqsw
 /RzY/hZwgqmErWxYLzeCwDK4ZBA76U+M4yGgQdt3lXK6+rWVHEYkgij3tuv/ne43W9A7
 PsnfsPjOqa3VF/ylyhU8yMxKP+hlrJKEKTm2u2Bo3UaonDSE7p1Wi+Q3HOwGh19ORzbC Rg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2s4cj0be9r-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 29 Apr 2019 11:54:45 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0FD7C34;
 Mon, 29 Apr 2019 09:54:45 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag4node3.st.com [10.75.127.12])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D7D7E14F5;
 Mon, 29 Apr 2019 09:54:44 +0000 (GMT)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG4NODE3.st.com
 (10.75.127.12) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 29 Apr
 2019 11:54:44 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1347.000; Mon, 29 Apr 2019 11:54:44 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Subject: [PATCH 1/1] clk: stm32mp1: Add ddrperfm clock
Thread-Topic: [PATCH 1/1] clk: stm32mp1: Add ddrperfm clock
Thread-Index: AQHU/nGSI1KYPhvKvEC7x41++h176w==
Date: Mon, 29 Apr 2019 09:54:44 +0000
Message-ID: <1556531652-27740-1-git-send-email-gerald.baeza@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-04-29_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_025455_947171_FA1E6D30 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 KHOP_DYNAMIC           Relay looks like a dynamic address
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Gerald BAEZA <gerald.baeza@st.com>,
 Gabriel FERNANDEZ <gabriel.fernandez@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gabriel Fernandez <gabriel.fernandez@st.com>

Add ddrperfm clock for DDR Performance Monitor driver

Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
---
 drivers/clk/clk-stm32mp1.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index a0ae8dc..a875649 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -1402,6 +1402,7 @@ enum {
 	G_CRYP1,
 	G_HASH1,
 	G_BKPSRAM,
+	G_DDRPERFM,
 
 	G_LAST
 };
@@ -1488,6 +1489,7 @@ static struct stm32_gate_cfg per_gate_cfg[G_LAST] = {
 	K_GATE(G_STGENRO,	RCC_APB4ENSETR, 20, 0),
 	K_MGATE(G_USBPHY,	RCC_APB4ENSETR, 16, 0),
 	K_GATE(G_IWDG2,		RCC_APB4ENSETR, 15, 0),
+	K_GATE(G_DDRPERFM,	RCC_APB4ENSETR, 8, 0),
 	K_MGATE(G_DSI,		RCC_APB4ENSETR, 4, 0),
 	K_MGATE(G_LTDC,		RCC_APB4ENSETR, 0, 0),
 
@@ -1899,6 +1901,7 @@ static const struct clock_config stm32mp1_clock_cfg[] = {
 	PCLK(CRC1, "crc1", "ck_axi", 0, G_CRC1),
 	PCLK(USBH, "usbh", "ck_axi", 0, G_USBH),
 	PCLK(ETHSTP, "ethstp", "ck_axi", 0, G_ETHSTP),
+	PCLK(DDRPERFM, "ddrperfm", "pclk4", 0, G_DDRPERFM),
 
 	/* Kernel clocks */
 	KCLK(SDMMC1_K, "sdmmc1_k", sdmmc12_src, 0, G_SDMMC1, M_SDMMC12),
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
