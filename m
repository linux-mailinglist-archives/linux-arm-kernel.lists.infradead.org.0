Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C12D122785
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:23:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaPTGpnUv4rIWOnfciewzXjXc+WbS6ZylaiMJgf7lsU=; b=GuG2pZ1ABpmNYp
	ztDvIq9Mkla/iAc0kJTtFsV3NYS4vZ4KmAtwCemFlxSUaBqPadxcwFRMIrZr/ykdTlnKRI9VTlKsD
	rrt+H7+uM9qsCUh+RNV/PTTzHTM47AVqYYh1TRdlaBzFvqmHVk6yvy1m8ttuhysR1WvhkdgE0FzIu
	PwelZiOm0rWz6pKJ9U57pLiSArOddQxqEysI8hum3fqgC3n1SBoEd3IKuo3k0S53U5a4w4JD4a3kJ
	6S+2ZUQ8P+GsKTEdByoluqtyouupF0Z2c7XbZjw02lCGR4nDKpYi+roAsFQNjehyb63LhS5Qx5z/6
	OBFhZ2K92JKohr3QVzkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih94c-0000hX-1m; Tue, 17 Dec 2019 09:23:22 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih93u-0000D7-Lc
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 09:22:40 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBH9I2CL021245; Tue, 17 Dec 2019 10:22:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=XY+AO+ijtCwD9TA8XVIFqwXUmtOGb8Yzs2oMpr88O8M=;
 b=N6zOeVrAP7mt0YIYyWW2DIBsgJm5IzDQIJj+rfzumUbRlOsEbOp8D+qwTKTT7mFKJSWe
 3+I5XNsGGVOVHvnA2liZq0fbGdnO5l96nuGYND4bPXU+PNl0jUhT94XYZNuqw/dSoZOo
 kdjtF8zVeu2+awx1/v1eNtpCH7HXEjzm5qJdW5hraQS6lpYVc/ujHmgPcrYsmr20szmv
 y/zd2GEdUehJquFmsu711PepSGGd3uR+AFQA9g46TCpufUyAsWz4y4BYIqe8WmYWK1HD
 K2x1+ZEA7dzgRL+HtZd27q9uUvvbf/4/QDNiKByAfpnoPI82QkkaoBkOXVdnl9Qh5Bn7 Fw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvp36x07q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 17 Dec 2019 10:22:34 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B003310002A;
 Tue, 17 Dec 2019 10:22:33 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A42902A64E4;
 Tue, 17 Dec 2019 10:22:33 +0100 (CET)
Received: from localhost (10.75.127.48) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 17 Dec 2019 10:22:33
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 4/6] ARM: dts: stm32: fix dma controller node name on stm32f746
Date: Tue, 17 Dec 2019 10:21:59 +0100
Message-ID: <20191217092201.20022-5-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191217092201.20022-1-benjamin.gaignard@st.com>
References: <20191217092201.20022-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-17_01:2019-12-16,2019-12-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_012239_009789_2FE7DE50 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Modify dma controller nodes name to fit with the standard naming.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32f746.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
index d26f93f8b9c2..ed222577f6da 100644
--- a/arch/arm/boot/dts/stm32f746.dtsi
+++ b/arch/arm/boot/dts/stm32f746.dtsi
@@ -587,7 +587,7 @@
 			assigned-clock-rates = <1000000>;
 		};
 
-		dma1: dma@40026000 {
+		dma1: dma-controller@40026000 {
 			compatible = "st,stm32-dma";
 			reg = <0x40026000 0x400>;
 			interrupts = <11>,
@@ -603,7 +603,7 @@
 			status = "disabled";
 		};
 
-		dma2: dma@40026400 {
+		dma2: dma-controller@40026400 {
 			compatible = "st,stm32-dma";
 			reg = <0x40026400 0x400>;
 			interrupts = <56>,
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
