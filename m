Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F9E146E0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdRf/wCaPOjwAyucdQSlI5zd1ElGl59XX1bz48mJTFw=; b=dfnc11HTsCTzDS
	5qgOgbEYwpnAuEVSFud0bX9a7DWK3HmLBMKfXjNQvPx/VzCpTkDj6LXsiubJYEZRJbb9uE2QbbNi4
	quU3m3mD2ih6SuaFX1yWvAHwDPS54HBKkmsJcb3PWawJXxH2IqkgSmGcAdrCw1b+qOXQhuWIdaj3t
	6p0fnxrBnXCXyItNbi8L79lOk6Qi/02NWmajiO/4hBrsa0NrpfcdMKOtb3umxnE6N8I9ZJDDRpbuT
	oSUpp9N0dsNyUaurQCVqV46RtbvwPBgoQHgQMbSUT1bVv99+r0P2AkoBOU2oWsRS3frSjYNm2HR6z
	lkKjwQFzIDqi1H8kaydw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuf7W-0001XO-7N; Thu, 23 Jan 2020 16:14:14 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuf6l-000131-CI
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:13:30 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00NFvfwU031446; Thu, 23 Jan 2020 17:13:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Z+ZWugU9zZd6hKhPnNDDZVEE+awHm4FXGbQ7fLxQnOM=;
 b=zhIt+aKOv0JaK+1p11aWSRLw84S98EugP/BIVPRAXDvXViE2MJnmC0dwD6Uwu12c3Ha3
 exCvxhJjVs+auKOgPxi2N0ZMdi6OTmneElaCXr4/aFb0wJ0gFNVDPv4qd0CnywNM2/sJ
 bZH4jBXNoqG1Kc9qnwkwBSe2WWC6Yb3Y96GFAE4Djg2RA2Q+Uf7WX6a5WfFMGuM+omlv
 +vt8NkuofIZKXAagxMAoyS6f6B8jZ8m2Os+ynOvT/Qc27o/gKN6HDZas1Y2Z0Rbblo0t
 ufSOB/WAffGs+sh6wVnRK0Xlg6DxCOX15k3nX1ZXOc/OeGHzq2/0wuWEh3ljOMg9qZ2s jA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xksspaynw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 17:13:22 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 26BD010002A;
 Thu, 23 Jan 2020 17:13:17 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 15CF52BC7D5;
 Thu, 23 Jan 2020 17:13:17 +0100 (CET)
Received: from localhost (10.75.127.51) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 Jan 2020 17:13:16
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH 2/5] dt-bindings: i2c: i2c-stm32f7: add st,
 stm32mp15-i2c compatible
Date: Thu, 23 Jan 2020 17:12:47 +0100
Message-ID: <1579795970-22319-3-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
References: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-23_08:2020-01-23,
 2020-01-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_081327_716352_83F581E3 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new stm32mp15 specific compatible to handle FastMode+
registers which are different on the stm32mp15 compared
to the stm32f7 or stm32h7.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
index 900ec1ab6a47..ffe00737446e 100644
--- a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
@@ -17,6 +17,7 @@ allOf:
           contains:
             enum:
               - st,stm32f7-i2c
+              - st,stm32mp15-i2c
     then:
       properties:
         i2c-scl-rising-time-ns:
@@ -52,6 +53,7 @@ properties:
     enum:
       - st,stm32f4-i2c
       - st,stm32f7-i2c
+      - st,stm32mp15-i2c
 
   reg:
     maxItems: 1
@@ -121,12 +123,12 @@ examples:
           clocks = <&rcc 1 CLK_I2C1>;
       };
 
-    //Example 3 (with st,stm32f7-i2c compatible on stm32mp)
+    //Example 3 (with st,stm32mp15-i2c compatible on stm32mp)
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/clock/stm32mp1-clks.h>
     #include <dt-bindings/reset/stm32mp1-resets.h>
       i2c@40013000 {
-          compatible = "st,stm32f7-i2c";
+          compatible = "st,stm32mp15-i2c";
           #address-cells = <1>;
           #size-cells = <0>;
           reg = <0x40013000 0x400>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
