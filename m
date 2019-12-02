Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2410F10EBEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 15:56:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f11KyAw/2wCqdHFcDygS8SJBv2Y3znz4pP+Css4SxDw=; b=AApEKT4aQztt+n
	CGsCuwTNny+R0VBCSls73wSMbBD2i3fkktu65okn1nSRZCSaXrRYelw42gZb6kZWwcflnI1xW6Lmj
	NsSzyzw2b2HXf47TK4dX0vo0hIqmlLNp9wESESvCzpZesTn+NINOPsLl8VNNRdkTyj2J/dWOXUczs
	JaOr/327sLq79R1/L99qQZdz33S272S1q+uapY8joi8gTHx3bvR77WewSypkVSWHjWmSzf7yq5fic
	js0Mv5e+jDn8uqYdbS29vkMklzzJo8zpSkKYmGcBULgzq4bVVf+VR/l+Bp0DpJj2ERG+tKHPKf8hD
	vX/EplI1hJwWDI+CA9og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibn7n-0003n2-Dr; Mon, 02 Dec 2019 14:56:31 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibn7a-0003jI-SC
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 14:56:20 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB2EqXHC018717; Mon, 2 Dec 2019 15:56:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=sSH4hYZyJ+fBuXPL7aX02qrszJdNB5CLd0reHrC4urg=;
 b=P2B78HtGWevh/e/1NZPL45ZzeOwIKlzmMdv06ho3x/wLHZXyX09QFV82aNPLFWXDH5O2
 9bu3CwHSDJPwfvB6zEd4P+7aA62gD9hCUExPyp4R8rsgreBbitV+n3e//SlQXhCNo7gi
 vpqDAXayotOQr4TBNAS8UvoKfmoqWQJKg92XykaC+Grx9v2DTjbTkAY4kBQJdAQrx3eP
 mXWzjz+16yLI3wyGGi9ujoF8ojuYPHJ5G+I+hYbGc6LFMHq2Kkg4o1B9uF+4m9q4BBzw
 76+MsEcFnajFOUa/0ISDeRJ6Si7oDbnTXsTeGp4bn2Z6EkLpNOSxonrSlaKhE+2sAy/G xg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkg6ka6fe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 02 Dec 2019 15:56:10 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 566F910002A;
 Mon,  2 Dec 2019 15:56:10 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 42C582B1897;
 Mon,  2 Dec 2019 15:56:10 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 2 Dec 2019 15:56:09
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <alexandre.torgue@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH 1/3] ARM: dts: stm32: remove useless clock-names from RTC node
 on stm32f429
Date: Mon, 2 Dec 2019 15:56:03 +0100
Message-ID: <20191202145604.28872-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-02_02:2019-11-29,2019-12-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_065619_369148_4BB78C59 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On stm32f4 family RTC node doesn't need clock-names property.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32f429.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index 5c8a826b3195..ac9caaf4cf51 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -318,7 +318,6 @@
 			compatible = "st,stm32-rtc";
 			reg = <0x40002800 0x400>;
 			clocks = <&rcc 1 CLK_RTC>;
-			clock-names = "ck_rtc";
 			assigned-clocks = <&rcc 1 CLK_RTC>;
 			assigned-clock-parents = <&rcc 1 CLK_LSE>;
 			interrupt-parent = <&exti>;
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
