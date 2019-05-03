Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29529128D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MEnzZv2ExBivGNtKQN0zP86F1IGYM4x/0mffUb/CiHg=; b=Nqbtl8pY+IzmwZLVGX8IBkEk4b
	+X4yakojAlf6YtSwtYpOwwJXPU5bw/7EVFb5blWSV/Z89RsHwxGEZtmfHUjWOM67v6FXPteFKBLsu
	psioZJPpOHvM4t6XJZpsVttgl/CeB2g8WGWC+YFSVyXX82mkWKGQutrPd/V7XJ79GLJcjMZhkmgMT
	O0aoS7V9MERZ2hxhz5LFLY+ZfvsBWmDWe/ZPmJ5nDGfzP+NT/5NKNvm/p06hAf8sNHBTjB7e5tqXq
	RPKe2GRbsY9ijVYW9YVoCFInue3/u1/maBZnN7rDFeaQg+97S2fZByqv51vswgg2KrgEogXEp4VRt
	ncmswd7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSd9-0007IA-28; Fri, 03 May 2019 07:29:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMScS-0006UV-Hm
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:28:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id b3so2475335pfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 00:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gVZ2hqRXWtLcmOTx5ox6LNbjK3xqtyJ5f5GpEMyudKg=;
 b=g73z3cy3M5ok9jIYuhXWrFWMx1XV6tg1I96a9U9izJ/ZS0IWD229f2w8WplFIuQ1QR
 z2sE3omVPJOieDsXIilbDHaJGWfHRJXc7IXO6oqkUVAkyliKINFiJ/EDxuIMwRj+fDzP
 vQyy6nPLc18A4IlRduGPKz7ckOUAyTMyzTgf7nhGwuxYzDcoOsPD4gtVuTTyt9sK5Up+
 BCExGq0YQSE3V1KBUnH/EPE6w0kk6n14uhBps4LblIH6UJOfo8KaN6/poYqlHUhKi3ut
 7xtfpZt4Zf6rClEiUyDiAU2bs8MVV5G6/85BgWR7fUoaPIcLvWZdOAucVHkkC5AWFquy
 Tc9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gVZ2hqRXWtLcmOTx5ox6LNbjK3xqtyJ5f5GpEMyudKg=;
 b=fbVWN+LP9JWn258hwVG9ztLT4SPvqp63zVpofUrT63q0/NQZt98gfjCxzBCX1v36oY
 oiRE1DB1DZjyS6d2fMVu0jTBWsqSJ497eN24VEwnAfVM06xXorSNJIobb14ZWMHDKflH
 JS6F36N0NkLYAa6DgtTlqjYnu9amW5hzOrsrLyqf9COgbwx14viwtr/YJndH8tBiwqXU
 y7Ra+SHfjYT4wiwAj7HBXege42Eq0dqzvw01xgFytpy1a2C1QB5n15ViQKUweOaRs60v
 HeVCiPzdtH81fa+AbzhM9ocPJb3EKQ7vRmCLCQ/V1Gb0QXiM2GY73TkS6kSkn+4/SeJ1
 xkTg==
X-Gm-Message-State: APjAAAVh8xB3GO3AXGLGDtYKUimQ+ACEI76M0zwBg0v7FvSYYN78Ldg7
 eV/Vv+DL+3hEZh8LMcbufl8IWcbOyh0=
X-Google-Smtp-Source: APXvYqxYc5VWDFUgbHShXTIGD8SRCAC8A5n0VEfy+lTVDjkOMeSveLaECAOjNbh8qqWfEAyLHZWVdQ==
X-Received: by 2002:a62:4602:: with SMTP id t2mr8912629pfa.26.1556868511886;
 Fri, 03 May 2019 00:28:31 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id q5sm1877338pfb.51.2019.05.03.00.28.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 00:28:31 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: lee.jones@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, jic23@kernel.org,
 knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
Subject: [PATCH 4/7] iio: adc: sun4i-gpadc-iio: support clocks and reset
Date: Fri,  3 May 2019 03:28:10 -0400
Message-Id: <20190503072813.2719-5-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190503072813.2719-1-tiny.windzz@gmail.com>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_002832_663836_62B5F843 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

H6 has bus clock and a reset, so introduce something in
gpadc_data/sun4i_gpadc_iio and adds the process of the
clocks and resets.

This is pre-work for supprt it.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iio/adc/sun4i-gpadc-iio.c | 32 +++++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index de6b8556a549..f24eb76d65c0 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -22,6 +22,7 @@
  * shutdown for not being used.
  */
 
+#include <linux/clk.h>
 #include <linux/completion.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
@@ -31,6 +32,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
+#include <linux/reset.h>
 #include <linux/thermal.h>
 #include <linux/delay.h>
 
@@ -52,6 +54,8 @@ static unsigned int sun6i_gpadc_chan_select(unsigned int chan)
 struct sun4i_gpadc_iio;
 
 struct gpadc_data {
+	bool            has_bus_clk;
+	bool            has_bus_rst;
 	int		temp_offset;
 	int		temp_scale;
 	unsigned int	tp_mode_en;
@@ -140,6 +144,8 @@ struct sun4i_gpadc_iio {
 	struct mutex			mutex;
 	struct sun4i_sensor_tzd         tzds[MAX_SENSOR_COUNT];
 	struct device			*sensor_device;
+	struct clk                      *bus_clk;
+	struct reset_control            *reset;
 };
 
 #define SUN4I_GPADC_ADC_CHANNEL(_channel, _name) {		\
@@ -564,14 +570,36 @@ static int sun4i_gpadc_probe_dt(struct platform_device *pdev,
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-	info->regmap = devm_regmap_init_mmio(&pdev->dev, base,
-					     &sun4i_gpadc_regmap_config);
+	if (info->data->has_bus_clk)
+		info->regmap = devm_regmap_init_mmio_clk(&pdev->dev, "bus",
+							 base,
+						&sun4i_gpadc_regmap_config);
+	else
+		info->regmap = devm_regmap_init_mmio(&pdev->dev, base,
+						&sun4i_gpadc_regmap_config);
+
 	if (IS_ERR(info->regmap)) {
 		ret = PTR_ERR(info->regmap);
 		dev_err(&pdev->dev, "failed to init regmap: %d\n", ret);
 		return ret;
 	}
 
+	if (info->data->has_bus_rst) {
+		info->reset = devm_reset_control_get(&pdev->dev, "bus");
+		if (IS_ERR(info->reset)) {
+			ret = PTR_ERR(info->reset);
+			return ret;
+		}
+	}
+
+	if (info->data->has_bus_clk) {
+		info->bus_clk = devm_clk_get(&pdev->dev, "bus");
+		if (IS_ERR(info->bus_clk)) {
+			ret = PTR_ERR(info->bus_clk);
+			return ret;
+		}
+	}
+
 	if (IS_ENABLED(CONFIG_THERMAL_OF))
 		info->sensor_device = &pdev->dev;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
