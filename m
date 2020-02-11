Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5B3159C58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 23:37:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m3Gx+JcCopZCKX1RAumqoC6Hqj2MQNh+UfuuxWdm7mg=; b=GTgzCOk3El1r9l
	kgS15JfsNgosLzg4oORqB115+LTsjZc5RRzgPBpEKJJ++tmB12XG8/R8Aen0t9d1/JmowNM1aSCOB
	poUa7GAS6NBZmIy4kEE5jTy0KiwnDOhwdSxlz2npi9snns+I91zdGB/Q+ObxLj1+7kMKCwsHWQ5jy
	d2roBGVpkA+dGFUMQvHw9ZxcQvwhgJMi1Ug12p5dZR0wgUXmZbaOLeHeL1VrRvb0qYmQN8c0kN99z
	XPAYHwB9BTbx38NjAguXA5EgQDsnDK5oYqVn9pzXVy7gAFdkMZCVJZ4Yc6WNubxdp2w6Q6RN+qQiP
	CCxBdsG0PGW3LEkp7qTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1e9Z-0005f2-9J; Tue, 11 Feb 2020 22:37:13 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1e9S-0005eb-3C
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 22:37:07 +0000
Received: by mail-vs1-xe49.google.com with SMTP id f9so11600vsh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 14:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=tn5KLhV2UflAg8SWktUj0z7+eGphwmGyKjf8wzfFF6c=;
 b=urSRtZifT/QzvZKFDFC7/ZnQJbkvRzX80g/fbmNyhIMIZj/8ubezc0r7GhuCo3gyv2
 5ww+otf5kKowLgPCCt/07eDrHteSifb/OmAcx9VEH+SCpMf4mazjoPz8mIyQDDp9xC2W
 OmllTh9rDMxYl40+vl9RFvRlxrztbrK27yD4zEun0wkFGcnBmxp34adEaVDFaA0SvSTD
 rPgT9lIp3j/H/DOH9dz+6/gxhd0q2AaqM5u3r1s1UOK3E9YzIz3y+p+At9GTNI+X7PUl
 DJSJfY+VIAAsd6sDTaA3U2UpygMsRQuGNH81kkq4Lkp/Eu+SK+PtWsex4eRPzgJztDyp
 PxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=tn5KLhV2UflAg8SWktUj0z7+eGphwmGyKjf8wzfFF6c=;
 b=AkTRTK1DQt0s6zOmyRsv3rTIbx7rzPJNniLNqEzY1ZxZg9HF58ITszgSi/uVjE0Vku
 BEurs37ZpklnLFyKpp0flDAcgF2p2OkV8g+FKgKJpHNxMsD6aiEpADFBPtMHuEux12nc
 6DOsYjAFikOGvqySoSEDwfNrbmqxE6XXkb6bnQ7ImaNSDXCBJOR4XG9bieA/EG2Sfx7A
 +0U9wMUVyqBl6uk8NBaOBleCD7AK4mQvgXTJKNM/4SR22rMFiKOG4VpTmtCt17RaQdv9
 LDPLNG2iq7054fJAz9NUern93VdFoPNOHrjuTkicFrvfmP8W01X6/yDY7rCgr5eJ1bmK
 ALAg==
X-Gm-Message-State: APjAAAWDsr/ya8kAvGj2msY4sWy4gxXqWdtPLXuRF8Z26LYgKaCkE2r2
 iHTcATAR9wgQzgkUsCN81J0rvsqO9ZLo
X-Google-Smtp-Source: APXvYqyijGY6ooh56SzAuJ6qMrGW2ziMqaiWvXL+KvmMIdnSvi6OHZKuQczrNVVXElDF4HtcbvOaNYXHgan8
X-Received: by 2002:ab0:6902:: with SMTP id b2mr5251519uas.32.1581460624477;
 Tue, 11 Feb 2020 14:37:04 -0800 (PST)
Date: Tue, 11 Feb 2020 14:37:00 -0800
Message-Id: <20200211223700.110252-1-rajatja@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH] spi: pxa2xx: Add CS control clock quirk
From: Rajat Jain <rajatja@google.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Mark Brown <broonie@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_143706_160750_18703DB6 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: rajatxjain@gmail.com, shobhit.srivastava@intel.com,
 Evan Green <evgreen@chromium.org>, evgreen@google.com,
 porselvan.muthukrishnan@intel.com, rajatja@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Evan Green <evgreen@chromium.org>

In some circumstances on Intel LPSS controllers, toggling the LPSS
CS control register doesn't actually cause the CS line to toggle.
This seems to be failure of dynamic clock gating that occurs after
going through a suspend/resume transition, where the controller
is sent through a reset transition. This ruins SPI transactions
that either rely on delay_usecs, or toggle the CS line without
sending data.

Whenever CS is toggled, momentarily set the clock gating register
to "Force On" to poke the controller into acting on CS.

Signed-off-by: Evan Green <evgreen@chromium.org>
Signed-off-by: Rajat Jain <rajatja@google.com>
---
 drivers/spi/spi-pxa2xx.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 4c7a71f0fb3e..2e318158fca9 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -70,6 +70,10 @@ MODULE_ALIAS("platform:pxa2xx-spi");
 #define LPSS_CAPS_CS_EN_SHIFT			9
 #define LPSS_CAPS_CS_EN_MASK			(0xf << LPSS_CAPS_CS_EN_SHIFT)
 
+#define LPSS_PRIV_CLOCK_GATE 0x38
+#define LPSS_PRIV_CLOCK_GATE_CLK_CTL_MASK 0x3
+#define LPSS_PRIV_CLOCK_GATE_CLK_CTL_FORCE_ON 0x3
+
 struct lpss_config {
 	/* LPSS offset from drv_data->ioaddr */
 	unsigned offset;
@@ -86,6 +90,8 @@ struct lpss_config {
 	unsigned cs_sel_shift;
 	unsigned cs_sel_mask;
 	unsigned cs_num;
+	/* Quirks */
+	unsigned cs_clk_stays_gated : 1;
 };
 
 /* Keep these sorted with enum pxa_ssp_type */
@@ -156,6 +162,7 @@ static const struct lpss_config lpss_platforms[] = {
 		.tx_threshold_hi = 56,
 		.cs_sel_shift = 8,
 		.cs_sel_mask = 3 << 8,
+		.cs_clk_stays_gated = true,
 	},
 };
 
@@ -383,6 +390,22 @@ static void lpss_ssp_cs_control(struct spi_device *spi, bool enable)
 	else
 		value |= LPSS_CS_CONTROL_CS_HIGH;
 	__lpss_ssp_write_priv(drv_data, config->reg_cs_ctrl, value);
+	if (config->cs_clk_stays_gated) {
+		u32 clkgate;
+
+		/*
+		 * Changing CS alone when dynamic clock gating is on won't
+		 * actually flip CS at that time. This ruins SPI transfers
+		 * that specify delays, or have no data. Toggle the clock mode
+		 * to force on briefly to poke the CS pin to move.
+		 */
+		clkgate = __lpss_ssp_read_priv(drv_data, LPSS_PRIV_CLOCK_GATE);
+		value = (clkgate & ~LPSS_PRIV_CLOCK_GATE_CLK_CTL_MASK) |
+			LPSS_PRIV_CLOCK_GATE_CLK_CTL_FORCE_ON;
+
+		__lpss_ssp_write_priv(drv_data, LPSS_PRIV_CLOCK_GATE, value);
+		__lpss_ssp_write_priv(drv_data, LPSS_PRIV_CLOCK_GATE, clkgate);
+	}
 }
 
 static void cs_assert(struct spi_device *spi)
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
