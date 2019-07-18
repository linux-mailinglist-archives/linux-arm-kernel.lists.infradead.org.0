Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 413676D1CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L74YPbzvCEV4BkjQKewLK7p0D4tAlRcyjoY9qs35KFg=; b=lghAGibEV3SjLh
	YvhOmVEqJxcaLvcFLy26/iMOhrj/+wATNgyagBa93fiMPYQmrGaRtigUwTtiwwnmDaR7Dgt9B+Cir
	VoYKOqxtqUe78i3VlPB9oUMF1Bk+g8ODkMkNJCPllQEbIkclCThKVewfW9eHXobHYMQZMwh5KvzxU
	B/d73pR46OsioS4TDZHn53W1J9pbvb1q6v8NmD3XDPTGjRKCLi5GRdEu+60eV6pBCu8qcVZiwtaJf
	4hU57JVj/Bsj3LNetcTTd8Zn4Fq4gObLQB864katbGfm7eNq5lVMEV2NSH6MHGyg3Obyhc71WSs5X
	dNwIfsghWLzUadG5mdIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho96V-00023x-9u; Thu, 18 Jul 2019 16:17:59 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho94B-0007w4-9N; Thu, 18 Jul 2019 16:15:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id r9so27930993ljg.5;
 Thu, 18 Jul 2019 09:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=frt3PhKQBylKx3tn0yMJrH+277gjX7vmRE3rzWAOnE8=;
 b=sor6nM1ennhFjpJNXT+dUZW2uvyNCzkQJQRqB632N4GQ876fQQFM/wgqZsa1bMU6B3
 M/KjIDrmU8AGE+Oe9pZMW6fBGZKFarfZ/nqedHcps4Zy/nfngrk4qOQil2ISENMPYqJe
 vNzgB+H/7gRCrZfLczjmymi0WS+3so2KJaOqwVA3DYOdCDMRZIAL7DlQAEJVdLOTLLcR
 vPl05yR+hc+5wI7LGtSJURbTpSSaqGGQZB5W1jFB2caPRc4o9WxyKS+vJ68YDkqd0J7o
 TiNzz1ZT1MG7h+Id5PVwEQmix9WnOtmMplqQX30/Okmk/+DRu755WLWbnSTNnRh7y/LT
 cyFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=frt3PhKQBylKx3tn0yMJrH+277gjX7vmRE3rzWAOnE8=;
 b=ohPE3+FmL3URULouBf6mq+GDx+CabHGxECZMCpFHzTKhIYueMMkf1q4XWu/xjd1NAw
 I8XuOkSX9QlOxtbqQnV6pZJbD+2zFNVfLpQi5Ol912sJ/USBufCxDB9T9q9M0tLHteD/
 klQxPe14kyYCI8l6B/oTEXoR4PtC7T5bIqF6Yo6Nltbpkjr7QB/spR6M9bcGO61oiUf/
 AmWjEyWZUcmWBp5QvmBOczVLgpz95gPQQFFlzIsW2YiYpClJLcnah+YJOMVHD15ZfTrI
 4HivIHYf0d8sgKNzioEF10/FhCjZqWll3aCgJeLQW3lQTIReuiir+jQc3JvQ4aUjpNx8
 W0ZA==
X-Gm-Message-State: APjAAAUI2tVKdCLpmRJy5reaWcnTGgTiC7EoLyEAPy+fV1JLRCBXy1eC
 rAiCaQDUnGsINA1KG5QwXV4=
X-Google-Smtp-Source: APXvYqz/RnnkqyLtk3obXJqtNg+i+wdOYBauoGyguf1eiAnrv5wKKJGQGPe8OZoel1lFzRD+6rhT2g==
X-Received: by 2002:a2e:3807:: with SMTP id f7mr11394109lja.87.1563466533469; 
 Thu, 18 Jul 2019 09:15:33 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:33 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 06/11] drm: direct include of drm.h in drm_gem.c
Date: Thu, 18 Jul 2019 18:15:02 +0200
Message-Id: <20190718161507.2047-7-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091535_384327_A6C7977A 
X-CRM114-Status: GOOD (  10.46  )
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
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Eric Anholt <eric@anholt.net>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Rob Herring <robh@kernel.org>
---
 drivers/gpu/drm/drm_gem.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index e6c12c6ec728..243f43d70f42 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -39,6 +39,7 @@
 #include <linux/mem_encrypt.h>
 #include <linux/pagevec.h>
 
+#include <drm/drm.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
