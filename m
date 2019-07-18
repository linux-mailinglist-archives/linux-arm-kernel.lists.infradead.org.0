Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A826D1D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0ojCSC8sr6EW54zL5U6WCxUgN9Jogfdu4YtsrT/+jM=; b=geKDlxBqXftueY
	zikLPyYrF8XNYY1v2IJgk4CDsJITskJNeQoBHk/hL0uONrVTDzNFjq1tbM1d6WeHXxWjfj6M/JlI4
	RLhHQGfHoKpM8wpAnNqv9TC1i/0ZJCXCbFyqC309hzCSpOfHQR9TqP063VcEmmtOEyevzYl3AOVon
	xKw0WRrQvGekbNavTS9Hoy8ixJbdjJrtz8pIY5FrUuXftucnhv8FPzlS5GxOJls3fnIy++YpoboUF
	dl1kgIHQbmEOxCP7Sx1GRPXU2tDv91AETZ+KfTZA/P29AfNgIg2pehFfHF2M5qWqJrtQDEsNWxOeX
	Nw4s0neUqNXd4Kd9OjJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho97r-0003bx-C2; Thu, 18 Jul 2019 16:19:23 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho94H-00084D-Jf; Thu, 18 Jul 2019 16:15:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id h10so27963191ljg.0;
 Thu, 18 Jul 2019 09:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0RCLW68vHH+vr1sNZN/Hm9G326YwkBfSgwm6bfpQ0fY=;
 b=ZnlB+CKTzEj1U0fR68ra6rOHnDCqKGUa57UveKCIjgrSEOZAuPINrHMWsT2/ZZFybt
 IyBjBCFm6R3c2ZGGk1CvddB3tu41MEKGeE0snLjCqLSorK9hzqtBoH2MYBLivdH1RZ/g
 vTwdu7tNs9Zda5r86eeZADc4HkP2/ZIw9Kmc16Ok0in8KWvYpWjpy2WJwQuEfJctkatj
 iXACFaRRnYnl7UAPq+Ho2DSjN9KOimFed8B88Xmz3fXzzt9zVWnMXEa9/kBqQ4td+gki
 x4r7kWZ72upSPvVJ3uL368I2NwX9M7HepNAzVOxrl2k3cVCDYJ/GYX80rn6ES6tg2Vvk
 PKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=0RCLW68vHH+vr1sNZN/Hm9G326YwkBfSgwm6bfpQ0fY=;
 b=M5k9uuhpyZRhXlLiOIbyYOcT56qWBweFAHEOZx834cWkGZWGNLwn0yj+NgTuu7ENcd
 iewS3S4+k5MTQQrb0CajLUwALEV1ty63jUZZ9iCpGDCDfYGKEtdgyB05/l4YHvzdtqlf
 Jr3aI6dvr8ZV5gZpn212gqns6psMpoqCgUSiJxYgXot6MR4K8uPVlTFL1SLLWWfwwWx4
 0iYifzlZ+Tiw5DmZhR5UQBduIAjucB2+8mlUZktFQRJBJKIHXaJIsMa3a1s/dmTBN1nV
 R085JiXLd2aaaC8zAKTKdEQ/Ag2WEVTyWZdc+jRsife+Qb3MLuKYkUY5Wlz2Kfgx/cP+
 DLzw==
X-Gm-Message-State: APjAAAV4ojAdNhtziY212yf6csyO9qg/6hABluF86jRVPfcLYnKF1FDX
 eH6CHtwq5cxC4pw/VW2wYiI=
X-Google-Smtp-Source: APXvYqwjeajtI5jUKH3Q/AaZHjPFQyY8Vv8MP/3SMJ9zaJ0mIrocqxV1piFukjyD79ZkZiBc+JB+tg==
X-Received: by 2002:a2e:8744:: with SMTP id q4mr24340285ljj.77.1563466539498; 
 Thu, 18 Jul 2019 09:15:39 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:39 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 10/11] drm/mediatek: direct include of drm.h in
 mtk_drm_gem.c
Date: Thu, 18 Jul 2019 18:15:06 +0200
Message-Id: <20190718161507.2047-11-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091541_766675_0334D5A3 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>,
 Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org, Stefan Agner <stefan@agner.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Do not rely on including drm.h from drm_file.h,
as the include in drm_file.h will be dropped.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/gpu/drm/mediatek/mtk_drm_gem.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
index 9434f88c6341..ca672f1d140d 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
@@ -5,6 +5,7 @@
 
 #include <linux/dma-buf.h>
 
+#include <drm/drm.h>
 #include <drm/drm_device.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_prime.h>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
