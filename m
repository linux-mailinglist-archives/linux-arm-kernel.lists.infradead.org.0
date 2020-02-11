Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9103D159C40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 23:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LtIjwTEUvY4m7L9xyEJL7C4I4CAJGG6LlizNuGLCJ4U=; b=TyYf00GtQDUEjR
	nT4BMiHiUwq36hY02s3ymcdOW7gh8cwlFpT8ZwogTxA2L6bTQBYo8vABkNUSw3TGHtIzGKW0J36rP
	KhqMHvbMFgbpn9q7Af6PDh7HUDUk3ciR2fjcyNkDQu82VOsKH6V/4Lt5Zjm1Na6G2rfF1FdXkjEGM
	D2+buLMEiqVth8GK49CyVl59p/QF5cqepxcyx+oqQmJfbG6FfIPBvdCOFeLunD3Ex1l57qW2XOyfa
	5RUhz47LCmx+QwfuQXQUfwild9LsruCV5te5EM2pBbBOeXhcbnqTb2sqRIQwY/YlbWeQpW59aToGL
	0IgFjx74FmIr2YORk1pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1e70-0003xj-DR; Tue, 11 Feb 2020 22:34:34 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1e6t-0003wv-5B
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 22:34:28 +0000
Received: by mail-pg1-x54a.google.com with SMTP id r192so98197pgr.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 14:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=tCp39nGmh6jfHffZt6h0GnEI2p4k3vAcc1eu6SXs2AA=;
 b=EZ9WVyoWLXE02i7Y/3ZJ4Tadn7u6Jh16ATWGwkj4iIcfHwD6Q5PrJgiyF1fLolo1kf
 G8+VB/3TXt0o6s5jORy1pmkNdIgEo2rudsmW28fXSpBvk2bDJXn5wor3+PopK+lhGOpT
 fGINzh3d/4wTeGBHoleb+loZ5Zvh1hNd5icRXHQJAlq3JL2gqYaiiK1gHegOUUBdr2H4
 /M7q3pkkn3WrdTSSc51R32H1A0VnyC+yTWtXSOyHl3gB3BmUwN7q5a0Ta4lLoEMHgYDT
 ODjfkXMYEV9NwI0CJ/++R2ZzKrhzUtAMmPyX62TafJ0zLyLAjT5y37KT6uzcF1zN8T6+
 EHKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=tCp39nGmh6jfHffZt6h0GnEI2p4k3vAcc1eu6SXs2AA=;
 b=YI0qEQsTVMUzHWBnlq1NUooMa9aZNIcIQPltW5jB52fmkQ9NKJNZ5a6hqKnU5sZYhT
 mO3YKTmIxga146/lZHzWZx//p1IZ4/r9O8k3I7Vasj4xWi+HjnSoTuvrQX8n2cQm4czB
 5CIT93yU8yo7GBK5WHU/6WI/9v6X9scjVer7TcYEYcZQteVjKPDdXI3YINzsvezTIkuD
 NUsKBZ/F6YuogtDlr041hXe8B/ummpRDqcSbF8Y1upHamP2x3r7n2jATXq8bI12TgHGB
 nrAA7Zpt+89FcAyI2Qn30fUYT1seF/tNGMA8Bv4I0XwSjVTfk/ChF5Xa9CyrQqgJYcwY
 +L/g==
X-Gm-Message-State: APjAAAXz9Gwkt5jGEfMP5HakEsXksRjEbprc77m4/43+TRKWwGxFp7TK
 5p7ThCk4qdj8v5Oj9pJWlCUaX4QaxmGF
X-Google-Smtp-Source: APXvYqzL+9Pb948p0Oh4VuEriyt9PtxXSCFN9TUUDh3yeG1rALRrce/dUGXJG8xbwe+qbGzOAhmWir/vouDB
X-Received: by 2002:a63:2266:: with SMTP id t38mr9426357pgm.145.1581460465371; 
 Tue, 11 Feb 2020 14:34:25 -0800 (PST)
Date: Tue, 11 Feb 2020 14:34:00 -0800
Message-Id: <20200211223400.107604-1-rajatja@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: 
From: Rajat Jain <rajatja@google.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Mark Brown <broonie@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_143427_225440_0631742F 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
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

Date: Wed, 29 Jan 2020 13:54:16 -0800
Subject: [PATCH] spi: pxa2xx: Add CS control clock quirk

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
