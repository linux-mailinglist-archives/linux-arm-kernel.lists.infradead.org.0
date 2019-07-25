Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEECE74D3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 13:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wi4lIxdPz9p4BlxhsyqDWat/iefTn/Rg7MudB5isEXA=; b=h0bvoMfzoySiS1
	K9vLFefabKUqKwsDHbnHE1YBLAU7gvhmXxfvU1w0QurqX1oHGKSifER4f6lGGccPEsTQCpaYtmfd8
	ym082gOB2vdFTB/ZAK+sjuipkNM+UQWJyh4idMX3gcl5aWhYGINpef5skzWHlfLh29RpQy9Y4eB/F
	YukqPnbp0dnA/vo5YzsgRNazsIy5dP3FxzW28gFp6EZa6JgsVTOEtP/sqhi3Ms+pKriHlPa3SvBHu
	GtRlTkUKIgpuMfMmLzuNzVKKeoA9Cump4mnr68zoDQHPLtit4h9HiXig4Gc5TYmoXp4PCwZUmUik+
	aOWHT/JOy10Ux/ZFGBfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqc4E-00062g-Or; Thu, 25 Jul 2019 11:37:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqc3n-0005sW-UI
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 11:37:26 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PBbH9s016249; Thu, 25 Jul 2019 13:37:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=6x9EMveWc/xIr2aUKeJ6ptlB+zbI8DrHbgR6eCuoRFs=;
 b=TpIZ5+HvlXGjjVjs37GpU8d5r+0/ZL8hKAtkHKpp67qwD/Xbh99pYsFUX93d+vgEJlBY
 vW3cL/qUSJGC6FxtwjpeDKbsjvxVslPp9lT/aUMYLUjiH3B/MW3hAwehijY6qIL+G1Ui
 MixDUawjkPbP8nA8QVRLPruKTPoI2fwjk9ugPGOEbKK1H9ndasYA7c0O00z5j0agNv1b
 CpxJnRqQWhCi/ihDz9RocV6vpOWpNddNgJtm79pLYuljkNnpnuIYNrIMBwOLIniZRPW9
 acJyp/jlbcXz/+3zORRWZVxtTbZiSJynQRO33oxu00EvghxX8Z1L93IWXyAGRiKGY9B1 Hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tx604beg8-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 25 Jul 2019 13:37:17 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9E9C638;
 Thu, 25 Jul 2019 11:37:16 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 832992B51;
 Thu, 25 Jul 2019 11:37:16 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 25 Jul
 2019 13:37:16 +0200
Received: from localhost (10.201.20.5) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Thu, 25 Jul 2019 13:37:15 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 1/2] ARM: dts: stm32: remove OV5640 pinctrl definition on
 stm32mp157c-ev1
Date: Thu, 25 Jul 2019 13:36:46 +0200
Message-ID: <1564054607-2028-2-git-send-email-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564054607-2028-1-git-send-email-amelie.delaunay@st.com>
References: <1564054607-2028-1-git-send-email-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.5]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-25_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_043724_334200_6B5E92F1 
X-CRM114-Status: GOOD (  14.92  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Torgue <alexandre.torgue@st.com>

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
index 9ab25da..e4b04dd 100644
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
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
