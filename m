Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAD688888
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SMx233gUr4JAUgu/vipagl37Ky3RwshNq+0Tlgo24AM=; b=pEHO8t5pvyCLB8AyhnWDAOHTKG
	QFyUGPIKo141DatiNuLiuDFJDNK0urPzz/CuHun2C5eZaIAZ3n9xSTAvTMu5oUkd1iM/mJ9FHm1HD
	wgKo7RFDsABdQ59u+wn2DNu0x5ht6Jx9GH+cZQ2Ht1QIXhHzo2CTHLnjmKzS62MIJ3TWUIkvKsja+
	+4UaTP5rh2O6FHgge8v62CbBR2g8DeGX+2qtSpLME+XssyKdcvVw+b/C9KywS1CXRVASGU8mj2aNe
	nveO5+cCboUo2ue5HH08Akbthc9O3lt/9RtXEB/N/DHKe90yECg847t0I1ORXj0fVaMS+T8cI1GFt
	bOI+pheg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJxT-0002PA-O4; Sat, 10 Aug 2019 05:30:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJwP-0000po-IM
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:29:23 +0000
Received: by mail-pl1-x642.google.com with SMTP id 4so38767011pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=l52fWtW3aoPkxwNQa5fIqgZrHE13Sc/TSQJ/idB7mO0=;
 b=SM0O7cIBHumsQ4jcRMA3jRfbG/8uHpdHyKP1/m9OqUsDitUK6fDmwbyMStdXWaYfeb
 uwG4TwQJwGkbIZDm+/oa/wTjePH1DL0w5Wa0fBWTZGkbVfmMq1dCXkazSjE9p+PXvxsC
 cb17n22QlHUjEYGxUKggT+zpvIIh5pgLmPF9m718SkEYNp9Wz9kpusTVC7yaiDIMBbrZ
 FZdMFDQYPzzXaDaUfe/5xb6CtgXTL2no5kW4FdG0AVJWimrLP6wOM+kFfTSjnGbCxLTO
 fn1pwE8bZtWUqWoege1KQLdDZvYMIZ+XB366MeBVsV3hSOuEf2q7HiMJQ24K7H+j5NX/
 QS4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=l52fWtW3aoPkxwNQa5fIqgZrHE13Sc/TSQJ/idB7mO0=;
 b=N5ITeIr55lrUDrftnWhdHhudg0QR4e9ysxh35j6gEZqT//ViMCqYyt8794S8Uu9aYd
 3Vw4EmlGDqiWk6nluiwR6ij0yn1zTbf5iVmjfEc0LA9lMdshMMZMkDAMPwIhjiXr4N0D
 Xqp6f+1bPGagudUaLSapeYKLBp04yxBFbVlLLICGgYi/PihG6R1NWzVPwFbp3fStaRc4
 b9RvElfN13THkX8fmloXmO3Qf6/IspJIB51kYG/T37gACTpOWDzTq9RqdUO/YAYGQNQc
 FqP9gpl22bjgSra58j/X//cHCq5/1ehgDNcRVul3bdtzyuORFSt0G/jAkwbfDWK2Hqa0
 5ZcA==
X-Gm-Message-State: APjAAAVyaBwxorLI1rvpbKqNHo58cVGsDYAVNb6Is7ALvtYruYnlq4tT
 VX0uUG/UMSMITN9qpjXrHY+KjwuNNd2DKw==
X-Google-Smtp-Source: APXvYqwUY/gyosJ94ferIscuoGwHXFjy46dluwnpWU7klQFptAP8nSXiVk8T0B+sedSgs2wC6IUWXg==
X-Received: by 2002:a17:902:ac86:: with SMTP id
 h6mr16333345plr.79.1565414960902; 
 Fri, 09 Aug 2019 22:29:20 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id 67sm81943594pfd.177.2019.08.09.22.29.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:20 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 03/18] thermal: fix indentation in makefile
Date: Sat, 10 Aug 2019 05:28:14 +0000
Message-Id: <20190810052829.6032-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222921_871917_3AC32E56 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
