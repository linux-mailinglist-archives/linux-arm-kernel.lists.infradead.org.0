Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 665EC12650C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:42:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNorhHJIZf687neFR+tEn8O84JCpgMEIEqYK5lmyfGU=; b=ATwq4Pt+Gpnrl6
	OS/KbbOHbcgpFCRKuicaDqUvXfhxI1lTdfIniV0NA408L0EgkE4oZaEj8bS4xOSPuPpIdenAeAR3C
	1YgAQiasE4j3j59rFgI+IumWnqhyZvge1l0WIo/1dfF72ZatQYkE/dRqCoFUWQ/ZdQfFuaUydQzKp
	knjw931abYSWJQDlQ5QmTkQQvyszKJpInooRNCTGrtFjf7sDc08IL/bhFXmXRyo3JMpToOV3RixAF
	zljpgvF7yD8o7p+R7BvuXzk6WvWH8gwJyOJmJN++ZxPfl8NCmV2nA3d1NfqsDIzznoyfUjH4lzvq/
	z7IDATTq5NQtwFewxbVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihx06-0000PH-Jr; Thu, 19 Dec 2019 14:42:02 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwzj-0000Do-0b
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:41:40 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBJEaUs2014020; Thu, 19 Dec 2019 15:41:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=4w2ShoR7xwVF0wnOQZIXhRopSNfU1RmvtACz1IZSq24=;
 b=pivPKPDAsmSlxywUl2qBLLWzbiUw8lh/4aWPzNYh0h+XpFJ/gTs1/t7G+UvSFCVlLe6Z
 g19MJMhmGqPE36afaXAyE6sfAy7HKU8uMG2tPPBSKoF8iVIsoVzluCfPRGSNN6vIRYr3
 ToTp23Ql8+Ehgi/vpaVf4h1T55ibG1aJ606oDrh3Nt3e4whoNd6fX8i+hGPzCIkVNoCb
 jxV4bF35F8WRZHxZgp47NtsDKlO1BtntAN98Ei36eadIpz1p6b53cb4nz4iUbh8r+I7S
 NvRAcOcNz7839roTATzmN/RlFsKnrt5yOgCkCmWkiNd0CdI+M/f7ac61LeHDilng6l8s 0g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvp37a8h6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Dec 2019 15:41:29 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1C85D100042;
 Thu, 19 Dec 2019 15:41:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 022D62C6B65;
 Thu, 19 Dec 2019 15:41:21 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 19 Dec 2019 15:41:20
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>
Subject: [PATCH 3/3] ARM: dts: stm32: change nvmem node name on stm32mp1
Date: Thu, 19 Dec 2019 15:41:17 +0100
Message-ID: <20191219144117.21527-4-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191219144117.21527-1-benjamin.gaignard@st.com>
References: <20191219144117.21527-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-19_01:2019-12-17,2019-12-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_064139_460218_9CBBF580 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change non volatile node name from nvmem to efuse to be compliant
with yaml schema.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 3dd570b10181..c157d122b0f0 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1485,7 +1485,7 @@
 			status = "disabled";
 		};
 
-		bsec: nvmem@5c005000 {
+		bsec: efuse@5c005000 {
 			compatible = "st,stm32mp15-bsec";
 			reg = <0x5c005000 0x400>;
 			#address-cells = <1>;
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
