Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB374B89B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jA2jbYM+f5HaKqZAaOwl92TVjAOh2s+9Tr8gBda8lNY=; b=ZXY+IFO2Wkr5ir
	YPiWFaqAbuSOrnCuISXJ5tU209aFc1/28wdqBaU9lpUxOZ1C1Dj0VmaAic482lXlwXKCRLp9s1lLf
	vtk60KxizEVgppY8qpwOyj0liVU7cLcvntW/QV6vzLAdYn7JgzxBeAq4AFM8CDfcsYF0cRURGzJtb
	74ZfUVKUGSk6G8MIuWjO7bqMpQDFzjjzgJXulZEkv7ayQIoaf0pjnmf0S6AtMtHPD6keKcYEFOe8A
	bYy9qTX3UftOAKa4n37HHQSLMmPSFrG/h+kwoVc8uMQOzZbDA6RV18BjP8Src74jzPyUUd641ABbY
	Sv4H+/uK6qTN4Rp3Hlhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZlM-0004ow-0b; Wed, 19 Jun 2019 12:32:28 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZjx-0003j2-BA
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:31:05 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JCQslr023576; Wed, 19 Jun 2019 14:30:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=itx+N4q2/+O0OHhYwt8mmdIF3dz/cOb8wiZwNAeO4ps=;
 b=VRltqKiVh2cBzw6RCCuSXewyxhUmFuTNrTURF9ZrXy9MB/OaED8Gu77K+QB2lmWEXVFi
 6FqnJn93NmaCfItUKEO5JgDHqO7kiRUjZ98dGsYKRtvhIQ++ZpAYH2Z+2fcM/gs4Kefo
 xviBg7D0tpKv0F32GFbRI/dCP8dRsGYdiFSeJa/qXzAnZNTNYrHPoe44ChqgiWVxN69p
 gVPgREkWTv8v4g2a6Ixow7UODTEU3kP/ovTNneN1KXkG8Sc7tNqAW/xGRa2Z+GUaeySl
 bAbalphLmwsroh76+d7nSvz4oyNxjVCD8hrldLhFGjNws9flk6V7wPgNi/X52KsATwYA dA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t7812uxwt-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 14:30:54 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B1ADC3D;
 Wed, 19 Jun 2019 12:30:53 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 90E6327A6;
 Wed, 19 Jun 2019 12:30:53 +0000 (GMT)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 19 Jun 2019 14:30:53 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.torgue@st.com>
Subject: [PATCH 3/5] ARM: dts: stm32: remove fixed regulator unit address on
 stm32429i-eval
Date: Wed, 19 Jun 2019 14:29:56 +0200
Message-ID: <1560947398-11592-4-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560947398-11592-1-git-send-email-fabrice.gasnier@st.com>
References: <1560947398-11592-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_053101_728847_34D89C44 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 mcoquelin.stm32@gmail.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vref fixed regulator shouldn't have unit address and reg properties.
Rename the label and phandle to "vref" according to the schematics.
Also remove it from simple-bus.

Fixes: 7465d81191a1 ("ARM: dts: stm32: enable ADC on stm32f429i-eval
board")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32429i-eval.dts | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/stm32429i-eval.dts b/arch/arm/boot/dts/stm32429i-eval.dts
index 73ea84d..d79f58f 100644
--- a/arch/arm/boot/dts/stm32429i-eval.dts
+++ b/arch/arm/boot/dts/stm32429i-eval.dts
@@ -81,18 +81,12 @@
 		dma-ranges = <0xc0000000 0x0 0x10000000>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
-		reg_vref: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "vref";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-		};
+	vref: regulator-vref {
+		compatible = "regulator-fixed";
+		regulator-name = "vref";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
 	};
 
 	leds {
@@ -157,7 +151,7 @@
 &adc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&adc3_in8_pin>;
-	vref-supply = <&reg_vref>;
+	vref-supply = <&vref>;
 	status = "okay";
 	adc3: adc@200 {
 		st,adc-channels = <8>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
