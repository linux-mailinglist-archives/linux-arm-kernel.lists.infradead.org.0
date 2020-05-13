Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C701D1899
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kle3BesBDge0yj2JQ3WfIHlzTjSqQOp/gBr5pcCT/8I=; b=TrA91BJf6tsuMa
	3Zs2NuYAUKLCpj+jjdcgVEXJxFcCPZQZIAjBJ5xGMAJN0wizU5iaJNJnJ27W9KqHlDSK7VlAdvTJV
	uR1k4q68l3AdD849efelc1SiIMe0ycIGUhq7RXG/GWkhRb2uVfw7NmbF4kUB4whMBQnX0Uyb3p/YC
	7b7AJXYABdOCawLtnoLg+FITyeNiwg5okIZa4K8Kccykk+Xxps6YEodu64vmDakvWnYLhfEbVOdsB
	UzuoiTBARp/78/QCSzWj7SiWlblLlS+Kk23Kv7kGxG8amd96mfB37Ivf4WcKxR8M3uBGc7j9gnqKf
	0R6t2yGlU1E9rbuX5mrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsv1-00012T-65; Wed, 13 May 2020 15:03:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsrY-0003xj-Kq
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:00:02 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04DEwIF1014070; Wed, 13 May 2020 16:59:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=ND/Ui9QeJtuTQHrwcVceQrxlKJrz8tVZT9wD57SuC/4=;
 b=pQuA5mlIwQRsbYfUpKN1I/OvvRO7nSkGazvir6QaJAa6xljFUR3NbubPn1V72WfspmnL
 Ex2kSZxWyFe5u5hoU7IwGv+Cz5Pdq1to1oE6jWw/iJ8y9/r4XreOtGtL/OdKbksvNJUg
 AOT+nTUhU16pcxrSnPH9TzfnT3BzESvt7JdiSCLnkG68MlLAGRdq4MCBIlOCTDEhC6v2
 kZiBPvuoRwneNinKjbbx2pXeCKroERF9NLRUCX4doLDGAiR7TnpsBw/i285UX5b5FbDr
 JMJXgeL2QudSyy+BMaCrJyo3pV3We6ti42tPyxpLoo/OYLiUFuQwoUJDuHQI5ywIwg9e +Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vpdfxb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 May 2020 16:59:50 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 73256100034;
 Wed, 13 May 2020 16:59:50 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 63B3B2D3006;
 Wed, 13 May 2020 16:59:50 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 13 May 2020 16:59:49
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH 08/15] ARM: dts: stm32: update led nodes names for
 stm32f746-eval
Date: Wed, 13 May 2020 16:59:28 +0200
Message-ID: <20200513145935.22493-9-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200513145935.22493-1-benjamin.gaignard@st.com>
References: <20200513145935.22493-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-13_06:2020-05-13,
 2020-05-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_080001_014583_5F6D0150 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update led nodes names to be aligned with yaml description

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32746g-eval.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/stm32746g-eval.dts b/arch/arm/boot/dts/stm32746g-eval.dts
index 4ea3f98dd275..ca8c192449ee 100644
--- a/arch/arm/boot/dts/stm32746g-eval.dts
+++ b/arch/arm/boot/dts/stm32746g-eval.dts
@@ -66,17 +66,17 @@
 
 	leds {
 		compatible = "gpio-leds";
-		green {
+		led-green {
 			gpios = <&gpiof 10 1>;
 			linux,default-trigger = "heartbeat";
 		};
-		orange {
+		led-orange {
 			gpios = <&stmfx_pinctrl 17 1>;
 		};
-		red {
+		led-red {
 			gpios = <&gpiob 7 1>;
 		};
-		blue {
+		led-blue {
 			gpios = <&stmfx_pinctrl 19 1>;
 		};
 	};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
