Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606D91D13B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9G1rcjnHipv50wYqkNC7aZQwBlabb/QDtdT8p/nKmI=; b=XCAgBJ531/5fSR
	myh3LXjIq9F8iCF9VM9Q++MyrmHrGemdXc07DS29fapX+wGImEtFdP8KEfDOAlMy4+fZNe0uI6+aV
	lJveTS3EBuOmnG0/4iX3kWECR9OeG9m4FQxh/Fmjs3pxyKLo2PvzKH56a1O/F+J8iUDwshA3A58nX
	3T7UPrAzc6XQFyort49JUjChjrZs6ttUHrMftO/AiONYqkUtdosVRv5z/nDPrEZ4H7KDAbHZ39Ozt
	2ONcyVkRDeKzqG0FP8RlO+/Wu+0gZ9kZf/96kL50aSyMN3uecfKoK7+rku6RFqf7teql22AgTiSeC
	1SFrhVf02fLdfw4lOiGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqzq-0004pw-TN; Wed, 13 May 2020 13:00:27 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqwi-0002Et-VI
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:57:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374632; x=1620910632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aUjp6oy3r1TDYSdccq62Ov16XGvhgsJHPueAfKWciMA=;
 b=fts7L4q8oODHjdxbxx3kOSHq2RqAvNxt/CdTCxtgoe2XCMiFEpFUzaRP
 OmqmahVPRP0ZoENvxsBlQPq13nhQNxORgu9kci0w5EMHX9PcXhRZfAXL2
 uA4joRCzChs7GbyIZA3rpzEIiTHKHeoGkSP31nP1B05iK5jEd67S9cmMz
 poBs1JN4kSG5MWGji/DSgiO9/1R4dFV5bRuSlTACWMHWhvjqpB3ZcUFzN
 PImPjJfXjpxSpGWnWwp0QpbnJSaVKJy6SCDv3eQc20LJM8gWGQ68BNGGn
 XYgYOzEJa0A9n2kLbnciGL4JLxBnQ4T3vCm92xYBk9gyRrOu4y6OULcaQ Q==;
IronPort-SDR: 6OmNHJS2iNRdv0z5Pazs+fRJZRz1K+xhXuTj+efWI5TEbf9FRG5Etpqx1HbOqVemDE+Qjpdwo1
 eUBy38odCPmHHSW+HZRbMBGegkhYtx0NHhUewpAATP5eTSOzzDfYc+MLjc7DGnBizKoFuR1hOK
 vMwkqnV+puIQOgKvSv6ILJwOlhzr4Ws53zVL+Zxmwjtxp5IBsal3BZu0/+QHJTQQtfyMC0fZP5
 CNCjS88/dPM5YfULX+pvPfvf/oesrmb2W20FGSnswNJMDK7Q55L9nw8B1/TCW6Hnurx82YSMRM
 wUQ=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="79436370"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:57:12 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:57:14 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:57:09 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 13/14] arm64: dts: sparx5: Add Sparx5 SoC DPLL clock
Date: Wed, 13 May 2020 14:55:31 +0200
Message-ID: <20200513125532.24585-14-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055713_038543_179F06AE 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a DPLL clock to the Sparx5 SoC. It is used to generate clock
to misc peripherals, specifically the SDHCI/eMMC controller.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 45a60993789c8..ca4055f04ac26 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -82,6 +82,11 @@ sys_clk: sys-clk {
 			#clock-cells = <0>;
 			clock-frequency = <625000000>;
 		};
+		clks: clks@61110000c {
+			compatible = "microchip,sparx5-dpll";
+			#clock-cells = <1>;
+			reg = <0x6 0x1110000c 0x24>;
+		};
 	};

 	axi: axi@600000000 {
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
