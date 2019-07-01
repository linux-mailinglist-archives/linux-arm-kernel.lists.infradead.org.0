Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094CF5BB11
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 13:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7dofT+Qa6XeDUTpexVTVsi5lFm28WNn2arFRybmag4w=; b=j3qPWZCccI5D3/
	sMvk6r2KUMHQ+I4pHhTzE3xIbozHbU1bWnskBt+GbkGm8LGR08DT13MQfxjKFaXgi1pKw6F1EwB9n
	XqCoPxEj9jfiwk2r7GPuNjUNHZJGwBCun5i/HWXifb9gArtYJz0ekB7OIo/euFmYTyJiPH7S5WHzZ
	NSw9j5o9VlY+SIzKmYoQQIUkalGS5AFdezFwLMORoM8sr20MPeNl5yRHTFBqxa4ZbQGC2hjOeSv1L
	pJ52CFDzLBCDI8t79zGspr9tfeKag7V8b8xhDTQQ6QbTC5H+8+jT84WtKAmm7DaL7tHUwTi8gWVPi
	O6e8JBP9cDdU+3d2Zq9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhuwK-0001c8-CW; Mon, 01 Jul 2019 11:57:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhuw5-0001Zn-T9
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 11:57:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so13517272wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 04:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OWBpEvn4nRZz1cmchO61KMpCxGabkWCJ3N6fsTIImxE=;
 b=SGuzD8+l7yIVTo4NJFrk5PQLhWUNIRIl+L2MIiLrNt2+dqP7uthb9y+UvZlfRDiShW
 W9SI2QjMio/nGjOHqcbJUrtYFWAYdaar70RuhUzDf9r6paqbgSGD8gdsYZlJYoWKJJye
 spj31of4THSKTqUlWnaUqUFe1Oi1R/mcK84Nes5jYXa16piAAdAAxckeWVeWVRfQU55u
 F3SiwkKDc1lKOO++wQwy9pM4QE7WV6NVWX3zRFpe6pSzHeC8xL/yZPwZr8D2frYayYRT
 gDFGy0aei38sRKxDcgPp/k1TdKS03J5XWlol9PzE0Q3G2sHwFFd8/8q1Ripa5qcoAj2/
 gFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OWBpEvn4nRZz1cmchO61KMpCxGabkWCJ3N6fsTIImxE=;
 b=V58eemuyOX7DweABmqgZSuj+ULBVLbO75jTk1Jlm0t6pkc4vbnCknKBy4llKvbZoEq
 FWRxlEhuPYTD4Q6nM563xkvmzwmm1gQXklARCL9BdycFL2TbwNi0Jl366lIPcXGSTrPk
 1GsMDDlF8bSh1MtKQ7GE+q1o01FhSire+v06go95zX8vDoWoYMTokwBdYhhiQtOvPn55
 lDVMHx2bSk+/mKXVgvBdUa7ZtNrxersvhJLrfCAlUBRtn/Hmy0muqO0+2CouFr1ivaMt
 pDcbuZswMpZe3GJY0mbFGyvkJ0z8kXK4NWwTYO3uf99T3WzEyjbjXqX3B4UdGoNWHFgx
 DT0Q==
X-Gm-Message-State: APjAAAUWd4jfcr2IzMZB4eYfJOqDCAbrYPj9HcICjXX7l4rk1SgHPQyz
 3/pPn/TkpGAEdCCvnmNql6Y5+w==
X-Google-Smtp-Source: APXvYqxYE/6Py43lG5VkCd6ZaToMDiKOWJY63MqNtt/xP+N1a4IkXdPwDaoToh3uN/qzhr9j4omYOg==
X-Received: by 2002:adf:fb8d:: with SMTP id a13mr18930522wrr.273.1561982248294; 
 Mon, 01 Jul 2019 04:57:28 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id w25sm5660944wmk.18.2019.07.01.04.57.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 04:57:27 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH RESEND] arm64: dts: meson-g12a-sei510: enable IR controller
Date: Mon,  1 Jul 2019 13:57:24 +0200
Message-Id: <20190701115724.15801-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_045729_939638_44587409 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the IR receiver controller on the SEI510 board.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index c7a87368850b..12aa7eaeaf68 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -339,6 +339,12 @@
 	pinctrl-names = "default";
 };
 
+&ir {
+	status = "okay";
+	pinctrl-0 = <&remote_input_ao_pins>;
+	pinctrl-names = "default";
+};
+
 &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
