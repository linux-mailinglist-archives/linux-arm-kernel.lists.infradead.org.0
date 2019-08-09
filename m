Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1AC883CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 22:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M3TdZJ17F/aKjgBWy/9jzCtsrFBqbVBcHx29GkIs5rs=; b=jaKFan3N7ypenv
	A6PA/UzW8h5T98+aftsSqDtzKmMT2+zRwINnUe6RgGJPGxzg4XPOE7/NzyKLTPxsm4Dni8vZ9KH5c
	uHjMSZVh3sokELiUcnQ6ymlC10RHn7vVtcviUxxECHUiok0YqpjFvEl7Aea7IbnzkTUlJX7GA6A/D
	nenvfhv4KN0EJ07qBcgZhnB7YRZCHtDsE8RZzA5dHQKFbFFp/90nxlAcfmrEpZIJT7tHPmHjqM4Yo
	oSZARv7I3xXgBlbjRri0ivD+OrBM7mGgc/HzFPxiDA0whSY8nUMNEYjCcG51qfKHkxysJAbsRznTu
	1wWpTQ3m9lYV/8WcZMPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwBQM-0007Nl-1O; Fri, 09 Aug 2019 20:23:42 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwBQE-0007NI-VT
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 20:23:36 +0000
Received: by mail-pf1-x449.google.com with SMTP id g21so62183875pfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 13:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=kc//5wSK6WFlmTTvjwkok8tpntxs4Pv501PXTXdOfnc=;
 b=p/JCX4JhVEw8kIjVj8ThqkCPM1bt8O7sHsmAgsHuB1eIMXYdn28R//CrTjTd/ikSf4
 qv1AvwyfwMZ8B9jv+EIxv4udxMLY5yxfx3cgCDSozVoNdmU01CwY++sXeEhic+fQW+mB
 eD13JyLXksSENbq7Lc9O2HkyIHs15JzyRV77eG23VPM3j8JRAan2/D15AdHmKUhEwIfh
 jj9IAhXzzBVEqjYdPukdVLXh3RIiTRO9Tz3U8fmpUFG+mQ2pxT3s6OTIGrwFQfUPJEeZ
 CfQdaco/0I1C8clYTr6Ko2xI1WK/GBmbW3VMKyb5eGpU0raw6N99u4AGOWC59yT85XjA
 p9bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=kc//5wSK6WFlmTTvjwkok8tpntxs4Pv501PXTXdOfnc=;
 b=R3iI32Urbip+V811rjNha5xC/EcWs95v6MrMxvFWpn0NYVloOxHMnR9+/Ov+X4D8qa
 bd8U5bO6QXPB3ISqaCBFP/ckoiv9YTYzP/GkzdeMcPoyRx0pXAcVhPetcPlLIcyHg4WD
 WLkglo/xbyjc3UzCd/vjUMFWmvK9u0Ps/Rphbf1Fp2y5D2cCxpzkmsfp2ocqPtZxJo9U
 LQmlO8v7Tspo1C8Rxaw+RhNlwUN/s0RwHNz/GreS+b2fW3BoXGGOPlzPmYCqvYIxLkTi
 o8WVwezx6MlH+vkb/QPCiNaEAIMg5V2yJRtPL9Pe0GmZjrkoexREA5jXkNX2FJnel7K0
 nu/g==
X-Gm-Message-State: APjAAAUVbX1oY4nDGfaJd35R+VtRrb8jUdLNn6SvoO1jfu3s7rr1Tf4g
 2j0VHPvwSknGUh7g512Vg++qEN3mNg==
X-Google-Smtp-Source: APXvYqxLO2V9UFMc9qr25x7OcMR5AOc0D3uL5g1LYV4IcMbzip8K0MF+Fmc0o3cY2cF7wDZOfl0O0wJ4VJo=
X-Received: by 2002:a63:211c:: with SMTP id h28mr18867782pgh.438.1565382212981; 
 Fri, 09 Aug 2019 13:23:32 -0700 (PDT)
Date: Fri,  9 Aug 2019 13:23:30 -0700
Message-Id: <20190809202330.51183-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH] coresight: tmc-etr: Fix perf_data check.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_132335_036459_C6B0BE34 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When tracing etm data of multiple threads on multiple cpus through
perf interface, each cpu has a unique etr_perf_buffer while sharing
the same etr device. There is no guarantee that the last cpu starts
etm tracing also stops last. This makes perf_data check fail.

Fix it by checking etr_buf instead of etr_perf_buffer.

Signed-off-by: Yabin Cui <yabinc@google.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 17006705287a..f466f05afe08 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1484,7 +1484,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 		goto out;
 	}
 
-	if (WARN_ON(drvdata->perf_data != etr_perf)) {
+	if (WARN_ON(drvdata->perf_data != etr_buf)) {
 		lost = true;
 		spin_unlock_irqrestore(&drvdata->spinlock, flags);
 		goto out;
@@ -1556,7 +1556,7 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
 	}
 
 	etr_perf->head = PERF_IDX2OFF(handle->head, etr_perf);
-	drvdata->perf_data = etr_perf;
+	drvdata->perf_data = etr_perf->etr_buf;
 
 	/*
 	 * No HW configuration is needed if the sink is already in
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
