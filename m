Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87221C2479
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sj4Z5n+uikoxAQq9dOIEJqPJtBVn4GU2fTf7KHghT/U=; b=RW2F420p52zUig
	Hna4h5ZLGodm9b1fOaT2DrMOOCzjqXRQRx8dsC3/QHynS6NdhRagKRoEPwV5znYWqMPrTcdn0xcdP
	fBY8Z/KQZ6Lhx77yzNrm5N3P9ZtKwB7zyzCr0FWQa6Au8H/iL05GVQHXSeEiJziLG3ks6vAKIUQtu
	/IKaCTCS+Su0bF1xJ8B9JoiF357g1vcjTHAu5o6lNcxbak2BWrtX+e4n2OZ7dorG7OvNuOiS5ansb
	JfCEXdiJXXepSJY8YjbfHNQPH/8j2Msm5w2uIts9IfXMaYmd1JhHWWrx10zmZ/xbD/2jpTBPPxIJj
	zUEHbXLRPHrtd0ac3ZUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExmi-0002nK-Sy; Mon, 30 Sep 2019 15:40:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExmD-0001LK-7L
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:39:54 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8UFVeN2013300; Mon, 30 Sep 2019 17:39:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=rnzvoLapup62xEU3qg28JHDE/fN/lvzvSo1oUmE5lRo=;
 b=BT9GNjVTWL9NwDXsc+iHtjteGOu6IJ6hzEpVXmgpB7VGeWFF2ABx48aftHjMvr50l33X
 jYdUQ+ZixRsAnWCYyaeqZc44Db4zxblWKejI7DvCZv4BmcIkpuWyFf4H2OtVlcKy7wB+
 ba7YjuFq5VFsOMkYzoYzIreCiZF2W6tnIP/tmlOdwbG8sUilYfIrDxuKAgOhDNv/YpNt
 qaoqtzFnZY4KWDxtkoNrJdmqmviPg85c1gZOxFxDkUDhOgZiXlEMGG8wV7Gg3/FKf+Dt
 sFboJc/Pi24f5nhrQR4Jtl1bAOGjoStp+IC0krglyvs5aWbQuAH8xlSkTD13nfBHTQEw sw== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9vna47sj-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 30 Sep 2019 17:39:44 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 3EFF44B;
 Mon, 30 Sep 2019 15:39:41 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 999282A45FB;
 Mon, 30 Sep 2019 17:39:40 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 30 Sep
 2019 17:39:40 +0200
Received: from localhost (10.48.0.192) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Mon, 30 Sep 2019 17:39:39 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <thierry.reding@gmail.com>, <robh+dt@kernel.org>
Subject: [PATCH 1/2] dt-bindings: pwm-stm32: document pinctrl sleep state
Date: Mon, 30 Sep 2019 17:39:10 +0200
Message-ID: <1569857951-20007-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569857951-20007-1-git-send-email-fabrice.gasnier@st.com>
References: <1569857951-20007-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-30_09:2019-09-30,2019-09-30 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_083953_553300_9A082884 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for pinctrl sleep state that can be used by
STM32 timers PWM.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 Documentation/devicetree/bindings/pwm/pwm-stm32.txt | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-stm32.txt b/Documentation/devicetree/bindings/pwm/pwm-stm32.txt
index a8690bf..f1620c1 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-stm32.txt
+++ b/Documentation/devicetree/bindings/pwm/pwm-stm32.txt
@@ -5,8 +5,9 @@ See ../mfd/stm32-timers.txt for details about the parent node.
 
 Required parameters:
 - compatible:		Must be "st,stm32-pwm".
-- pinctrl-names: 	Set to "default".
-- pinctrl-0: 		List of phandles pointing to pin configuration nodes for PWM module.
+- pinctrl-names: 	Set to "default". An additional "sleep" state can be
+			defined to set pins in sleep state when in low power.
+- pinctrl-n: 		List of phandles pointing to pin configuration nodes for PWM module.
 			For Pinctrl properties see ../pinctrl/pinctrl-bindings.txt
 - #pwm-cells:		Should be set to 3. This PWM chip uses the default 3 cells
 			bindings defined in pwm.txt.
@@ -32,7 +33,8 @@ Example:
 			compatible = "st,stm32-pwm";
 			#pwm-cells = <3>;
 			pinctrl-0	= <&pwm1_pins>;
-			pinctrl-names	= "default";
+			pinctrl-1	= <&pwm1_sleep_pins>;
+			pinctrl-names	= "default", "sleep";
 			st,breakinput = <0 1 5>;
 		};
 	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
