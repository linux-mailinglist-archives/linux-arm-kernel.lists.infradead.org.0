Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87214FCF7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SMx233gUr4JAUgu/vipagl37Ky3RwshNq+0Tlgo24AM=; b=G4KN/2JF+qhR6yiMYA7fb8bWHw
	/92Sqq1Aj/6z8j5qbxDsYkIqKy0q6eTR8WtimWzkaGyjLfhiKgcG6KrmDAVAz45c8D11zWvdNbCBE
	x1ZI7ahcenZlyJRdvp8T81skNqC7Ph5UBve+rNRB/hj3f9RsMWCUidbs8C3In6+YEo1PUbxqKFnhX
	/CbzDPxUBBpVQ6s7LaTyaueOBOVvp2Z63P4w7mCB4Lzqjv8hxJEIUkPPqd2NcBXbbbLLzHOeDJlWX
	47yo+jRoqUBEkO/LO+ihTIrRjdiSD/qStJT51YMSmJKP6k3Rv3ZiP+VQydg4PvI6CJ/fDo7hxI806
	/b08QR2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5ak-0003Mi-29; Sun, 23 Jun 2019 16:43:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5ZJ-0002XA-U8
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:19 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so5771698pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=l52fWtW3aoPkxwNQa5fIqgZrHE13Sc/TSQJ/idB7mO0=;
 b=e522gMpk4cJiXZ8WanDck6Eu2glNq4tzW8JKnszog3QBvg4Ippfq8hNQnuBo94orbX
 u2gMCzLLiqfDEbsZASmbJ/LDbnQHM3WuwjsSQks2HwbcjZwW8bYclLUg8YNHN4cRskuG
 1mxiV6/zUeI2UHI4i07lZEVAddmJg3NlXLYI0Cea4XUSP2KJCoRdXJCu5ywoyQBBrO4J
 gSDJzHwbDUQ41U4Hp9VyyQS5koSpmaIYzZII/KVK+V0OGPFxqs7Nb+IC82AvHAMrHN62
 NMkiDDwZjezT0qG3aFg6JiCw+YhtJ2roIWJnfE6wpzAZTmn7ZmgEwFn1BGH1knsQvnET
 Lwug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=l52fWtW3aoPkxwNQa5fIqgZrHE13Sc/TSQJ/idB7mO0=;
 b=FFMjtPNVBkU9N8hxg4PN3m2JYAXZzjVRUP8fbxOCuzLC6PqBnGHHeCPA9s2M94FUJj
 8Ru7lCANDOHtJires87l4CAsMtTEkABdbWnBtcitvgAzAKBsy31N7ydEGFovGBBM1Ifq
 v+WRT4j3cmRUEewmC976H5Sh6NqeDgK5DGtuzPanPNDmy1tMwSba8EWRYm1caaz7BtJw
 2hwwd9YJvTT44+QQOhl9FE/t+pv6iNGyoth6aF03rAIJk+VSkVhWVGx42HrUTbS/8m/f
 sQFWPXA+nOjfub7GWdaPqEDUSpw2cR/gF5Hd+WHCKM+Y7tqIj7QEmiSVR+sWff2pTtgE
 6QsA==
X-Gm-Message-State: APjAAAVTdXe8AfDwGLJRP3Mqj7rPyEq3qAxkz2IVqH8ac08FHCnnAr3B
 p/onlV2qMDzCwBOwdoqx1Ls=
X-Google-Smtp-Source: APXvYqxwcVFm4cX8NcFvvREnvAiZRJODJ0isOyybQ/E6r9Z7HRNVzLSobEYtQ42YhiYekF7fI++91Q==
X-Received: by 2002:a63:8341:: with SMTP id h62mr17783424pge.206.1561308137073; 
 Sun, 23 Jun 2019 09:42:17 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id m6sm9744878pjl.18.2019.06.23.09.42.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:16 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 03/11] thermal: fix indentation in makefile
Date: Sun, 23 Jun 2019 12:41:58 -0400
Message-Id: <20190623164206.7467-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094218_009116_F6063E36 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
