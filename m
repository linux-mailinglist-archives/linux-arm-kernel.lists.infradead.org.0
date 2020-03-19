Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB92B18B14A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:27:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RbcvEq3af+EZxz5bvlSn9w55DLBHi4CvBRUk8b0kKM8=; b=MW0DtmYUueAqH/
	URsLeWNvmHAQ1QPtzjrRH0gO1jZ9y7P/jZKeTQUTlOjoHFNV65HbJG0EXYy2/IhmXGRZ0sHV7MkT1
	5AA4huY7bpY2cVLgQ9Eq3UoZWe4Zean+68UOtUN0OXlBlkcdbaZyVgkOfEJmzV66aoj1q9qtRjBkb
	johUCKZduktd5Ln/kMHdW4FxZOxLGBt0veoC8nMbxKGTLyjYT3q4WXLieSXf/9hQRyDoN1DFV2m0f
	rGsD05rQ0ZOeMe7j7epLIUtOy2jLLKd0o2vLoir6kY8ajPb0eZ0XW5QJi7LVBq44vcPuDCZBdbbJG
	s6gdYlw9MHVhTS34AP6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEsON-0006u1-Sq; Thu, 19 Mar 2020 10:27:11 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsOB-0006tI-Ve
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 10:27:01 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02JAPFPx031888; Thu, 19 Mar 2020 11:26:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=S2ou1+M3hvPA+NgQvCNpYae8BrEknM8QmlCHsuTCeDk=;
 b=GgG8LG7RFjnlGFSgyvaAN6ilwh9lf9/aoYDxeQOyw6x19jTK13eZsBImdjOIxnj7HPqT
 IXxnTx2fbmI0fkEKyIP3Lo2gbOO9E981dJeEBlOVVXjXq/COJlbzD5mjY78NpP6E4oie
 caEjEWLBOoiXnT/BfLMI5V5mO2RGwdyz70ON3ueJQZr398E7xnHAEIwKAMfY3cGoYEYU
 3JMHuy0tYZhO3CUFI8IIMS6u6nc7p7gUk42SMUfKWYtq+dAPSfBOkG25y5+ZmXL2le/V
 cKtTv4TLHJ5Grp5iZtvm3bvkMhjC6K8i8gwrdCl99AJelT7Idm4c9FZgWDNYBLFQ604g vg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yu6xdhjm9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Mar 2020 11:26:55 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 89F09100039;
 Thu, 19 Mar 2020 11:26:50 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7A9062A5810;
 Thu, 19 Mar 2020 11:26:50 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 19 Mar 2020 11:26:49 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH] ARM: dts: stm32: fix a typo for DAC io-channel-cells on
 stm32h743
Date: Thu, 19 Mar 2020 11:26:11 +0100
Message-ID: <1584613571-10544-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-19_02:2020-03-19,
 2020-03-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_032700_314358_6316B24F 
X-CRM114-Status: GOOD (  13.60  )
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

Fix a typo on STM32H743 DAC, e.g. s/channels/channel

Fixes: 1536dec45e77 ("ARM: dts: stm32: Add DAC support on stm32h743")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32h743.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32h743.dtsi b/arch/arm/boot/dts/stm32h743.dtsi
index 05eb02e..9b7fc68 100644
--- a/arch/arm/boot/dts/stm32h743.dtsi
+++ b/arch/arm/boot/dts/stm32h743.dtsi
@@ -180,14 +180,14 @@
 
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
