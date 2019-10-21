Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C63EDF7AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 23:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/t2Z0a9Xanf9s3YO19VuVl2DXhFP4xoe/fkcW+g57o=; b=PW/p3bSk9/1TpW
	/qPZ8O/rGgS3jspRSg+tdgJ/0rkRvNdOouzX2MFWbFyVGHOdwtbh7RKPGGFYvpKiXxgwK5TODNtU1
	EGCFIfZYwQOSCWZ516Uyba+Tay7liqlpWByJ4FnQAtZ7zn5l3gNYUMB5KgrARp7G70YXHZ+Rbk3S1
	oqCdAhxXuLARcAW39uPj0cyvtWabAXMEIzRcQD7jSfHfUi6jp41bsb33eEZEpmBVKfe48ypdLjENF
	rkIHiDhuMtz98oQc04Hv+5Eo5VjW7kPtRz4v3mHPqfdIwOJ9m+2CfMluJysf6WT0gnMaNP84HiWDw
	+eBQLmC6MDfYIdnpy6Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfW9-000174-Ld; Mon, 21 Oct 2019 21:47:09 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMfV2-0000FY-H5; Mon, 21 Oct 2019 21:46:02 +0000
Received: by mail-oi1-f194.google.com with SMTP id w6so12381072oie.11;
 Mon, 21 Oct 2019 14:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dtmBYecTmxMYIL93VEKcTUybHl02f54X+UyJdNEnFs0=;
 b=grVLfjA6uIqqDXQRxq/oROkkGRhOWylVsccMBvzhXpAo7FvKOnwYzHswKk9yuyBtM3
 c6VCWBECr6D6nUsUr/RXLgVrAtq9F5HAqbBuCaOxOkNlieHv6g+4u7dZXAFq0citri0b
 YIoEcqfewbQLGtwuJn7aUu27h1tdW8nElAIUQtzVIaG0LGn3Smg68EmHHkdP8KL0a/Tb
 8fKalyvYLm99GFhaoYuStQWvfwGdYEwAK/HQcZrc8091Iqf/pV8yGlfSpKFvpq0ukX8v
 jAPX8QjBZ0MI8vVikll1KhNfnnb8fjiSkDf9T08iV2sGKqs1rwV6LHGZuxWJyRapSc24
 ylFQ==
X-Gm-Message-State: APjAAAWAFPOlZkTU2wn7zFKMCLIVyRQdSBTiJIJxHhqwPMhVziYuCGtq
 g2kvBSV4vvwaAmD5SB4m5Q==
X-Google-Smtp-Source: APXvYqyz1m7uoM6wvUfRplSP1iQymDszqO/9xcsWMNqwVBdfqFtz0UeGdkdMsN8oAPMI7ImLHrZS7A==
X-Received: by 2002:aca:bd08:: with SMTP id n8mr193003oif.107.1571694359449;
 Mon, 21 Oct 2019 14:45:59 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u130sm4122676oib.56.2019.10.21.14.45.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 14:45:58 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 3/6] drm/cma-helper: Use the dma_*_attr API variant
Date: Mon, 21 Oct 2019 16:45:47 -0500
Message-Id: <20191021214550.1461-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021214550.1461-1-robh@kernel.org>
References: <20191021214550.1461-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_144600_608706_CEA57D4C 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Philippe Cornu <philippe.cornu@st.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation to allow DRM CMA users to adjust the DMA_ATTR_* flags,
convert the CMA helper code to use the dma_*_attr APIs instead of the
dma_*_wc variants.

Only the DMA_ATTR_WRITE_COMBINE and DMA_ATTR_NO_WARN attributes are set
in this commit, so there's no functional change.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/gpu/drm/drm_gem_cma_helper.c | 20 ++++++++++++--------
 include/drm/drm_gem_cma_helper.h     |  1 +
 2 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_cma_helper.c b/drivers/gpu/drm/drm_gem_cma_helper.c
index 12e98fb28229..4cebfe01e6ea 100644
--- a/drivers/gpu/drm/drm_gem_cma_helper.c
+++ b/drivers/gpu/drm/drm_gem_cma_helper.c
@@ -70,6 +70,7 @@ __drm_gem_cma_create(struct drm_device *drm, size_t size)
 		goto error;
 	}

+	cma_obj->dma_attrs |= DMA_ATTR_NO_WARN | DMA_ATTR_WRITE_COMBINE;
 	return cma_obj;

 error:
@@ -102,8 +103,9 @@ struct drm_gem_cma_object *drm_gem_cma_create(struct drm_device *drm,
 	if (IS_ERR(cma_obj))
 		return cma_obj;

-	cma_obj->vaddr = dma_alloc_wc(drm->dev, size, &cma_obj->paddr,
-				      GFP_KERNEL | __GFP_NOWARN);
+	cma_obj->vaddr = dma_alloc_attrs(drm->dev, size, &cma_obj->paddr,
+					 GFP_KERNEL | __GFP_NOWARN,
+					 cma_obj->dma_attrs);
 	if (!cma_obj->vaddr) {
 		dev_dbg(drm->dev, "failed to allocate buffer with size %zu\n",
 			size);
@@ -184,8 +186,9 @@ void drm_gem_cma_free_object(struct drm_gem_object *gem_obj)
 			dma_buf_vunmap(gem_obj->import_attach->dmabuf, cma_obj->vaddr);
 		drm_prime_gem_destroy(gem_obj, cma_obj->sgt);
 	} else if (cma_obj->vaddr) {
-		dma_free_wc(gem_obj->dev->dev, cma_obj->base.size,
-			    cma_obj->vaddr, cma_obj->paddr);
+		dma_free_attrs(gem_obj->dev->dev, cma_obj->base.size,
+			       cma_obj->vaddr, cma_obj->paddr,
+			       cma_obj->dma_attrs);
 	}

 	drm_gem_object_release(gem_obj);
@@ -279,8 +282,9 @@ static int drm_gem_cma_mmap_obj(struct drm_gem_cma_object *cma_obj,
 	vma->vm_flags &= ~VM_PFNMAP;
 	vma->vm_pgoff = 0;

-	ret = dma_mmap_wc(cma_obj->base.dev->dev, vma, cma_obj->vaddr,
-			  cma_obj->paddr, vma->vm_end - vma->vm_start);
+	ret = dma_mmap_attrs(cma_obj->base.dev->dev, vma, cma_obj->vaddr,
+			     cma_obj->paddr, vma->vm_end - vma->vm_start,
+			     cma_obj->dma_attrs);
 	if (ret)
 		drm_gem_vm_close(vma);

@@ -434,8 +438,8 @@ struct sg_table *drm_gem_cma_prime_get_sg_table(struct drm_gem_object *obj)
 	if (!sgt)
 		return ERR_PTR(-ENOMEM);

-	ret = dma_get_sgtable(obj->dev->dev, sgt, cma_obj->vaddr,
-			      cma_obj->paddr, obj->size);
+	ret = dma_get_sgtable_attrs(obj->dev->dev, sgt, cma_obj->vaddr,
+			      cma_obj->paddr, obj->size, cma_obj->dma_attrs);
 	if (ret < 0)
 		goto out;

diff --git a/include/drm/drm_gem_cma_helper.h b/include/drm/drm_gem_cma_helper.h
index 947ac95eb24a..d042213c3595 100644
--- a/include/drm/drm_gem_cma_helper.h
+++ b/include/drm/drm_gem_cma_helper.h
@@ -24,6 +24,7 @@ struct drm_gem_cma_object {

 	/* For objects with DMA memory allocated by GEM CMA */
 	void *vaddr;
+	unsigned long dma_attrs;
 };

 #define to_drm_gem_cma_obj(gem_obj) \
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
