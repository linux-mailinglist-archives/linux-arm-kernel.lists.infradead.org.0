Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DB0E854F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:16:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5V/uhWvd/YXCHCcEdfBHz6ZdonEQEz0GKg3R+G/GdY=; b=LTTs82iQu6eHLE
	OSwOMktkfXfFIxATRamlHvLO0XSJuv2B4rLd9l5UcfmnFWySMa3lx0bfSEtLSLtXTX70vy8x+I29c
	BarOIObECSfhns2yh23WzxOX5TpQlRqweVevR6fqgV2yCw/wscapU5xEjlrsip4rLOuabCzPZ4Kmz
	51CkRzRshQthmwRooycLA1lP8lJxBciUByC0DzC3NgZdUByzw+1PI2kVf+c5VbaWb00tKsKNbmu3q
	SwzPgoawfjEVt0kISDP5R5LhvpLSnuOXZlJJlEIUcG9ksl/n3UIQfZn/ceNB1/jbaTmqOmUSivoHK
	7cBQmqEO4FygQ3wla3/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOXo-0001QR-AT; Tue, 29 Oct 2019 10:16:08 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOWn-0007ul-BT
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:15:09 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9TACFjB014017; Tue, 29 Oct 2019 11:14:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=JfReHPEwmniYq2zeeS3NIy67VOB8iS3FpX0DY0LvKxk=;
 b=WuvdV5QPZibs+z/ThuOFPzBya1wvRH9wapGvnfVPDMBO2q1YHLXhXd/1EMPh69fEZn/w
 i4YaqMGH3mz4uE8E2OESErNkIDtEG4TC5a9FijGg1Q0FchrGE3JGq+HR53BnrHMgH8Sm
 jaavY4BAxu8qU0bEoR/l01igjZ8sHUfUMkRzGV2QIOx1ASO9wexkvG20Yt3xLUI6Gu3f
 S0TEqR79Q2HmWo/jLHbOe+72S/CtuSab77XZjdkCJeP4T03704mcf5G2dhujp/JJ3Kqb
 fmLSNWX1i2ZRXp7t4D2dX7DDiU0qLuMGMwchLGO7wmdeo25rSHR/EwRn5toYLT5s4zhI 0w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vvbww6yjx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 29 Oct 2019 11:14:55 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D0AB7100034;
 Tue, 29 Oct 2019 11:14:53 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B84132B28D8;
 Tue, 29 Oct 2019 11:14:53 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct
 2019 11:14:53 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct 2019 11:14:53
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [net: ethernet: stmmac: some fixes and optimizations 3/5] ARM: dts:
 stm32: remove syscfg clock on stm32mp157c ethernet
Date: Tue, 29 Oct 2019 11:14:39 +0100
Message-ID: <20191029101441.17290-4-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029101441.17290-1-christophe.roullier@st.com>
References: <20191029101441.17290-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-29_03:2019-10-28,2019-10-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_031505_869947_4B8E1502 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 christophe.roullier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Syscfg is now activated automatically when syscfg registers are used

Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 9b11654a0a39..f13c2348d130 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1326,13 +1326,11 @@
 			clock-names = "stmmaceth",
 				      "mac-clk-tx",
 				      "mac-clk-rx",
-				      "ethstp",
-				      "syscfg-clk";
+				      "ethstp";
 			clocks = <&rcc ETHMAC>,
 				 <&rcc ETHTX>,
 				 <&rcc ETHRX>,
-				 <&rcc ETHSTP>,
-				 <&rcc SYSCFG>;
+				 <&rcc ETHSTP>;
 			st,syscon = <&syscfg 0x4>;
 			snps,mixed-burst;
 			snps,pbl = <2>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
