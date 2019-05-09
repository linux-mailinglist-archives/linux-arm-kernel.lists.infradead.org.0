Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7360188C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 13:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2LEn8bT3jBm/pP+VTGaW1x5u7EOyIyNTkOK6J7ZCGtk=; b=VQrJ1m3OKi84cJofqx7ORlTX8e
	wMTTLU/W+RdvgOmktFkvp5jI85Gsuo8sb+DETzfOE+GltseVxunk9eBAsjpgkS5Urvsx6kvYeV7w+
	bVnRRfLFR0RjaBMf59wP2FXFgHizWFSEDAYOTi60Qm1V4/NtIe6GbS5D+2ySuAQdvl3JL1/xQuKWq
	KkdKicM9T/kffETexdprwZHLOBN0wNQA4Iq/WBzZHEdayjaoT5QJ27Ubc2CFS00adbXkPWXtaRmR9
	Q2TbLY/p/rPVFiSYekVu9mHq9IWEP3TOo/UTdkMOoczjRJZ6ru4WWj9yFouaXhIO0F9Y1IQHzJ/MO
	Jb0IfEQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgyS-0000ke-Pz; Thu, 09 May 2019 11:12:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgxh-0008K6-PR
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 11:11:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id h4so2458656wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 04:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QCYNgLeacHF6Po+7GOvr1beHIPnLrcjXHBlwdHrGCU0=;
 b=xrKRJ01FjexwcW6Amk2UUkgupUslrHuPLDtpflcQVkX5Ui7ZAjWgKS3dqp58CehLKT
 m7U0HLJL81DLGNl6Nx8C/Ze2rWrVrZwAO8aM27Roy/Ir2eESs+RkNsf/uY6dyUXS6US2
 e/efAcycx/5aKwBol9pNrIh/G34Q/aw2VxmiGEk2XrAfc/dMaUXXsVbit8T/LT8KlTzB
 SKj1qIdFVKRAKmp4X13yEt/cAu12cSOGL6sjJjgG3NeQqmd9HoVWW9ItPzkBRyBTx2FF
 +WQJjZK3DHfwhBM/4FxygB9SdEVA7e38iRLAhYmZSg67u5I1ZWtN994Oppt1+kZR4FlQ
 4fgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QCYNgLeacHF6Po+7GOvr1beHIPnLrcjXHBlwdHrGCU0=;
 b=MzVxj4ol/m7py27XmfatDwO7SesYYWaCsy2iNnSa8Il0htnSqygequtWUvOwuf9+bF
 p/L0rIbZtSY9gF73QaXow7KyFr1Doh+p+W1ubCZfHihw0rK7M9061XnxztYzu9ytgutx
 3HCsHD7l956OgkVjQ+nOFF1ziz2P5vtWBbWRxmou5306WiP8q+Plq/zhljbApY0oFJuB
 RGaBxHQggkE1Lbq06+ZQCVzyA7ssWs1PEpvz9NCkFVmSYJZzJ2fGfNZmLshSwQa4Q2Iv
 m5Ji7sb9TT1EvAVVctnz5rt7Ml4u0u2F5i6xCcek49u8zsPiLnEQEPsNLO2aQsDER709
 ygsA==
X-Gm-Message-State: APjAAAVxxucaQRNssMiNI7Uu6fFa2Uk/+DPpI8UvzmX876/5Snnbs392
 wzPYjbvSEhouVWyhv0YY7TzV8Q==
X-Google-Smtp-Source: APXvYqzMGoZEXQojTRjD72YL1yIFVm7J1W+VHiI9SvPm03np6VnCkUTzFJcvv1XUeh0PfNamyp1clg==
X-Received: by 2002:a5d:6ad2:: with SMTP id u18mr2489123wrw.199.1557400299916; 
 Thu, 09 May 2019 04:11:39 -0700 (PDT)
Received: from mai.irit.fr ([141.115.39.235])
 by smtp.gmail.com with ESMTPSA id z7sm2299778wme.26.2019.05.09.04.11.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 04:11:39 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 10/15] ARM: at91: Implement clocksource selection
Date: Thu,  9 May 2019 13:10:43 +0200
Message-Id: <20190509111048.11151-10-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509111048.11151-1-daniel.lezcano@linaro.org>
References: <7e786ba3-a664-8fd9-dd17-6a5be996a712@linaro.org>
 <20190509111048.11151-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_041142_282330_877AE81F 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "moderated list:ARM SUB-ARCHITECTURES" <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Allow selecting and unselecting the PIT clocksource driver so it doesn't
have to be compiled when unused.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm/mach-at91/Kconfig | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 903f23c309df..da1d97a06c53 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -107,6 +107,29 @@ config SOC_AT91SAM9
 	    AT91SAM9X35
 	    AT91SAM9XE
 
+comment "Clocksource driver selection"
+
+config ATMEL_CLOCKSOURCE_PIT
+	bool "Periodic Interval Timer (PIT) support"
+	depends on SOC_AT91SAM9 || SOC_SAMA5
+	default SOC_AT91SAM9 || SOC_SAMA5
+	select ATMEL_PIT
+	help
+	  Select this to get a clocksource based on the Atmel Periodic Interval
+	  Timer. It has a relatively low resolution and the TC Block clocksource
+	  should be preferred.
+
+config ATMEL_CLOCKSOURCE_TCB
+	bool "Timer Counter Blocks (TCB) support"
+	default SOC_AT91RM9200 || SOC_AT91SAM9 || SOC_SAMA5
+	select ATMEL_TCB_CLKSRC
+	help
+	  Select this to get a high precision clocksource based on a
+	  TC block with a 5+ MHz base clock rate.
+	  On platforms with 16-bit counters, two timer channels are combined
+	  to make a single 32-bit timer.
+	  It can also be used as a clock event device supporting oneshot mode.
+
 config HAVE_AT91_UTMI
 	bool
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
