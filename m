Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0BA13A18F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 08:18:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6vWIlpQ6ORKkqHAtpeRtY0+K+aZKoXN9Zf59g9U59Q=; b=DlR3g5uqq16Ggs
	q2KkL8Dczz+tN4Vsts4stdujesMoofWpjbxJJx6XSApVQNC9uCkJptWT1WzSncXmOweDvtMgZCedP
	M4KyKDRJHuO5dVRFYb3zCo1lshRs0QmYB/lEpS0JhBuLcxXYgR5P1saMY0bZzocTp6mxNWrAt/x9a
	48r07rMnciYceHLVegJ+rm6XU8vNMJkW+vPcf03GNv42F8UfZnSgTCyeH/jZVqnvUbpnhAcq3e57d
	+EuYYRBltPIxt6Wf4rO2agceIQvUrMPoGubxPXrwhd/dd9stO3+TKmmogwGocQMawto+9X4x9Ougr
	/cdu1jh5nTKeXqgVTOxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGTJ-00060g-LF; Tue, 14 Jan 2020 07:18:41 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGRC-00047I-OL
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 07:16:32 +0000
Received: by mail-pj1-x1043.google.com with SMTP id u63so676297pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 23:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OSlwbkk1pzyLFKga0+D5pkXbBE5RP0e6plgOO4eYBJQ=;
 b=WcPRp+7Mdnpj9rMQS/ieZ3gIzSidtcpvoi1VWauuCFrsi4euYkjOGWlPabSCB8OsXn
 fY+YYvvLPmrGfP7dqyY3bXJOdPSwTJ5H54BELtP27PkE73ZBk5FuadDchNDNSvGGv0S4
 eY1/zvVBMuRO/wV9+mzojLylgHcwdzX5frKms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OSlwbkk1pzyLFKga0+D5pkXbBE5RP0e6plgOO4eYBJQ=;
 b=QNUYfIlZB8s3Cm8cayclm8u0lADzTCgEpywPVVw2UxtUUklxGc/eMuQEnp27PjxZU5
 HQ0zxcabdNzR1ul0Glh+/jZXCcfXZ9vlxxPdQNUaljO921bXclgo60EGy9fCr3UYcpHr
 9cT11zo5oWLcajTNHN7R4VIHxkq9eOaajThj23cSI6hS+kvZcztWP5JEYUK9YNU/SnZ/
 4F3cH56j0VV7aIu6TIlqUJ4cGv+r0BEpF+uHhwXCNq05xX7JRHy6YIO9WmFDLRRmekVW
 wkYCe1N9gD0Zyv4zb04JNezPZKuPn9Q50SxVAwD9b6bCB+VXYGpVrdw8IUqhmrRY3yA6
 lWew==
X-Gm-Message-State: APjAAAUTOHh3U3k/6JusfXc7Wy35VsUzY31BDA1equWUx9SQwHfOzHo5
 Rbi8UwtvHyxyC8mvTn69m6se5g==
X-Google-Smtp-Source: APXvYqxAVfz0yEjQZNh09tBVmqQhNTSo4PFJ0addejqjhSdLfGflyqf0R2L9U0djUMmD4gnScDcTBQ==
X-Received: by 2002:a17:90a:bf92:: with SMTP id
 d18mr20309660pjs.21.1578986189911; 
 Mon, 13 Jan 2020 23:16:29 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id b4sm17092976pfd.18.2020.01.13.23.16.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 23:16:29 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 7/7,
 RFC] drm/panfrost: devfreq: Add support for 2 regulators
Date: Tue, 14 Jan 2020 15:16:02 +0800
Message-Id: <20200114071602.47627-8-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200114071602.47627-1-drinkcat@chromium.org>
References: <20200114071602.47627-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_231630_853276_53AD3827 
X-CRM114-Status: GOOD (  13.81  )
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

The Bifrost GPU on MT8183 uses 2 regulators (core and SRAM) for
devfreq, and provides OPP table with 2 sets of voltages.

TODO: This is incomplete as we'll need add support for setting
a pair of voltages as well.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 17 +++++++++++++++++
 drivers/gpu/drm/panfrost/panfrost_device.h  |  1 +
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
index 413987038fbfccb..9c0987a3d71c597 100644
--- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
+++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
@@ -79,6 +79,21 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 	struct devfreq *devfreq;
 	struct thermal_cooling_device *cooling;
 
+	/* If we have 2 regulator, we need an OPP table with 2 voltages. */
+	if (pfdev->comp->num_supplies > 1) {
+		pfdev->devfreq.dev_opp_table =
+			dev_pm_opp_set_regulators(dev,
+					pfdev->comp->supply_names,
+					pfdev->comp->num_supplies);
+		if (IS_ERR(pfdev->devfreq.dev_opp_table)) {
+			ret = PTR_ERR(pfdev->devfreq.dev_opp_table);
+			pfdev->devfreq.dev_opp_table = NULL;
+			dev_err(dev,
+				"Failed to init devfreq opp table: %d\n", ret);
+			return ret;
+		}
+	}
+
 	ret = dev_pm_opp_of_add_table(dev);
 	if (ret == -ENODEV) /* Optional, continue without devfreq */
 		return 0;
@@ -119,6 +134,8 @@ void panfrost_devfreq_fini(struct panfrost_device *pfdev)
 	if (pfdev->devfreq.cooling)
 		devfreq_cooling_unregister(pfdev->devfreq.cooling);
 	dev_pm_opp_of_remove_table(&pfdev->pdev->dev);
+	if (pfdev->devfreq.dev_opp_table)
+		dev_pm_opp_put_regulators(pfdev->devfreq.dev_opp_table);
 }
 
 void panfrost_devfreq_resume(struct panfrost_device *pfdev)
diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index 143eab57180a2e1..30ba11cbf600847 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -108,6 +108,7 @@ struct panfrost_device {
 	struct {
 		struct devfreq *devfreq;
 		struct thermal_cooling_device *cooling;
+		struct opp_table *dev_opp_table;
 		ktime_t busy_time;
 		ktime_t idle_time;
 		ktime_t time_last_update;
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
