Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F5B29296
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y+FYQlmrvMo+zqfBEOj0EkF2bVCSRo3EuL9/K8Zhvio=; b=LGf/msDpoqK+oDGtCsi8PXSYSL
	IMBIosfjKB/rSZw1pVT6yHp9BySeIgxNDGDxhF0SP4pOSSzZUegn1we49WR5B+wyMB2e1C7ayppzH
	cVjX8UaPBvvYttaZWt6hPOoN07TApYKpItyKmnoBiC5tog17r4tUsr8Sq0iACNeBlJjhIZXyRG2ZC
	D4azOSdsahglVdJxELJAW7ll9KXCVJvoZ+ZouXaqcCbQP5d7DRWzo4F0dDJqoJs6I7aXlMcLzbhIn
	+6+2xS7iff9R4XeaRPvzVHAax3FNHY7P2ZiXEAEC8KY3vDaIupgaQBqchcMQMm1iP9K7VYCOQEFsJ
	FC5yyZSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5KL-0000uH-Uy; Fri, 24 May 2019 08:13:21 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5Jx-0000e1-F3
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:13:02 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A98B03082B6B;
 Fri, 24 May 2019 08:12:56 +0000 (UTC)
Received: from hp-dl380pg8-01.lab.eng.pek2.redhat.com
 (hp-dl380pg8-01.lab.eng.pek2.redhat.com [10.73.8.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8589E19C4F;
 Fri, 24 May 2019 08:12:45 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: mst@redhat.com, jasowang@redhat.com, kvm@vger.kernel.org,
 virtualization@lists.linux-foundation.org, netdev@vger.kernel.org
Subject: [PATCH net-next 3/6] vhost: rename vq_iotlb_prefetch() to
 vq_meta_prefetch()
Date: Fri, 24 May 2019 04:12:15 -0400
Message-Id: <20190524081218.2502-4-jasowang@redhat.com>
In-Reply-To: <20190524081218.2502-1-jasowang@redhat.com>
References: <20190524081218.2502-1-jasowang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Fri, 24 May 2019 08:12:56 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_011257_721621_A5D3A66F 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: hch@infradead.org, christophe.de.dinechin@gmail.com,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org, peterx@redhat.com,
 James.Bottomley@hansenpartnership.com, linux-mm@kvack.org, jglisse@redhat.com,
 jrdr.linux@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename the function to be more accurate since it actually tries to
prefetch vq metadata address in IOTLB. And this will be used by
following patch to prefetch metadata virtual addresses.

Signed-off-by: Jason Wang <jasowang@redhat.com>
---
 drivers/vhost/net.c   | 4 ++--
 drivers/vhost/vhost.c | 4 ++--
 drivers/vhost/vhost.h | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/vhost/net.c b/drivers/vhost/net.c
index df51a35cf537..bf55f995ebae 100644
--- a/drivers/vhost/net.c
+++ b/drivers/vhost/net.c
@@ -971,7 +971,7 @@ static void handle_tx(struct vhost_net *net)
 	if (!sock)
 		goto out;
 
-	if (!vq_iotlb_prefetch(vq))
+	if (!vq_meta_prefetch(vq))
 		goto out;
 
 	vhost_disable_notify(&net->dev, vq);
@@ -1140,7 +1140,7 @@ static void handle_rx(struct vhost_net *net)
 	if (!sock)
 		goto out;
 
-	if (!vq_iotlb_prefetch(vq))
+	if (!vq_meta_prefetch(vq))
 		goto out;
 
 	vhost_disable_notify(&net->dev, vq);
diff --git a/drivers/vhost/vhost.c b/drivers/vhost/vhost.c
index e78c195448f0..b353a00094aa 100644
--- a/drivers/vhost/vhost.c
+++ b/drivers/vhost/vhost.c
@@ -1313,7 +1313,7 @@ static bool iotlb_access_ok(struct vhost_virtqueue *vq,
 	return true;
 }
 
-int vq_iotlb_prefetch(struct vhost_virtqueue *vq)
+int vq_meta_prefetch(struct vhost_virtqueue *vq)
 {
 	size_t s = vhost_has_feature(vq, VIRTIO_RING_F_EVENT_IDX) ? 2 : 0;
 	unsigned int num = vq->num;
@@ -1332,7 +1332,7 @@ int vq_iotlb_prefetch(struct vhost_virtqueue *vq)
 			       num * sizeof(*vq->used->ring) + s,
 			       VHOST_ADDR_USED);
 }
-EXPORT_SYMBOL_GPL(vq_iotlb_prefetch);
+EXPORT_SYMBOL_GPL(vq_meta_prefetch);
 
 /* Can we log writes? */
 /* Caller should have device mutex but not vq mutex */
diff --git a/drivers/vhost/vhost.h b/drivers/vhost/vhost.h
index 9490e7ddb340..7a7fc001265f 100644
--- a/drivers/vhost/vhost.h
+++ b/drivers/vhost/vhost.h
@@ -209,7 +209,7 @@ bool vhost_enable_notify(struct vhost_dev *, struct vhost_virtqueue *);
 int vhost_log_write(struct vhost_virtqueue *vq, struct vhost_log *log,
 		    unsigned int log_num, u64 len,
 		    struct iovec *iov, int count);
-int vq_iotlb_prefetch(struct vhost_virtqueue *vq);
+int vq_meta_prefetch(struct vhost_virtqueue *vq);
 
 struct vhost_msg_node *vhost_new_msg(struct vhost_virtqueue *vq, int type);
 void vhost_enqueue_msg(struct vhost_dev *dev,
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
