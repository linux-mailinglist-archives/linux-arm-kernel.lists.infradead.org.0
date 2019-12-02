Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 890BC10EBF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 15:56:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKzs/mtJUD/+gLis8WJAKThHbHSvW0XWLIoTLyQ7v8E=; b=U+K2eZ12qtOhtg
	Rm5BlMCmh3sDPaXkpIeOdrG7BGhzUP8XFbBskrfGecB1xNI/pyAHzyZ98AgWs8Lm0a/h/d0XCH+lR
	EO/TBABRqN+q9r0AKEfrK7cYcp246jU6WE1zlYt3cUkjfZINZBn1AczDU4e8az6YDNL+6DFzQ1Qla
	ZDIW7CrdXFH+u3OFH7H8JQfTMomDSHTFr/SWQck8xB5qPRUIXMwTH083aiIZ7fYfktfIkja75YbjD
	GS3yr8oLDmzD0sSR/k0HsLVxRU3u6v1vToP2Jk1DCMGbOan104QDLOczsmTGBjam0fM2iXOncqzMt
	gZqLs4OzNOOsG1Vlngfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibn86-00043N-UB; Mon, 02 Dec 2019 14:56:50 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibn7a-0003jH-Sk
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 14:56:21 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB2EqgfL006872; Mon, 2 Dec 2019 15:56:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=gI924+1fX/eN9VvvjEAM5fscU0gZdxA9JU52y8s8fgE=;
 b=Xo8s9up8sEF7wBPbyVen2UUCYA+puQb0tyNztxpRQnv4PwgJeM7F4itfjyXHW7QbSHOr
 DcrGbKlpdWHyr1awMPTPc5QeF3gTpQQsCiuqwt0sk8eNBwtjtUplrnzcYiIbVPrUf1gC
 aP5+ZgnjDuw1Xr458A1ebvr0mZJOPU8Zf3xBM4YFz1VjZ+gLj1pwIlXPcLR/g2ZnRgNs
 TIj6vwBygsAeElyQPBlgFFLf62nvaSb8ABGkZ1fdQJDMLJq6gjqYmKZkEoEIxX1VeCT2
 7Y/QGRFo/O2HSFVMGH7rgOE3uYBi8gmHmMRStWOMYA7RgdvBUy0Zr3G0jAorjIK26zPO SA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkee9they-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 02 Dec 2019 15:56:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F0D28100034;
 Mon,  2 Dec 2019 15:56:10 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E253E2B1897;
 Mon,  2 Dec 2019 15:56:10 +0100 (CET)
Received: from localhost (10.75.127.48) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 2 Dec 2019 15:56:10
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <alexandre.torgue@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH 2/3] ARM: dts: stm32: remove useless clock-names from RTC node
 on stm32f746
Date: Mon, 2 Dec 2019 15:56:04 +0100
Message-ID: <20191202145604.28872-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191202145604.28872-1-benjamin.gaignard@st.com>
References: <20191202145604.28872-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-02_02:2019-11-29,2019-12-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_065619_372630_7CE6403E 
X-CRM114-Status: GOOD (  12.43  )
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

On stm32f7 family RTC node doesn't need clock-names property.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32f746.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
index d26f93f8b9c2..3a8e2dc1978c 100644
--- a/arch/arm/boot/dts/stm32f746.dtsi
+++ b/arch/arm/boot/dts/stm32f746.dtsi
@@ -300,7 +300,6 @@
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
