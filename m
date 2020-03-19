Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B00618B171
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s6OuH1jNwRzpHaptfbmzYeDLech38PcbR8TpAQnvS9g=; b=uX+lc/oCdPxTJU
	2H/wdmM4LLoMWvXAbDZkL6rqvWpepRLsgG5WzPfxyvNXZk3jze0ISqGOumjeIUsf37xn5gxB4A6SA
	EOyJceWxl/Rq5aH+v7W8D7cCQAq6C13y3QZM5+dDYmjHCp3wtT9n8iY3K6eaP6H9E/djErkE0waQH
	I82CfqeqX2HT2z9kviXkZfh1SkC17XbsH+yKS0zAVPrFIOy/UXmId2P/4Z8iJS6uU0dtYcF4exxnK
	whGXNFp3gFggme+5KcxkKqWjHDd2aZBVOLtFVdulOx8/KN4aiui3eW5vXqawGapR10wHfoReC1Gt8
	aSGHEBq8oPmJ60xHzXcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEsSB-0000rr-Sw; Thu, 19 Mar 2020 10:31:07 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsS3-0000r2-KO
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 10:31:01 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02JASqwX011436; Thu, 19 Mar 2020 11:30:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=T6KxkBVdSlvswEwEr/fHrokZ23VjltZtaEhbr8esy5Y=;
 b=V+mZ7etU3SXK2Sgi/eC0JJJcC0C2b6+W/lPBlCAm7cql5HaWiqr1nCquGskoO938ojO3
 TdSa/73rQ4/9Vvydn+LYsfxmm9I3QKhZN0JEy+AOwUCnb0aeS/71iN2Yva50ffyWCgq9
 I0MCbyxNAYcW/39U+TDk9ZKbSkOZsYCL8JGlcJt3G2UCWPWPGhcKA1ZyR7oHBgPqpjgV
 d5U7uQKSx9mtCf1tjaEMXBLZGcjHBReEe4BlbVciglZhy7j4HO9qOoGTq5xv49RadOwH
 UDbgdOcwmZUUsC+ZbjX8ZrM2hb9dppXkrhQGS0VR4mTJn5+H9X7tbTD8lWRFOJtMYtOh AQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yu6xdhk8b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Mar 2020 11:30:54 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 12BCD100038;
 Thu, 19 Mar 2020 11:30:54 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F0ED82A5824;
 Thu, 19 Mar 2020 11:30:53 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 19 Mar 2020 11:30:53 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH] ARM: dts: stm32: fix a typo for DAC io-channel-cells on
 stm32mp15
Date: Thu, 19 Mar 2020 11:30:26 +0100
Message-ID: <1584613826-10838-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-19_02:2020-03-19,
 2020-03-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_033059_967055_B93494F9 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a typo on STM32MP15 DAC, e.g. s/channels/channel

Fixes: da6cddc7e8a4 ("ARM: dts: stm32: Add DAC support to stm32mp157c")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 3ea05ba..5260818 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -550,14 +550,14 @@
 
 			dac1: dac@1 {
 				compatible = "st,stm32-dac";
-				#io-channels-cells = <1>;
+				#io-channel-cells = <1>;
 				reg = <1>;
 				status = "disabled";
 			};
 
 			dac2: dac@2 {
 				compatible = "st,stm32-dac";
-				#io-channels-cells = <1>;
+				#io-channel-cells = <1>;
 				reg = <2>;
 				status = "disabled";
 			};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
