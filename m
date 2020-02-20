Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7062216632D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rvIi47QeJnXvc8x6C+3MQTd/Cv0GcTjLzEby2wA+iNY=; b=E1M
	WtrBusaGp+X1HdSZWy4ZahtE8Mto+E+Ah6eerIR5qgioMM/ZxrUS7K9Y0kmIPwP9Wvx6sGOTbyFsh
	LVOlWR/SWuosDpVnQcJd7L9lzE9STPabilprv0yoYXeUrXuNwYeqZofpy7hC5g5juUtrsKpf/qX2I
	YoKQmhPXuaW9sO3qFo6OZNlvDPvaU6aWBAiGJpjx2jPwMCuNu6kgCfclLF9h+lHFKRIGFm/S/og+c
	ERVSLvPDezTY6naL5qR7djOFVZ6jpVxCQ8h0hlBOluzRTi8eK8oMnFznUzCL6DPVAbFUI2u521fur
	9tq+33U3s/XF47opfLywBJkS6Qm3+kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4om0-0002mw-2b; Thu, 20 Feb 2020 16:34:00 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ole-0002ZV-TD; Thu, 20 Feb 2020 16:33:40 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so4890781ljh.5;
 Thu, 20 Feb 2020 08:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mU6goqc1IxvONiqvTYZTB/JhR8b7wxr9PjlrU6ggYOQ=;
 b=Zy/6H47iNhc6duTlQoHmZ3mvdacWIOPP+1YBoY72p7IK93DvVHCJ2x09p5VX3fLRrk
 FXoPl1UBTcn4UTW9t//xUkil5xwvVdYyLugGBLJJ+lmVA9h0TzMaPEhFH3/DAIM+CWpn
 /8wOMCqRF2iB+Y9BDTxGGvR/GAhRnDZO+vPumX1BrYCkLLG/nQsPKeAKl1ErArHNbFHf
 UjzQK2O28plVU+TUCK3FLKkCdxrkiC06V1mYlVktQgNdaxXtiDdQxNqGAgG0Pd27nek2
 uUUBOExBI/7LyRqXhxIfkv+LJFGphjn/OshscVzSuEXYigNovfAg2dYfCISIskOrS8As
 ay4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mU6goqc1IxvONiqvTYZTB/JhR8b7wxr9PjlrU6ggYOQ=;
 b=OirO2XtzayEUc5tO4t7a+NLjdwARyl88qRBdJ5mS16jLOBu1C9ZDrcMPTIoPlZSJtT
 DwwoiMAVhlGT6hOGlG5ioO72+MK84mp7OSQumREqgx+Kxv4klHRsiIjr6/w+/2KosiZy
 N81W+c1XEOUSfWApaz7gL/B6Ib1nIJnMR0aKLXTaRoftila2Qwr1a/8VUuBxg62zIBf7
 Lesuxa7UyFLPKUzZCkbymyKo1/yt4tEW9ET72bMdwwIO5lgSV+0X9HLKxz22YPrG5OvL
 73Qbun9Wq33JpMX+pIycxnhfoVIfDgxzsxqp1JrIBEGKHzd0/9UeDuSjzu4uZo6EcwAb
 uV5A==
X-Gm-Message-State: APjAAAUOKdDnxQ7PnuneaEKVaXQwcp9sGgvywxQAsYKdaeG7fh4EBCXh
 9iRJ6MT8TypV68pxgDJ1pN4r0sKDHpDd0w==
X-Google-Smtp-Source: APXvYqzchIlyDbx+qLJ5TUp/c7SgjF1aZOiaYFR9U7AG7zzWR3ChSqgwodz6x6oEG8NwsgbH3OfHjg==
X-Received: by 2002:a2e:810d:: with SMTP id d13mr19485514ljg.113.1582216416742; 
 Thu, 20 Feb 2020 08:33:36 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id y7sm2097292ljy.92.2020.02.20.08.33.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Feb 2020 08:33:36 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson-gxl-s905x-p212: add bluetooth nodes
Date: Thu, 20 Feb 2020 20:32:46 +0400
Message-Id: <1582216366-12964-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_083338_974667_E016A895 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This removes the uart_A alias (no longer required) and adds the bluetooth
node to the P212 device tree.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
index 43eb7d1..6ac678f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
@@ -15,7 +15,6 @@
 / {
 	aliases {
 		serial0 = &uart_AO;
-		serial1 = &uart_A;
 		ethernet0 = &ethmac;
 	};
 
@@ -180,6 +179,14 @@
 	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
 	pinctrl-names = "default";
 	uart-has-rtscts;
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
+	};
 };
 
 &uart_AO {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
