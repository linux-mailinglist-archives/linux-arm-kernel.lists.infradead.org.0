Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1BF16EFE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 21:14:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hLoCU5aHEMKMYxQSp+mF29hCoTIZciZju8gdIrQ04oQ=; b=OD+ZYQfd1G25Om
	GEUSZtgK3oEnV5wtxY7FeQ3xhVXl43cG4lRXYEOhBDetZvGhPZMxekcnXNP7K5V/iyqmKvQ9jKovz
	nWSyth1x+P/j34jXMFrwPv6GNJUldtjamlUuh57cNjlwtWGX2g+7kE3XZj+ltqQKDDfbyUaPEX/SQ
	2andRut7iUmNoEWuTpH6XXJ4ScbxMN2pALkhNWcnzYHdmjlIFguA2MNOUaAm5BMqtkfDnRlVR2boL
	LXzTX0KsxWyUD0yC9UsYCQKVsQpCDX10c+2ExRZWcpQ5dc4cFI44QAB+CTuX3FIFoxr4182Pd0DAA
	WdmZkK6A/Fth+h51fgbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6gbG-0003pU-Fu; Tue, 25 Feb 2020 20:14:38 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6gb4-0003oi-Mu
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 20:14:28 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01PK92St058083; Tue, 25 Feb 2020 15:14:21 -0500
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2yax398vum-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 25 Feb 2020 15:14:21 -0500
Received: from m0098393.ppops.net (m0098393.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 01PK9OCR059563;
 Tue, 25 Feb 2020 15:14:21 -0500
Received: from ppma02wdc.us.ibm.com (aa.5b.37a9.ip4.static.sl-reverse.com
 [169.55.91.170])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2yax398vu6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 25 Feb 2020 15:14:21 -0500
Received: from pps.filterd (ppma02wdc.us.ibm.com [127.0.0.1])
 by ppma02wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 01PKDExb023589;
 Tue, 25 Feb 2020 20:14:19 GMT
Received: from b03cxnp08026.gho.boulder.ibm.com
 (b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
 by ppma02wdc.us.ibm.com with ESMTP id 2yaux6ps3m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 25 Feb 2020 20:14:19 +0000
Received: from b03ledav003.gho.boulder.ibm.com
 (b03ledav003.gho.boulder.ibm.com [9.17.130.234])
 by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 01PKEIoF29032860
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Feb 2020 20:14:18 GMT
Received: from b03ledav003.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A2A8D6A058;
 Tue, 25 Feb 2020 20:14:18 +0000 (GMT)
Received: from b03ledav003.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3B0C86A051;
 Tue, 25 Feb 2020 20:14:18 +0000 (GMT)
Received: from MSBARTH-P50.rch.stglabs.ibm.com (unknown [9.10.99.26])
 by b03ledav003.gho.boulder.ibm.com (Postfix) with ESMTP;
 Tue, 25 Feb 2020 20:14:18 +0000 (GMT)
From: Matthew Barth <msbarth@linux.ibm.com>
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 openbmc@lists.ozlabs.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Brandon Wyman <bjwyman@gmail.com>,
 Eddie James <eajames@linux.ibm.com>
Subject: [PATCH v2] ARM: dts: rainier: Set PCA9552 pin types
Date: Tue, 25 Feb 2020 14:14:15 -0600
Message-Id: <20200225201415.431668-1-msbarth@linux.ibm.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-25_08:2020-02-25,
 2020-02-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 mlxlogscore=987 priorityscore=1501
 lowpriorityscore=0 clxscore=1011 phishscore=0 malwarescore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002250139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_121426_757266_2297D4C7 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: Matthew Barth <msbarth@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All 16 pins of the PCA9552 at 7-bit address 0x61 should be set as type
GPIO.

Signed-off-by: Matthew Barth <msbarth@linux.ibm.com>
---
v2: Added leds-pca955x.h include
    Added upstream to patch
---
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index c63cefce636d..d9fa9fd48058 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -4,6 +4,7 @@
 
 #include "aspeed-g6.dtsi"
 #include <dt-bindings/gpio/aspeed-gpio.h>
+#include <dt-bindings/leds/leds-pca955x.h>
 
 / {
 	model = "Rainier";
@@ -351,66 +352,82 @@
 
 		gpio@0 {
 			reg = <0>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@1 {
 			reg = <1>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@2 {
 			reg = <2>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@3 {
 			reg = <3>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@4 {
 			reg = <4>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@5 {
 			reg = <5>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@6 {
 			reg = <6>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@7 {
 			reg = <7>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@8 {
 			reg = <8>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@9 {
 			reg = <9>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@10 {
 			reg = <10>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@11 {
 			reg = <11>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@12 {
 			reg = <12>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@13 {
 			reg = <13>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@14 {
 			reg = <14>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 
 		gpio@15 {
 			reg = <15>;
+			type = <PCA955X_TYPE_GPIO>;
 		};
 	};
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
