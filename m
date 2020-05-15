Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447061D54D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0uJEaoRpZB34lNLkiPJ1kuckAanIAbTjJd2pWnAoN5o=; b=C5LgT1RQucLBLu
	1IPF81+JNFTndXuysB8d4M+HzVnOWy6oVSUm/tgbwkI0aIse4T2NEf8ZeBrmM23tpdtAC210qa6fR
	EI9BCoQnMwCX8cMA/8dxIetwKb96mFx6eY57wWof18yvrnz0JhJ/denbNpC5B4l6oCFdCTPR/u5g+
	2S1Xl5OxG2le8D6CiA/VJiT8Yac+GHtlstuBH6xyW85wnJa44iQFcHrIAxwj4zaDeZXBBl1nH+yob
	YwLcyBQ91TBYo2wm7TrsO9cMjVASQPK8zcX14+386+Dm/vSpoTDpvwILiuLVuCC5UstZpnyLwWNx/
	XuxWsdJHpSvKSvDz1bJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcLX-0003ki-KC; Fri, 15 May 2020 15:33:59 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcLC-0003XE-Le
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:33:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589556818; x=1621092818;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CpcSOYGLEtZqxN25rSHLipwl2OuTOlmaHev9wkKFKXY=;
 b=R2qXD3hhMLXafRdcyCR2vzK6K0lLUgSAK78BxtJo24YdnQ+yqmhEYGSR
 6ZCxEragZvKmPu4cZ81VSdJpQ5NqIY0WVs33iBwQG1XKMNLXuNmxpf+Lj
 uCFPOJERJhXF+y34Me5KSYVB2Ve5zBnvx3J/A/00gelRNkVXcGiH1HimE
 in9m+5kfCdbsE+NLjBgN9y07lHN0r1/rEL8pBBhfe4OEdefhHy+2QjtEu
 ixwK4TGcMLU17O1z0CWvcTCSh0f2601efSpsrLUAC9ZqmbCijCT0STS3j
 a+fTa/s8+ls5UP9q8Qs9vfcF6jkqHY7SRTLARRkpNzsivx98u67b6ox9W g==;
IronPort-SDR: Ueh7QHVqlFVv3ZYhTi4mfWHmGjFsdo6pSqHvqcYPmftWs2pWu+ht9HrYgzn0TgxmnFi3c5P4Eu
 SW0a60e/IVW6Kx7hh6a3FnWU/NfFQm/s2MArLQsgooHoCRiKYADyg3QBLvvliH4V+DRAF4ivni
 xsGnt4O6XgFwIA8lTJUKYu0kst+W1oB5vy65wuYowdv6PhONncC1DbKmZLNdk9ZOFTjpnvQQiY
 im+hBw5np7ELdJI7TiF9Ga3DFkBB51w7OPVi9k5Yz+2xYJgU16H5RqrLTSNb1KDzj3hDsi9LrK
 rFA=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="73591965"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 08:33:33 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 08:33:33 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 15 May 2020 08:33:27 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] ARM: dts: at91: Configure SCL gpio of i2c2 node as open drain
Date: Fri, 15 May 2020 18:32:39 +0300
Message-ID: <20200515153239.323944-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_083338_757510_F7911829 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.belloni@bootlin.com, sboyd@kernel.org, mturquette@baylibre.com,
 ludovic.desroches@microchip.com, eugen.hristev@microchip.com, Codrin
 Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SCL gpio pin of i2c2 node used for recovery needs to be configured as
open drain.

Fixes: 455fec938bbb ("ARM: dts: at91: sama5d2: add i2c gpio pinctrl")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 5846720fc9dc..851b8587068b 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -344,7 +344,7 @@ i2c2: i2c@600 {
 					pinctrl-0 = <&pinctrl_flx0_default>;
 					pinctrl-1 = <&pinctrl_i2c2_gpio>;
 					sda-gpios = <&pioA PIN_PB28 GPIO_ACTIVE_HIGH>;
-					scl-gpios = <&pioA PIN_PB29 GPIO_ACTIVE_HIGH>;
+					scl-gpios = <&pioA PIN_PB29 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 					i2c-sda-hold-time-ns = <350>;
 					i2c-analog-filter;
 					i2c-digital-filter;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
