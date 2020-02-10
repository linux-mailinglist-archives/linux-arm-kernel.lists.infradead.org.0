Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4F71571AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:27:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtkPOUfOtqG70gEbh9SKttcxcgFZtc3tIJLbwwe9AXs=; b=rUaIwTLRCdH2kU
	DdfaIkn4PegrFmcA1ovlYmaRFLYAmY/jTOfz4FdoYf3oecY7sxzks94aguHl9lrjsDJSMT0zh1dYZ
	sEJl/dSVTkxne7894wFAUdAAmE/zIXhV4E3TkI6R5C2vH4iNDYxjbQ48FZyyOm/DGlibwtWKA8HzT
	9uhb7urVcl6+t16zacRtTATXNawWh36WRiD+bZIX2dd6BtPu1dE2qiOQS99sIzL4ZtVxRQ7c69hof
	tuohlhME3k3NLDAzPvTbu+FmjTNMkbtaiTorCvytjsMrb9CR5uxG7JWjRX5aCm1fPMmfafPU2QnNO
	JYBV3l8/l91xJcWNqVAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15M8-0006TI-I4; Mon, 10 Feb 2020 09:27:52 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15Li-0006M2-Ba
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:27:27 +0000
Received: by mail-lf1-x144.google.com with SMTP id 9so3645493lfq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 01:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RAQUA12B8fw61LvmbPVXA4Z+BIR0fWuOuilM7HoszrE=;
 b=VVAHUdjUGOnhNSSOTwO8j8iNwA8OvvwXz0HNaG7Z4v7KdXZEC9tZABemYa3hh1LtLx
 ND90NS9rpW4koGVStj6d/23RX8gMUD1meNrKBOer/0ZFwfbIbvv9r3MKojNgxzwIyqwD
 pOkd3gf1bnfDlNthtxURSoLOmMiy6aFkN6K2CwxxQTchydoy8vJoj1uV/c73a2YI0hei
 O6zwEchtmBMANO145rD1iSLknThL3aJxkTqDQ10icgrPfMGzsEL8U/bWaFBAwrbt+hab
 EcbqHPv9dTUE7Rcv/WP7yuzPusS31Vgswsd0CUowBqJ3ionGsxwZCEnt1O/VDGw1yWBQ
 dsCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RAQUA12B8fw61LvmbPVXA4Z+BIR0fWuOuilM7HoszrE=;
 b=CGcW6cqXyicX/U3vNXM2Y394kL3EXI44zM955fiL0e26SpQUQobHTAykwEDPaD8Wob
 zRivlMoNLaqXHZjjA4MOs387HJUFGgh0qzhfgkQI1EtfoVpPF+/sReBdveFqgu6Gglrw
 UtLyvhsq8ZgKR1ia5HuPdIoQ0qUr1a0rG0BKR3Dj7uBQ3tcZIZ7z0gI8IWBT+ya3ZgRa
 PJPxeoDYl4QPCI9tPdycM5w5uummGKAtlwUthmO2n3BC9QnZ19C1b6evdzxQKT/iOcaB
 X/y+GTU9/1DN3A9dP1j+yWsIOO0eTk1bYmPrTf8KKBM1XP7k3I7xj/3Vtd7kdPKUfxel
 CrHA==
X-Gm-Message-State: APjAAAVgMyM5vzmU9VVIdE/RF+e6zgUcbEjaXaMoRW1tiIBljGD0dcYj
 tgeuu2F0BCl8jTsqbzlA+s2eMiVDP8k=
X-Google-Smtp-Source: APXvYqxk9fdmZSurzHFLqkRZoeIFcEx44ID1iOZ53/3SGlp3Mue3CfnavApkhrRwMAMIk3wHf4b9Aw==
X-Received: by 2002:a19:4f57:: with SMTP id a23mr257463lfk.145.1581326844610; 
 Mon, 10 Feb 2020 01:27:24 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d9sm5989882lja.73.2020.02.10.01.27.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 01:27:24 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/7] ARM: dts: Versatile: Use syscon as node name for IB2
Date: Mon, 10 Feb 2020 10:27:07 +0100
Message-Id: <20200210092713.279105-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200210092713.279105-1-linus.walleij@linaro.org>
References: <20200210092713.279105-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_012726_396558_B8A43719 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The IB2 syscon should not have any funny names, just call
it syscon@ as per the convention so the schema will apply
properly.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/versatile-ab-ib2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/versatile-ab-ib2.dts b/arch/arm/boot/dts/versatile-ab-ib2.dts
index 5890cb974f78..c577ff4bb4be 100644
--- a/arch/arm/boot/dts/versatile-ab-ib2.dts
+++ b/arch/arm/boot/dts/versatile-ab-ib2.dts
@@ -10,7 +10,7 @@
 	model = "ARM Versatile AB + IB2 board";
 
 	/* Special IB2 control register */
-	ib2_syscon@27000000 {
+	syscon@27000000 {
 		compatible = "arm,versatile-ib2-syscon", "syscon", "simple-mfd";
 		reg = <0x27000000 0x4>;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
