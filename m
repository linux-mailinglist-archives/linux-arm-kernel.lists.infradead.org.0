Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174B3B6A07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 19:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tB6itEwAxIvnH+17uBTSzKhF8Ny5q9Fov/oflzNa7uU=; b=Rq91y16Z+eSOOz
	/1LzdCp/+cgmAi4nu5CjXjYaKQ10Z1aXLDac0yebf5h+1hFNU+I1gmu7mtON6U/ur+q9l0rAC3e1u
	XleREwVq71oHRfdUQPuxsmLmZAiymTT/6r06n5QNvTvJETBc3i2ATSIz9yvFhcRxjva/NWsZZcu87
	XSGy7Vz4PxvK/BfNZDnq98mUfsjjJcBNnBPnmFYZ7XyWw2h6W/ZJGQaXrlJCnqljdPC1Che4SV1Ou
	2QIwfXmeZ8AscZNgFI0fBHqnhQ9P8F5A70p29TKoZ9iaFoO3au3UTBDPOxL0SYvR/+gGy2xJMhmzd
	vwPZwDvd79qnolEcxhJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAeAE-0008L9-Dn; Wed, 18 Sep 2019 17:54:50 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAe9C-0007R8-7B
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 17:53:48 +0000
Received: by mail-ot1-x342.google.com with SMTP id 67so660880oto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=a/jqoVnZMS4gCQHlsNMs0Wm0i9/bhDBfzuCMndLKGiI=;
 b=mxVRZRFofqB9VHPpnhAT0D2qY2vxDZ1aVOC8Ivg4ywPf0SoSqKkBkA0lErA+py0cOi
 Phoq68J5mWdb6Axadc87lebiz/yrt/Lt7XLsSf435rrSNrRmzw4YQitb5g4DJ43TmEfO
 bQWaa+eSzH50E0UlwKyPdM1f67Zbeu9B+6JNe0wyXmI+d8QFE0/ghL8e1hSSFe4ZelmR
 RtC37PGkriZyTxAS6cG+cJVCRG0tEqODfQEwbThwEPAk3D+9faNHzeAjTusBuL82Gk0b
 aYa6aDo58PZy43PBNx+jYufKFoA7j7I2A3YTfkK3efHTtU8DLE/ijZzPEqBgp0uBqJ8S
 7PxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=a/jqoVnZMS4gCQHlsNMs0Wm0i9/bhDBfzuCMndLKGiI=;
 b=nqd1cIGwZL8id+jCbT6tN0zU2+STrBSeQ3CF4aoqH7NmbmOkLe9pbdHFxGIT10wPjZ
 Juuov2yinSwMe9v+0Ny+qHGj0m2cT7L0YYD+zEZTehLIj1DHXl4o5MXGCyItry7e2sKE
 Tg8MkBpKGgAqvHJCoIPJcXpaJ4rm4mqyhxSdDJTTNDMgpnqD+ZfhwA9dygR3h+ewaCoM
 F0tIusdN97FlgvBfLaX74zR7OLhmc8EMayVLPxsfkt0NCIUjrXp+CmnHhF/FwgtzVTX2
 Evv94TvcqEOdIaHAGcq4Je5fcHJrrvUH6cv21aBZYyVFiBYBmqDRGwYxrCtAd6/ZOPiT
 qipg==
X-Gm-Message-State: APjAAAUCzd+Yuo0nkijfyKbnulkjdDdJMJfVFHei6MczeAyv9dX11ECM
 A8fzuvmd6QPbEDGyRIteOUU=
X-Google-Smtp-Source: APXvYqz0t5+ebI92vteMOWlqyFLfZiS195d+evCqucFxo/9o5+zuvvtyuNCeouoflWGA34VVfNklXQ==
X-Received: by 2002:a9d:2007:: with SMTP id n7mr3756897ota.132.1568829225129; 
 Wed, 18 Sep 2019 10:53:45 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id w201sm2029870oie.44.2019.09.18.10.53.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 10:53:44 -0700 (PDT)
Subject: [PATCH v10 QEMU 1/3] virtio-ballon: Implement support for page
 poison tracking feature
From: Alexander Duyck <alexander.duyck@gmail.com>
To: virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 david@redhat.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 willy@infradead.org, mhocko@kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 akpm@linux-foundation.org, mgorman@techsingularity.net,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Wed, 18 Sep 2019 10:53:42 -0700
Message-ID: <20190918175342.23606.12400.stgit@localhost.localdomain>
In-Reply-To: <20190918175109.23474.67039.stgit@localhost.localdomain>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_105346_413649_AED97AA5 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, riel@surriel.com,
 konrad.wilk@oracle.com, lcapitulino@redhat.com, wei.w.wang@intel.com,
 aarcange@redhat.com, nitesh@redhat.com, pbonzini@redhat.com,
 dan.j.williams@intel.com, alexander.h.duyck@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

We need to make certain to advertise support for page poison tracking if
we want to actually get data on if the guest will be poisoning pages. So
if free page hinting is active we should add page poisoning support and
let the guest disable it if it isn't using it.

Page poisoning will result in a page being dirtied on free. As such we
cannot really avoid having to copy the page at least one more time since
we will need to write the poison value to the destination. As such we can
just ignore free page hinting if page poisoning is enabled as it will
actually reduce the work we have to do.

Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 hw/virtio/virtio-balloon.c         |   25 +++++++++++++++++++++----
 include/hw/virtio/virtio-balloon.h |    1 +
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/hw/virtio/virtio-balloon.c b/hw/virtio/virtio-balloon.c
index 25de15430710..003b3ebcfdfb 100644
--- a/hw/virtio/virtio-balloon.c
+++ b/hw/virtio/virtio-balloon.c
@@ -530,6 +530,15 @@ static void virtio_balloon_free_page_start(VirtIOBalloon *s)
         return;
     }
 
+    /*
+     * If page poisoning is enabled then we probably shouldn't bother with
+     * the hinting since the poisoning will dirty the page and invalidate
+     * the work we are doing anyway.
+     */
+    if (virtio_vdev_has_feature(vdev, VIRTIO_BALLOON_F_PAGE_POISON)) {
+        return;
+    }
+
     if (s->free_page_report_cmd_id == UINT_MAX) {
         s->free_page_report_cmd_id =
                        VIRTIO_BALLOON_FREE_PAGE_REPORT_CMD_ID_MIN;
@@ -617,12 +626,10 @@ static size_t virtio_balloon_config_size(VirtIOBalloon *s)
     if (s->qemu_4_0_config_size) {
         return sizeof(struct virtio_balloon_config);
     }
-    if (virtio_has_feature(features, VIRTIO_BALLOON_F_PAGE_POISON)) {
+    if (virtio_has_feature(features, VIRTIO_BALLOON_F_PAGE_POISON) ||
+        virtio_has_feature(features, VIRTIO_BALLOON_F_FREE_PAGE_HINT)) {
         return sizeof(struct virtio_balloon_config);
     }
-    if (virtio_has_feature(features, VIRTIO_BALLOON_F_FREE_PAGE_HINT)) {
-        return offsetof(struct virtio_balloon_config, poison_val);
-    }
     return offsetof(struct virtio_balloon_config, free_page_report_cmd_id);
 }
 
@@ -633,6 +640,7 @@ static void virtio_balloon_get_config(VirtIODevice *vdev, uint8_t *config_data)
 
     config.num_pages = cpu_to_le32(dev->num_pages);
     config.actual = cpu_to_le32(dev->actual);
+    config.poison_val = cpu_to_le32(dev->poison_val);
 
     if (dev->free_page_report_status == FREE_PAGE_REPORT_S_REQUESTED) {
         config.free_page_report_cmd_id =
@@ -696,6 +704,8 @@ static void virtio_balloon_set_config(VirtIODevice *vdev,
         qapi_event_send_balloon_change(vm_ram_size -
                         ((ram_addr_t) dev->actual << VIRTIO_BALLOON_PFN_SHIFT));
     }
+    dev->poison_val = virtio_vdev_has_feature(vdev, VIRTIO_BALLOON_F_PAGE_POISON) ? 
+                      le32_to_cpu(config.poison_val) : 0;
     trace_virtio_balloon_set_config(dev->actual, oldactual);
 }
 
@@ -705,6 +715,9 @@ static uint64_t virtio_balloon_get_features(VirtIODevice *vdev, uint64_t f,
     VirtIOBalloon *dev = VIRTIO_BALLOON(vdev);
     f |= dev->host_features;
     virtio_add_feature(&f, VIRTIO_BALLOON_F_STATS_VQ);
+    if (virtio_has_feature(f, VIRTIO_BALLOON_F_FREE_PAGE_HINT)) {
+        virtio_add_feature(&f, VIRTIO_BALLOON_F_PAGE_POISON);
+    }
 
     return f;
 }
@@ -846,6 +859,8 @@ static void virtio_balloon_device_reset(VirtIODevice *vdev)
         g_free(s->stats_vq_elem);
         s->stats_vq_elem = NULL;
     }
+
+    s->poison_val = 0;
 }
 
 static void virtio_balloon_set_status(VirtIODevice *vdev, uint8_t status)
@@ -908,6 +923,8 @@ static Property virtio_balloon_properties[] = {
                     VIRTIO_BALLOON_F_DEFLATE_ON_OOM, false),
     DEFINE_PROP_BIT("free-page-hint", VirtIOBalloon, host_features,
                     VIRTIO_BALLOON_F_FREE_PAGE_HINT, false),
+    DEFINE_PROP_BIT("x-page-poison", VirtIOBalloon, host_features,
+                    VIRTIO_BALLOON_F_PAGE_POISON, false),
     /* QEMU 4.0 accidentally changed the config size even when free-page-hint
      * is disabled, resulting in QEMU 3.1 migration incompatibility.  This
      * property retains this quirk for QEMU 4.1 machine types.
diff --git a/include/hw/virtio/virtio-balloon.h b/include/hw/virtio/virtio-balloon.h
index d1c968d2376e..7fe78e5c14d7 100644
--- a/include/hw/virtio/virtio-balloon.h
+++ b/include/hw/virtio/virtio-balloon.h
@@ -70,6 +70,7 @@ typedef struct VirtIOBalloon {
     uint32_t host_features;
 
     bool qemu_4_0_config_size;
+    uint32_t poison_val;
 } VirtIOBalloon;
 
 #endif


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
