Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8680D133B1C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 06:26:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+31btzp9GySaW7B7ghLip2feCFaLYuKwPN03O7myNQ=; b=cszxlOzaqVTLYF
	btQLLV7Hv2wLkjbZR6S8giIcuvdGM1TLzwMKZieKCdGSnvMC5GwWKNBqddDJYMlKhgiomWfguQrKS
	y3V90LsOOo6Bm0M4L+YyV+P1dyRViMlTmpCblX4z0+PdEUUw0uI9lDIC1iSjFaYaQhtcRrBJ972XA
	xdmJu30cSyEgf1dWGuGAPUnhA2UNLHXCzRk1MgmZ/94uRslRMz241GePpJsq7j1jkNtwbnIBldH54
	6uNdLXxAEq0eu2YtqmHS52xr6gscmIshP0WJshLBXunU/pjwaIJa4Ct02iAvcewTCPCZ56tcvmiI0
	D/GbKz5GzOKq6cqRASOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3rI-0007yF-Hm; Wed, 08 Jan 2020 05:26:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3pJ-00050d-0a
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 05:24:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id s64so966331pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 21:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tLPzDvqsyKjpMgl6ZY+ZEjymtgHHsFzBQXHTW4eiM1M=;
 b=S3tVQZXgAvZAvGKT4jucRDlF/M0TWOh+3V7E9ZFoKg0xoIXSRxIr5TYGLCUnvTfS9N
 f+oKg6lg9u0QxJzV+FId6ptqevsKmNbYDMNZJ9DJAVLRY/8KFELoCSNhdge1SKfgY0Xy
 AuK7NrZkfWLHM89vkHp0eJTBqDJW+EynagsuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tLPzDvqsyKjpMgl6ZY+ZEjymtgHHsFzBQXHTW4eiM1M=;
 b=jhUFSRPnbYu53Xmz+2inyNpCkbxNGxkaKG7Sqo+Er97HQkPNk5GOPpeYUkehcC7hPw
 1iNsuL7sxRfQNOqyFHsOhilTDwp2nscCDwKNwJIv5dFn19Cuk7NI2r4FhzE8jBVmIjNu
 toZTFvGqUsPflEDV65//V3k9BxeVARWt0X6VkfUT1oqpt6EKSV+ierRiXo05xi332fq7
 1+mOMYS5f44KDBSxWfqB91M2A/jV4OJdbWdPSrzO6X+IJHMB536gLMGOhVhRONAxXk52
 6PbI2+JMNGYGOzYNT+LFnE7/+prAXslyM12072z3wbgLNCPZoGmqFqJpPSUz06TPA8gh
 kvrw==
X-Gm-Message-State: APjAAAW7AwqpNeXttlQch2xQWmmdyzG8RU2Ac/6jFnQkrC3QhMK0W5Ag
 ksM5P0zUVGA8lYTrLmCjMPLcEg==
X-Google-Smtp-Source: APXvYqzoefkOYFH4FXTTMbYJDxtsQiuVsYfMMaYxsSll0XpoVzmSh/ccdl9HE7eeGAdfYbzMduo/6Q==
X-Received: by 2002:a63:ed56:: with SMTP id m22mr3334545pgk.261.1578461055680; 
 Tue, 07 Jan 2020 21:24:15 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n24sm387505pff.12.2020.01.07.21.24.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 21:24:15 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 7/7,
 RFC]: drm/panfrost: devfreq: Add support for 2 regulators
Date: Wed,  8 Jan 2020 13:23:37 +0800
Message-Id: <20200108052337.65916-8-drinkcat@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20200108052337.65916-1-drinkcat@chromium.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_212417_100315_F382CBA1 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 18 ++++++++++++++++++
 drivers/gpu/drm/panfrost/panfrost_device.h  |  2 ++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
index 413987038fbfccb..5eb0effded7eb09 100644
--- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
+++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
@@ -79,6 +79,22 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 	struct devfreq *devfreq;
 	struct thermal_cooling_device *cooling;
 
+	/* If we have 2 regulator, we need an OPP table with 2 voltages. */
+	if (pfdev->regulator_sram) {
+		const char * const reg_names[] = { "mali", "sram" };
+
+		pfdev->devfreq.dev_opp_table =
+			dev_pm_opp_set_regulators(dev,
+					reg_names, ARRAY_SIZE(reg_names));
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
@@ -119,6 +135,8 @@ void panfrost_devfreq_fini(struct panfrost_device *pfdev)
 	if (pfdev->devfreq.cooling)
 		devfreq_cooling_unregister(pfdev->devfreq.cooling);
 	dev_pm_opp_of_remove_table(&pfdev->pdev->dev);
+	if (pfdev->devfreq.dev_opp_table)
+		dev_pm_opp_put_regulators(pfdev->devfreq.dev_opp_table);
 }
 
 void panfrost_devfreq_resume(struct panfrost_device *pfdev)
diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index 92d471676fc7823..581da3fe5df8b17 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -91,10 +91,12 @@ struct panfrost_device {
 	struct {
 		struct devfreq *devfreq;
 		struct thermal_cooling_device *cooling;
+		struct opp_table *dev_opp_table;
 		ktime_t busy_time;
 		ktime_t idle_time;
 		ktime_t time_last_update;
 		atomic_t busy_count;
+		struct panfrost_devfreq_slot slot[NUM_JOB_SLOTS];
 	} devfreq;
 };
 
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
