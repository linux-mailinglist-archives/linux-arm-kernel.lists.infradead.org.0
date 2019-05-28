Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A2E2C212
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 11:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yvHVJXvCDH0pKSuycWb9CrrylH0l4pj++ilBsA+FYo=; b=Us/A8+b1kLnnWd
	2nWAib0+aaV4DquPmvKU/CvOQzUbHFc0h6UBPMKO8koMNtvqaPvMzYTNbCSCt+yIQaj25/41chgAV
	p8hnkGWal49ZzS5WHkIMKKLiSXCp38zN9cOFolKtZW4BNK/HpGdxMoxOBIwPPUQk+OYoAtPto3qxY
	FDCLG4HVlDf9a2hk97Ffmogc5uDYwgrbHOBtlDoczlDnCkbKLRfKr4G7avFFRhjFWKIW5z7tAOEax
	RY4eFjyLiIyqarXq51ZhqqfLOTjuu36e3OQCn1k5qP9pRCVj+X+GNvCkO+F/ojepx1SA54KsuRQ7w
	gV8j1sorRcEQAjeyg+Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVY16-0005UR-LP; Tue, 28 May 2019 09:03:32 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVY0x-0005R7-Di
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 09:03:24 +0000
Received: by mail-ed1-x542.google.com with SMTP id g13so835703edu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 02:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wpi1xWPy33lj9mKcPzFNSCGKIPsIrM24U07obZg4Bbk=;
 b=HRwgYNCSeirp12RNt1fyc5OhQoszF2Uo7tDWacf52/s+HTFiZCUvyKuqcMcCFLqTo7
 osyTlqilBk3yRLl/Vm39fichaec5uHYWxg/SR+yE+xqDXUsKId+uFHmCikQYi4P9iErW
 GcKPar6d/CdwBiFSNkAYtg+09d1NA/M8qXEg4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wpi1xWPy33lj9mKcPzFNSCGKIPsIrM24U07obZg4Bbk=;
 b=i8n4ZASfPX6WENExrCRh0UMB0RtlOdDqAl5rwdpRBqyyXSS1PqXD75YoTMN9lcHt4O
 wndF4hq4fJLq55rG1mria7952aB6j2ZkWpUGln9AMFB+V4HYtP7LCu/IgcNvjgw4OlhZ
 V70i75bjyz4C8wFcmPlr4LnTY1HUlIC/TeDUhy56FNZQNdxBlaXYeYK3BWYJoxQjb5Fp
 N2jEZg7f9bX6zhhOMhQ2nFvZhWj3n2Z7fvZ8/i2XZLpbVWAzpNysEOnn17JB3RJuYVyI
 C7elByeRdS9rARjdJMsFufwXhM3M/J3MFcAFNS5UiJaXHzjQvuGYCl1UNxRziAm1/EKa
 Gsew==
X-Gm-Message-State: APjAAAVHbJR1Y8z5xyjDVbQXq3D7zy0u5IDuc5hYqwG6AcCXQCpmsFtE
 wRepmRNn6VUWBNtR40T+QBddhw==
X-Google-Smtp-Source: APXvYqyMZ+XP/DYBnT+b0/bEtV1bg4DZ2v7pGi2tkNPgOMj6ozhRdzLU/jwSi0kUA3Q+ESL/hNZuXg==
X-Received: by 2002:a50:ad98:: with SMTP id
 a24mr127149884edd.235.1559034200289; 
 Tue, 28 May 2019 02:03:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x49sm4072656edm.25.2019.05.28.02.03.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:03:17 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH 06/33] fbdev/cyber2000: Remove struct display
Date: Tue, 28 May 2019 11:02:37 +0200
Message-Id: <20190528090304.9388-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_020323_466531_159A8150 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-fbdev@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 Russell King <linux@armlinux.org.uk>, Daniel Vetter <daniel.vetter@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Entirely unused.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/video/fbdev/cyber2000fb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/video/fbdev/cyber2000fb.c b/drivers/video/fbdev/cyber2000fb.c
index 9a5751cb4e16..452ef07b3a06 100644
--- a/drivers/video/fbdev/cyber2000fb.c
+++ b/drivers/video/fbdev/cyber2000fb.c
@@ -61,7 +61,6 @@
 struct cfb_info {
 	struct fb_info		fb;
 	struct display_switch	*dispsw;
-	struct display		*display;
 	unsigned char		__iomem *region;
 	unsigned char		__iomem *regs;
 	u_int			id;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
