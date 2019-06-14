Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6178546B16
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWRHCwAltcoWFFklldc1XSkumY4DV8OzYUWjcg/19Qo=; b=LCXz8BZTPb5BLP
	X8wFQ5QfuFRRWKgaaAJOCJIgrXwNg4fHnMVpYAM14ccOpb82lbJ2Y/pzVYoNl/XPAcU8yldT1aM5I
	24wwLcL1hPqsqT0gFov4jTePR6FOxkh+9teOgHBupe278vAzvMhpODGQV2Wj8XR5XH0oE2iEjA5b4
	v2TPikgFFZd8+WgoU7d3nMbbtmGYf9gwKEjK+5s6byqgg/iu2ZINSifwqaY3q/cZ1rJoWQ47NtZyK
	NmyA6sYFewWbG8feAw44oXZVjrHX8V/X3Id8g7YUbo2dwFD1Tl95bmoxC9PMu74VGd+HI2OdS1jCX
	R9Lymr/Ow77Kdh5dnSAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbszF-0006Od-9D; Fri, 14 Jun 2019 20:39:49 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswI-0003sH-TS
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:36:49 +0000
Received: by mail-ed1-x543.google.com with SMTP id d4so5185752edr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CdjzPk9kMBtnORmrw6SV223z66CbONc15QxjD1QLasw=;
 b=E34K7NE2WPXVAuiOZH4PhkUzvtjNfPrvlndMNNRMM3NAm0JvhO4XEWzd3/HdePWWiA
 wyNHPJrAuBSUdHOIP7r4e7IBwsC9dey3CP/qAjCz89uiTFfoo8dqLpobYgMguP598PLV
 eOyiZFYNmXBrIdu+UMt9hhdrdWf7lgLugRTes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CdjzPk9kMBtnORmrw6SV223z66CbONc15QxjD1QLasw=;
 b=PyL0IoiweVL+uUMkCTRVJUtFftdJa/+5DDwXPSRcADP37wZZ+hR8RXF7fNOoMOtKCO
 mJWO0bqkqi2At/s87lBPwnpw7+VzVIvSLcGKFokEIp8PDQNCt+qEu/jTQeAtV6RRtaFO
 hO6OQh1CRf3T/dhdTPUi5635yEAveEBvte1BEK2NwsLKhzybGgab9Pr9pHZgljsgqmoH
 1igAaPbgGUzUiP6kJ1w5h4OO/UyhKDXbj36KK7o5tv4F8MGJftUmV8afX/sgEUnhiKZ1
 Lly1fgEnUxki8wjfj9DWQxcRNcsSSvF6ho0T6HSOQhDjbYgla8imz2GNuTXo0LGoVepD
 pZzQ==
X-Gm-Message-State: APjAAAW0zyFLz28y7Xth/NgJDMZvBylwLTVMW4BMH5LDyOgxEeoLr06v
 acylbhTN9Kon4oXjZlaIY60BKw==
X-Google-Smtp-Source: APXvYqxZ+2+MykTDVtttUpRVv7sYtN3XxhiGqxwDeeUAjjeeMfXPstSFGQXgpyvqmc1NAhQSq5h4Lw==
X-Received: by 2002:a50:97ac:: with SMTP id e41mr46669754edb.27.1560544605717; 
 Fri, 14 Jun 2019 13:36:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 20/59] drm/meson: Drop drm_gem_prime_export/import
Date: Fri, 14 Jun 2019 22:35:36 +0200
Message-Id: <20190614203615.12639-21-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133647_023992_DA9878E6 
X-CRM114-Status: GOOD (  10.23  )
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

They're the default.

Aside: Would be really nice to switch the others over to
drm_gem_object_funcs.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/meson/meson_drv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index 140363f93575..37dca83d6eb1 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -101,8 +101,6 @@ static struct drm_driver meson_driver = {
 	/* PRIME Ops */
 	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
-	.gem_prime_import	= drm_gem_prime_import,
-	.gem_prime_export	= drm_gem_prime_export,
 	.gem_prime_get_sg_table	= drm_gem_cma_prime_get_sg_table,
 	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table,
 	.gem_prime_vmap		= drm_gem_cma_prime_vmap,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
