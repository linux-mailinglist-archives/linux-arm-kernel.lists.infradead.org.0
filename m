Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B35C3AB14
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 20:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJFdHRs+C6l25Z6DQNuK7vwdgCYpwDGmT2At6JSBs5Y=; b=qcZUo77DAGHWbT
	Fsq4363FS4FoprH7U2U7dMBpRGe39o1M9Rg/xchmvtTVJhPOPPxN+aMdD5P+YCW6hRP7gwV1Ef7bX
	6kCasdhk95YeobliUxcT/dafVys7nilbBlY6PfOyFiI7vONePpmxidD0ByIrH1Feq1BcY7f0KVvkG
	SH+Ma6WFVQOXoRJSRhNERmpmGYCX12P6lsR1Pd2FKdYT40fEJM/ywsduKgFnupu2320gl3umVMnYW
	h9JUNbxBswWAFAP2sm0+RM8TgRduuJmhHoacYF1R6UnshHPA5YDDiXjLC5PkDqeIMZLaCB8OebqFY
	Tuiy8nZrSg2DJzWs9aGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha2Et-00056b-Qx; Sun, 09 Jun 2019 18:08:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha2DM-0003eB-U9; Sun, 09 Jun 2019 18:06:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id x17so6864723wrl.9;
 Sun, 09 Jun 2019 11:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o6l+94PYyR5Sk//+/Av+qY/UlCTL0ZemTkfdZsKsuI8=;
 b=SdWX2T5SmsidfZY0juvRr2RV/3P4zrsZFer61k+iFahxhK3NUrLNV7vJqaiiediw4R
 rcD5gjK4F36aGP9zl93OjqUlTqKa+yOuFb1zRg53a0+wk8GFvnBaH8M8tYUWFnkcMhES
 z6g3IjTPw7r0iQvIRiH4U10mEqwsFgh48Epr6t8L1JT2H0LP+CQmVdEwJdC9x/2+GFfe
 ovcWvCt7k9lSwAFW8Ms2DOuzngbf6sdjnjZzkBh4CFHgf+kYTWgHWQ8Lg8qcWOqPJ8R/
 CDsDEoFU29qpw66hFva8GSiCmvLelz82KUglM9YxxtwJTYRITd8hm+1Gx2C1LtklqYtl
 dWIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o6l+94PYyR5Sk//+/Av+qY/UlCTL0ZemTkfdZsKsuI8=;
 b=gCJNgA6nFRIwLcEE9Yj5sWSEHDtS4htNPwfvRMdfrPXvHOFk+YQ5Cv50HKsnRliB44
 mpouV1DNIxJ2OBN4khueh48hjrqlhWXjjD8n/U2VMJ/okFfzbPvhIXUaKSg4t88odanF
 EETxIiddfYxyEVTdcckUXRamgvxnDQH4LFMHu03ZYNPMj7X2PrahrIKws24BOdfjSNZj
 K2Nv8xw2IkhIm09ih1iWwnq3QG9MHsgLPcXnGGja8rMhNimu3dRaTf22RM5zdDA2jkCf
 DknYQF24Upjbb57eVuE24uWsfjhan4HO00759A8+8lxmTTKmf6XNk7DIkxm8YbgHuIZT
 AfwQ==
X-Gm-Message-State: APjAAAUv47ynXp/9uelhlAvdq2x0738l8fL/EvL1ooXLudGL6k3/CA8g
 +O4DmaxksYkFmSF6uBIf3tQ=
X-Google-Smtp-Source: APXvYqwvHItbEUzIdxb67KT8Bn7m2rjiaeTPe7nvO5ksWV2HWlyxwGJBfFo9q42FP5gCm25H0bJ3Yg==
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr7811983wrr.8.1560103602460;
 Sun, 09 Jun 2019 11:06:42 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400B42D8EB9D711C35E.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:b42d:8eb9:d711:c35e])
 by smtp.googlemail.com with ESMTPSA id h14sm2007731wrs.66.2019.06.09.11.06.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 11:06:41 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com
Subject: [RFC next v1 5/5] arm64: dts: meson: g12a: x96-max: fix the Ethernet
 PHY reset line
Date: Sun,  9 Jun 2019 20:06:21 +0200
Message-Id: <20190609180621.7607-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_110644_999334_EEFE2AAA 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PHY reset line and interrupt line are swapped on the X96 Max
compared to the Odroid-N2 schematics. This means:
- GPIOZ_14 is the interrupt line (on the Odroid-N2 it's the reset line)
- GPIOZ_15 is the reset line (on the Odroid-N2 it's the interrupt line)

Also the GPIOZ_14 and GPIOZ_15 pins are special. The datasheet describes
that they are "3.3V input tolerant open drain (OD) output pins". This
means the GPIO controller can drive the output LOW to reset the PHY. To
release the reset it can only switch the pin to input mode. The output
cannot be driven HIGH for these pins.
This requires configuring the reset line as GPIO_OPEN_SOURCE because
otherwise the PHY will be stuck in "reset" state (because driving the
pin HIGH seeems to result in the same signal as driving it LOW).

Switch to GPIOZ_15 for the reset GPIO with the correct flags and drop
the "snps,reset-active-low" property as this is now encoded in the
GPIO_OPEN_SOURCE flag.

Fixes: 51d116557b2044 ("arm64: dts: meson-g12a-x96-max: Add Gigabit Ethernet Support")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 98bc56e650a0..c93b639679c0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -186,9 +186,8 @@
 	phy-mode = "rgmii";
 	phy-handle = <&external_phy>;
 	amlogic,tx-delay-ns = <2>;
-	snps,reset-gpio = <&gpio GPIOZ_14 0>;
+	snps,reset-gpio = <&gpio GPIOZ_15 GPIO_OPEN_SOURCE>;
 	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-active-low;
 };
 
 &pwm_ef {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
