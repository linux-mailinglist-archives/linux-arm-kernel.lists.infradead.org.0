Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E866FFA10
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 15:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wWRZ6TNPLVri87+9GUOgzuqSp99xsf0g+k/zvaoCmsY=; b=UYafJAnFt+gi9o
	Tf85BWuVvvvLmWggdqyreVhAWDHBMvzBJGv5SXHRC2+U334ylUTdZrbdagZS8qKshJaL0cEItyXT3
	SLyxeIJCjAYYS3G0ujVjhDBErGCoHws0ZpG2tjZ/3ykltTaHuQCgofzpgBikxPTWTHHGg22idelJL
	0+lCtkq7+jCRsk7bpYDThxtjAW+e7nGeRYRH09yUakkEWWzelpUgKiK2LEYletjlTv+HjcsV5/rVq
	e/RsNfvNrReKD3gVLwHNK8XZgOBnKLEbbeD4Oj5Hw24c5nVyTIR/i1ITDd9X8s5X6b7ZkGO5qKey4
	TEhupOryngGn84nramaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWLDP-0005Dl-J7; Sun, 17 Nov 2019 14:07:47 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWLDF-0005C0-RP; Sun, 17 Nov 2019 14:07:40 +0000
Received: by mail-pj1-x1041.google.com with SMTP id y21so729621pjn.9;
 Sun, 17 Nov 2019 06:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ogk/eEmzUsDEdl7w08E984I9cFzzy44g9Efvz8aG1qM=;
 b=eka7RtLZ3C0mryfGOdnbrQqku4FdYrS7Vm6nD0pAM0Sj+UMjIj+3/CujSB4F4/KhsP
 VihO8HhcTglrOu6EQH0p/TXHD/ahFd15q4S5iruKQCe+sH7ywazKmQc2UqXnSnVDkZ7T
 EsqzAoIHwQFcaskIfLqbQRH1RreWUXvfh6EulG3Z1G4qfi0pUjhoyTIHS+KyKLSO0BXE
 PBh+UdJdxwiu3mGlWta2oQXcfRxlt9b1PQs38Ry04PyYJOfw5p3G+H65TjaCQ3VekzZ/
 Sn26NijXk12QhcSb4ZrZLGcMBMZ8YgEUa7sc1h/G0j+sq+NWeT5kdI0ubKTwQ5AjPNFv
 ZQEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ogk/eEmzUsDEdl7w08E984I9cFzzy44g9Efvz8aG1qM=;
 b=BJXaaTW2jCFjjapADCFSzGE6Urh4Bi9bn5h6j2vKi8HIzEeCsletMgRRKC54IEFvQf
 18Bnx5f8vrZ+e1SxMVBefHwcgyIUJ8gakc4SIVodALysq/L7yCx77K1qtGZvG3wJJ0D3
 ZW7wQgR1gIWHtDVQkwC3NPEPLbQI6qwFgUe/U1iRd7o/VJ9aPMY7OUy5Z5aLgouZAba+
 Nm2bLFy9j0XK2dXZodH8FaYFD9ODDNY85m1NtKcyx4FbOeurKxFO5gWCFLCbRdF3Oyo5
 ZEolN0tI2Z6b8TG6MH2eOgxnQYKWwf9mmp3t8atJ5SiP6RfHVhdCgnEhvuSh9DWkEUMp
 qAkQ==
X-Gm-Message-State: APjAAAU5J+pkbpGmD/6rKIPiz+788F2H+1jsB/1Mh/duCisEO9lv04Ab
 kjDDYK4R6eUZa+FeFDyUz0VXLWa2
X-Google-Smtp-Source: APXvYqyJN1xtglkHOj6ND7doXENJ2CNNHqYqpj3JsmiEA+gpCe9JSyNJo7gybj7eLRamQUOLJFYM4w==
X-Received: by 2002:a17:90a:1a56:: with SMTP id
 22mr33929410pjl.100.1573999656893; 
 Sun, 17 Nov 2019 06:07:36 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.169])
 by smtp.gmail.com with ESMTPSA id i102sm16486708pje.17.2019.11.17.06.07.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 06:07:36 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH] arm64: dts: rockchip: Add regulators for pcie on
 rk3399-rock960
Date: Sun, 17 Nov 2019 14:07:28 +0000
Message-Id: <20191117140728.917-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_060737_913230_4E903288 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per Rock960 schematics add 0V9 and 1V8 voltage supplies to the
RK3399 PCIe block.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Schematics [0] https://dl.vamrs.com/products/rock960/docs/hw/rock960_sch_v12_20180314.pdf
---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index c7d48d41e184..2f76cccebbee 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -53,6 +53,15 @@
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	vcc_0v9: vcc-0v9 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_0v9";
+		regulator-always-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
 	vcc3v3_pcie: vcc3v3-pcie-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -385,6 +394,8 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie_clkreqn_cpm>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
+	vpcie1v8-supply = <&vcca_1v8>;
+	vpcie0v9-supply = <&vcc_0v9>;
 	status = "okay";
 };
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
