Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09692436F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6QP+PMMtyaOCzp01Hvp4Ztm1eyftT+OYErBgjQ43bY=; b=tMOAmOMZRx2bua
	V/y3ZODwDU9UBVZXg3PynCJo/Ic77SsAYwtvoJ2XjfKzfot59Vmw++9eXxI/Hdg13PhbLKgGrn+RI
	E2VxLFzCWt/8VEYVsDoA8eRc2Ie34MTYoZlzvXsI+LYi8nEa4HiGX0gDWlUae2UH+mpp7jgIcI61p
	2egkDOYI7/esZzb1jB9hpAjHB2mYfWMmT2L3ygI64DcbSLI/1o+hxTg43r7qO36hSF8PmDx8VjA3J
	g/dIlxhaIv+GG6F/glDFNiAD04TQgmgGqIngTZXXK7VpX3D5uJZmriSrTynT2cBjVCx70wvVnEUxw
	fGGL+VrSqdCqtY6wijPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQAT-0003ae-4Q; Thu, 13 Jun 2019 13:53:29 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQ7Y-0000t1-Tr
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:50:30 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5DDlOdA027700; Thu, 13 Jun 2019 15:50:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=tCqCtJ+aEYgGguO+2MVvQssjCEBkv0n4pYDaflX/fgg=;
 b=b8YQ3B+epEurU2X7E+Aph242b4wrliFRxc3CHFTCIccsG6x2e6KTC4rOkml5ohreZ30Q
 +bTSVaqx5m5c8AyNrU0xLj08iFU/wDuf4zAoAklt7qNXyRijkSBfd7+bBlirWyjgdOd9
 71E0Pl7vZDGtmvwa8jYwTcVGzICRghut/a3EnVYKJispk5Z0tVC6PIqj2P/YnuecrHnB
 +v3FSuv1Y4UPIJ32hC9mQM8EDvtNo5Q1n0N4ABBl9hJnD515fNf0QoMkdW34fTXO4cQ5
 MMX6T7R93a+pz0FBTT+F1Z3G3kVQorwEsBTf6CaY1IziSb+TTis3ktFD1yA/7x/k9M2i 2A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t2f8c49b1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 13 Jun 2019 15:50:23 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 73EC03F;
 Thu, 13 Jun 2019 13:50:22 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 570AA2BC0;
 Thu, 13 Jun 2019 13:50:22 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 13 Jun
 2019 15:50:22 +0200
Received: from localhost (10.201.23.31) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 13 Jun 2019 15:50:21
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>
Subject: [PATCH v3 08/10] ARM: dts: stm32: Update pin states for uart4 on
 stm32mp157c-ed1
Date: Thu, 13 Jun 2019 15:49:58 +0200
Message-ID: <1560433800-12255-9-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560433800-12255-1-git-send-email-erwan.leray@st.com>
References: <1560433800-12255-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-13_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_065029_355929_C81FF027 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Erwan Le Ray <erwan.leray@st.com>, linux-serial@vger.kernel.org,
 Bich Hemon <bich.hemon@st.com>, Fabrice
 Gasnier <fabrice.gasnier@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bich Hemon <bich.hemon@st.com>

Add idle and no_console_suspend states to uart4 pin configuration

Signed-off-by: Bich Hemon <bich.hemon@st.com>
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index 62a8c78..34cc847 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -251,8 +251,11 @@
 };
 
 &uart4 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "sleep", "idle", "no_console_suspend";
 	pinctrl-0 = <&uart4_pins_a>;
+	pinctrl-1 = <&uart4_sleep_pins_a>;
+	pinctrl-2 = <&uart4_idle_pins_a>;
+	pinctrl-3 = <&uart4_pins_a>;
 	status = "okay";
 };
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
