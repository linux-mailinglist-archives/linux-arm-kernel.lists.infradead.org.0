Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077CDE88A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:47:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJ9XIpurJRGGyBIjc3ELj3gqJDTzXSS+heKcHsEBjMY=; b=BzqKitN+33SP31
	js9et1BUGN1zHlUFpKsjktkygp5yK2urzfvHm7ab9PDHH4Rv7C30601bYSv+zvnbFm3Lk2p1NJiMX
	NJ/ME41EB3aC+71FweSJQbai1dtwGaIC49ZZSAfLqvFj9hb4Qg+xRA9vpiG5YpifBK5tOiCk9XL8L
	7+3WKY0asfjNfo50YdU/00JMfnAOuIokLzYVBw50alvTcGjbsXmbWFvzb1GIirc/nn15Uz7cW/eyY
	+MyD2UrQEqfxNSuqgLM1GWgq3QUPn/R6v/0XheOCYY5jaMtp5VH0vN9EWY/1YTllZGp9j6EqtJjyC
	pjOl3QIsDwIkJaJwDbCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQuY-0006sp-9Q; Tue, 29 Oct 2019 12:47:46 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQtw-0006Zv-KO
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:47:11 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9TCfsns022083; Tue, 29 Oct 2019 13:47:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=jNnEqN1hFt8/AY3yeOnojB7iTitMfqt8Vkof3+I9CM0=;
 b=k0yB8MTBiS5GhfB1oCetSvS9Pwmls7m8rGZ31EQfCShN0wtKetCx2qvyB2Mi/FmFieMm
 attvb4hBtJcuSQHf+MRe7ceRhHhb2IKTmnwS6qc3kkDmCN+igVCbjr8snn+5Wy2XZJfn
 czOh2x12x7gnhBi4sdrQMFSOZyJEEuXyA5RsU82U0EhTUv5QdPg7T+ToLaXSdyBZ/g0H
 BekDS1mWvQt7ilB4MtGsC4NVg6T9Uim6P1Za+yBYYOeZdZNJZKcstfigPEpbKYuQMepL
 eO8R6HvkMSsus+YjwatBmLCRdFNdIIe4EQo8mVgTAko0W5GEpaobrW3U5/i2bTqXH59b wQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vvbm0frm6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 29 Oct 2019 13:47:00 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3CE37100034;
 Tue, 29 Oct 2019 13:47:00 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2EAB22BE234;
 Tue, 29 Oct 2019 13:47:00 +0100 (CET)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.44) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct
 2019 13:47:00 +0100
Received: from localhost (10.201.22.141) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct 2019 13:46:59
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 1/2] ARM: dts: stm32: remove OV5640 pinctrl definition on
 stm32mp157c-ev1
Date: Tue, 29 Oct 2019 13:46:50 +0100
Message-ID: <20191029124651.12625-2-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029124651.12625-1-amelie.delaunay@st.com>
References: <20191029124651.12625-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.141]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-29_04:2019-10-28,2019-10-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054708_971664_E3B78D1A 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"push-pull" configuration is now fully handled by the gpiolib and the
STMFX pinctrl driver. There is no longer need to declare a pinctrl group
to only configure "push-pull" setting for the line. It is done directly by
the gpiolib.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 arch/arm/boot/dts/stm32mp157c-ev1.dts | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 2baae5f25e2c..3f7fcba3a516 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -182,14 +182,12 @@
 
 	ov5640: camera@3c {
 		compatible = "ovti,ov5640";
-		pinctrl-names = "default";
-		pinctrl-0 = <&ov5640_pins>;
 		reg = <0x3c>;
 		clocks = <&clk_ext_camera>;
 		clock-names = "xclk";
 		DOVDD-supply = <&v2v8>;
-		powerdown-gpios = <&stmfx_pinctrl 18 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&stmfx_pinctrl 19 GPIO_ACTIVE_LOW>;
+		powerdown-gpios = <&stmfx_pinctrl 18 (GPIO_ACTIVE_HIGH | GPIO_PUSH_PULL)>;
+		reset-gpios = <&stmfx_pinctrl 19 (GPIO_ACTIVE_LOW | GPIO_PUSH_PULL)>;
 		rotation = <180>;
 		status = "okay";
 
@@ -225,12 +223,6 @@
 				drive-push-pull;
 				bias-pull-down;
 			};
-
-			ov5640_pins: camera {
-				pins = "agpio2", "agpio3"; /* stmfx pins 18 & 19 */
-				drive-push-pull;
-				output-low;
-			};
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
