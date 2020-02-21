Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319381670C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 08:49:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uFsK7KhhoZdte3taZwTs5VqJ3G0CUruJiRJj64KEds=; b=PvE5ahACfDzdqE
	KL0nGgAhYBMBeoCAN8MfnizKlltahNwxt2MpPE8l1S+/9L1OVzjKLWjCHjw2c3YCYd494eQh/IouO
	FedF+sUr4L6WaIAPyiivSZe54i1ZQGKLRGc3zRUOwzrIbWGX0f8EXAsGR5ZzCLFBz3b0cdJDJdCbv
	9gOr+xX0I5jTgYCzLRbYpRcrCvs0oVjNTaEaQK9cPrvUWm8bmicitNsmQ/5a2DcJXR9YFFqdBequn
	sxQBsQR1HTjTmTwHr8ySp1rMuwlij0YeV29bQfG7aZy4hboXuQ7GLnha+4t8HSO3w2vXU346KcJAE
	MPvFrkKQ0iH6H4lEnEVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j533g-0001in-A4; Fri, 21 Feb 2020 07:49:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j533X-0001i9-4B
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 07:49:04 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4504207FD;
 Fri, 21 Feb 2020 07:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582271342;
 bh=wEbTmDAFGEJyYKw5bAkSrdfMG8SVFgSc3UHab2BPGXw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qtilP83MTe9gp5WleA87WNq4264uY2azYp4kRjeHJB/+Af3SjZV6uvJDYoKW9+KVe
 h2MH5TKVyUKnzje3ULqoOlAZWnnAXZKRGUYlM8fOhdIioHu35bijm591qf3GQP6PaE
 OYeMJ5yWrO1zomhMwWdjH3MT+/RCvm07ZD8Qa/aw=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.5 130/399] ARM: dts: imx6: rdu2: Disable WP for USDHC2 and
 USDHC3
Date: Fri, 21 Feb 2020 08:37:35 +0100
Message-Id: <20200221072415.120491159@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200221072402.315346745@linuxfoundation.org>
References: <20200221072402.315346745@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_234903_189786_5EA90BC5 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
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
index a2a4f33a3e3ef..4ec9fb332610e 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -629,7 +629,7 @@
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	bus-width = <4>;
 	cd-gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
-	wp-gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
+	disable-wp;
 	vmmc-supply = <&reg_3p3v_sd>;
 	vqmmc-supply = <&reg_3p3v>;
 	no-1-8-v;
@@ -642,7 +642,7 @@
 	pinctrl-0 = <&pinctrl_usdhc3>;
 	bus-width = <4>;
 	cd-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
-	wp-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+	disable-wp;
 	vmmc-supply = <&reg_3p3v_sd>;
 	vqmmc-supply = <&reg_3p3v>;
 	no-1-8-v;
@@ -1056,7 +1056,6 @@
 			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
 			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
 			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
-			MX6QDL_PAD_NANDF_D3__GPIO2_IO03		0x40010040
 			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x40010040
 		>;
 	};
@@ -1069,7 +1068,6 @@
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
