Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123CF5B69B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4el5kfEnP/TaCfIvX2Gvy+MdBTAUDtuqi15jr9Lrb4M=; b=orEHwI38xm9f6e
	sXzGlIl8/KY3bmLpn3P/FyOHuZDnlopy/vTDQmutcsahUL6UnrgY18j/Tia6fm0ujnF1CT7l2VPxd
	kTwiWnCxqoAJEt7C7OQdFjosgwO/nPRG8Gpm0RrSsRV7KS46r2zsY96RYKfEv9zki0UN2S/nwncLA
	NAFx/LRo7RbB83rajxXkSG3eYdQWe9wl7zfqKKOwJpZRc7G02bpPqycAeGin8abY1O+ZCiClnXNhU
	LuzXlCzj7yrJaVGXRTjUCBuI3jRd04ZBRhlKUIYCAyhEKFlN7fMe2ZhysmHuv1J9/XuoR4RRRH6xj
	B5eSn6r5ym/irtGCkqLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrTG-0003j2-K9; Mon, 01 Jul 2019 08:15:30 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrSr-0002Yh-Ap
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:15:09 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x618CSaW000667; Mon, 1 Jul 2019 10:14:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=aYrirpoqz+aG/SQ1qsY5AmsZmle4+vE9RtqR8rZ9598=;
 b=wbZyeWZMH6xYzzqd5+MD4s9r5GEhFX6CQwoReQy2RJgamMa6lmh/+ywVJnPad1P2oVmV
 QLF+aa/JnO+RFMI9p/ZA8HKEFc2RFAF8JPm/JvzGez+slysnzB9C13y8IOf8oHMXd/D1
 t7bTezEK/kZE9xy8krhoqzZcNN7or4ljCToecm8j3YJdVL4ERhcUsb37JQKSc4vxcAYa
 /w4gJQFU2ZCQcuAJWi+2KUMIpGOUKpIbeHeRWWwESfx3wLxvLaUHr+3Xl4jP58IXTJdZ
 qjWudvbYYOW9eZqsrXOcTx5QFOvYkPq41+kpxU+3gKDJ/U2TNRsRZ/uq8um1klb5+2WX wA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tdwrukjmh-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 01 Jul 2019 10:14:37 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CC18D3F;
 Mon,  1 Jul 2019 08:14:36 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 862B21C0E;
 Mon,  1 Jul 2019 08:14:36 +0000 (GMT)
Received: from localhost (10.75.127.48) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 1 Jul 2019 10:14:36 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <broonie@kernel.org>, <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
 <alexandre.torgue@st.com>
Subject: [PATCH v2 4/4] ARM: dts: stm32: add booster for ADC analog switches
 on stm32mp157c
Date: Mon, 1 Jul 2019 10:14:25 +0200
Message-ID: <1561968865-22037-5-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561968865-22037-1-git-send-email-fabrice.gasnier@st.com>
References: <1561968865-22037-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-01_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_011506_842141_1F645DB5 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Booster for ADC analog input switches can be used when Vdda is below 2.7V
to get maximum ADC analog performances.
Add booster for ADC analog switches on stm32mp157c.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 2afeee6..2dd5162 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -109,6 +109,12 @@
 		};
 	};
 
+	booster: regulator-booster {
+		compatible = "st,stm32mp1-booster";
+		st,syscfg = <&syscfg>;
+		status = "disabled";
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
