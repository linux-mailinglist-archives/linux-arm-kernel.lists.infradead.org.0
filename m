Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73DD4B87E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onxRyucLDSq51LOhhBxTDCMXp+weKJzB+pgQugijy14=; b=H4K/Y2IaGTKlWx
	I8SPWH2U0jT1633/eODqUbtFppT9Xb3cPaTIFqhI7dWivVPes/u6aHbOeKlVP//4FweadONgwsfHt
	TDfGbFF5V+CKcMCXXj/QS8l1Ssz1TAPw2joMqmhq+0KOAJ150j8M+VbCdowbw7YOoQvn8HWTswRRd
	/A5I+9Kqk1/L4ZnIH/iqoa3PNGET5EwVpSrGDOwXCwz0i7hIClvKVQkqcUUw9NMy0dQ3gEy82IN7y
	4auaACW6P27HaC1Kg8jh5kXTHCax6wJ+ehygzyozFNn1H50MRL1lkqb7DIytKOVvzW6Nm6ypwQT0f
	kU8C6XZoC/ScUmFC1Nmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZka-0003yk-L6; Wed, 19 Jun 2019 12:31:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZjx-0003ij-B6
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:31:03 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JCQsls023576; Wed, 19 Jun 2019 14:30:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=1IKlN0lkX6OamQA0QpTf6frKqVaPaxAimtqxa01cDP0=;
 b=eQ7K9WfnRExhJ7fuAwpPxKZeF30fuldkU4Prr3V1ve4TRf7RBIg6zroXnUu6BioHtxlg
 xN306/i9RPorLmthNLQgVi6YVqDO+PVvaP9mcfM3T7dkfi82lXCKOKWefGd4j+K6iU6j
 vCtZfMrtaOAS24zevMbnrmUkXy/R2sxY8yQE4d0+LVkPS5wJfRZ5V/MHKQyP1wnkyAKB
 Ttb9qb3GH4yQzhxUcRrJ68duS/X5CzdOgxS4X+cLmAlE3l0uaettcf80vJyJv3uu783K
 KRJSZ2QdIroZfyI8cWLmkmH6aJA6iUzhnRcYc2vE7CyQO+DDGTT+nN1PhAjORuyXRZaN 8w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t7812uxwv-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 14:30:55 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6D08231;
 Wed, 19 Jun 2019 12:30:54 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4732727A5;
 Wed, 19 Jun 2019 12:30:54 +0000 (GMT)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 19 Jun 2019 14:30:53 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.torgue@st.com>
Subject: [PATCH 4/5] ARM: dts: stm32: add missing vdda-supply to adc on
 stm32429i-eval
Date: Wed, 19 Jun 2019 14:29:57 +0200
Message-ID: <1560947398-11592-5-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560947398-11592-1-git-send-email-fabrice.gasnier@st.com>
References: <1560947398-11592-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_053101_722468_A5A09C08 
X-CRM114-Status: GOOD (  12.35  )
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

Add missing vdda-supply required by STM32 ADC.

Fixes: 7465d81191a1 ("ARM: dts: stm32: enable ADC on stm32f429i-eval
board")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32429i-eval.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/stm32429i-eval.dts b/arch/arm/boot/dts/stm32429i-eval.dts
index d79f58f..ba08624 100644
--- a/arch/arm/boot/dts/stm32429i-eval.dts
+++ b/arch/arm/boot/dts/stm32429i-eval.dts
@@ -81,6 +81,12 @@
 		dma-ranges = <0xc0000000 0x0 0x10000000>;
 	};
 
+	vdda: regulator-vdda {
+		compatible = "regulator-fixed";
+		regulator-name = "vdda";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
 
 	vref: regulator-vref {
 		compatible = "regulator-fixed";
@@ -151,6 +157,7 @@
 &adc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&adc3_in8_pin>;
+	vdda-supply = <&vdda>;
 	vref-supply = <&vref>;
 	status = "okay";
 	adc3: adc@200 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
