Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185D32B01D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYkX7caAhnU5B2MmKq4c7ebY9tvrcv1UGtU/LjEgVDM=; b=YrjZGdvs8Ye8+Y
	KzlzznhlcJYTj4B/ilbrWi1vyeeC6W04VdYtVmpc+8buFRdmrgsQeRbd3MDVllVA4vKgkwzBm7G8L
	WQsbCpwByOvu1znrfB+asou7Q83dBgRII5Ft10TcuFLteUXdF9cI8Vm/Tlf+HSLqigLYByrP/9+6v
	iiarsTQpVrM5/ipl6NOVbAhQyPFM6oX9jwyK/I/tYo3D6NFomj81y0tLqDc2WTQdMB046br4TkoGv
	JgelbEJ7ZfvnwKZn+kjQLq34MbHgfSB/NK7oAlCx7cwNAAKsHcN/c/2+C1IIZpKm5sbTyOB3nSjoP
	rhDFxX3MSHNyboAkHhag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAvL-0001rk-3h; Mon, 27 May 2019 08:24:03 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAuU-0000uA-9f
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:23:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id y3so15217768wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 01:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=omOq/JzjjXBt1z2M772CdUZvGc6HDPhhwS/eGDptw3A=;
 b=FjKzq8TTsoWBgk4mu/GDTvAuxM4Ls9tSWI59jJoe94tDs04gg232DMCf7Famp8QO8n
 Q4bhi/UIAPZWtSFFKuOZWLO2L6/3Avml1T1cC1PzDoJEp1BRI59efpkNpxpZqzNXf58+
 YO7oKuX8xQbAwyUxYYgjmAOiwM1KquVzHlwGJKE70/gbbZkaYzzgEYiuL2Se+dLTDxQU
 nZx8C0MO2Bu6Sb5lyHjVa5yNyS+Sx6AG1sIqr83JIH57MsLdVsOGPYawcRofquMgfpYe
 6jy1oJQf/VNyjXNawFP45wi44yarrcenhxefteVfHS6Uh7laif+nPQWBGsw5cAE9LaWL
 URDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=omOq/JzjjXBt1z2M772CdUZvGc6HDPhhwS/eGDptw3A=;
 b=onkKYajxM1KgUZfF+KRrPBJ2SLp7ZwG/3C0vCbpQ7oBiORCR0RF8y90MYZsBYZfHdx
 o/jZRImzCgdozH0Qij2He60KbLcTIAyKbRktFTa3v0/G+rCyh8h6vIWN2fX56cAWNy31
 U5JlzJpHynRWUQWQb8jU9pJtGgo84XwbTxJDsWd/Q1FWzeWNXGE3Y4VS5EXuROr6Kr0q
 a34JjHQ0OuFTX53lBfWjzwN/e6Xt39AqcwD6AJTTWFumVvXq+qYqyCQtUOWDvz7KT7xG
 qetGpEFVUWtSGVQ5l26P5k8Ub4clcf6c15uSOh9opgs0w+7XYQDbfCSCZrlXSWBlvD7Q
 tMig==
X-Gm-Message-State: APjAAAVM3uzYkV8/1g4Gu0cGuIkEDI7nc27JnZJZ8i0KAUg9ihuoq2fu
 9vcwbENOr+SjQ7SVWQQvnET3mDGgPQM=
X-Google-Smtp-Source: APXvYqw5I9nI20nY+Mj14/1S+PWhVrqS9ssbcSuJLzY6vmxi0EmMFZ4YTlP7p1LnQstfSNZWxPv2Vg==
X-Received: by 2002:a1c:eb07:: with SMTP id j7mr24735522wmh.138.1558945388585; 
 Mon, 27 May 2019 01:23:08 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id n5sm14482754wrj.27.2019.05.27.01.23.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 01:23:08 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 David Lechner <david@lechnology.com>, Adam Ford <aford173@gmail.com>
Subject: [RESEND PATCH v5 4/5] ARM: dts: da850-evm: enable cpufreq
Date: Mon, 27 May 2019 10:22:58 +0200
Message-Id: <20190527082259.29237-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527082259.29237-1-brgl@bgdev.pl>
References: <20190527082259.29237-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_012310_607957_8C078DC9 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Enable cpufreq-dt support for da850-evm. The cvdd is supplied by the
tps65070 pmic with configurable output voltage. By default da850-evm
boards support frequencies up to 375MHz so enable this operating
point.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: Adam Ford <aford173@gmail.com>
---
 arch/arm/boot/dts/da850-evm.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/da850-evm.dts b/arch/arm/boot/dts/da850-evm.dts
index f04bc3e15332..f94bb38fdad9 100644
--- a/arch/arm/boot/dts/da850-evm.dts
+++ b/arch/arm/boot/dts/da850-evm.dts
@@ -191,6 +191,19 @@
 	};
 };
 
+&cpu {
+	cpu-supply = <&vdcdc3_reg>;
+};
+
+/*
+ * The standard da850-evm kits and SOM's are 375MHz so enable this operating
+ * point by default. Higher frequencies must be enabled for custom boards with
+ * other variants of the SoC.
+ */
+&opp_375 {
+	status = "okay";
+};
+
 &sata {
 	status = "okay";
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
