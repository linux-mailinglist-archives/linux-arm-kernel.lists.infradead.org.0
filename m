Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B94A712CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E6/rEsSms+adh8Rz7c1Qx09kyoVXDsJTiYhMQL0MjZ8=; b=plUz7q9rI/0zlL
	ww1AGWj8HdV/Foxzn/6xe6tBRyqQirdlxEN0ADRXjfei4v8gBNQJ6hz2xY3Fal/jSAKMyrEvv7dUA
	n1gweXyv71WoiIe7gdPhBDZsjZ9O/UukzYjzp4snwzrngTBzeTTEnV1pUKnInGlnTiwK7FiAV52YY
	4bJoJo5W5XKcj9AgHx//hg4DDHWsmc990geTyfHnUO6LHp2rKtTFyoM0LlXsX/HqEIE3k9bVLXi9A
	U+0p4DdTuHg0AgHuJ0Ur7NiNMwrKbjf8CgPInYQ0X7j7U8PoK+GGXKysTRIoe1eMwUmJN3KIlwdEF
	brOy68Lrcdop8vQJIPpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppAT-000158-AQ; Tue, 23 Jul 2019 07:25:01 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpp9E-0000df-RA
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:23:48 +0000
Received: by mail-lj1-x241.google.com with SMTP id t28so40033202lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 00:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mE2HChagiI3S5s6NfeMonK4TUfNCpbFzzFpJElRMKDo=;
 b=EvrDmNoZtsZCbfEoAYrUIBBQDrHOeMhSlONZVuzg5yx++TUomBc0f5syZytI18LV0G
 o/tDLQYUIxyD8HdyhRGPj5vM232NaNfMWHSrHtGTxxUlsB7ebXiMJ8yymC+yrig5Z8ex
 0x4wKTUHs7Oeyy+2hch9y5pxw6lnHKgdyABsyNjcKJY2m9a9Jn6+Bx3vVneOuNBqGiTY
 dkp247Q5+OyYO1t//tVMgyiV3z8uvJ8LQDVFBxG3BlVh8cjT/tLPmrIFrw4xWHeRs8nM
 4iz5oAh5ql27s+SaujK0ZSzR4NYu4v9+Loz6B9sb3vFgxFxyQicdKLJk/OXxAo7k9oYD
 OlnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mE2HChagiI3S5s6NfeMonK4TUfNCpbFzzFpJElRMKDo=;
 b=e7lzaj7NknmNlosAbtJtdIeEPzh5ahcig9guDr+U4wyk9oBKG9vF6rynVbjDaDIC1/
 cGOQhtov5RPl1O4yJ9xtcsu133wDWuFmyfQ5PCaOJIp5INEbQGkeWaOAKau5Vv0SB5JO
 Gkv0b/YPacObduNqnO2dBz3SeDhd3BFUEfEvvJZ/XhyUm/Z3QN7U3mP76hND+PlCtmgI
 lsRnhLZsB4I293lT/jxQwN7AKcchEUyh7UzzBUiYDF5wCnO6ywPEEWmcMggue1B1dVEL
 XmFszmonVl0ptxfUd3KvHmUeyKM0bZi1uT3uUu2RXbU3NsWpsp/4sr4sV7DMEFxgaSEh
 1keQ==
X-Gm-Message-State: APjAAAWIB0gmn2NOQjJvhir5QlPK31qR1rw3t5dl66hp2kpW2/ivKV6R
 +O5yKQhYLfqYIzjfH9/mmNhUU9REvHg=
X-Google-Smtp-Source: APXvYqztnhnjgT5WLAjVzrPIssmvyZsmZwGvFJAVujf/YizKoyCunlwYVguznkrhRKp6Vkg3QCXOxA==
X-Received: by 2002:a2e:9701:: with SMTP id r1mr22058850lji.12.1563866621478; 
 Tue, 23 Jul 2019 00:23:41 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id f1sm7828379ljf.53.2019.07.23.00.23.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 00:23:40 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: ux500: set pull-up on STUIB STMPE IRQ line
Date: Tue, 23 Jul 2019 09:23:36 +0200
Message-Id: <20190723072336.4801-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_002346_364510_94E94E9D 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set up the STMPE IRQ line to be in pull-up mode.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/ste-href-stuib.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/ste-href-stuib.dtsi b/arch/arm/boot/dts/ste-href-stuib.dtsi
index e6c4301c92ea..99c65fc5f8f5 100644
--- a/arch/arm/boot/dts/ste-href-stuib.dtsi
+++ b/arch/arm/boot/dts/ste-href-stuib.dtsi
@@ -78,6 +78,8 @@
 				interrupt-controller;
 				vcc-supply = <&db8500_vsmps2_reg>;
 				vio-supply = <&db8500_vsmps2_reg>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&stmpe_stuib_mode>;
 
 				wakeup-source;
 				st,autosleep-timeout = <1024>;
@@ -147,6 +149,15 @@
 		};
 
 		pinctrl {
+			/* Pull up this GPIO pin */
+			stmpe {
+				stmpe_stuib_mode: stmpe_stuib {
+					stuib_cfg {
+						ste,pins = "GPIO218_AH11";
+						ste,config = <&gpio_in_pu>;
+					};
+				};
+			};
 			prox {
 				prox_stuib_mode: prox_stuib {
 					stuib_cfg {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
