Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9246F5152
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPdJBH9BTpT+2povT6I0141NEzITUt87n/G1HFLHyLo=; b=k01bVuzUSI+Wr/
	kvWGJxnDtq26rxohAd5JxlNq9aUdSeqjlqEi9kYNOL+a7AdJQU6pWUMBuyP/wJ2u7cSaX/OwJFSC5
	W3Grpbi2pl0B52wqBXcdgVcRQ9V2EOpGz1FdS9EC/LrBar26gYpETriZcmA+mJYkRQeRclMse9NIe
	cH9q5Hny3pWhSoU3ImXRwzPxPXd2yuZWwDs1xPZekk4asRFH2KA34NXXAP4oAxf0Vwm222nMv6IBG
	hrebExQ7x+Oq7Kqfpta48twd8IV+bdw+xF9hf6lz8IkP8NXQkCKT6RmgD+sq1rTZ2tlXcN92bSj1y
	CKhe2Vvuaa0SKN2pJKjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7HC-0001Pw-TH; Fri, 08 Nov 2019 16:38:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7Gm-0001Ex-St
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:37:58 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA8GMEND032766; Fri, 8 Nov 2019 17:37:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=yLObshd9hzUy4IWMSCmF/oQKkuoRU3dJhdKjXSa8dCs=;
 b=x2eGZ2fBJ4xnI/zqAq4URJLuQMfMCttuVjYzzNxK/JfOqT3xol5soiW//M4Y1dZdiko2
 JxIhkxJGOCzOxfSezvc7vHvtPM9R24N02ptS12C9o+78Yq5ryFO4n5wqpEletTEeOvG7
 MWGBctp8zWQNTo5QgfTSKO5s3BSiLLBVZ17E07dobHSScctgfKHx09qPe+sTBwi0RKEy
 wAgCObqQVfJAqrAbowokBg2HPME7IcRx/Ghr2BA4fz2fYljcOQM7EVCEfML147j9SZsJ
 nbbhFRlVSZCU1rj/55sfa3Ro1Duy4/M/hxeTs00B392/esR43YMiY7hfPIZ8pICpwjRl PA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w41vmvpvu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 17:37:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CC658100034;
 Fri,  8 Nov 2019 17:37:48 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C10492C38AC;
 Fri,  8 Nov 2019 17:37:48 +0100 (CET)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019
 17:37:48 +0100
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Fri, 8 Nov 2019 17:37:48 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 1/2] ARM: dts: stm32: add ADC pins used for stm32mp157c-ed1
Date: Fri, 8 Nov 2019 17:37:38 +0100
Message-ID: <1573231059-395-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573231059-395-1-git-send-email-fabrice.gasnier@st.com>
References: <1573231059-395-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-08_05:2019-11-08,2019-11-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_083757_214825_3E50CB3E 
X-CRM114-Status: GOOD (  12.58  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define adc1_in6 pin used on stm32mp157c eval board.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 1e45b75..41cb211 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -137,6 +137,12 @@
 				status = "disabled";
 			};
 
+			adc1_in6_pins_a: adc1-in6 {
+				pins {
+					pinmux = <STM32_PINMUX('F', 12, ANALOG)>;
+				};
+			};
+
 			adc12_ain_pins_a: adc12-ain-0 {
 				pins {
 					pinmux = <STM32_PINMUX('C', 3, ANALOG)>, /* ADC1 in13 */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
