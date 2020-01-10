Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33527137493
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SCf//dPYvo1qdnOo83Y1G4bKWXDduARXdLgiUko2gM=; b=cwjgtu/wr0akFP
	HNA6YWFM3I0OzVaMbdtv75Wi1kRPM3dYga3wnEVprYPSvqC2D9mzc59ByMmWDaB3VtcLqqhb5W/d7
	/iYnq2PQRxLc0Jn76bPjEpNkGkoDVyWMKRxaFH7VCgoaBzWYBRXd8uIj0Tij+pJs17LvebxIy3LKB
	Ojyu2oh7CEy8sIdudXTNZIoF0BGB9hjw5VZCY61v56jyqcztwpF8z0Lxs6A+SKSJHH+IQ3niskfqs
	qRgtnzKRvfJH40JxJ+nVsGKzzQ95BMEcr+q9jq3pgnV5+7SudDpme4yH0IkUEOBsPCUjVST9gQz2z
	dgVpTiaByQ2AGV0wNycg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxuR-0007FS-11; Fri, 10 Jan 2020 17:17:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxuD-0007ER-2I
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:17:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so2759803wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 09:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LJ+029g6d1kMuKZjHmcK4CynzHKfYgyeKH9nRPh7CKA=;
 b=lzhbjfPfk19t6AL0qyxVZQ9GlqoWYbfiLPz2M+qi8UINPCtmAmxW5zxIU7dmQVXedT
 iIT6Ngof6Bbf5giZ7v/4QhbEFb0e1HVADVFHFkAdpZ/1PB4Q/aEIKEGgXJoWBuGJxKup
 /Gids0NlPdKQ/AxfQfR85lZCQEMjSKFFcNrQTd+oto2NeRAQUWsrgtf6P5EcOXkMIR2M
 fLKdNRWvDHopsobyZZErkuruMItzSyAAy8i1bgwLEpnm4M3vtISonhgyqJBrIvoUAcHX
 ONuLvlZ/tgTAdjj+3Glr/kP947L+ebAcynuHbhrRIjXsZWIvB7ERU24AVhQYlicZAC92
 GHzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LJ+029g6d1kMuKZjHmcK4CynzHKfYgyeKH9nRPh7CKA=;
 b=mDkmlamqH5yWb494SY0YhT5/Un6LzMDAkr9d28uJ2iZaknjR4AVV4A9mksLLTBu9Bo
 bhYUjyoECABAf2GHeu6fuW3CJ5Y3ERBceXuAkp1ipPFUFYFJZsYG00hEyPxyu/QeKTmJ
 evQThXoo7OE4wS29rlzU8cvpglFEaHh+GaJvjNtUYxnH6WGpVO0/Qb+hiHNXsBKDZTR5
 ySAPL8T5vHoxMYx0CI9JfCS9gMzTSK5YxrG+4X4JqXFerklMekxjkew/QcEVLheAWTrn
 6RzKs1ZbuXSF0kHWhyTk3jOakM86p7Rbq1tONsdEJsLFsb94qTzHash9Oc+OGV1rKIw3
 l+LQ==
X-Gm-Message-State: APjAAAVA3DFbiszlNqJ9QTOI+E43w+Gw1P2yrMO87uhRk1ldRaPnln2F
 KJ12GpHrZ+W2W6iOXEnXNbbJvQ==
X-Google-Smtp-Source: APXvYqzB7908YONDlx6fRj1H2RvZiziBUnC5fh3wvW/XzAeIGcVwXTFgGevXhFrXOXGfE9pTysAfCQ==
X-Received: by 2002:a1c:7406:: with SMTP id p6mr5432051wmc.82.1578676623525;
 Fri, 10 Jan 2020 09:17:03 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:b0ec:c83d:aa26:b93])
 by smtp.gmail.com with ESMTPSA id z123sm3072725wme.18.2020.01.10.09.17.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 09:17:02 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH v3 1/3] clocksource: davinci: only enable clockevents once
 tim34 is initialized
Date: Fri, 10 Jan 2020 18:16:41 +0100
Message-Id: <20200110171643.18578-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200110171643.18578-1-brgl@bgdev.pl>
References: <20200110171643.18578-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_091705_133309_3AED974B 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The DM365 platform has a strange quirk (only present when using ancient
u-boot - mainline u-boot v2013.01 and later works fine) where if we
enable the second half of the timer in periodic mode before we do its
initialization - the time won't start flowing and we can't boot.

When using more recent u-boot, we can enable the timer, then reinitialize
it and all works fine.

To work around this issue only enable clockevents once tim34 is
initialized i.e. move clockevents_config_and_register() below tim34
initialization.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/clocksource/timer-davinci.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clocksource/timer-davinci.c b/drivers/clocksource/timer-davinci.c
index 62745c962049..e421946a91c5 100644
--- a/drivers/clocksource/timer-davinci.c
+++ b/drivers/clocksource/timer-davinci.c
@@ -302,10 +302,6 @@ int __init davinci_timer_register(struct clk *clk,
 		return rv;
 	}
 
-	clockevents_config_and_register(&clockevent->dev, tick_rate,
-					DAVINCI_TIMER_MIN_DELTA,
-					DAVINCI_TIMER_MAX_DELTA);
-
 	davinci_clocksource.dev.rating = 300;
 	davinci_clocksource.dev.read = davinci_clocksource_read;
 	davinci_clocksource.dev.mask =
@@ -323,6 +319,10 @@ int __init davinci_timer_register(struct clk *clk,
 		davinci_clocksource_init_tim34(base);
 	}
 
+	clockevents_config_and_register(&clockevent->dev, tick_rate,
+					DAVINCI_TIMER_MIN_DELTA,
+					DAVINCI_TIMER_MAX_DELTA);
+
 	rv = clocksource_register_hz(&davinci_clocksource.dev, tick_rate);
 	if (rv) {
 		pr_err("Unable to register clocksource");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
