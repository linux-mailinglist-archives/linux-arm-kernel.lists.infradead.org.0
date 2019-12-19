Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B00F12650E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZabVwoWsWnomzfXUysOXjGEyyfTVlw8YsVoVQrlld8=; b=TLsGXcrj3qIPqG
	XtLlwF4dRfWM61j67wSmneQfzzJR9k5A9RjPDi5cuDa+lz0G0HI4S/Ss+64s2uzmB0uE01w3JCIOv
	6UOqHnrMLuJYf42TwZ+80cX2CoZNT/u/VlmFhmm+Dm18cgZDnn0jn/rV/ShVMDAB5gb2x3+2XAqdh
	apuVJijyCXuz9QzlaechI8S1uXTPUdz1KEFrCGijMVPnRh8c4cX4zQFpBLarcPCNHaOwtZ/egTJkD
	8Tl94OJTbV/fsbQndA6jt3JfOiSnTlYlbHqj/a10gY9BKoZQqKyEZEM58OaT5+yhv9bX6xPSkBK35
	kMoqPCsufiD4TIrJ1bEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihx0b-0000zE-6O; Thu, 19 Dec 2019 14:42:33 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwzj-0000Dp-3p
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:41:42 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBJEaXFx008252; Thu, 19 Dec 2019 15:41:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=+TMNS6Ntq3CUzFLo/NT+iGBBK0mAQtLkHgWmFbFoqQI=;
 b=lal6XmGxLxVKjIyDoMLoTglCH5JhxiBbQjIr25bHYt6p9/k0TX+FdQl32c5e3EbVhghT
 V9luPYxM4B0y2NjVrtRU48bvdq/LmgQztEClI2ORvqaOuOvGwcK9xF5nDZr/UsYjBZA4
 xByeiq0uXyKuZFxZPCcnOOu+MpInHkYzuVhDnnq2lqDEsIIqNLeQDgduwgbP6Vt9r7gG
 6KshNDv70Ry6T0/QZii7t8aRZyOhnxF1LdJ5zHdAY2YOHOg0e3EitsDp7ToRscyhoJ8e
 +NaAHJ9d2O9zHQQ/uE+DsEY2xtrhMLGSsADZujKUio+UveOBm4Z7Re9OJe7sKpd30nNB BQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvpd1t557-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Dec 2019 15:41:30 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 884B8100040;
 Thu, 19 Dec 2019 15:41:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 617422C6B64;
 Thu, 19 Dec 2019 15:41:20 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 19 Dec 2019 15:41:20
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>
Subject: [PATCH 2/3] ARM: dts: stm32: change nvmem node name on stm32f429
Date: Thu, 19 Dec 2019 15:41:16 +0100
Message-ID: <20191219144117.21527-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191219144117.21527-1-benjamin.gaignard@st.com>
References: <20191219144117.21527-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-19_01:2019-12-17,2019-12-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_064139_474815_EC9B01F6 
X-CRM114-Status: GOOD (  14.16  )
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
 arch/arm/boot/dts/stm32f429.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index dab6351883e7..d7770699feb5 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -80,7 +80,7 @@
 	};
 
 	soc {
-		romem: nvmem@1fff7800 {
+		romem: efuse@1fff7800 {
 			compatible = "st,stm32f4-otp";
 			reg = <0x1fff7800 0x400>;
 			#address-cells = <1>;
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
