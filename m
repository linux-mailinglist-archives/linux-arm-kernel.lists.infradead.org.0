Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14C01FB437
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9I23oV8I1+Fiyyk+CviAaufsDJgz9gQgxAok+NrufQs=; b=BLylev2u3TTC/3
	vnUqONMROAzf9NfVxEqcyIZDwKRe8jssX/GFm0J9OHYqSqFnIxA6jDNzDdPyzi78Sgm3dBelrd4y0
	OEyUx+kwwhJaDBZtCu1yQuORPP3X6hF8hdEEtcM0H2X4foMVOAWpRPkAUkyeFwSdrV7DQ0YgJKETh
	2OHuzQjH3wrYTT3kRxI/t4AOWRijIsPodKutllSQvYFpivp2x/yQGcMRaRrID0Kjckz6ha3a57ao5
	sgPj58B52YzsirIJJ3wVnKYLylcwaEFfhCK9k2a6GdRg0+9o8neDax8ZWq8Ek1XrE554FNzGnrLzu
	SXQ4Pp8Q3OWY3AkNXoKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCX7-00006p-KJ; Tue, 16 Jun 2020 14:25:49 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCFT-0001mN-CH
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:07:40 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05GE40DX030295; Tue, 16 Jun 2020 16:07:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=qf90D1xvlnaVfhKX1/rwsBGrTYh73cmLPEcHyOqACys=;
 b=s1a4cmtUiRTnoTgkwNmfLkVXn5TN8gzQUcyPiBcdmJH3ya+Y7rR1bMTLziEKgm7ORCBh
 E7AZVHUFfDhFynDZERPyPbFLv6eqnd9UHuNzJNtKmJM2nexSwIDgwjvu4TSWMTHVbVwh
 9eZMZGCHHO5puUDk0VXXdBUC9+oBl25NgNhn0rjJu4ilVn89TBxBG3iYIuuHsY9pUBvM
 QqEjD95KRIaLHoTnWzWHuliv1zOrmbrr/i4Y2hrOqqzHMlIzNSlJodlkGDy4tldb+xG/
 w4puvqs+AQ3VmjeAlIrdrQRDdcPJFzQ4XcWpwEYaTCW/zEikQgPm4FkqpE2PM4YqHoGz sg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mkx97uff-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 Jun 2020 16:07:31 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D0C4810002A;
 Tue, 16 Jun 2020 16:07:30 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C18B22B569A;
 Tue, 16 Jun 2020 16:07:30 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 16 Jun 2020 16:07:30
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Minas Harutyunyan <hminas@synopsys.com>, Felipe Balbi <balbi@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 3/3] ARM: dts: stm32: enable usb-role-switch on USB OTG on
 stm32mp15xx-dkx
Date: Tue, 16 Jun 2020 16:07:17 +0200
Message-ID: <20200616140717.28465-4-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616140717.28465-1-amelie.delaunay@st.com>
References: <20200616140717.28465-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-16_04:2020-06-16,
 2020-06-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070735_723106_1AB76508 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [91.207.212.93 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that USB OTG driver supports usb role switch by overriding PHY input
signals (A-Valid, B-Valid and Vbus-Valid), enable it on stm32mp15xx-dkx.
dr_mode needn't to be forced to Peripheral anymore, it is set to OTG in
SoC device tree.
USB role (USB_ROLE_NONE, USB_ROLE_DEVICE, USB_ROLE_HOST) will be provided
by STUSB1600 Type-C controller driver.

This patch depends on "Add STUSB160x Type-C port controller support"
series, which is under review.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
index d946e0a02f5c..ab31db801eec 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
@@ -595,9 +595,9 @@
 };
 
 &usbotg_hs {
-	dr_mode = "peripheral";
 	phys = <&usbphyc_port1 0>;
 	phy-names = "usb2-phy";
+	usb-role-switch;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
