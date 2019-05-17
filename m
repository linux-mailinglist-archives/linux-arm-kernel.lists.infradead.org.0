Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B56621582
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 10:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k717pENxCl5O6rg3IJ+USwIpw916yiSMN///E35ps6A=; b=RRYimpMYjG26XU
	XVxSGMk+d/zPCGmChqJat6lq991QaSiAZ0fgvT/YyUKmmorxZCQNHqmRn7NO5E0/7waAkY0nQ9E1p
	lhyeLBkem2kJvW97zYdV2rVW0hrLXGvf74ZVnuN8tx5YBHyUBmSp56cmaKUUDvNanHAT/6M9Uy9Ub
	eHdKtzhH0mvgWjf69S8CTZy8BCDhfBOM1zopKLxcbwvRXQmNOyAgvs2c2TjMCpbEQ9E5b578uc1CG
	6mb6QJH8sxPHYvyP2ydhw7BIxpRi/SMiJPovzbMZtlWOR90Y5atRnvPvLvcMO4T8QiF91y+9Ehziw
	ZOCVKBcXEXOY2+cKCeUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYRj-0007MU-8E; Fri, 17 May 2019 08:42:31 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYRb-0007LI-6C
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 08:42:24 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4H8bpvT025572; Fri, 17 May 2019 10:42:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=s7I1bjiMwL3TR988ztsOG22VK5hebk59T4O+tHV5tM8=;
 b=kqr2KWTVCs+bp7uOcvrNKToT5YR3GR5XrY935KDnA2QaSyHk4eFFQHiEaqlHBDic1Ld1
 ch7audgRWdsLJLVci6wneUAtTBWoQl6ZaKYk1fRAjI9GehvNGbs266aqrAPK4V+Yu26c
 G4tOyUu1wGEhjXn4DUx3pqzfYDHWrsaD7sBB5NfWSRc2Is5WtbkXv8BK6W6bRIuP7hRo
 TxuIYjKIySq7lgMVShodiHxaP78GaW6Vz7WgHsqeFZKy1vuwaC0TKYv96MRAgpOjeOj5
 LOMGNOWDLjVIqdFt98BdGrCEA+CovHStVkWYuOtoj4xIn7kUeOchZVJhQsjNiZQpBw01 1g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sdkv0cf0k-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 17 May 2019 10:42:14 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 572AE43;
 Fri, 17 May 2019 08:42:12 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C3EE52473;
 Fri, 17 May 2019 08:42:12 +0000 (GMT)
Received: from localhost (10.75.127.48) by SFHDAG5NODE2.st.com (10.75.127.14)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 17 May 2019 10:42:12 +0200
From: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Lucas Stach <l.stach@pengutronix.de>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [RESEND v2 1/3] ARM: dts: stm32: Add Vivante GPU support on
 STM32MP157c
Date: Fri, 17 May 2019 10:42:06 +0200
Message-ID: <1558082528-12889-2-git-send-email-pierre-yves.mordret@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558082528-12889-1-git-send-email-pierre-yves.mordret@st.com>
References: <1558082528-12889-1-git-send-email-pierre-yves.mordret@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-17_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_014223_614421_CCB2B58C 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Append Vivante GPU DT configuration.

Signed-off-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
---
  Version history:
    v2:
    v1:
       * Initial
---
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 6ce75f6..3310aba 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1136,6 +1136,16 @@
 			status = "disabled";
 		};
 
+		gpu: gpu@59000000 {
+			compatible = "vivante,gc";
+			reg = <0x59000000 0x800>;
+			interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&rcc GPU>, <&rcc GPU_K>;
+			clock-names = "bus" ,"core";
+			resets = <&rcc GPU_R>;
+			status = "disabled";
+		};
+
 		dsi: dsi@5a000000 {
 			compatible = "st,stm32-dsi";
 			reg = <0x5a000000 0x800>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
