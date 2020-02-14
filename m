Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A381115E554
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:41:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KnVtgdieIg9lj/AWDQhWGzgzNQwty4psuCud8ebU764=; b=hlagYGTkFIIwRC
	f+3nxD68paqZsmq/JTVVkKMGgWMrQm7t7BgGA4M136ck8y0QC74kJhQONkoQK9RyqU21KsH9HIAdX
	zlQLUXCv5QbUnSincwLfKQ+yo5OvcuCc3DZYiHa7HDbAXWne2rqeYsK931rCz9lArbL5iaOCnDkNn
	6RvQ7xoZPAAwGfZ5flaATpUzZpkA++bIAeJd6HXixI5O9Xldn0fSR7kE6z1g5t3JVVKw08yiJ7bqC
	tStAQ/LVh+PPtfrbZHb69NPVopXHjWPzOryFy1QlAQSUUSqpkjry3mytUUe/GdPWjKP/HgbCbRTHD
	dMVQS4uAP8gzuKTBgfOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2e1Y-0002Y3-FV; Fri, 14 Feb 2020 16:41:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2db3-0005dT-8c
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:14:04 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D2D0246C2;
 Fri, 14 Feb 2020 16:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696820;
 bh=RMhyLwjHo+FIB9P37K7aaJm4nJKilhyzbJgF6malxW4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sxUVAnAj4G+AuW6iG1eo43dN542ZUnRUCyOPvHQERnZBour2KAz3DMI5EiOr66GoG
 GEEykIM+pFF99LZhvHQS4q4TOOcVMPDxguruE+plSHA17yG/Y9NYLlpqW47Zm9jEcp
 ecDIO5iKohojUPIDN0iDaTadrOYPIIZyjuikmN/M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 088/252] ARM: dts: imx6: rdu2: Disable WP for
 USDHC2 and USDHC3
Date: Fri, 14 Feb 2020 11:09:03 -0500
Message-Id: <20200214161147.15842-88-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_081341_354993_A9D1F23E 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Chris Healy <cphealy@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Smirnov <andrew.smirnov@gmail.com>

[ Upstream commit cd58a174e58649426fb43d7456e5f7d7eab58af1 ]

RDU2 production units come with resistor connecting WP pin to
correpsonding GPIO DNPed for both SD card slots. Drop any WP related
configuration and mark both slots with "disable-wp".

Reported-by: Chris Healy <cphealy@gmail.com>
Reviewed-by: Chris Healy <cphealy@gmail.com>
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 315d0e7615f33..56d6e82b75337 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -657,7 +657,7 @@
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	bus-width = <4>;
 	cd-gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
-	wp-gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
+	disable-wp;
 	vmmc-supply = <&reg_3p3v_sd>;
 	vqmmc-supply = <&reg_3p3v>;
 	no-1-8-v;
@@ -670,7 +670,7 @@
 	pinctrl-0 = <&pinctrl_usdhc3>;
 	bus-width = <4>;
 	cd-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
-	wp-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+	disable-wp;
 	vmmc-supply = <&reg_3p3v_sd>;
 	vqmmc-supply = <&reg_3p3v>;
 	no-1-8-v;
@@ -1081,7 +1081,6 @@
 			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
 			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
 			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
-			MX6QDL_PAD_NANDF_D3__GPIO2_IO03		0x40010040
 			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x40010040
 		>;
 	};
@@ -1094,7 +1093,6 @@
 			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
 			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
 			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
-			MX6QDL_PAD_NANDF_D1__GPIO2_IO01		0x40010040
 			MX6QDL_PAD_NANDF_D0__GPIO2_IO00		0x40010040
 
 		>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
