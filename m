Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D20386B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f4jyPI5M/pTiPq8f9YttDzINQkJaxoniKQh1HYfNz0A=; b=Q4Vc/UcVwOwNhi
	l+n5ZMxP1P28Ku/XjcjrAAOErtAxgDLTN+B8ha2Rfw9sNwT1EpGr43afqbNiYR+3Ftx07reQel3p7
	92kTQULHmWZeXTZj4IKRW3zpF86X/6OBSdmImOf3MUm6eMRTi88xztxp6CD4ItGKMycy6ySfO9Sf5
	BIGpTfwZqTZiljwBasTJEMf7VUWSGvtW31pyuL8/N1EP+Vc0w+ZcS5dso4D8h47wvXUmB6zEnmwsK
	4S8XYO1iIUb8VcCLGCNiYjcgh7ODxjsUCMWxieNQ/40Kl8f29DiRcM0v+MG5qG/sLLWtopnULdHId
	L2LACF72kot04S+81swQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAlU-0004hJ-3V; Fri, 07 Jun 2019 09:02:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAlH-0004gt-Py
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:02:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so1333770wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 02:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D/xgR5j9++o/IJFaras/pmlOomePQdSslom82YUYeMA=;
 b=LGNaJv5PZkTpfOgsh2GlidgQ+SwvbmP2ki//SLuYiaD8SMqxB+yTnXeFR0P+/Z+err
 Aj3Ie4TJCW/CDIc/G9b6lEMG4S1yEO9M7y9OxEPT+n+DAAeC3PoZm6nMJk/WSbphkUGE
 pe88nwmO5d+ZD80k1sbbEJy9ULn/qUQOz6CEo6lpciXWWiN2yzczXUzAon3btnYxhtsm
 YIJPeGDylXB7SQyg+TZwvLaZvCTLkf/KNFy35TUISW5oIP6TnCrOoU3pNvmOQC09/zRX
 I2dc8ovK1QBCSbbClg3+bgt4iDAprAXF54kC8uYvJs49pabKoVszun2PCBxFx+/iyLaW
 H/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D/xgR5j9++o/IJFaras/pmlOomePQdSslom82YUYeMA=;
 b=lG9+hKz4qJAUu/9H89iXQ6v/Ox5GysTisBQHjgf5ZcSDlGAXnON5dEgzC/eLBPvGhT
 REHoDP4gWxeR1Qe3q8nikyWaHajrrBk5YXGrSi/yg4HA3voGvW6MGUN4jfAmjd3xKwx7
 zPZ2A0jJABzOXQLt6VR6sht5vCrvazw7FbXYkVCRSulzUD13ErCgEr8FOfy9f8D5QL3/
 wC021YtRXXEfWOinYpZg6KZFjh5soQnOYNfi6fvCQEbuVO4W5J2DcryeSwdUKqr7w57d
 DsVUQNPsVeV5pT3h/PywnczZ5q2Na4/6wZkqc5ELNW9/xRTo8Hz/FEQqi0ETnNSCMXsL
 qdqA==
X-Gm-Message-State: APjAAAWR/NZ/DKJj++eQt2kaNaA1cEj+yENZq/Dwp6TFGEky2gR3397R
 B4G/QvPkExblhX4/9bWCgbjhqQ==
X-Google-Smtp-Source: APXvYqxWxNSKoYoMGfHNmDh2K2l4SWVxASc8qfOvlvmrxrXJSe6LTdHa1sZFO8sV6S7XdvJQD713NQ==
X-Received: by 2002:adf:83c5:: with SMTP id 63mr20099906wre.33.1559898129860; 
 Fri, 07 Jun 2019 02:02:09 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id a125sm1487444wmf.42.2019.06.07.02.02.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 02:02:09 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] ARM: davinci: da850-evm: call regulator_has_full_constraints()
Date: Fri,  7 Jun 2019 11:02:01 +0200
Message-Id: <20190607090201.5995-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_020211_984403_7DD2902D 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The BB expander at 0x21 i2c bus 1 fails to probe on da850-evm because
the board doesn't set has_full_constraints to true in the regulator
API.

Call regulator_has_full_constraints() at the end of board registration
just like we do in da850-lcdk and da830-evm.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/mach-davinci/board-da850-evm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-davinci/board-da850-evm.c b/arch/arm/mach-davinci/board-da850-evm.c
index 4ee65a8a3b80..31ae3be5741d 100644
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -1480,6 +1480,8 @@ static __init void da850_evm_init(void)
 	if (ret)
 		pr_warn("%s: dsp/rproc registration failed: %d\n",
 			__func__, ret);
+
+	regulator_has_full_constraints();
 }
 
 #ifdef CONFIG_SERIAL_8250_CONSOLE
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
