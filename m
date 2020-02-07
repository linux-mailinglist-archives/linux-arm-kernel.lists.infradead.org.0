Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60305155217
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 06:28:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3f0xGky0/mI1d7leuL271GS1M/3EtPi2mcGlHrbC8U=; b=sXuCYFvE3WKH+E
	A5J0g4SQHDqMfTS3diDwFzUNNY99DgZDpBjCSj6gEw2H4GUS7zvQFRjf2VQvScQvRZA5n4Zu1UDGO
	UK6VaRMTkq+gz1l0w4McYrM+cyIAaUU2GdWERszbuOJvu7Zid/MJWcEVQ9pZoIx0olPzN+KdS9xK8
	ZOD/wLWrbJDzUxIvKq+bh0M/1robD4L+a0LhCK3M7O5zEbPgt4ImzUckHv0qOBDa0tgcIiKIz4vqD
	zHm+IJQ8KiONxtvExy4dVyoxbASQRy+ta7hfxzX8iLO+aMDqj2p4Mz2mIJ/OtsDv+si6cVCxJtqOE
	fMFPBDqMZ3fz3GFHzNXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izwBy-0000Br-Uv; Fri, 07 Feb 2020 05:28:38 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izwAX-0007H9-SR
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 05:27:11 +0000
Received: by mail-pj1-x1042.google.com with SMTP id q39so435873pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 21:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1OPawnjFjdppk48OdmcnT2/7I2TyhqjSstM3nsHqEyQ=;
 b=leq9iVWFFwWc9SzvLj2OAYbrGFc+oehb6yV09Pzq1ffNBybAnHS5RyCURmnyFsX0im
 YaWhNs+Nl6tLggbvcAWNUCDzNlX5w06vGsu5yjYtf3DlLPTZoJsvQlAbq2Zxlqv3EFxL
 1QJBK5hAfU+PS0NW8uNLYDPFvg60Kt9nVRxiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1OPawnjFjdppk48OdmcnT2/7I2TyhqjSstM3nsHqEyQ=;
 b=Jidn+Ae4eKGlGHGlDwTo9vlnLKwE0nKMwlEEMaBr2tXUBrNZxHGHaObWsdtVCETS0i
 hrdEA+riypDAqFUrYfUwfB1Zlh3rZXmHt/+Z/SGEM7ohNVBCjQOy5GcL5gbvQcsorGqj
 Crb88rKV2RhO2F3xj19qwRT5+AUcISiOItaUE2aI/NlEAawVL35Aw1/kA02wX7mi/bXP
 F5UP2o4iQfYnsXhxPm2alKrvlLDchO/B3b32+DomrFdIYpEv9GWtfmFOgxiKqijQJZXy
 S8B5vJmkDL74rsUH0+6MH48ZREBvKU+6FyHbhCMwzUgFOrtTItOdlIdbtOSbuaoAkfzZ
 6jlA==
X-Gm-Message-State: APjAAAU88Jlpd8/gvzonNzHf0B+uUwiBFLGeMk6UsrMqwAuEU9OvB3kU
 v5pPEFn3Muw7an+YSsQjpgQGGQ==
X-Google-Smtp-Source: APXvYqxjKyDt1CleJdBxolsoRem+PmuvkMQG1Lq12fr6aeZNGLxW0nPVgS7A8TQfu34JJoOQ5pUshQ==
X-Received: by 2002:a17:90a:36af:: with SMTP id
 t44mr1758975pjb.25.1581053229151; 
 Thu, 06 Feb 2020 21:27:09 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id i66sm1174485pfg.85.2020.02.06.21.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 21:27:08 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 6/7] RFC: drm/panfrost: Add mt8183-mali compatible string
Date: Fri,  7 Feb 2020 13:26:26 +0800
Message-Id: <20200207052627.130118-7-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200207052627.130118-1-drinkcat@chromium.org>
References: <20200207052627.130118-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_212709_953647_CB2B2A0E 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 ulf.hansson@linaro.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 Steven Price <steven.price@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org,
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

v4:
 - Add power domain names.
v3:
 - Match mt8183-mali instead of bifrost, as we require special
   handling for the 2 regulators and 3 power domains.

 drivers/gpu/drm/panfrost/panfrost_drv.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index a6e162236d67fdf..497c375932ad589 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -667,6 +667,15 @@ static const struct panfrost_compatible default_data = {
 	.pm_domain_names = NULL,
 };
 
+const char * const mediatek_mt8183_supplies[] = { "mali", "sram" };
+const char * const mediatek_mt8183_pm_domains[] = { "core0", "core1", "2d" };
+static const struct panfrost_compatible mediatek_mt8183_data = {
+	.num_supplies = ARRAY_SIZE(mediatek_mt8183_supplies),
+	.supply_names = mediatek_mt8183_supplies,
+	.num_pm_domains = 3,
+	.pm_domain_names = mediatek_mt8183_pm_domains,
+};
+
 static const struct of_device_id dt_match[] = {
 	{ .compatible = "arm,mali-t604", .data = &default_data, },
 	{ .compatible = "arm,mali-t624", .data = &default_data, },
@@ -677,6 +686,8 @@ static const struct of_device_id dt_match[] = {
 	{ .compatible = "arm,mali-t830", .data = &default_data, },
 	{ .compatible = "arm,mali-t860", .data = &default_data, },
 	{ .compatible = "arm,mali-t880", .data = &default_data, },
+	{ .compatible = "mediatek,mt8183-mali",
+		.data = &mediatek_mt8183_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
