Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E8E113E52
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53jjd0jTXeODR48cDVF1uAUIzMmSnKP+UmIblPqcnw8=; b=A6yOPzCISk46a1
	drFTuaZONntEhyCJAWKOObifZv4+ShVfzJxRyC7AM6ZicY/mGa0sU2oLxvKq8eGYNxzmOq+BZe2br
	qGNIs9INq6YihN0NUYIsdefMEZ0OnVawjRxM+KgUbg/BcdbLPYTT0Q5KPAUxIToRu3a/5mj4GVEI8
	Pqx9bakAkcJACcsG6QLx6HOA6/nlgWKJ0QeHXw9rHzWOBP7STKjdO514Tc8gbXkI33L9eef0Pc9oS
	jM+7C5d5rRt5VSp7s5b+V1ghGIsLv50tZ+mklfXUW6qpHxq4nCXTvopTqsWwk/yfJMwIluZjJ5Iir
	260a/2AxMAd8BtnWzFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icncP-0003pN-RN; Thu, 05 Dec 2019 09:40:17 +0000
Received: from securetransport.cubewerk.de ([188.68.39.254])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnbd-0003M6-Oe
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:39:32 +0000
Received: from DHPWEX01.DH-ELECTRONICS.ORG
 (ipbcc07e02.dynamic.kabel-deutschland.de [188.192.126.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by securetransport.cubewerk.de (Postfix) with ESMTPSA id D2BA65E84E;
 Thu,  5 Dec 2019 10:38:52 +0100 (CET)
Received: from DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.397.3; 
 Thu, 5 Dec 2019 10:38:51 +0100
Received: from DHPWEX01.DH-ELECTRONICS.ORG ([fe80::6ced:fa7f:9a9c:e579]) by
 DHPWEX01.DH-ELECTRONICS.ORG ([fe80::6ced:fa7f:9a9c:e579%3]) with mapi id
 15.02.0397.003; Thu, 5 Dec 2019 10:38:51 +0100
X-secureTransport-forwarded: yes
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Complaints-To: abuse@cubewerk.de
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: imx: Correct ocotp id for serial number support of
 i.MX6ULL/ULZ SoCs
Thread-Topic: [PATCH] ARM: imx: Correct ocotp id for serial number support of
 i.MX6ULL/ULZ SoCs
Thread-Index: AQHVq044bS2y6RT00EG+scRisb3/EKerRjCw
Date: Thu, 5 Dec 2019 09:38:51 +0000
Message-ID: <f4fdca95dfe54569b4e2b430c69d56c3@dh-electronics.com>
References: <20191205092713.58314-1-cniedermaier@dh-electronics.com>
In-Reply-To: <20191205092713.58314-1-cniedermaier@dh-electronics.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.64.3.50]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_013929_962463_DDBCB592 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.68.39.254 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After the commit 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
the kernel doesn't start on i.MX6ULL/ULZ SoC.
Tested on next-20191205.

For i.MX6ULL/ULZ the variable "ocotp_compat" is set to "fsl,imx6ul-ocotp", but with commit
ffbc34bf0e9c ("nvmem: imx-ocotp: Implement i.MX6ULL/ULZ support") and commit
f243bc821ee3 ("ARM: dts: imx6ull: Fix i.MX6ULL/ULZ ocotp compatible") the value
"fsl,imx6ull-ocotp" is already defined and set in device tree...

By setting "ocotp_compat" to "fsl,imx6ull-ocotp" the kernel does boot.

Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
---
 arch/arm/mach-imx/cpu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index d8118031c51f..0fb0c4a264c3 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -148,11 +148,11 @@ struct device * __init imx_soc_device_init(void)
 		soc_id = "i.MX6UL";
 		break;
 	case MXC_CPU_IMX6ULL:
-		ocotp_compat = "fsl,imx6ul-ocotp";
+		ocotp_compat = "fsl,imx6ull-ocotp";
 		soc_id = "i.MX6ULL";
 		break;
 	case MXC_CPU_IMX6ULZ:
-		ocotp_compat = "fsl,imx6ul-ocotp";
+		ocotp_compat = "fsl,imx6ull-ocotp";
 		soc_id = "i.MX6ULZ";
 		break;
 	case MXC_CPU_IMX6SLL:
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
