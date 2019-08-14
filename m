Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B298D129
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SB5PORG5dMnh+4CGTILiloYHfni4yxMnXULREFn4kh0=; b=jtg/VLkta73ZGU
	v5jn4cM/MbecwIold6QCKM6P3x7oAgg9uZjU7BZe6Xxt2b0Fi79yPVc82vWr8Y1rGZn1nXYrkceGs
	Bet4RWNdYyXpJdvJuctSdrOnalACUIbvZtW1AZyfTmXq4ItfV/qjpG7ro6duChhgHSUsn0hJXSV8x
	HD91j4KHKyWIDX/jT4W2+jZo9L0R8JOdw+x3/nli2s7ETeLm14UMB1gM6NjAmHmm0kNAQ12iMJoAW
	1rhr0VZ41HgkEmXp2xDDZeOxuT44MQfJH0jGv0liBQ6hJuqLpFTLtYucD83uXsTImdV/qwquCGQcL
	5fk6Z3elzGLf5xZ1oGFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqnV-00031N-JI; Wed, 14 Aug 2019 10:46:29 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqnP-0002zM-Gj
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:46:24 +0000
Received: by mail-vk1-xa49.google.com with SMTP id s80so5417730vkb.17
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 03:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=4SGVKzSfOWWb5eHKsBAlwwo8FxZigEPwWxwM+lh0QRU=;
 b=jsibvCEaVrpw/TIVu7voxbDfejQBHrmB5WikoOLqMXW3Sz6KSshq9AHg5uJF+51H7A
 BzZGy+I1w9PPt7wVhSUK1mLfrAROtdLA6BauC8IvBF3UYhGVr/xbBxog/ugoCPM08jgm
 RMlTYL2a2K6mkw858Ip783T1xBDXOaH3+AcaRHMUV7TcYiCYF6fTPu7GjLFmxSHARTgm
 LedOl5171OM4hR+KhMB2EWKKFvjnL99MoEryuXx36fhWtPGML6nkft+ugutYtG9IS063
 f74pWb3nL7BZ1SXUsllZ71l9xdLWb1j9bQeDEa5Oba66jqEZ8cwGCnOWBlCxSYXjQBAe
 Eq7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=4SGVKzSfOWWb5eHKsBAlwwo8FxZigEPwWxwM+lh0QRU=;
 b=tIZkryEc2E2+DG8fpoCsQbLdDH29xpYovDs3L7OFJDgU1Fj6A2vhNCjIeEuZ8OGgm5
 VeBrBYEsz9iAyRFTX0UF7OtMxsuCP9Zu3Nw0RAeqLEg3fIDORtri5gETZij+1IXjCx+h
 oezsOPQ5/iKvtsMVE7D8uEeVs3PSAY9xxrHbSR3FwJf4yztmg07XDhRZxlKLXJoQSYb2
 E4dtvuuAnpHzHIs6DAG4DQJjKhoPbUdR/6vKNh3dltEf9ydvQ4iL28wv0yYYEgYwqnkG
 bbJpWW4p56uGQfOlutUPjG0mqiQCgRJywUSdDRT6RJ0/wArYdCZgZ8gPrx4otTaaEMmR
 smbA==
X-Gm-Message-State: APjAAAUe8ebjVkkfQZCHxiuYgHgQ9aSXKqQ0bJ13ktLsrT+Xqgu2Rkf6
 Z45KYTddqFCGbiIwM2qhkU4UOWoHpkY=
X-Google-Smtp-Source: APXvYqwXZ7fmlU6P4H/oUbMNN/nO/AXuHUc6uhtW6sQQPOnLTG3uAvcrMDgfHUcNa4GJlUXADTntNKvmw/Q=
X-Received: by 2002:a1f:7c0e:: with SMTP id x14mr6828024vkc.0.1565779581300;
 Wed, 14 Aug 2019 03:46:21 -0700 (PDT)
Date: Wed, 14 Aug 2019 12:45:07 +0200
In-Reply-To: <20190814104520.6001-1-darekm@google.com>
Message-Id: <20190814104520.6001-10-darekm@google.com>
Mime-Version: 1.0
References: <20190814104520.6001-1-darekm@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v7 9/9] drm: exynos: exynos_hdmi: use
 cec_notifier_conn_(un)register
From: Dariusz Marcinkiewicz <darekm@google.com>
To: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, 
 hverkuil-cisco@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034623_558344_D08B0D19 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Dariusz Marcinkiewicz <darekm@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the new cec_notifier_conn_(un)register() functions to
(un)register the notifier for the HDMI connector, and fill in
the cec_connector_info.

Changes since v2:
	- removed unnecessary call to invalidate phys address before
	deregistering the notifier,
	- use cec_notifier_phys_addr_invalidate instead of setting
	invalid address on a notifier.

Signed-off-by: Dariusz Marcinkiewicz <darekm@google.com>
Tested-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
 drivers/gpu/drm/exynos/exynos_hdmi.c | 31 ++++++++++++++++------------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_hdmi.c b/drivers/gpu/drm/exynos/exynos_hdmi.c
index bc1565f1822ab..d532b468d9af5 100644
--- a/drivers/gpu/drm/exynos/exynos_hdmi.c
+++ b/drivers/gpu/drm/exynos/exynos_hdmi.c
@@ -852,6 +852,10 @@ static enum drm_connector_status hdmi_detect(struct drm_connector *connector,
 
 static void hdmi_connector_destroy(struct drm_connector *connector)
 {
+	struct hdmi_context *hdata = connector_to_hdmi(connector);
+
+	cec_notifier_conn_unregister(hdata->notifier);
+
 	drm_connector_unregister(connector);
 	drm_connector_cleanup(connector);
 }
@@ -935,6 +939,7 @@ static int hdmi_create_connector(struct drm_encoder *encoder)
 {
 	struct hdmi_context *hdata = encoder_to_hdmi(encoder);
 	struct drm_connector *connector = &hdata->connector;
+	struct cec_connector_info conn_info;
 	int ret;
 
 	connector->interlace_allowed = true;
@@ -957,6 +962,15 @@ static int hdmi_create_connector(struct drm_encoder *encoder)
 			DRM_DEV_ERROR(hdata->dev, "Failed to attach bridge\n");
 	}
 
+	cec_fill_conn_info_from_drm(&conn_info, connector);
+
+	hdata->notifier = cec_notifier_conn_register(hdata->dev, NULL,
+						     &conn_info);
+	if (hdata->notifier == NULL) {
+		ret = -ENOMEM;
+		DRM_DEV_ERROR(hdata->dev, "Failed to allocate CEC notifier\n");
+	}
+
 	return ret;
 }
 
@@ -1528,8 +1542,8 @@ static void hdmi_disable(struct drm_encoder *encoder)
 		 */
 		mutex_unlock(&hdata->mutex);
 		cancel_delayed_work(&hdata->hotplug_work);
-		cec_notifier_set_phys_addr(hdata->notifier,
-					   CEC_PHYS_ADDR_INVALID);
+		if (hdata->notifier)
+			cec_notifier_phys_addr_invalidate(hdata->notifier);
 		return;
 	}
 
@@ -2006,12 +2020,6 @@ static int hdmi_probe(struct platform_device *pdev)
 		}
 	}
 
-	hdata->notifier = cec_notifier_get(&pdev->dev);
-	if (hdata->notifier == NULL) {
-		ret = -ENOMEM;
-		goto err_hdmiphy;
-	}
-
 	pm_runtime_enable(dev);
 
 	audio_infoframe = &hdata->audio.infoframe;
@@ -2023,7 +2031,7 @@ static int hdmi_probe(struct platform_device *pdev)
 
 	ret = hdmi_register_audio_device(hdata);
 	if (ret)
-		goto err_notifier_put;
+		goto err_runtime_disable;
 
 	ret = component_add(&pdev->dev, &hdmi_component_ops);
 	if (ret)
@@ -2034,8 +2042,7 @@ static int hdmi_probe(struct platform_device *pdev)
 err_unregister_audio:
 	platform_device_unregister(hdata->audio.pdev);
 
-err_notifier_put:
-	cec_notifier_put(hdata->notifier);
+err_runtime_disable:
 	pm_runtime_disable(dev);
 
 err_hdmiphy:
@@ -2054,12 +2061,10 @@ static int hdmi_remove(struct platform_device *pdev)
 	struct hdmi_context *hdata = platform_get_drvdata(pdev);
 
 	cancel_delayed_work_sync(&hdata->hotplug_work);
-	cec_notifier_set_phys_addr(hdata->notifier, CEC_PHYS_ADDR_INVALID);
 
 	component_del(&pdev->dev, &hdmi_component_ops);
 	platform_device_unregister(hdata->audio.pdev);
 
-	cec_notifier_put(hdata->notifier);
 	pm_runtime_disable(&pdev->dev);
 
 	if (!IS_ERR(hdata->reg_hdmi_en))
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
