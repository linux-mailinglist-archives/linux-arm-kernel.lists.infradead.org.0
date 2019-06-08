Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE673A168
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 21:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNDSBwOGFJTLvsMNoWfBCJALudE4lsGPMPRboWm6umk=; b=XyDYPLnglE3Ay1
	/rLo5zQd5qUiIiEOx2kLjye5QSF8mmivkPlewPfRxo1LEXLwkItKSOFKkoiN01LqRLmJp4JXZP7He
	yjcXQBaWr+cXQeMVQy3qukLLsPOgFyxRtVPO+zAbyRq1sLSoxi5sWwNSt1bX5WzDQQVADOOXZSbrv
	Q7unrXhQQ5D1mwk1e1sFcBpq1FqAeavzrSk4sJs7TmiwnnrTU7wz488UCNrak6tzMzogG06tlhhof
	lUEB1nj773W7yBDDiDwHbUXYLlC+6xFXkIeeS/EopjqsTPbCS0mYMXM/2aLPj/xnhYLGW4xUNwCpQ
	uej7IYlIEui//AktO7IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZgeh-0000Gm-AL; Sat, 08 Jun 2019 19:05:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZgda-0006fe-0F; Sat, 08 Jun 2019 19:04:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id e16so5321470wrn.1;
 Sat, 08 Jun 2019 12:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aFV8wLAz1XUXEXzc85OBEqEUiMkenB8CQtS+Vt1/BiM=;
 b=W3GI02+AJAI/VaMVlY/zu2APCio3iURaaXWz00uebnZQF1i5wIck7r84AquCmwxoSm
 QVUQlITH04SsEk5yX4n1+Htt/S66k/8DnxhJT+Sj9JpTUeLmarHPrJyerC6uO4U7D+c9
 J9bEwz26MFRSk4K4LX/TvVmadvj7t+s/s/3HH1H/7RfWjKHe7yyPegf1WG7Nb/XAeoL9
 I1TkQgIozoFyBYKtBukYrp+Yg6NwDQA8pTvQacx3wup+DG6a2hAEcjA0ctQ8xZ6u1IXe
 xno9GYn9TZOBxaybhLSP6waj8uZcqRJoJL7xa2PTEX3AE7vOxbv1XKXC8iIl2QEIQIBE
 ExXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aFV8wLAz1XUXEXzc85OBEqEUiMkenB8CQtS+Vt1/BiM=;
 b=W7VdYwSlBxEl0+DQeM+sNA6DmQSSe4Kbpu2B4X5yxIQxQivaf0enXrCQzlc6zifkUE
 4dtO8bmuZ6sisoICu+DPn8pmLijloezzco6vyizkF9hj+VGSct4t2i8TIwF7Fdm/+2yK
 8PCWmlVnhpeCKVUv2aoV6BmjQLUdpInKBcRwlKWhg3HH6goXzVTx/b6lpMsTS2d3qEda
 c9TPsK93d7VJkPBXsJ4y/W3AZi9ITHk8j3ZQAaP7XhvGzDMTBovGCAZSzgliXsRMh+Ne
 jNff1ON0awFuiY/KvQ158yhRJEhEXRe+ZwzFHQJQN4Ozc1LetbZ+I3lSprFQfNRRC1QO
 vxAw==
X-Gm-Message-State: APjAAAX4h7pzSoKOmhtamMmuOPT4CuIBH65OZpi2s+fUZtQddA2Q29KF
 W7pHBoVEDWoVeCiePkFpAXQ=
X-Google-Smtp-Source: APXvYqxeWMqj9C2OusCvfves/EELauA2ecBxZT6qIcQg37NCmz0ahYkESZJeSIOqrDaeXSF3C0s2Eg==
X-Received: by 2002:adf:da48:: with SMTP id r8mr18981182wrl.18.1560020660535; 
 Sat, 08 Jun 2019 12:04:20 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400D12EFF43FED1E981.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:d12e:ff43:fed1:e981])
 by smtp.googlemail.com with ESMTPSA id t6sm5655062wmb.29.2019.06.08.12.04.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 12:04:20 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, jason@lakedaemon.net, marc.zyngier@arm.com,
 robh+dt@kernel.org, mark.rutland@arm.com, khilman@baylibre.com
Subject: [PATCH v3 3/3] arm64: dts: meson: g12a: add the GPIO interrupt
 controller
Date: Sat,  8 Jun 2019 21:04:11 +0200
Message-Id: <20190608190411.14018-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608190411.14018-1-martin.blumenstingl@googlemail.com>
References: <20190608190411.14018-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_120422_564533_B8246062 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GPIO interrupts are used for the external Ethernet RGMII PHY interrupt
line.
Add the GPIO interrupt controller so we can describe that connection in
the dts files.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 6aec4cf87350..50fcdb3e55bb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -2222,6 +2222,15 @@
 				#reset-cells = <1>;
 			};
 
+			gpio_intc: interrupt-controller@f080 {
+				compatible = "amlogic,meson-g12a-gpio-intc",
+					     "amlogic,meson-gpio-intc";
+				reg = <0x0 0xf080 0x0 0x10>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				amlogic,channel-interrupts = <64 65 66 67 68 69 70 71>;
+			};
+
 			pwm_ef: pwm@19000 {
 				compatible = "amlogic,meson-g12a-ee-pwm";
 				reg = <0x0 0x19000 0x0 0x20>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
