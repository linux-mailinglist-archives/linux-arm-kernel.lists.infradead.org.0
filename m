Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48081D188C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hv4pVGv/iiim2+NNZ3U8TS2M/NHES6bgLhm2TFeJMWU=; b=j6gg65DDMx5iAO
	qS7PLqIZt3Vb+aGpBMHllROp8MQHLuhPYVeduzWiUlQYt+N7giFQ2Vap2vcv+3uzLiOjIEqcaIXid
	V9D0Mdo/we0RUy5pL2WvK1qmMrONwnezlarGSiXFqLaHu02uM5tAFdMB178VL5iBa6UHNOHlzAzUJ
	uljb4eRwVS+rXIKmhGDvI6V5GxdzfdO7TvfDO1pvccgj09KASPZn6BP9G2au5oQ1kC5bxwGXIK/N9
	FPL7Yo/ykrbIf5NXczVX3En5Ofs5t1+xFCRGlOmsg92plNAnr4heJhTITmkJ0x5hMreF8ZnJ8z2U/
	9QZi9M4MMKFb3FGatMdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYstp-0008Ez-3R; Wed, 13 May 2020 15:02:21 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsrV-0003tF-Kf
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:59:59 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04DEwEa0012652; Wed, 13 May 2020 16:59:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=YKDaVDrP2xQNZLQzpmWzpO0+LvV9JwL1ShvubDmLjTg=;
 b=KEWtE9DJ7xxHgWkTGUhfZtXbV9C9E4/GLgnfcf87m4lFvA/00B9DJOFrQa0+qCUW7h9r
 CYT5MRQxYWC9GDcNwsNcMqBQON8V2hUPdnTy5MXyqYoiIVr6F1nyLhO5zmlCCR/XnLUY
 /dw+zLhvk0iiauPFWN4Z95IeUDFoR4Il7lmeAQDRpGzMmo//vgBxMx5xb6fxw/j19NWM
 QiOCyMa9e2ZMCMZOZtZPWATIRSoBVx766XYzqKB08Na6cFHvvs4/86oZMrc4A1tedQRr
 icLUpI5cgb3Py6W5zujWsZnku5n4idrslsEpnIHN47a5ueZrJdMH90vsrqHcOaNbrzQa oA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vn5e3h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 May 2020 16:59:51 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8C9EB10002A;
 Wed, 13 May 2020 16:59:51 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7DB8C2D3006;
 Wed, 13 May 2020 16:59:51 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 13 May 2020 16:59:50
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH 09/15] ARM: dts: stm32: remove useless interrupt-names
 property on stm32f743
Date: Wed, 13 May 2020 16:59:29 +0200
Message-ID: <20200513145935.22493-10-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200513145935.22493-1-benjamin.gaignard@st.com>
References: <20200513145935.22493-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-13_06:2020-05-13,
 2020-05-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_075957_980000_32F0E369 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Driver doesn't use interrupt's name to get it so remove it from
the node.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32h743.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32h743.dtsi b/arch/arm/boot/dts/stm32h743.dtsi
index 05eb02e6d083..e1de90ade786 100644
--- a/arch/arm/boot/dts/stm32h743.dtsi
+++ b/arch/arm/boot/dts/stm32h743.dtsi
@@ -487,7 +487,6 @@
 			assigned-clock-parents = <&rcc LSE_CK>;
 			interrupt-parent = <&exti>;
 			interrupts = <17 IRQ_TYPE_EDGE_RISING>;
-			interrupt-names = "alarm";
 			st,syscfg = <&pwrcfg 0x00 0x100>;
 			status = "disabled";
 		};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
