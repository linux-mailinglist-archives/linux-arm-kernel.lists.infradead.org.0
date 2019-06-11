Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7110B3CB6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WnpQcpkBaqN2zFbxdHsJK3EA5yd62XP629VZ9DGr6GE=; b=QtVN1NDoQ0PkXc
	PSjbWlkYcSxT4xLqJMtRgdnMe2bN+SE196Y6NMD12vy7gO0ep1LS1gShcNLgbM1q2i1HesNDec597
	/KvC3r5sx0cF+z1QaN56xlDFyOGcatphy8QwqP+oPTUoi2s270YZyNFHyOiSWAarGvYmcjttlhM7+
	+Rk3uf7ghyAujIzoQBvBwB6/cSJ4+vhW9dvewdKIJLPWGPiWQC2YHs5IYV9EIONvmEyrvqoKHKZq5
	rIJ9s+kq03qOqPkI52NzISEI4ldfootFhlPuVhabDOrEJ2E6HJpDHU25A9jQ6P79l2ch+3limWd+l
	srqbFgtiHrUub2p06rZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafsM-0003Ed-2b; Tue, 11 Jun 2019 12:27:42 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafqb-00022R-Lx
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:25:55 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5BCPmiL026689; Tue, 11 Jun 2019 14:25:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Psif9qopZgVPe8dWo9XocFzMybtKO3gMouXdNYlMSBI=;
 b=R7bSMphe5F7ioVle8OyoWIwgQ41esdzxVd5DveQWEPH5ED5EjP5eY82uxHp7rpkOOT5l
 7r5/oMMyr6Hp3c2qcGMnLqDVfjvQdWr0Uw9Lo+I2ZrFr5WCXZK7PiF5Be/QUviDSFheu
 6ihYgdzSkjy8T3d3nSN7DtLIIyVvG4TM/ExUuts+ymydjdLPSXqBSyQJA8wyy6rYlB40
 0rKeVifcFilL2511Ew4vBHGpdyOZ/kaadapV3DmWuD8Rk2l8ZanBlPsQx0qZKtixLZVQ
 d/cEnYoPk8WkD38q5ubi38cDOndZN0iyccY4EMwmxJqxANmg3QtRm/DglZleM7So7ZFe xw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t26rm9vbv-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 11 Jun 2019 14:25:48 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 025DD3F;
 Tue, 11 Jun 2019 12:25:43 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BD8B92A2C;
 Tue, 11 Jun 2019 12:25:43 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun
 2019 14:25:43 +0200
Received: from localhost (10.201.23.31) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun 2019 14:25:42
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>
Subject: [PATCH v2 02/10] dt-bindings: serial: add optional pinctrl states
Date: Tue, 11 Jun 2019 14:25:22 +0200
Message-ID: <1560255930-22554-3-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560255930-22554-1-git-send-email-erwan.leray@st.com>
References: <1560255930-22554-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-11_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_052554_064410_C3D1836E 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add options for pinctrl states:
- "sleep" for low power
- "idle" for low power and wakeup capabilities enabled
- "no_console_suspend" for enabling console messages in low power

Signed-off-by: Bich Hemon <bich.hemon@st.com>
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/Documentation/devicetree/bindings/serial/st,stm32-usart.txt b/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
index 5ec80c1..64a5ea9 100644
--- a/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
+++ b/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
@@ -13,7 +13,14 @@ Required properties:
 - clocks: The input clock of the USART instance
 
 Optional properties:
-- pinctrl: The reference on the pins configuration
+- pinctrl-names: Set to "default". An additional "sleep" state can be defined
+  to set pins in sleep state when in low power. In case the device is used as
+  a wakeup source, "idle" state is defined in order to keep RX pin active.
+  For a console device, an optional state "no_console_suspend" can be defined
+  to enable console messages during suspend. Typically, "no_console_suspend" and
+  "default" states can refer to the same pin configuration.
+- pinctrl-n: Phandle(s) pointing to pin configuration nodes.
+  For Pinctrl properties see ../pinctrl/pinctrl-bindings.txt
 - st,hw-flow-ctrl: bool flag to enable hardware flow control.
 - rs485-rts-delay, rs485-rx-during-tx, rs485-rts-active-low,
   linux,rs485-enabled-at-boot-time: see rs485.txt.
@@ -31,8 +38,11 @@ usart4: serial@40004c00 {
 	reg = <0x40004c00 0x400>;
 	interrupts = <52>;
 	clocks = <&clk_pclk1>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "sleep", "idle", "no_console_suspend";
 	pinctrl-0 = <&pinctrl_usart4>;
+	pinctrl-1 = <&pinctrl_usart4_sleep>;
+	pinctrl-2 = <&pinctrl_usart4_idle>;
+	pinctrl-3 = <&pinctrl_usart4>;
 };
 
 usart2: serial@40004400 {
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
