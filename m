Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805EB1F873F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 08:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jCZBqzVObqxMVf8WA3ZOQamVemFAQaqY6H7B1+8MHLg=; b=Hfc
	QlhOzEwFv7SxlHgyRMHIwPKRYKR2Zepak7phSKuvRBxIkiFCyRQMQQ+Y2rXBunVUc6AJ/7/ZrhQsY
	zyjoeiy5n3bGqP+nVWStQHB8HqhqngrpLxqRb2CNRokQtEZzaO4D5xqMg3igaV1R08vQsbnI9Jufc
	HEk1ld4tF2h5aaMCt46F0mjjE7VoL/Z8BIg6qA6g6F76hjNHVJJoUFg2rgAJMP3FtaunWP2Qfr/KB
	3rMYDzDsVk/Q7F5I8t5QKU8gA5snWrDbLBHK1Y6Rgs191L+PgTDMsoImHJ/Zwpfu9v5ccUXcb46sK
	ZKz+IEPSfXTJnRwx5h+DkmrEtjOWtCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkM3f-0001d0-Q6; Sun, 14 Jun 2020 06:23:55 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkM3X-0001ce-1u
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 06:23:48 +0000
Received: by mail-io1-xd44.google.com with SMTP id c8so14516596iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 23:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YKS8gM347vC6eBkm4Z/mHFPXutm1BnydR4TUyYY4ZoQ=;
 b=ngmPHhrWqQ3IcGsjjFder735SJJuYeAncWRBp/l/geamiltraOXzmr5I2ygABHqPaw
 FCx/qRrWsG8kJ+wAS60YzXYnZPLpwUWX5YL3ZSb7Xb8AkTNNPJtjzEffwD/PmNusCi6j
 NvKOGSNetOYvZUUZzTIZCP9wthuanXxWPbsqSLqKpa8yI8YuyUWdMA6YQxLNxoD1aasJ
 tmJSG7WRPfu1EyA61NMn+ShfVLfEmDZedCidaN+UkVW7FfpVsnlW3jT/iiROzEvUVItY
 lPGs+TPmmsRCzYnIebL8WJOTdw3pD+0CKoNBdmmInli3cU+s7x5vQnq9bMYla/TgW/Wt
 xadw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YKS8gM347vC6eBkm4Z/mHFPXutm1BnydR4TUyYY4ZoQ=;
 b=fGXgtZGe89nPCgeXowR5JQP19ux25zIPIH5FB3r7y6UswFBL5LaxfQgsw/JXtspxhl
 O2xA8N8RHphrMrzqx8mCDWaLU9MnNw751YP+jw2IO6ObsGqc1PzreJU8zysvzr6bP1Rb
 UBuHeK0uCEZrOAhOezhtfO6ao8Tz4v3rpwS+lG67rWVHuKR72hyZyPKgdIQmz6dQmXUo
 GOTkz3Ya/AU5k/aDwbY4cP8IKXRg3HtOxbQyYDtcxHsfxUfbahVD+k275+KUbL1gGKGG
 ttj/VRj9mQ01YAn4bhWM8g0o2fVXNTWvqxvqhwQ8nBkHxVj3T0kz4MMP2HM5Dradt5qR
 0Zyw==
X-Gm-Message-State: AOAM533utJaz7H5wmZsNJYZtr0ylnDrNOJq9dd1z9hqp0GeRqVNhECtz
 UNktc3eVvWaSijyhjuwh+xs=
X-Google-Smtp-Source: ABdhPJx5u7CZ+5KI8e9/YmR10s/Tdybn2EupE69+Yp3Ek+4luj4xENHKzjVMeL78OQ0UrI1sFa0k8w==
X-Received: by 2002:a05:6602:2583:: with SMTP id
 p3mr9781842ioo.179.1592115825136; 
 Sat, 13 Jun 2020 23:23:45 -0700 (PDT)
Received: from cs-u-kase.dtc.umn.edu (cs-u-kase.cs.umn.edu. [160.94.64.2])
 by smtp.googlemail.com with ESMTPSA id r17sm5944048ilc.33.2020.06.13.23.23.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 23:23:44 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Inki Dae <inki.dae@samsung.com>, Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/exynos: fix ref count leak in mic_pre_enable
Date: Sun, 14 Jun 2020 01:23:39 -0500
Message-Id: <20200614062339.87374-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_232347_097315_40A7D578 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [navid.emamdoost[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Navid Emamdoost <navid.emamdoost@gmail.com>, emamd001@umn.edu, kjlu@umn.edu,
 wu000273@umn.edu, smccaman@umn.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

in mic_pre_enable, pm_runtime_get_sync is called which
increments the counter even in case of failure, leading to incorrect
ref count. In case of failure, decrement the ref count before returning.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/gpu/drm/exynos/exynos_drm_mic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_mic.c b/drivers/gpu/drm/exynos/exynos_drm_mic.c
index a86abc173605..69ff74c2ceb5 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_mic.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_mic.c
@@ -270,7 +270,7 @@ static void mic_pre_enable(struct drm_bridge *bridge)
 
 	ret = pm_runtime_get_sync(mic->dev);
 	if (ret < 0)
-		goto unlock;
+		goto turn_off;
 
 	mic_set_path(mic, 1);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
