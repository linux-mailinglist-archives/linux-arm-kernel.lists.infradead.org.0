Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A967B6A02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 19:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ms9MYiPtvBigKwFLrFCaBkI1b4dyYKUh1u6LeHMJbU=; b=cqAAM1ml8AMF2A
	sqI0KwhAQ4KTpc1brK4rSY/Xmrmo3K8FvPiruH/IgzYQCUvAS4gYfPrCnpBCZejgtrWmM+bJtYaOR
	6x8i70R4PwurY75GLrmUHyBcBm1ADcBpVma9XRhdH1PVAtW8Ncnz5Hhre1pxGPtfl1CXULU3202sI
	acwOP7fywsbTM2zQoNYuLpKHvt5CXUYy9dupCqCQAqnCsQt/tmEK421HwYLjVBZQq+XTMlOT+5dRp
	tK2fapmVgKE8xEwpq4IJGAfiMMw/+vZAwFUIAt+lQ5zCjWTTCPpdZbyofLQCguRIg8E6UJKPu+Hj4
	dpG/TgCp1bJuugztF9lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAe9f-0007cm-EZ; Wed, 18 Sep 2019 17:54:15 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAe8a-0006q9-VT
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 17:53:10 +0000
Received: by mail-oi1-x241.google.com with SMTP id 7so382768oip.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=TbxSoczAuzQWlH6idgeC1LPIVw+1Ea/1DcsLl7A3ATs=;
 b=oBnQ2jVNymUtlpzhKot6hsQqUxgEcS2+Wppxl37IJ5vWnUDzpQOVCbjCzXqi+pMD/B
 9/d5e/KjwjUvfuhB/YZawGYKq2YCSIv5eiiFoWMxEDTohEh/HqnCIK8BCUlXJQK+bcWx
 lTIHd2cAGkLXBhY4o3cYdtKnC/+U8jZcEvat3yVtMyG4HTqtLHu0j/vxvpbYsqn8D0Pd
 3F6w6jGYi9FX9W/9bPjzaGszHWkOrQbUc2vLLQaVBG04zvI41UU8cuCUYyxR9HCoMc36
 /M8rqm7rT+FGb20S7RPlbNWi0rZFo91eQCBIHFdH6HZZC3cWeNY2l7PXp0NSneQAiXj4
 gcBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=TbxSoczAuzQWlH6idgeC1LPIVw+1Ea/1DcsLl7A3ATs=;
 b=oRCeQrYLUs1lyjoyxitXehfVDGqTrcluRX2CBRg519cuZ1P5so+KARK+UdsNInAEBl
 c5u6CAIVTDCiDTGJ+PGWJg30+lPFVkthaw4A26BJmHyzUk9747oFoW4IDKV0LEeWJtW5
 4+GiQuopCmnJavcux1W+MpU0WxJilqX6ePn0yEijqZF0tBdw2pMpI0YU4HO7j6tTVUD4
 cbAG7qPD97gGac5CqRHnpoJyw1yLC8TpZb9Nzh1hd9aQK0/ShVqygx0rIh4az6n1BN+n
 CHiwWEhxfzsH11WJn4mHa86wYnZiCtOtOhLdeAH696xtmAhqxGaKLjeI+mfL4iPJsSI7
 qc8A==
X-Gm-Message-State: APjAAAWW1IqoAydRIZkLuUalV/fUsNM7JqCDdRtKl79hVJZs2ZAY17pt
 o63DqF1iD3bm8fVfbNB4fiY=
X-Google-Smtp-Source: APXvYqyphG7ufZuHFK93raK3ouPQlCP9yyxW6Shrp2cdGc2jcqnuHjGAcaUeE5X6UXUakwcIPv1r5w==
X-Received: by 2002:aca:c088:: with SMTP id q130mr3257073oif.54.1568829188183; 
 Wed, 18 Sep 2019 10:53:08 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id u12sm1838437oiv.29.2019.09.18.10.53.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 10:53:07 -0700 (PDT)
Subject: [PATCH v10 5/6] virtio-balloon: Pull page poisoning config out of
 free page hinting
From: Alexander Duyck <alexander.duyck@gmail.com>
To: virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 david@redhat.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 willy@infradead.org, mhocko@kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 akpm@linux-foundation.org, mgorman@techsingularity.net,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Wed, 18 Sep 2019 10:53:05 -0700
Message-ID: <20190918175305.23474.34783.stgit@localhost.localdomain>
In-Reply-To: <20190918175109.23474.67039.stgit@localhost.localdomain>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_105309_144244_F752704E 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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

Currently the page poisoning setting wasn't being enabled unless free page
hinting was enabled. However we will need the page poisoning tracking logic
as well for unused page reporting. As such pull it out and make it a
separate bit of config in the probe function.

In addition we can actually wrap the code in a check for NO_SANITY. If we
don't care what is actually in the page we can just default to 0 and leave
it there.

Reviewed-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 drivers/virtio/virtio_balloon.c |   22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
index 226fbb995fb0..501a8d0ebf86 100644
--- a/drivers/virtio/virtio_balloon.c
+++ b/drivers/virtio/virtio_balloon.c
@@ -842,7 +842,6 @@ static int virtio_balloon_register_shrinker(struct virtio_balloon *vb)
 static int virtballoon_probe(struct virtio_device *vdev)
 {
 	struct virtio_balloon *vb;
-	__u32 poison_val;
 	int err;
 
 	if (!vdev->config->get) {
@@ -909,11 +908,18 @@ static int virtballoon_probe(struct virtio_device *vdev)
 						  VIRTIO_BALLOON_CMD_ID_STOP);
 		spin_lock_init(&vb->free_page_list_lock);
 		INIT_LIST_HEAD(&vb->free_page_list);
-		if (virtio_has_feature(vdev, VIRTIO_BALLOON_F_PAGE_POISON)) {
-			memset(&poison_val, PAGE_POISON, sizeof(poison_val));
-			virtio_cwrite(vb->vdev, struct virtio_balloon_config,
-				      poison_val, &poison_val);
-		}
+	}
+	if (virtio_has_feature(vdev, VIRTIO_BALLOON_F_PAGE_POISON)) {
+		__u32 poison_val;
+
+		/*
+		 * Let the hypervisor know that we are expecting a
+		 * specific value to be written back in unused pages.
+		 */
+		memset(&poison_val, PAGE_POISON, sizeof(poison_val));
+
+		virtio_cwrite(vb->vdev, struct virtio_balloon_config,
+			      poison_val, &poison_val);
 	}
 	/*
 	 * We continue to use VIRTIO_BALLOON_F_DEFLATE_ON_OOM to decide if a
@@ -1014,7 +1020,9 @@ static int virtballoon_restore(struct virtio_device *vdev)
 
 static int virtballoon_validate(struct virtio_device *vdev)
 {
-	if (!page_poisoning_enabled())
+	/* Tell the host whether we care about poisoned pages. */
+	if (IS_ENABLED(CONFIG_PAGE_POISONING_NO_SANITY) ||
+	    !page_poisoning_enabled())
 		__virtio_clear_bit(vdev, VIRTIO_BALLOON_F_PAGE_POISON);
 
 	__virtio_clear_bit(vdev, VIRTIO_F_IOMMU_PLATFORM);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
