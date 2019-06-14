Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AE546B1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Go23m5P5e7esw6YTFu0Y861kvKgrg3j1kiPVZqIW90=; b=Rg5RV3lnscwb6j
	CnY/+KP4558HxpNVMQ6ISPn+vVQ0PQIKuJl9UBIzIQ7CcsGgRbZfCmjpTDGK+HV1oa69dZTHIqbMm
	Q3Hyjf2GlyZPbeHQtk2LvvMyACB4u9BfGfeqWXofz9VyySJl7UkIwJRgQ3u4nX/cyJDe/ZcFr4Gng
	mU7eJTYZMypuOqAk3GBz1MVtBahXupFH3VlSj7sFRDrIr/sfQnrimXaGwBCTiQuYy6CmGyzqLTqRk
	qcbo9TbYHpVuV6kbwmTZTzf/BHqPupnToPmE9LU/Jo7tK9Yz7uYL9KtmL3z5Z9EqwppN/BshkYfAS
	2bQOiAW1RhagnfE6t4rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt08-0008JK-AK; Fri, 14 Jun 2019 20:40:44 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswT-00041R-MN
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:36:59 +0000
Received: by mail-ed1-x543.google.com with SMTP id a14so5200299edv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lBWG1/N0+LvEZ6uCwdhrYMnJvIvD0qmv1VyQaIMwTtA=;
 b=MnAT1Ta2fJrQ+MzHqIGw7Shq8DQY0UyfJXcxciD2tMsWXkM/e+djKuILD3xOuf0Uz3
 UiwlDWaJoYEWLwTa5q+H6pfZUOWppMtUjYUczcOj3scDCe6su+59j1Kiq/rPHRe9B2nK
 zkOqwlOWco8m2GkXoVjE8GSKN8dWCnDhizRbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lBWG1/N0+LvEZ6uCwdhrYMnJvIvD0qmv1VyQaIMwTtA=;
 b=ZFHgEmFSBkcs2Gwlfm64XpofLQN1rEactFr5Q0yYhK5XTFZC8EFDd/k4y2Js8Z0Aqd
 xZtRa9Vu3DS4DB551SxIRscu4IrE+TPgJU/lolAn5Mjt2MDitKai0ZWa6ZVK8UUx5d/t
 2o7qYq8kUNDb4rX3gmT3HWVsPODYgCDnffIg+HeFhFR4s0K2bLq+KzVhhW9Huen5nj4F
 a19S1/CECugHCXiUt7XXQvTIXt3YHUkn3B18eoO7ELVpwt5Kqb+DwaNPp2tPc8KQD+Db
 p5jdpH7CGEu0jZZ5YKcvmfJut9LhN+oLLrkG1T+k7WbL1Uw7aQCZQr+A+BxKg23qmGEh
 M3vg==
X-Gm-Message-State: APjAAAWMrgKLxh5qGi82t4M4oFsXRIk08qB0LXJoXlpGxU/Eq47nASCm
 qQYj2jQpx62WZvhGZ9ZHEpAM9w==
X-Google-Smtp-Source: APXvYqwPMEc8FYi6lS+722FehIBIdaF7/9dHp0qvNZR0OU0SWpzWu4FMznELavDMjpI6+yK++1DnHw==
X-Received: by 2002:a17:906:2890:: with SMTP id
 o16mr58729664ejd.80.1560544616483; 
 Fri, 14 Jun 2019 13:36:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:55 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 30/59] drm/stm: Drop drm_gem_prime_export/import
Date: Fri, 14 Jun 2019 22:35:46 +0200
Message-Id: <20190614203615.12639-31-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133657_777375_A04E93F4 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Philippe Cornu <philippe.cornu@st.com>, Yannick Fertre <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

They're the default.

Aside: Would be really nice to switch the others over to
drm_gem_object_funcs.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Yannick Fertre <yannick.fertre@st.com>
Cc: Philippe Cornu <philippe.cornu@st.com>
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc: Vincent Abriou <vincent.abriou@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/stm/drv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/stm/drv.c b/drivers/gpu/drm/stm/drv.c
index 4026c33ccc39..331f5e8d779b 100644
--- a/drivers/gpu/drm/stm/drv.c
+++ b/drivers/gpu/drm/stm/drv.c
@@ -67,8 +67,6 @@ static struct drm_driver drv_driver = {
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
 	.gem_free_object_unlocked = drm_gem_cma_free_object,
 	.gem_vm_ops = &drm_gem_cma_vm_ops,
-	.gem_prime_export = drm_gem_prime_export,
-	.gem_prime_import = drm_gem_prime_import,
 	.gem_prime_get_sg_table = drm_gem_cma_prime_get_sg_table,
 	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table,
 	.gem_prime_vmap = drm_gem_cma_prime_vmap,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
