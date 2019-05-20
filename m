Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2155422E59
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmYQ14YVwqzsmubQAA9ehrRwuJxnYgBUMmifv3ZRal4=; b=rfirVpHjbSu3pP
	ew+9ndUOFNU1pmgNUDvNn4nSWiiydokHZjwb+Oic1kaN624LTaqtk3gGH/NQzN6J1oaPNdOi1uBNC
	kwnNeNsXkcEoKhCyfC+YRLKbRZCtJJFVA7gRWZp8qvJUdfKsKVu+sPc6DlqNFuvSP89cE2knkaS03
	hhrHUksVcTEfmpl6LBfavVaiRT+Dd4xxJF9drBpey+VYkLttsE/B/lbOa9T3+qVD+9mEZYIoI+aPm
	p04dzEDmJHGd7xsZmoXZHzpvmR1egW80s7OvRVkHHF4+yr8RaEHvRV7mLLDXrNuvdA2OuQ/WdSZQr
	bFawU0WUMfErc/oEt3ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdZ9-0006vz-VO; Mon, 20 May 2019 08:22:39 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdZ1-0006sy-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:22:33 +0000
Received: by mail-ed1-x544.google.com with SMTP id w11so22519770edl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 01:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yy90SY5/chDu3adwLkHoQhEeL0uOM1NOJmociVMUU4s=;
 b=Br4lGjx6AYOmC8birJ2u22FSo+1D2WHdSA9O7P/G/jGX+VR9ZzrMY5zOKWlSMg+Ekk
 U7S4K5dfKQHB99S8s5RnjHdJHlT5nyX5dtAmtsyHAEu9H79HKy9hUb5l02yVlqUVeu2L
 gQtPbGsCys6UMB9HaTvvsi7CVFRsYrnsCEO8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yy90SY5/chDu3adwLkHoQhEeL0uOM1NOJmociVMUU4s=;
 b=oE8sgJh/tp0QDJ6N/u32oQzFTIvI8kyFTJvT8b2X3UFCa+lejHCQ36FFN+XhpkOUPC
 t7E6HOCXgIQ10X8FkJZHhBQzs+xZYCDjwh3KN6wiCPMfFR8yBZpIy4ldW5IZ0CwmmZJe
 WY3icvA9ouVRJd+wGoruwvwX1/vW9feo3uHdUWHjdLPpjfSnl/G23C63dCtcrZlm/EKE
 Sea4ogbNu68cfMfpYhF9GS08zhBxgtj0mPOKLKFCcuxPMAT31nzq1GAdQ2VZM1pVAEZz
 wydp9LGUtUFVQK17g2Oum9YG7jPIG/iK9FqoK9xS8kGXpyjVmSe5wdvj4hQ66deTnbZi
 ZppA==
X-Gm-Message-State: APjAAAUH4bZHWUNiTffbO9lcpbtcLNnwQVak6AkUTZxmOW6T4IEupmUc
 7n7FrlZiq1T5byGW35rmtv7lCw==
X-Google-Smtp-Source: APXvYqxdWi1IjK9CrOPrKCYsIFhwO9cGwKSyfvFscq7wlo2HQm/gpu93fgQpMudhegtDzz3SNq4bcg==
X-Received: by 2002:a50:ad18:: with SMTP id y24mr74100466edc.64.1558340549704; 
 Mon, 20 May 2019 01:22:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:28 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 06/33] fbdev/cyber2000: Remove struct display
Date: Mon, 20 May 2019 10:21:49 +0200
Message-Id: <20190520082216.26273-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_012231_497119_04AB7F78 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Entirely unused.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
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
