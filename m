Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6664D161
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHeOmqPKY2XvTqjf1UjApV7TrzV0ad+8CHlchAIHokk=; b=TnHyZ7YU8jXKG7
	eKUBKYwPsQWtHJT8i7camTDUEXdUubKJsdq7vdyPNOco6SrEzRd4PaE3M2s6rpkwAaCCV67L7uM3l
	I2i1cnxS3pdvFZSfsEN+jYUP5+ETYrqX2wgWYYkR+8kB+/XaDYA99uCP9Ezei1YBm5HYxscaHHrs9
	Q3909tXyOI4HWtsf/M0CS1Qn024lYAnockALBknfWgxTp8QI0OGL4jmjWxOcOUmye36pbwa4mSdyU
	zGvdR8TiLxDMg22+i1NLq7sQJQeKOV+eZaOlSu6voEWNwVSnKy3JW7QsT4mIK2a57ac2UScBXY9b5
	DFnFjfirzroIC801QkHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdybR-0005JG-6P; Thu, 20 Jun 2019 15:03:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyY8-0003FI-PY
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:00:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id m3so3408430wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xpe6ifKz7SuClVLyY+/xaKksjob7YtLZf3uysFqr17Y=;
 b=jiMFQLFWtay0rRLzh+SDB1Dk3ZblEFbfmuUEilGmgJhW7Qz4KUAOuTU5opeNKO7nWt
 3n6KP2WFOgh4jIbh0CB9N9m692nzvHycKqZRsgw92Mlfi9t2kewxfiNiBnBP5KlFLxic
 9sQlOpOiP0tLfshVxMI7gTuXYR4gXXsG0+JRzy1uCzshnXvPYB+bAiQslnrgRGdC0QLh
 NMa/SVGZJA10pDNrdq1V2bwTLxwVHMR7VPnGXjDgUXHQq/AVt4tl6/UlAxL1WAvBtdy6
 2FmQiQyKUnniVQIQw0J8yoVz/rtn/FkGaG8a51HsMYSRhJKY5QMSsch1/WLNdyKN+7zC
 oXzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xpe6ifKz7SuClVLyY+/xaKksjob7YtLZf3uysFqr17Y=;
 b=KDBKrdqGIJHdAywoJgL1aBvUKSnfZEam1acXdeNS9Gr/J5FRJtNyGZxz9eNlbcLSUd
 L7cGLJgYt/t0Ye+YM5CZauTa+p+AGOOhgO0f1h2YE/P3roq1UpuZXhkGtyIHtMg7Cm/u
 NJpWG61IX/zfeu8+aHaiklYbZILVK134UD8jTujtiFWFNXMK/SD87jK0mRjigp7NKAkm
 AME+/xqps9xILL3C0ogUFDlH9AxBPUn8cPJVhFcI7MK3eCc7XQjCy4VUNOC9mzn/GU7Y
 6OXMdXjek7f4Vz8H31zd8KNUxXLAuw/URDUrHI3QUxus2b8jBPpC4kJe1cTzoDbv40W9
 mVKg==
X-Gm-Message-State: APjAAAUU4iooHvKttRNwJtJ+LnwbL4I+tuLkluou/XNd3f9zZSRtnlnu
 BM6h/GCOG+vjZAvrCXP7E+wWQg==
X-Google-Smtp-Source: APXvYqz/51ebhU5rXHGYChuENG7sgffban6b+i1SauMMfobKCffeLHRbzIr3Iq24zACKZETqEf1n9Q==
X-Received: by 2002:adf:f046:: with SMTP id t6mr41634172wro.307.1561042827408; 
 Thu, 20 Jun 2019 08:00:27 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o126sm6802520wmo.1.2019.06.20.08.00.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 08:00:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT 06/14] soc: amlogic: meson-clk-measure: add G12B second
 cluster cpu clk
Date: Thu, 20 Jun 2019 17:00:05 +0200
Message-Id: <20190620150013.13462-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150013.13462-1-narmstrong@baylibre.com>
References: <20190620150013.13462-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080028_827026_323385B3 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the G12B second CPU cluster CPU and SYS_PLL measure IDs.

These IDs returns 0Hz on G12A.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/soc/amlogic/meson-clk-measure.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
index c470e24f1dfa..f09b404b39d3 100644
--- a/drivers/soc/amlogic/meson-clk-measure.c
+++ b/drivers/soc/amlogic/meson-clk-measure.c
@@ -324,6 +324,8 @@ static struct meson_msr_id clk_msr_g12a[CLK_MSR_MAX] = {
 	CLK_MSR_ID(84, "co_tx"),
 	CLK_MSR_ID(89, "hdmi_todig"),
 	CLK_MSR_ID(90, "hdmitx_sys"),
+	CLK_MSR_ID(91, "sys_cpub_div16"),
+	CLK_MSR_ID(92, "sys_pll_cpub_div16"),
 	CLK_MSR_ID(94, "eth_phy_rx"),
 	CLK_MSR_ID(95, "eth_phy_pll"),
 	CLK_MSR_ID(96, "vpu_b"),
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
