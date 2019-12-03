Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF71D10FC1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 12:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OO5sts3kYTknvejfUHq2gzwaaXEljbBzhcs/x+2gbKM=; b=YtnRmiLzq1XHub
	be87fTWB3frOhLxo/6IMQBFnNEU9lq6D5scV1YQ7DqFBuoTJt5kBOxTX9GCrtWU2WIvuDP+/7HSYY
	hjP8B5h/lp5rE71w6Ozt9H+c3TppT2XCIkmzYf9ILDFfqTiJ5SRU98pE0vrp2OdPYLX9B6FbzfM/L
	ngzGyBeFNwdNnZtD8iTwPy7/gMcY/raoe8Z9zkx+6CUPhyFr54JTzCOoCWjvj7Z3LTgSZeHpzHvTt
	g1xGRXOUiqzi7tR0E1pTEdGnZmY4X4vbUBEyGoMmvABxJraT42eYiWapvwMe5zaGJscx0ZkiUD8ur
	CBSDs9apQ9sZ1aDrsxWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic5uz-0000nn-2l; Tue, 03 Dec 2019 11:00:33 +0000
Received: from securetransport.cubewerk.de ([188.40.106.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic5un-0000iS-D3
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 11:00:23 +0000
Received: from DHPWEX01.DH-ELECTRONICS.ORG (unknown [188.192.202.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by securetransport.cubewerk.de (Postfix) with ESMTPSA id D3375200BD;
 Tue,  3 Dec 2019 11:59:42 +0100 (CET)
Received: from DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.397.3; 
 Tue, 3 Dec 2019 11:59:41 +0100
Received: from DHPWEX01.DH-ELECTRONICS.ORG ([fe80::6ced:fa7f:9a9c:e579]) by
 DHPWEX01.DH-ELECTRONICS.ORG ([fe80::6ced:fa7f:9a9c:e579%3]) with mapi id
 15.02.0397.003; Tue, 3 Dec 2019 11:59:41 +0100
X-secureTransport-forwarded: yes
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Complaints-To: abuse@cubewerk.de
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Anson Huang <Anson.Huang@nxp.com>
Subject: ARM: imx: linux-next 20191203 kernel does not start on an i.MX6ULL
 due to the SoC serial number fetch.
Thread-Topic: ARM: imx: linux-next 20191203 kernel does not start on an
 i.MX6ULL due to the SoC serial number fetch.
Thread-Index: AdWpw4EhefmtZBp0TNur+jqozwoahg==
Date: Tue, 3 Dec 2019 10:59:41 +0000
Message-ID: <1ef39c29b35d48cea0f8a98aabcfef29@dh-electronics.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.64.3.50]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_030021_595969_5B6F61AF 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

My i.MX6ULL SoC doesn't start on the linux-next 20191203 Kernel.
Reason is the commit "ARM: imx: Add serial number support for i.MX6/7 SoCs" (8267ff89b713).
For i.MX6ULL the variable "ocotp_compat" is set to "fsl,imx6ul-ocotp", but with commit
"nvmem: imx-ocotp: Implement i.MX6ULL/ULZ support" (ffbc34bf0e9c) and commit
"ARM: dts: imx6ull: Fix i.MX6ULL/ULZ ocotp compatible" (f243bc821ee3) the value
"fsl,imx6ull-ocotp" is already defined and set in device tree...

With the follwing change the kernel starts on my i.MX6ULL SoC.
diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index d8118031c51f..1ff73d1ac869 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -148,7 +148,7 @@ struct device * __init imx_soc_device_init(void)
 		soc_id = "i.MX6UL";
 		break;
 	case MXC_CPU_IMX6ULL:
-		ocotp_compat = "fsl,imx6ul-ocotp";
+		ocotp_compat = "fsl,imx6ull-ocotp";
 		soc_id = "i.MX6ULL";
 		break;
 	case MXC_CPU_IMX6ULZ:

Best regards,
Christoph

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
