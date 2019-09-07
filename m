Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFFCAC824
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWvlA7mp2d5gePb+aX5XBy0IzkjYRlmFfUthUnenBos=; b=U396WDNzyRiJuG
	AixUbKRAP215AqV54oPq61fhwefgyBjvXLWav49Kf1FHiKmzETmepqDwOUUwDcw3/9FPv7JyNE+f3
	IDGtGnUeGl5XjZAdDTbuHmrlheCS+qRGjXL8+a14PthBOoflK05/9yvyUhYEeMan2IS4qYS0dWnyG
	/NO51KEtIYa9povrlbgboM9qwUntRcgv9XPna3xGZZ3CxU/sFjWUN4zZXwjkHLDHFPN0asLmXVy/7
	Og56q/argYjQqYRFxnt7AyszvsoF39Xn74Yogwm2OMva60wBxv8L5ROa2ae8LjdO9W48RuX8PpfYN
	3vPHufjCrTacF7wD9ySQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6eUp-0001Bl-DK; Sat, 07 Sep 2019 17:27:35 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6eTO-0000Dc-6N
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:26:07 +0000
Received: by mail-oi1-x241.google.com with SMTP id t84so7562871oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=AHQp5tHq/YPoexLkCIK7ZDm0IJf6l4a1w2EjvR3aV6g=;
 b=ecBEnwAa8jcMm3IeC8TnBic2IinopWGcdT+gykKq8NN/pNR/UsFniW4E6oZ4LvNXJ+
 0ftCG8IxxKLzYezZvy3li5JCrUPcS+E9lHb+WgrXsLFwwchEoydNBBzlWqyG8cynU1L7
 nl8DE1tAfOZ6CdK2q+uf/OirvdrfNAmR8TGHZvB+DC6f/f3HySEmRUqEM/yBc9sJ1z5p
 mM4klXYndf/6IWVBtaTtXYSktQRC54sBy8s2djTgAxvWxzQa3CEI0XqpNho+lPEf9M1n
 /RpDq0HSOomk55lg3gjG5JihpeUBs672XU4jUHcmv+sGTj8Znrr57lBBzvXWiRji5QJZ
 M0/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=AHQp5tHq/YPoexLkCIK7ZDm0IJf6l4a1w2EjvR3aV6g=;
 b=qxZvufEFaQgjl82Utg1xkC805aI1OWi1bOnew7o+f3n0TwSPr4FNIIX03ZJf8z3In6
 fnjYCyIrzEAlPuLvxunzWDM/KHiiMPk+uHtlBQSjC8JjJkjyWrRP4TprAOxmgzb0BOuZ
 DxmV3GsdXpPvsvh/nG6y+N/cxK2BNa9zAJSORyGwhPNdNBFhS7xERC65TVVUgE+7NfvD
 TS5cJq22xGMvAjREtc2V6Af5+KIxvd37cu/cjKx/SEuaHJ4/nsReE0zcigCYSn48bijh
 MTaBaUGYA10oYFtCLGl93zJueKeDvAInGHinfMxfLMRw1w4isyCHKKE0esEJIgCdjmck
 TC6Q==
X-Gm-Message-State: APjAAAXXL/hEmj48XvKiq/tJWn03v4TTZQo6HNFu/k6kUkXEudbeDy/G
 JPEfEkRL0DJa6fIwTmAYZvI=
X-Google-Smtp-Source: APXvYqx37YQNiv2UtvALkUbv8/xd5ft3XRlho7zJo2uonh25aEKOd4lYhlhEds/sSnzEvGkPn61A0A==
X-Received: by 2002:aca:fccb:: with SMTP id a194mr1637514oii.52.1567877165507; 
 Sat, 07 Sep 2019 10:26:05 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id 19sm3109533oin.36.2019.09.07.10.26.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 10:26:05 -0700 (PDT)
Subject: [PATCH v9 7/8] virtio-balloon: Pull page poisoning config out of
 free page hinting
From: Alexander Duyck <alexander.duyck@gmail.com>
To: virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 catalin.marinas@arm.com, david@redhat.com, dave.hansen@intel.com,
 linux-kernel@vger.kernel.org, willy@infradead.org, mhocko@kernel.org,
 linux-mm@kvack.org, akpm@linux-foundation.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Sat, 07 Sep 2019 10:26:01 -0700
Message-ID: <20190907172601.10910.95355.stgit@localhost.localdomain>
In-Reply-To: <20190907172225.10910.34302.stgit@localhost.localdomain>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_102606_430411_37CA70D9 
X-CRM114-Status: GOOD (  15.13  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 konrad.wilk@oracle.com, ying.huang@intel.com, lcapitulino@redhat.com,
 wei.w.wang@intel.com, aarcange@redhat.com, nitesh@redhat.com,
 pbonzini@redhat.com, dan.j.williams@intel.com, fengguang.wu@intel.com,
 alexander.h.duyck@linux.intel.com, kirill.shutemov@linux.intel.com
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

Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 drivers/virtio/virtio_balloon.c |   22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
index 226fbb995fb0..d2547df7de93 100644
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
+		 * Let hypervisor know that we are expecting a specific
+		 * value to be written back in unused pages.
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
+	/* Notify host if we care about poison value */
+	if (IS_ENABLED(CONFIG_PAGE_POISONING_NO_SANITY) ||
+	    !page_poisoning_enabled())
 		__virtio_clear_bit(vdev, VIRTIO_BALLOON_F_PAGE_POISON);
 
 	__virtio_clear_bit(vdev, VIRTIO_F_IOMMU_PLATFORM);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
