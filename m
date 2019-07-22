Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC4E70198
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVmjzb3wGbA24iOZ11LXC23Xd/vSwLdXjgBV6l++/I4=; b=sA34zQduw+iNtX
	rMq2Nc/pfxSfZZ2m/3UkNFfFDPE2b+vR8mdi2KArWZ5IfX7XGLMueQh0623sKMoitubrwjzRgyIAj
	KjeOo6EWjADLtr6NA2aLIVRYmVPQqHKif+hO0J53mvsO+DfxvgcI//uQTKvQf8vh7NeIB3en/oXdc
	NOtKFRpPUQo/vKGyVADY+OMzZhZGT9XNqI0agNAa7plMaqofSyol7Vq7vbamMnrflFW/a9s2yzM9F
	VQmZMeKwfsYUtS8SMEQqhl3N9C82hTvusR0e62QHG5fwhGqHoBn494/gr67xkCdqXy/dd0TaO4Lp2
	xOlvt/fyO8192bQSAXJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYeS-00041y-Qz; Mon, 22 Jul 2019 13:46:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYcM-0001RE-LI
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:44:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id v15so35275536wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ut01oNwMX57rewfZ2xdsVgjWVgPo2hqv1zk7e2eNV1c=;
 b=Mbw6mQ9KduwIta89J1LYlF6kc7o9GduaI0+z36i+2YY7oFXW+PCLPTx4jo/x6p2lrr
 bmnE83LSxvIXiByTDGashJrMHQFIDsfkQOAym7PDLEp7mOrwZdITOnei15kO7/TIwW92
 9UairCADBliTVQSS4u9xdgFDh3yLDQOsfhO4I+F1vjLKSAnjdyh+5v3xVb3mLqlS2zkV
 YxV5QorVrwRlzvMhRYmTt8lY1h8nuFPSnpAeBJT0SLyrhCvYO8ZogPoIl0Huw6jxgnZ0
 o+EJiIkgWqa6jBvcMAH+Cj6fVgT8sENWgCKGrQLxfOCYp7YQxrxvMQdxt/pxvso7qJf9
 6s1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ut01oNwMX57rewfZ2xdsVgjWVgPo2hqv1zk7e2eNV1c=;
 b=rzBVan/EoZ8pgj6HioSvrvlknS0ieWXkwfO30EzYiqxJAb151uM1bSG/urFdwSmnvT
 zOpTGumvzDMRXH1MFUg1Qjvlnyx2ukQT3Y8iDbNHHwaucdwX8TXx8ChhO1wQq2FY9iqj
 8o/oSJbs7N/p6PToJCEI1X8LlslvVaESR4LsW6FThyBlzhEqxopOmkm6MLQN4kB3ori3
 rB555gnyUGxjVL+2ed3/rCjgWk+O0NiUbWQZA3W0lLix9lsI4Gncze/GU6cndf8XCx+R
 WcBaBgfyiCGBmQh0hA7K1Ax7ZwAJSxSRTiMPHx6z2gy2XSmckYmulaQH2Ez3wfw5qRvT
 P1Zw==
X-Gm-Message-State: APjAAAUxUo/+kSy2WMC6EuTkd/NG2Z7+xiDVHT4LB46n75cEigZXAVNk
 9HVckwPsJ9sX7xIyZtkRHKQ=
X-Google-Smtp-Source: APXvYqzqrhDn87TPfR0stSfqmLuYDN1SzTLtME8rAq3V9wDoFdme8RgMbrLtcH/C2F3SJsvmcaSLPA==
X-Received: by 2002:a7b:cc86:: with SMTP id p6mr59100904wma.123.1563803081131; 
 Mon, 22 Jul 2019 06:44:41 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id p6sm40652484wrq.97.2019.07.22.06.44.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:44:40 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 2/9] ARM: davinci_all_defconfig: enable GPIO backlight
Date: Mon, 22 Jul 2019 15:44:16 +0200
Message-Id: <20190722134423.26555-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722134423.26555-1-brgl@bgdev.pl>
References: <20190722134423.26555-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064442_733547_3FC2C43D 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Enable the GPIO backlight module in davinci_all_defconfig.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/configs/davinci_all_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/davinci_all_defconfig
index 7c2a39305f2b..56c23f8d9f26 100644
--- a/arch/arm/configs/davinci_all_defconfig
+++ b/arch/arm/configs/davinci_all_defconfig
@@ -158,6 +158,7 @@ CONFIG_FB=y
 CONFIG_FIRMWARE_EDID=y
 CONFIG_FB_DA8XX=y
 CONFIG_BACKLIGHT_PWM=m
+CONFIG_BACKLIGHT_GPIO=m
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_LOGO=y
 CONFIG_SOUND=m
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
