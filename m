Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E1D46AB0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43zQ82lXQtdj8xX2Gz6VJjkCL7SJ9GzHdDYuGELFEic=; b=ZlbMr85QsogMBQ
	PAU+cfC2s/CayAgcH4MCpsB4ywr/ttANTP1JQgFSgj7JQvDx8WXWI+owA8G2NKdwEGO9O0DSS3VO3
	qkqH694O61EhOUDnUZb5m7Jig1h+gKmfqHZ96mrnEPbbhWCdsCxly+ddhF1BrrVW2SgQVWPBvEqkY
	c9dAqNFMnQ35cz0umt4jMXm/6RbO2bpkocL6vhZjaPX5nBpeq1tUSffL5n5qZ+Hmh5F+MGaubhisS
	CRRwGo2gTGV3X+yhTlsTvouyEj8Mj89m1cXLGigcmaa5rnN0WDfdFPCaMBegmSoggYj8xydwUXX/x
	wUDWcNoHcA5SFH7MYsXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsyD-00059u-PY; Fri, 14 Jun 2019 20:38:45 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswC-0003lx-EF
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:36:42 +0000
Received: by mail-ed1-x543.google.com with SMTP id a14so5199282edv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RUJkrBHPGMD0Jak0hv15UuXYYOT/ay4M5iA7uP6K2TM=;
 b=irhEijl3uz1ccHxtPEy4kMwnVw1beSjXcXiHBVt/guTgdFhCDeaSwRU3YaR3aKXJiW
 Jzw8hwyS8SHMCIg/hyvS/d3wjueJ9Xh/vjsOCJWDYo9nOYIWcSD2B/3veRSqrrxBv4WM
 O+FhIWINHJAKp/VJXK60dm32VnYow4ogo0D6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RUJkrBHPGMD0Jak0hv15UuXYYOT/ay4M5iA7uP6K2TM=;
 b=VJVDc7TInNgqjJlopyamZpfXSD6+H351yUfxoTSoGVlwWObqacxlJfOZpPpf4B2h11
 qZrwoiAqk9TtBsWOFV9VfDk1nEL73pxE5kWt8UWaUo0WNn7a5ugygE3j4YK7vSpQBkdf
 ethkgXOwVA+1gHXCSa/c0bHQYtdmKafS8KTCFYqBymciVzlCRPoPtomycrfCvTISUiU3
 lWtHZI3SaVmZsheJ6JRZu+xuJBKkQEa6J46ppRsLEUrR8BbYgfqeR0ykpFmEy6/Ghr08
 S7F+TSSa3Z5sC2QoMmJQtTwl2Y8zhufoCXUUL7CLmn/lAoJlvPCWmdbV3ZTNpu1NjT3z
 faKw==
X-Gm-Message-State: APjAAAVbc79TP6L+f1DsntS6B4N7KKrIZQ/dh0xWzJAy7vFNODjFWx3J
 72ipElCqkf9cZadhKsRxm0qeMQ==
X-Google-Smtp-Source: APXvYqyBmbA9fgjT93k8eJavmdSLhiYk/y6FVvZuoiG7XOai8lro1qS6KycJASXiRs5PrvmL91wkSg==
X-Received: by 2002:a50:8825:: with SMTP id b34mr25674476edb.22.1560544599178; 
 Fri, 14 Jun 2019 13:36:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:37 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 14/59] drm/exynos: Drop drm_gem_prime_export
Date: Fri, 14 Jun 2019 22:35:30 +0200
Message-Id: <20190614203615.12639-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133640_541412_AA84344F 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

They're the default. We can't do the same on the import side, due to
the exynos_drm->dma_dev not necessarily matching the overall drm
device.

Aside: Would be really nice to switch the others over to
drm_gem_object_funcs.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Inki Dae <inki.dae@samsung.com>
Cc: Joonyoung Shim <jy0922.shim@samsung.com>
Cc: Seung-Woo Kim <sw0312.kim@samsung.com>
Cc: Kyungmin Park <kyungmin.park@samsung.com>
Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
---
 drivers/gpu/drm/exynos/exynos_drm_drv.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_drv.c b/drivers/gpu/drm/exynos/exynos_drm_drv.c
index e43640fc42d3..4d270390eba2 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_drv.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_drv.c
@@ -124,7 +124,6 @@ static struct drm_driver exynos_drm_driver = {
 	.dumb_create		= exynos_drm_gem_dumb_create,
 	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
-	.gem_prime_export	= drm_gem_prime_export,
 	.gem_prime_import	= exynos_drm_gem_prime_import,
 	.gem_prime_get_sg_table	= exynos_drm_gem_prime_get_sg_table,
 	.gem_prime_import_sg_table	= exynos_drm_gem_prime_import_sg_table,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
