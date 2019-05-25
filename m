Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD8D2A67A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JtNnbs0UZLyAEGARF34jJIhkqWdaU+SKApH56V+JsL0=; b=kXqoMCHi7HLG/i3vP/eOm0ds48
	syg1MMZtwX4KUcWmkvVCFskhUiUL21la4NTq9QILF7jFKKg3q0EvBicMCrCWfR7azmYXmTRApCutA
	5SBjnQcGPQ9/sLYC97SUQIuK3T3XGTnKkNLdBcTlzwLy8Xm0HX3PhahJT6rSpkM0SesTgKtI1aT3T
	IPltS7ZetE3WliQwPe8umXHvJfRd5lXwV8YsgRYuA2t2zvWwHXs5b+ZMcwzi38XZEL/eTL7XY7w2g
	sLEn7vZsq9irSQgZd2lkZpDNSU5dMwCIv3aG50+vEVIUv4lMB9D8HfNkKlHr6NfgIyFemkFMj76Os
	si+tr3Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbBz-0005OG-Of; Sat, 25 May 2019 18:14:51 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbAp-0004R9-LN
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:13:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id w7so5439443plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EnB6+3mIR1GUxLAogalYOOntDr+t9u6MSm9vkJ1kPoo=;
 b=sf1yzaTwgKxt+8JN/8Rimolz5jnu9NNXetAgOkIApDyLNJDdFaArYWTeELrst+ysF6
 OSYnqiTZkrfnVB3cRFLG1/wpr673pY8FrlPEfzb0E1jSiQ00Tp4GR3TUB70v3povEMVb
 j7mqnt1fWgFe4kDI/gFfX5/cwTOO7x0syZnVkF05kV4qYXzJ+0RoQndloQT7i8rLlGaS
 JDR6h3bcHn1uLys10XUTwd95nyEM4NM+bEuMw3l+TMNrxel0VQhsO+Ie3cORtnR4nBeW
 1M7RLnhQ2jVU97gHKeXAfGqKyYqQPG4j2OqeRb8Xto4qa71HzwBL0KWJYT4mP/lnyyGe
 F9ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EnB6+3mIR1GUxLAogalYOOntDr+t9u6MSm9vkJ1kPoo=;
 b=VPBm/WfspWExaIhtVVeQ/tljAHqTobdOwgeNmVNSAiDGZRyYjN5R7jNFQX1M8l+qPm
 uHFPE7K4ZyitbHpFqknVsx5DWcBGeuJw0B/ncrFfAgpQkDnH/frWWlsBLqaTPfqLnLIN
 zr6VjE67SfrmxGJcMSUUfa+zWPSU+U4JrzKhxTBvIIX0mIfwpVsjw/DxDVdQlfIW90n9
 wChzWTyp+lYqJjL9pYWLvPIZBF6TRtSdG26qRkeLd37c+MwVZdZY9r4n3mo1Em9p/Q51
 ba8M0j2liMKoDNue+CBpXR298BYbCfQjH12msTZP9US3xtou90Hw6u3hx24gDpnubZkj
 1YMQ==
X-Gm-Message-State: APjAAAXkKxJyo2w/weI/kkizbH/LHjbtgE1bWxWUnztke7epvRy3vq4Y
 odshTgZqNSYfQzNDH8H2o+g=
X-Google-Smtp-Source: APXvYqzz6527zTMOTWddGiv92U6XysI9bjqHAgREMygNcxWlnY6V/lVUVwTzV9Erzysf5B8LGDBWJQ==
X-Received: by 2002:a17:902:2983:: with SMTP id
 h3mr88692846plb.267.1558808019178; 
 Sat, 25 May 2019 11:13:39 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id s66sm18914576pfb.37.2019.05.25.11.13.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 May 2019 11:13:38 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v3 3/3] thermal: fix indentation in makefile
Date: Sat, 25 May 2019 14:13:29 -0400
Message-Id: <20190525181329.18657-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190525181329.18657-1-tiny.windzz@gmail.com>
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111340_055779_E0535A79 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To unify code style.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
index fa6f8b206281..d7eafb5ef8ef 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -5,7 +5,7 @@
 
 obj-$(CONFIG_THERMAL)		+= thermal_sys.o
 thermal_sys-y			+= thermal_core.o thermal_sysfs.o \
-					thermal_helpers.o
+				   thermal_helpers.o
 
 # interface to/from other layers providing sensors
 thermal_sys-$(CONFIG_THERMAL_HWMON)		+= thermal_hwmon.o
@@ -25,11 +25,11 @@ thermal_sys-$(CONFIG_CPU_THERMAL)	+= cpu_cooling.o
 thermal_sys-$(CONFIG_CLOCK_THERMAL)	+= clock_cooling.o
 
 # devfreq cooling
-thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
+thermal_sys-$(CONFIG_DEVFREQ_THERMAL) 	+= devfreq_cooling.o
 
 # platform thermal drivers
 obj-y				+= broadcom/
-obj-$(CONFIG_THERMAL_MMIO)		+= thermal_mmio.o
+obj-$(CONFIG_THERMAL_MMIO)	+= thermal_mmio.o
 obj-$(CONFIG_SPEAR_THERMAL)	+= spear_thermal.o
 obj-$(CONFIG_SUN8I_THERMAL)     += sun8i_thermal.o
 obj-$(CONFIG_ROCKCHIP_THERMAL)	+= rockchip_thermal.o
@@ -50,7 +50,7 @@ obj-$(CONFIG_TI_SOC_THERMAL)	+= ti-soc-thermal/
 obj-y				+= st/
 obj-$(CONFIG_QCOM_TSENS)	+= qcom/
 obj-y				+= tegra/
-obj-$(CONFIG_HISI_THERMAL)     += hisi_thermal.o
+obj-$(CONFIG_HISI_THERMAL)     	+= hisi_thermal.o
 obj-$(CONFIG_MTK_THERMAL)	+= mtk_thermal.o
 obj-$(CONFIG_GENERIC_ADC_THERMAL)	+= thermal-generic-adc.o
 obj-$(CONFIG_ZX2967_THERMAL)	+= zx2967_thermal.o
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
