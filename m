Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA41D10046F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:40:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FiztS/VM8u41EfqrgHTZx6fcoWK3RaQaQ1OsFvQEKsI=; b=tJrnjLzJnqfUcg
	G8lj4QQmgp2kmkUXm7o2waxEbKfXP5pYp/lJPD86uohNok7WDAgY2BxQmchLyUULu1tlvFPoy6a6o
	P+F9taPf0y2hfoKW1tcvKchkkX2stz0sKL+InIjmJaworF65x+gx4qYOklspp4KwKPhQ4kxMkiVHt
	2/Ikmb8yRMHTjsQOnsN37YQZ9jIolAPKFJcjG84zd7G6SKd4hOUsZNxgtK4n7kPDV8HnzJOMtNnwR
	5tSq8sNVwG/mgqGv6TWZ4OSXylitsPOS7fjbCvLi026DgIWgfIwmxPSwd0gU/Q6DW8DErp+Jsvvzy
	YLBrg6QrwMrMWASQXDOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfOP-0002gC-Of; Mon, 18 Nov 2019 11:40:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfO8-0002fU-9J
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:40:13 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so9646193plz.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UKlXFmsyCCcDDwPIPUpIzSPGgE4nu5epjuY/dy6jNM4=;
 b=ROuGzm4jkxrXQOcqLXKOOHwYgxDKwtdPl3VFO5rmmHsV1yBi4P8YFqizjyeHwzceSm
 NTwkx2EPcWAlt2MSDtu17OAdb9h1kHTZ2fFPvUFN3W+rvpe1WKWpC/YvImORx4Lx3UfP
 +zvyMSMsSqHOJhHMxRmHZT+A5r9rvh+R36tPkhcC86rtI9t7T00B2X5ftPl0q/uk9dTG
 9tGWjvKyI0dNVhq8TBFPW3wSqvoU9FiyDXk81jWxks+VNiz8/bvtINGEwtZMFGUliW6E
 MmRoh/81FIXROovu5KFBZF1PaD7Y0i4NZTpMOQ6AfJo8pAwK5xYlYPfXylyBF3coPa5q
 JEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UKlXFmsyCCcDDwPIPUpIzSPGgE4nu5epjuY/dy6jNM4=;
 b=VW17ibH9dTJmShhpXztIztqCmldVGDnhvyOpV5QurSfUaijJBxWIDTTYnwyQNkMZW1
 t67VL1GzSrn7BYiilcVrqb1ZcPJx/7phKJpe2DB24BG09f0da2aRhYpPw/4bsiksria6
 2olzZV1YHJmj+4rvVaIoBL6idbR4T2TInC3IQLpvIaLO7QVbKwfPFP2dRqv5LoutgPYQ
 1r1HgQyq2sLop1NfZnBCDrlt31H9diGppiXrQjED3/UhlJ+rbGIYXUdLnGZIY5nmMSVM
 7lCiIuPUGpMMG23jIvZKQ4+Oo2tBmi5m4uiI+VhxdPO4vkIsfdG9QA/tOtoVOZO4nO+R
 gtMw==
X-Gm-Message-State: APjAAAWOf80QzqJx66sCESdPhZrYff/qXrPKpDXP610Vu6iKZZe+cypD
 JRE9xPqNNkiYS2LbOq3k4s8=
X-Google-Smtp-Source: APXvYqyn0Lsr2kVbd6T3MWbNxpcGTpsIQ/Ohr+Rq2gUm+qBRKnowv1C9yHHyvWVJjkkaPpH71dqLLw==
X-Received: by 2002:a17:90a:9741:: with SMTP id
 i1mr39483570pjw.41.1574077211147; 
 Mon, 18 Nov 2019 03:40:11 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id l21sm17515128pjt.28.2019.11.18.03.40.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:40:10 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] drm/exynos: gsc: add missed component_del
Date: Mon, 18 Nov 2019 19:39:55 +0800
Message-Id: <20191118113955.25373-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_034012_363454_A7F86D00 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 David Airlie <airlied@linux.ie>, Chuhong Yuan <hslester96@gmail.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver forgets to call component_del in remove to match component_add
in probe.
Add the missed call to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/gpu/drm/exynos/exynos_drm_gsc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_gsc.c b/drivers/gpu/drm/exynos/exynos_drm_gsc.c
index 7ae087b0504d..88b6fcaa20be 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_gsc.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_gsc.c
@@ -1313,6 +1313,7 @@ static int gsc_remove(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 
+	component_del(dev, &gsc_component_ops);
 	pm_runtime_dont_use_autosuspend(dev);
 	pm_runtime_disable(dev);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
