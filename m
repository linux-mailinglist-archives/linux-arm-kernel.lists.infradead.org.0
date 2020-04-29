Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F02071BE40F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmd3g/1ValRJha8kDbBt713S0k0WZ7STb7mZhIRHQJ8=; b=s3RdbtyhjQk3bo
	EbpPYPOBz5bidwfosZK/Lrimybxq/DBA2LTlV1FG1I0QjoAAYj5VKkiN3ypUEC83bcvGKZ0oMECmo
	86i9QrLtFASAJ9sMGB594QpfkjLxGAaI9XU/Uj51PTht3Sfntol934zOi+p8eyJ4+ZTDSPZsF2NpM
	22HYjgV+xYEK9J70OzptDYhI+r+xjJRjr/cIACZUb4Kk7Zfp6s/mDGtwfnekFbZn3eT6EM76U3nSi
	CxVejzgKYVXDPY8440sKkUds62NfkIL/PX+imxdEP0WeCGjlMFloIfyk1jiQ6r4sc2cydmqTiJ6vx
	GJs6NB8GPg/bY/qZzhtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpjV-0006EC-Lm; Wed, 29 Apr 2020 16:38:49 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpid-0005jK-Re
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 16:37:57 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49C41r1Lb8z1rsXp;
 Wed, 29 Apr 2020 18:37:52 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49C41r12WPz1qv7g;
 Wed, 29 Apr 2020 18:37:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id YEJnsaLsq7AJ; Wed, 29 Apr 2020 18:37:51 +0200 (CEST)
X-Auth-Info: oCrPquZeX3XTIMAkTWwvy8sOJTxjfbdh7MwIEaHv0CU=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 29 Apr 2020 18:37:50 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 02/12] ARM: dts: stm32: Repair I2C2 operation on AV96
Date: Wed, 29 Apr 2020 18:37:33 +0200
Message-Id: <20200429163743.67854-2-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200429163743.67854-1-marex@denx.de>
References: <20200429163743.67854-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_093756_044211_E2F00A11 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The I2C2 uses different pinmux on AV96, use correct pinmux and
also add comments about the I2C being present on the "low-speed"
expansion connector X6.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 271f38acfeb9..438c2f70813e 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -164,7 +164,7 @@ phy0: ethernet-phy@7 {
 	};
 };
 
-&i2c1 {
+&i2c1 {	/* X6 I2C1 */
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c1_pins_b>;
 	i2c-scl-rising-time-ns = <185>;
@@ -174,9 +174,9 @@ &i2c1 {
 	/delete-property/dma-names;
 };
 
-&i2c2 {
+&i2c2 {	/* X6 I2C2 */
 	pinctrl-names = "default";
-	pinctrl-0 = <&i2c2_pins_b1 &i2c2_pins_b2>;
+	pinctrl-0 = <&i2c2_pins_c>;
 	i2c-scl-rising-time-ns = <185>;
 	i2c-scl-falling-time-ns = <20>;
 	status = "okay";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
