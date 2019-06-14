Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F4D46A70
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pm7pv4xeaZS+pWZZnYv3MenuXjatLLJPRs/MLhBHOXw=; b=Bhz74RXOAEflaI
	ftSxlyOCnA8VyRAcSd3GMTQE1uLEQEONN8710X8+ybZ+z6xI6nQb6igvBECSyTzRyZtc7YCKgYT1H
	PIYhAlaXeEMXt8GEtEk/WAEhNdDKceTXHfyB+NIXEITbU31Ediuq6v2HOvWFBYK/z3phaAsxYoLGQ
	OHI8EwFRO/uI5qQI7XnAJE6/G0anCY/2HJEUwKVrjmyfPB7gbS8t9KYurA1hODcYLrvwmipN1xOo7
	q2LvZ5UYGHRPSZ0piEaJuZ7ldzpP4NEMuJFt+bFLBSLgomaKZXi+9cBBaTmzT50YnO1n5jkiavjrn
	7fynESX4vmSpzJE/2k+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsxX-0004ZB-H3; Fri, 14 Jun 2019 20:38:03 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswA-0003jC-0M
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:36:39 +0000
Received: by mail-ed1-x541.google.com with SMTP id r12so3056949edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H/SIrekKkviqzwzNmrhZu0nI8EUiqWHO6XK0ewDmKhw=;
 b=AVoF//4bZRexo4bsRHPehnNdjk1xLtTBl+5I5PxPfK0/wP5lDDLnvLsjwECDaVI1ts
 cqDFvga5hczHO5Z87t1URyfd1ARHnxU/lzSlIUcwbNeNEOUPW0wSND7XopZvBmv5CGYi
 MZ5sk3QAxUHJgS4MWK8NJoY6RyGmR3a8/Id+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H/SIrekKkviqzwzNmrhZu0nI8EUiqWHO6XK0ewDmKhw=;
 b=Z57UQ2AjMNlPxwUL8YIWAvFQyHQReVAnt2EH3ZERGkpTTWS8yYckdW2fihndydqPJB
 7QILZUfsM1TUB9Q/KMkLVUBJ8GtCeNtj0dPa4vNsrWl4Ia0LaFEdA2tw8/Hb6pZ7oIea
 hOM6CyPYicVyO7K4JDH0Q8KyzVi1KtGLFI7KbObV4OIeq6jDut1hgmGcYA/YAjnvIsxK
 70wOn934U8zPlec6Pc82cRC7pQrSRJtRrvOyienfD0g43VfGfiPa4ec94YXOumbVdJHl
 E1PjBLtBo8dVgs3POJW2VY3tvsmw6RGsUSQv6ylbc33F/BGvp51f1NGuOU3C2yMUkoO5
 qRaQ==
X-Gm-Message-State: APjAAAV8tFkQE382ZzcZGqUFsX4tZWP0zKIx/19mYd6ntCvjttaEO+x8
 ERiM1wF/nhMSeCzmiP0XlB+ArQ==
X-Google-Smtp-Source: APXvYqydlYj3QJs+jZGKKIF1AyMIbBdyXHGsykVKMRLyG92uLkBjMU5J2mRm/43OOCfgXT2VXPS86w==
X-Received: by 2002:a50:86ea:: with SMTP id 39mr79305343edu.184.1560544596384; 
 Fri, 14 Jun 2019 13:36:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:35 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 12/59] drm/atmel: Drop drm_gem_prime_export/import
Date: Fri, 14 Jun 2019 22:35:28 +0200
Message-Id: <20190614203615.12639-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133638_096136_7DADD075 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

They're the default.

Aside: Would be really nice to switch the others over to
drm_gem_object_funcs.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
index 274fdf18cde8..2b794a50e7ab 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
@@ -843,8 +843,6 @@ static struct drm_driver atmel_hlcdc_dc_driver = {
 	.gem_vm_ops = &drm_gem_cma_vm_ops,
 	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
-	.gem_prime_import = drm_gem_prime_import,
-	.gem_prime_export = drm_gem_prime_export,
 	.gem_prime_get_sg_table = drm_gem_cma_prime_get_sg_table,
 	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table,
 	.gem_prime_vmap = drm_gem_cma_prime_vmap,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
