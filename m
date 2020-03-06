Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB9317B551
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 05:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VGjZXaLGTM3ZPrvCQ6y8enUg4gKAl9t+O/3ODk3dZU=; b=MWULzdKPKFEVzp
	/IHmqT2zkFhTFA7CxCeyoY9p3r8p50tPJSpXFaHmffcRVCmorHq+XCNC4Xp6rYx36nIiVSir5lfOu
	CtXS1ys8TNTsNPW9YV0qZ5+s+gQoE8mEP+hUsvbg/CK/8PuTAneB0K0uW3qpc1QkxJLRKbC9+nlHG
	e+edYW9Ze98Yu4n1DljIv63Ss8A12UvbP+bexTnZ2c9SHroDtXbaMIUNXrJDCfFJukA1KQW3ua+gT
	d0hTKUQVtq20tc7ZCnpUJ3ekhvMOgEhY6xbBRQJoA3h6nXwXvLBCXBZjMqp8uxpNOGhSAG7EmVmJe
	DlLUm/NEQ6I13A03vVUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA4OO-0005r5-HA; Fri, 06 Mar 2020 04:15:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA4NC-00051p-0d
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 04:14:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id y30so443416pga.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 20:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mZHNTw4SE3kOWwVknWFPKUrQ1ZVeKTfbVBIEBgdbJEY=;
 b=k1zGsGNc2op5navHqJUmfJnlqXF2SIMxGwKXMlUCnXt9rkmSdDX6Pvp4QwBWTph7zW
 UmZDgjq/YJN+aB8K4Nr8Yjp6Ctzbra3GsGawt8s/1cy9kNUlxDtcdmKYSdzYOc2ozAwR
 z7EIT/2t6q/nL/wYBvnleCud6PBMt4qDR3dk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mZHNTw4SE3kOWwVknWFPKUrQ1ZVeKTfbVBIEBgdbJEY=;
 b=hp9axJFrBwa0icMWt7yHyOn7p2QJbTzNtinDzTBTo4HBWP/e6sJCxvlPU5wNI/GRv2
 QQis+rlyUgG4RjlEkjF/rRUCm/43Az4NW8IRO4FG8QSaVfT/hLkLgDBZNmgmS+byLbA7
 jEQpn1PZ1N/eyILBnR8PbifqaKuAJ9STzBlxtL8tfC/TBYRvHK8rQFd2Bt7XK477Gmrf
 bj9WLvLAJ/d/XCj8PY5dKxo9TJug2/m+p8NyeidwFXw0v0gMA5PjP//MjK+jhxYd+BsZ
 62CXfdKLCIUp/XGNa99oyxIE+VQVa5c7o8gFRwvcdChXrgpDzPcBPeq4OmgHJajpz4tp
 lyxw==
X-Gm-Message-State: ANhLgQ27xAg/iiIQz9F932Dk4Usit5867sH/fCmI3fljBfVCzAB5xyhB
 JlA94tUrHHMyL8VhxPtqQ2laZQ==
X-Google-Smtp-Source: ADFU+vs/j6aQZZ/8TpvTzBDFwv9bk8b1y/hiw7ywm2BIyvth3q+IirQdvmZj5kxzLWmMLEiAVTW8yw==
X-Received: by 2002:a63:3142:: with SMTP id x63mr1455866pgx.138.1583468045232; 
 Thu, 05 Mar 2020 20:14:05 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id q97sm6295025pja.9.2020.03.05.20.14.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 20:14:04 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 3/4] RFC: drm/panfrost: Add mt8183-mali compatible string
Date: Fri,  6 Mar 2020 12:13:44 +0800
Message-Id: <20200306041345.259332-4-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
In-Reply-To: <20200306041345.259332-1-drinkcat@chromium.org>
References: <20200306041345.259332-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_201406_179112_63A4E366 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Matthias Brugger <matthias.bgg@gmail.com>, Nick Fan <nick.fan@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For testing only, the driver doesn't really work yet, AFAICT.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---

v5:
 - Change power domain name from 2d to core2.
v4:
 - Add power domain names.
v3:
 - Match mt8183-mali instead of bifrost, as we require special
   handling for the 2 regulators and 3 power domains.

 drivers/gpu/drm/panfrost/panfrost_drv.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index a6e162236d67fdf..ff76b29b373e105 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -667,6 +667,15 @@ static const struct panfrost_compatible default_data = {
 	.pm_domain_names = NULL,
 };
 
+const char * const mediatek_mt8183_supplies[] = { "mali", "sram" };
+const char * const mediatek_mt8183_pm_domains[] = { "core0", "core1", "core2" };
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
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
