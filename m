Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0996D1C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0fuJgK2X8dwEAQfySyLpi09low5zX6cn9XCJ0Ktb30=; b=M/35I+HSTP6pS6
	9Ot+4DtDci4cnoAkX5D7EwRdNfOUq35PVadQeAQezjk5NJebD9dcI3HnskrZfrGI5L2lSU717ectf
	FJcLS//UZHO4gQPoiDUJ3oIMAvDp8mQUT2eSZN+XFQfx7D9m2ZPmeBbQzSoA11A70FqOYDd7KoH9l
	lq5KJlh85SHcqpsLeQAn2aKu8acj4xqEthgGV//ztjdNU/fV82HCoVgfl8RAlQpBpWPY8wn5MphnD
	54JZyPt0TPMtfmg/GZ2fkN/azPNtqpoP/jFBeiJsqGzcdUJyeSkm0DB1/DH+HNW3JM2I1CxICd0C7
	OiZr680oROFhdUs2sEIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho95q-0001MU-VZ; Thu, 18 Jul 2019 16:17:19 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho948-0007og-8V; Thu, 18 Jul 2019 16:15:34 +0000
Received: by mail-lf1-x141.google.com with SMTP id b17so19642962lff.7;
 Thu, 18 Jul 2019 09:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TBzEtdfCBC7JeGboomJdNlsAe05PLJaxt5wvtDjrcuc=;
 b=rCmwKJR0Ch/XIKuvX/iHVKTyWuto858/ULPTJNZuoxCPXol4vTi8kjxj+OdaXRHT2p
 6X2P9wZze0CqOaL4cU4Fu+dF5nzao2U+If/3C1Ki+1MGinO/FNJEwAznmWmf3mgwZopF
 cjQJhUjrAaTQ7iESM5EOl8nbtN5Kd82P/bCbjr9z/u0JOwcVUoQoGQeIsjyTbQwtPb8x
 rzCup7ZkSowfDduPVWmrzvT/m59PrUV7GE6LkJD8zixS/9mAKNe5A+RJhaj0lUXzlkhN
 2V+r1O1M7tPiHg09aIT6VLwMqOplw0dPGxu03kCzU5Too4xcj+CwW98qLmBs2roVk8GE
 0sJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=TBzEtdfCBC7JeGboomJdNlsAe05PLJaxt5wvtDjrcuc=;
 b=nv+u+QQFKgFAOw7sASK+mCjyuXZYZrPB9mFQ2wE8Vgqf9iBmQemcmdD0Z4QIXwHWRC
 i95M+cM2HIXwO+auvh/ngBH1D+I9K7BjQj8MsD9W4ITCXFMUkhXeOYgDaJfUPy1XKaSa
 nc51GY+3Yewz42sYKIMkxENkXVEggtbAM/C5NWFy9pdcyaDinxdcOnIdrE4qZqUdy2Sq
 W0l9bJzSVA2Fi3001PgguAq0rF2sx8i+brIOQX72BeqFI5C0I0JIsJZ3+nCsj//sHQvy
 H8TkiYYNMAlKfO4wW/nOJOU/RxdykTueIaLoE6YGmVanpuX4gWN13ArhAo0dt3YLiPCy
 Mfrw==
X-Gm-Message-State: APjAAAV96MK+F/CY4pkZJLW5Ha529h13ldY2wevYnLGBOQq+q50z10Oi
 wIz3YXOXERaApc81/skJ/iU=
X-Google-Smtp-Source: APXvYqxR6UJvyzBrpoBKJ1t/MeC7+3uFD4fwDUCOIFsQ9De/62GDc97lhKJZ2LBIEMtYzSPi07yrWA==
X-Received: by 2002:ac2:5a01:: with SMTP id q1mr7852749lfn.46.1563466530686;
 Thu, 18 Jul 2019 09:15:30 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:30 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 04/11] drm/ati_pcigart: drop dependency on drm_os_linux.h
Date: Thu, 18 Jul 2019 18:15:00 +0200
Message-Id: <20190718161507.2047-5-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091532_365784_5A62F7A9 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

The drm_os_linux.h header is deprecated.
Just opencode the sole DRM_WRITE32().

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/ati_pcigart.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/ati_pcigart.c b/drivers/gpu/drm/ati_pcigart.c
index 2a413e291a60..580aa2676358 100644
--- a/drivers/gpu/drm/ati_pcigart.c
+++ b/drivers/gpu/drm/ati_pcigart.c
@@ -35,7 +35,6 @@
 
 #include <drm/ati_pcigart.h>
 #include <drm/drm_device.h>
-#include <drm/drm_os_linux.h>
 #include <drm/drm_pci.h>
 #include <drm/drm_print.h>
 
@@ -169,6 +168,7 @@ int drm_ati_pcigart_init(struct drm_device *dev, struct drm_ati_pcigart_info *ga
 		page_base = (u32) entry->busaddr[i];
 
 		for (j = 0; j < (PAGE_SIZE / ATI_PCIGART_PAGE_SIZE); j++) {
+			u32 offset;
 			u32 val;
 
 			switch(gart_info->gart_reg_if) {
@@ -184,10 +184,12 @@ int drm_ati_pcigart_init(struct drm_device *dev, struct drm_ati_pcigart_info *ga
 				break;
 			}
 			if (gart_info->gart_table_location ==
-			    DRM_ATI_GART_MAIN)
+			    DRM_ATI_GART_MAIN) {
 				pci_gart[gart_idx] = cpu_to_le32(val);
-			else
-				DRM_WRITE32(map, gart_idx * sizeof(u32), val);
+			} else {
+				offset = gart_idx * sizeof(u32);
+				writel(val, (void __iomem *)map->handle + offset);
+			}
 			gart_idx++;
 			page_base += ATI_PCIGART_PAGE_SIZE;
 		}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
