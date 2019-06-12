Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35BA41D9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaPitAxGg3XWHg1Uc+P3TtFvl3S9KMLDItckSzPyQNM=; b=JV0pCZiAkulxvZ
	6Sjc5y2QnavWNpaMpkqnQDKEBE1gUrlfjbUBMwvCbdzc+qTpV9dbzDu59/Tp1B8RG25fyN7mLsLPo
	hYvNsoRWzZ5lixfVV1DFykbo+8qHS9q5k6grSuW6u/erY3TZ3ZWGM0ZQ8oqkAfR/D0dKRUiJ5oItw
	aOm/aeiCaFLFtaM48b+lxU+lM5ll/WavV6qOgby53rMYH7fx9OlDG3dv7B/SVaxBpMMBS/tw7AZSZ
	mAWwY0c5QknmeqpNIAx089Kt2IOy4WdJJ7z9K4Fwz8G7sIw1WLKwJsWdtlfJW406llHYDyIR3JF7s
	hSkLWlF2B+l5dmeQzBgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxdu-0007fh-Ip; Wed, 12 Jun 2019 07:25:58 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxdC-0006ts-Fg
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:25:16 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5C7LR7t019818; Wed, 12 Jun 2019 09:25:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=6qaOOTyHrNsrJS+2fQ2Aj0gbIenq5jh+c1GY5P/uHDE=;
 b=MUnuUO/e+4Qbi+4GZnRij5KVKMn9YM7lSTx48TQMb8WuDgmFf2o8XBro8X4z0//5qzxx
 aWt1I19eL0QkAxGe/6i4wFT62Ra/vtZO6M1FHFXEe9gXK9fnFwDmyvfMmPAHX9PorDiJ
 pXwNCxa/AaV4YaycBUN8GfVUBcLK84DKHNH4ncL5lSEXXahfjd2ZkHlGhAnYx6FQ2hpc
 N2Xr38gxFGDbA0E5YcBEFYTYQaqR6PP93elEW9fM9Ea13lR1Tr2l2f9RjTXyjgDycz5+
 QCSADeMa5RgZiBODdEIr1fz9Weo4yd5+m4flS1VZHjqQa051MiD3KtLpGCRdcMbtQBCo YQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t2f8e3ks9-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 12 Jun 2019 09:25:01 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5E28531;
 Wed, 12 Jun 2019 07:25:00 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 32C6A164B;
 Wed, 12 Jun 2019 07:25:00 +0000 (GMT)
Received: from localhost (10.75.127.48) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 12 Jun 2019 09:24:59 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.torgue@st.com>
Subject: [PATCH 1/3] dt-bindings: iio: adc: stm32: add analog switches supply
 control
Date: Wed, 12 Jun 2019 09:24:34 +0200
Message-ID: <1560324276-681-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560324276-681-1-git-send-email-fabrice.gasnier@st.com>
References: <1560324276-681-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-12_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_002514_923276_713ABD2D 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On stm32h7 and stm32mp1, the ADC inputs are multiplexed with analog
switches which have reduced performances when their supply is below 2.7V
(vdda by default).

Add documentation for optional vdda-supply & vdd-supply that can be used
to supply analog circuitry (controlled by syscfg bits).

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
index 8346bcb..3af48b9 100644
--- a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
+++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
@@ -46,6 +46,12 @@ Required properties:
 Optional properties:
 - A pinctrl state named "default" for each ADC channel may be defined to set
   inX ADC pins in mode of operation for analog input on external pin.
+- vdda-supply: Phandle to the vdda input voltage. It can be used to supply ADC
+  analog inputs switches on stm32h7 and stm32mp1.
+- vdd-supply: Phandle to the vdd input voltage. It can be used to supply ADC
+  analog inputs switches on stm32mp1.
+- st,syscfg: Phandle to system configuration controller. It can be used to
+  control the analog circuitry on stm32h7 and stm32mp1.
 
 Contents of a stm32 adc child node:
 -----------------------------------
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
