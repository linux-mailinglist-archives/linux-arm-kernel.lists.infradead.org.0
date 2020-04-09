Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5493D1A3BB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 23:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7MUG5vL1lSmHk+ViDqg3qwhHp+7o+xQhDEeZ26yHfjs=; b=nkWt9XgaffTMB8
	lejfpv/tdN8PHBfPkWQscFGmZv81LKVOWXYYFNuSbaVZCyzlSdRad1tsTghoLG6hMFKm2GNwMK4lQ
	qSmprD49SDfUTLZKLbcEAxesKDgTQ3neKjCZ82NXGZJJlYIE72kmfnsSPgNx8Lcd7Fah+rOlUlMBl
	ZoR5pVcU7rZZEX59FHyS7ntnOvYL22zt2LSrOmfHZdj9oJjJnJcxvtl7Vc/sYOju8E/lUgAe+br9g
	0uhv8LjJJNqUuI2YhAs6tBAfA/tPjAY3zk4ZKAOCcizIrdExyWj8TMZcUAbn7TsR7LD3Nk82Cs9Mk
	v5yDTQCtdfEnHzbrPnGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMeS2-0008CM-4i; Thu, 09 Apr 2020 21:11:06 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMeRv-0008B6-Js
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 21:11:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586466654;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4DPU6JhgRhsgSW8yU1MugfSEkXixjV0BDeuUfVfgSNI=;
 b=Tfrfz0sg6vt7unE4TU8DVesOOg49BqaYl6bKlc2/n01j5eHmZ3GQ9IzuMRKUGIvBpbPtXT
 FFxgEdh/bEuuxAPO5I8Juf/Qwn5Ri08USqWJTEwq9A8WsjpeS1xZtdnHnO9I78JfJn+OSl
 wUhSq2d/EhnT6FIIaYIYZhkKgyMLrEk=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-xruRCER0MkOp9GBDYSTA-Q-1; Thu, 09 Apr 2020 17:10:52 -0400
X-MC-Unique: xruRCER0MkOp9GBDYSTA-Q-1
Received: by mail-wr1-f72.google.com with SMTP id x9so5391738wrq.17
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 14:10:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=77s3qEqZUXwYYItZCoNg0WQiFcIAKlBUF4mxWQL3Gog=;
 b=NCBYomUtGhwffSNowmHImf+azvKVCK8y9VGLGUAr2u99xFYPgZ8VvPAzu5QG5XxVKU
 UMPFoxEYvg0WIOMtaKKNmLJR+fnyRH7H4Yvo5iGIqYDIaNoDaN1IszeqmbTr2wuJ2cTO
 mGveiyoX0AVqDjQCWuETs4Cd6C9IfX34mfPWIkRXUaa6u/6jOx4TfzdjUs7Nh7fP/wyE
 xVprH2sRzP28uFf9Pyl/X3ymnLFWampgu/EvH8+SiAG6E0Qm06FWYl1NvgwUW4STn2d9
 GZKNrboWWvUCvCcuzHFasyMTDEmnYzUvkQp4ZNqNmyVKR8w4tnLy/gcTMmi2iWGi02W5
 rKGw==
X-Gm-Message-State: AGi0PubwPdBTTwPU6gnSWQ+nfC7dYhTazIQ/SF7FegFwKtVRykudXT8s
 Z7RWR9gVJafuEb/v/lFDYvnHeF3UNTnxjukvzGC5aXX7akYhnqwb+3SnZfRyXPDe3jcyETwEMai
 mDuGA9RnPyLeVkH8NBpjxQ/aUCiC8MohdgE8=
X-Received: by 2002:adf:e409:: with SMTP id g9mr1046835wrm.51.1586466651411;
 Thu, 09 Apr 2020 14:10:51 -0700 (PDT)
X-Google-Smtp-Source: APiQypLy4PXbKq8mbP7kwgtN1Q+giosGvjsros8EbCALYN5EyYBQyGeYWvZCX+ftIrPSN/+taBS7uA==
X-Received: by 2002:adf:e409:: with SMTP id g9mr1046809wrm.51.1586466651031;
 Thu, 09 Apr 2020 14:10:51 -0700 (PDT)
Received: from redhat.com (bzq-109-67-97-76.red.bezeqint.net. [109.67.97.76])
 by smtp.gmail.com with ESMTPSA id
 f2sm6047650wro.59.2020.04.09.14.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 14:10:50 -0700 (PDT)
Date: Thu, 9 Apr 2020 17:10:48 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] rpmsg: pull in slab.h
Message-ID: <20200409211045.12025-1-mst@redhat.com>
MIME-Version: 1.0
X-Mailer: git-send-email 2.24.1.751.gd10ce2899c
X-Mutt-Fcc: =sent
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_141059_723627_A6A79E7A 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation to virtio header changes, include slab.h directly as
this module is using it.

Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
---
 drivers/rpmsg/mtk_rpmsg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rpmsg/mtk_rpmsg.c b/drivers/rpmsg/mtk_rpmsg.c
index 232aa4e40133..83f2b8804ee9 100644
--- a/drivers/rpmsg/mtk_rpmsg.c
+++ b/drivers/rpmsg/mtk_rpmsg.c
@@ -8,6 +8,7 @@
 #include <linux/platform_device.h>
 #include <linux/remoteproc.h>
 #include <linux/rpmsg/mtk_rpmsg.h>
+#include <linux/slab.h>
 #include <linux/workqueue.h>
 
 #include "rpmsg_internal.h"
-- 
MST


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
