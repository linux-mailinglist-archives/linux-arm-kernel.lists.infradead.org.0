Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D244B5A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:55:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84jNA7zva5GsSdtx1MQL/Ho6Rb0y/AjKKKgdjJICs70=; b=CwinnENAxm+zZU
	rSzesoYT1oEQSbshzO+Y7HH6K3w/5coluH10otXWkvCRYx3wb7PDQ+oTDaZFrabDEz2kN5+TqVrP/
	zN5yWhlj+AxQTIOsnx3ifzsL0XROUhKdPBS5pGy7++0G4QJYuls0FJ30OEX7E0n8eBZVeaPMIgMtv
	nprsbuu261PitrjNtfIB+TQGO3yJ9NFaPHqbTIgshkTNXu0uMQMXqPKM0fDM6rA+MEj6TxzwVqova
	nGSCDVZeHgDIvg09+MDi/R6bmxoLnohuaeNfYg/eCWOQnD8Wg80AGNHtgQPSvjiuV8cr/kQ8Ff04r
	8XarWCSVL8+L/lhDpr0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXJ8-00028v-VJ; Wed, 19 Jun 2019 09:55:10 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXGc-0000Bf-SQ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 09:52:40 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5J9ktnT028226; Wed, 19 Jun 2019 11:52:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=I+Fy96rJlsG36GIKvoePX16L+1iTpw0s4H1f1l6+Eco=;
 b=fdI2e6NYsrnpZ5ZCM8EEpGproDk50ozyZso/EUdyZ9sVcoP3ECFuUkK/cWpwKGCGtR8F
 2RpOe3PNEaHfT06CRoQ98mbfJl41GzWtO3nZ0WqOM8OJ47PFmcnMUvNVvrdJmGfYkofN
 45ZsAJj1IUH6UoJkBztD/5xKlAbk9AU8+jEA1nIHkejv8audXwPPNpJJMdAqk+Rk85o1
 oPZIyA8KDImRb6OAKKjEFE5T73X0LY8tcFxOllPo0nIpF6rE70xHIbF/jSkdAuiasrJy
 LNn2ucWfF1/3tL26FJ1JFzcfJ4GryY1CaY7paCG7AkDtZYc1wJ7j4l4Dn/yaUEUgeNZU UA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t781uu6d5-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 11:52:15 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6F71A34;
 Wed, 19 Jun 2019 09:52:14 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 42EB024C7;
 Wed, 19 Jun 2019 09:52:14 +0000 (GMT)
Received: from localhost (10.75.127.47) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 19 Jun 2019 11:52:13 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <thierry.reding@gmail.com>, <robh+dt@kernel.org>, <alexandre.torgue@st.com>
Subject: [PATCH 1/5] dt-bindings: pwm-stm32: add #pwm-cells
Date: Wed, 19 Jun 2019 11:52:01 +0200
Message-ID: <1560937925-8990-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560937925-8990-1-git-send-email-fabrice.gasnier@st.com>
References: <1560937925-8990-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_025235_248782_9B9AA40C 
X-CRM114-Status: GOOD (  13.85  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benjamin.gaignard@st.com,
 linux-pwm@vger.kernel.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

STM32 Timers support generic 3 cells PWM bindings to encode PWM number,
period and polarity as defined in pwm.txt.

Fixes: cd9a99c2f8e8 ("dt-bindings: pwm: Add STM32 bindings")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 Documentation/devicetree/bindings/pwm/pwm-stm32.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-stm32.txt b/Documentation/devicetree/bindings/pwm/pwm-stm32.txt
index 3e6d550..a8690bf 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-stm32.txt
+++ b/Documentation/devicetree/bindings/pwm/pwm-stm32.txt
@@ -8,6 +8,8 @@ Required parameters:
 - pinctrl-names: 	Set to "default".
 - pinctrl-0: 		List of phandles pointing to pin configuration nodes for PWM module.
 			For Pinctrl properties see ../pinctrl/pinctrl-bindings.txt
+- #pwm-cells:		Should be set to 3. This PWM chip uses the default 3 cells
+			bindings defined in pwm.txt.
 
 Optional parameters:
 - st,breakinput:	One or two <index level filter> to describe break input configurations.
@@ -28,6 +30,7 @@ Example:
 
 		pwm {
 			compatible = "st,stm32-pwm";
+			#pwm-cells = <3>;
 			pinctrl-0	= <&pwm1_pins>;
 			pinctrl-names	= "default";
 			st,breakinput = <0 1 5>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
