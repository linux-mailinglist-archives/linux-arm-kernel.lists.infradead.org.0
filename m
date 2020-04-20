Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B12A21B0F12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6P/TGVvjBGWQqtdTdJ7ffThyg7qQ1xA3nKQ61NRnig=; b=o8/aPVrHpGykdG
	FxCFIFHWTljVOR1yn9ANuOcgBLSNTv4RBhHS14PRYhFFAOcrz4XT10QKciGIucCwwrw5qD/k4C+yc
	hYzJbAeHjnr8uqNqdS2/eZYiyZb0J4h3Y54EGgxObyAQ60mwknBfIX/Ndj1N4OM7rh3T9wmKVgiKB
	54JASYczM67GkiCgnY3f5C7K8rYfA+mkw9X81qpJriVB7WTxyczVL7PHQKNAJhz0GW67VG+VgHHjn
	NHHPbSQHVLJW7MntUK/TRRdnku1UcMW0GuY45hv2ULbFDj5yIXMErr/5f+DZibr5xoIRui+ZgjBjO
	59wvQpd71bApEF6NdK2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXsi-0002xJ-VX; Mon, 20 Apr 2020 14:58:44 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXsF-0002lI-V4
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:58:17 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KEvxFv029858; Mon, 20 Apr 2020 16:58:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Htm7G4c6nkASZiIJZ/72en4USFOHh63A0jmfPAbpGcE=;
 b=lbzfMJvC0hdjd51qM0TvtqWrIQeW8Bfm+tXgkqUytf3dwovbM4MFB474qWFvvBghWKno
 0DcGmNH0HGbkRXK7YL+LbWO0NDUMW28NffODK1jd3npkMNMg+hn8Qh4iBcnWnUL0Ztb6
 OBNCvQFeSYdpLwf1WW3azGdtZAU4o5yVrMg+9puhGlR12hijfFbzQ5xEhkDL7uUOy6H0
 nERzqNc47snopvzJEKq1TCkVjCFnvQjkmz9qjofmuIB9+rFj3E0D0b3PRchAoDC31UKQ
 D8N6d4bq2ien8d0bHHZkZ3hyFHXQLfL04+KvrIHO2ItO91nYKnGkZPZKKfEz3M1N8j55 +w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fpp8k280-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 16:58:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3A008100034;
 Mon, 20 Apr 2020 16:58:07 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 25A612C1F79;
 Mon, 20 Apr 2020 16:58:07 +0200 (CEST)
Received: from localhost (10.75.127.48) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr 2020 16:58:06
 +0200
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: i2c: i2c-stm32f7: allow clock-frequency
 range
Date: Mon, 20 Apr 2020 16:57:56 +0200
Message-ID: <1587394677-6872-2-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587394677-6872-1-git-send-email-alain.volmat@st.com>
References: <1587394677-6872-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_05:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_075816_436029_C0091153 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For STM32F7, STM32H7 and STM32MP1 SoCs, if timing parameters
match, the bus clock frequency can be from 1Hz to 1MHz.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v3: identical to v1 & v2

 Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
index 900ec1ab6a47..b50a2f420b36 100644
--- a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
@@ -80,11 +80,11 @@ properties:
   clock-frequency:
     description: Desired I2C bus clock frequency in Hz. If not specified,
                  the default 100 kHz frequency will be used.
-                 For STM32F7, STM32H7 and STM32MP1 SoCs, Standard-mode,
-                 Fast-mode and Fast-mode Plus are supported, possible
-                 values are 100000, 400000 and 1000000.
+                 For STM32F7, STM32H7 and STM32MP1 SoCs, if timing parameters
+                 match, the bus clock frequency can be from 1Hz to 1MHz.
     default: 100000
-    enum: [100000, 400000, 1000000]
+    minimum: 1
+    maximum: 1000000
 
 required:
   - compatible
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
