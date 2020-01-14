Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2445113A18A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 08:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVDjjhZbiW4/ciPtBNx0B/4t7V5Szg7/Tvrr4YYcfqk=; b=lYHuHo0DJFXj7Y
	J9h5CMAzLCtdOknMxn9ymfTO+NQucivGz6L9nd5L2dEu2zwKc10DPjVDRxoQdEraA0YlHYN1cY21d
	2Bdm40zAR9RJk+D1X/wTDUPcRCsV/FmKrdJ3x4BGoAyN6kU4a/+5Z0JClw2P6G7T533E1FUeuB5OV
	v/Ty3GiruzLxs/ehFdRHkWNTdULfJrMQ+V2tIpCoSZp6J+JUmTfP2qRjD4Mcz4BXcANDrMpRIE64U
	BlkdXP+GMgQaZaHbTB+u3seGQHIFo79ACjk1iSkbHWRpF5LY1lMWa5tJxK4YG3Evohfr2wsduALKr
	sLzY5UttOYA2PHxGgHQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGT3-0005l5-3L; Tue, 14 Jan 2020 07:18:25 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGR9-000443-Rs
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 07:16:29 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a6so5299840pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 23:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e5zg+Nyx8gIh15cqNDiymw6e+al01EbMcgFt2zvz0/E=;
 b=ithCmGPBDK/u6wxmb7C8KnWpF6VLxN1iVW9EKRTQdp6gCK/wkyNVGMrjLzSyYPtuZj
 KT0dAo1mqlGPGF8vvWskaLxI8E4PJM7ppHVCuRSeKdX+EsfMf57sl+NMqrMkGaZe+a9e
 jMDmnOEr16LjZs3JxaJxhJ4YKueNcn/vlkQrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e5zg+Nyx8gIh15cqNDiymw6e+al01EbMcgFt2zvz0/E=;
 b=TgZLYEAFxH46UPz5f/NXuOxvvePVR4RIImDWcRj0eg8vqbZDZkFFj0JgZxuhHe0xtt
 sKFaybF92J+UGNCvDn7vvdge82P4wrbxbkOrS2LQxvXH53634Z5xplef3+MDQwuvMUPB
 sGXDqOviZzsMjtZ454G8pj7tjF3lkaQSlJ0zHG70WP6GJuBxc/RFPSle0i9YFqJ+DBHK
 crRzDCHfO20QhroN/RXeSrMqXJp7iMCz4mVbraWSL5RF0wHKwgE+nY7qcMvX7vrzQeSF
 UVRBIjTjhcJ7QfaX4OZeTWZ1tJ8c6uiWsL+FRmc5IgODhhXz1ThI6sXQGUbvMwAxxGzF
 L3Rw==
X-Gm-Message-State: APjAAAWFp646Bj9VkRfk1uWLp9hZTL3I8n7ubro22ajSrxC+eCZuGbhM
 7pbv9l1AmRcsiPHAHmAR4pvIpw==
X-Google-Smtp-Source: APXvYqz4laPa/9RzoUxpMClNTomxEKcjjRkPSrqYnULimr14OR/2zncKlcPo6jiMuGgeOUer2Xg6RA==
X-Received: by 2002:a17:902:fe90:: with SMTP id
 x16mr17202238plm.31.1578986186739; 
 Mon, 13 Jan 2020 23:16:26 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id b4sm17092976pfd.18.2020.01.13.23.16.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 23:16:26 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 6/7, RFC] drm/panfrost: Add mt8183-mali compatible string
Date: Tue, 14 Jan 2020 15:16:01 +0800
Message-Id: <20200114071602.47627-7-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200114071602.47627-1-drinkcat@chromium.org>
References: <20200114071602.47627-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_231627_941714_117B5005 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For testing only, the driver doesn't really work yet, AFAICT.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---

v3:
 - Match mt8183-mali instead of bifrost, as we require special
   handling for the 2 regulators and 3 power domains.

drivers/gpu/drm/panfrost/panfrost_drv.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index 42b87e29e605149..3379a3ea754ccde 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -592,6 +592,13 @@ static const struct panfrost_compatible default_data = {
 	.num_pm_domains = 1, /* optional */
 };
 
+const char * const mediatek_mt8183_supplies[] = { "mali", "sram" };
+static const struct panfrost_compatible mediatek_mt8183_data = {
+	.num_supplies = ARRAY_SIZE(mediatek_mt8183_supplies),
+	.supply_names = mediatek_mt8183_supplies,
+	.num_pm_domains = 3,
+};
+
 static const struct of_device_id dt_match[] = {
 	{ .compatible = "arm,mali-t604", .data = &default_data, },
 	{ .compatible = "arm,mali-t624", .data = &default_data, },
@@ -602,6 +609,8 @@ static const struct of_device_id dt_match[] = {
 	{ .compatible = "arm,mali-t830", .data = &default_data, },
 	{ .compatible = "arm,mali-t860", .data = &default_data, },
 	{ .compatible = "arm,mali-t880", .data = &default_data, },
+	{ .compatible = "mediatek,mt8183-mali",
+		.data = &mediatek_mt8183_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
