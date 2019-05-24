Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA49E29293
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0ECcTDZs6/4d6+g9eIl8vK/GBNQRDwU61u2iFv7XSZs=; b=HBjB1hOrvT+ycB6wW4KTu7CbJC
	IK3A3PZfuC2SNesK81x6TJcbx+X48cxYSrSZ5RQwAV9o+l0kmIROi8eQCIQdMam5AcM9Aco4BvWCw
	5kS0ty3HFCgbBaWCPWnqxAv/TvtpuP7dZsgLDXQkU8Z31xTHxn1KxdNNG8lB9Swx0z72ainAFRUJC
	DdliM2jdX4JgryCOSuhUln9rnXbJ2c37jogh08MuzZbcQB2U0qJfDmgBEPKrjWAZj8HHnjsYc7ush
	jDz3OAFI7nzXeerCIOguwVeLazncVWRPNutrTGhIUgBKts5obH3T31WDzwTP1PwDfA28q+5hzbpnQ
	vvWuxdgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5KB-0000kz-7e; Fri, 24 May 2019 08:13:11 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5Jm-0000ON-Tl
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:12:53 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D9DDB8110A;
 Fri, 24 May 2019 08:12:44 +0000 (UTC)
Received: from hp-dl380pg8-01.lab.eng.pek2.redhat.com
 (hp-dl380pg8-01.lab.eng.pek2.redhat.com [10.73.8.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 263D419C58;
 Fri, 24 May 2019 08:12:37 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: mst@redhat.com, jasowang@redhat.com, kvm@vger.kernel.org,
 virtualization@lists.linux-foundation.org, netdev@vger.kernel.org
Subject: [PATCH net-next 2/6] vhost: fine grain userspace memory accessors
Date: Fri, 24 May 2019 04:12:14 -0400
Message-Id: <20190524081218.2502-3-jasowang@redhat.com>
In-Reply-To: <20190524081218.2502-1-jasowang@redhat.com>
References: <20190524081218.2502-1-jasowang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 24 May 2019 08:12:46 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_011247_380273_757ACECC 
X-CRM114-Status: GOOD (  15.93  )
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

This is used to hide the metadata address from virtqueue helpers. This
will allow to implement a vmap based fast accessing to metadata.

Signed-off-by: Jason Wang <jasowang@redhat.com>
---
 drivers/vhost/vhost.c | 94 +++++++++++++++++++++++++++++++++++--------
 1 file changed, 77 insertions(+), 17 deletions(-)

diff --git a/drivers/vhost/vhost.c b/drivers/vhost/vhost.c
index 47fb3a297c29..e78c195448f0 100644
--- a/drivers/vhost/vhost.c
+++ b/drivers/vhost/vhost.c
@@ -869,6 +869,34 @@ static inline void __user *__vhost_get_user(struct vhost_virtqueue *vq,
 	ret; \
 })
 
+static inline int vhost_put_avail_event(struct vhost_virtqueue *vq)
+{
+	return vhost_put_user(vq, cpu_to_vhost16(vq, vq->avail_idx),
+			      vhost_avail_event(vq));
+}
+
+static inline int vhost_put_used(struct vhost_virtqueue *vq,
+				 struct vring_used_elem *head, int idx,
+				 int count)
+{
+	return vhost_copy_to_user(vq, vq->used->ring + idx, head,
+				  count * sizeof(*head));
+}
+
+static inline int vhost_put_used_flags(struct vhost_virtqueue *vq)
+
+{
+	return vhost_put_user(vq, cpu_to_vhost16(vq, vq->used_flags),
+			      &vq->used->flags);
+}
+
+static inline int vhost_put_used_idx(struct vhost_virtqueue *vq)
+
+{
+	return vhost_put_user(vq, cpu_to_vhost16(vq, vq->last_used_idx),
+			      &vq->used->idx);
+}
+
 #define vhost_get_user(vq, x, ptr, type)		\
 ({ \
 	int ret; \
@@ -907,6 +935,43 @@ static void vhost_dev_unlock_vqs(struct vhost_dev *d)
 		mutex_unlock(&d->vqs[i]->mutex);
 }
 
+static inline int vhost_get_avail_idx(struct vhost_virtqueue *vq,
+				      __virtio16 *idx)
+{
+	return vhost_get_avail(vq, *idx, &vq->avail->idx);
+}
+
+static inline int vhost_get_avail_head(struct vhost_virtqueue *vq,
+				       __virtio16 *head, int idx)
+{
+	return vhost_get_avail(vq, *head,
+			       &vq->avail->ring[idx & (vq->num - 1)]);
+}
+
+static inline int vhost_get_avail_flags(struct vhost_virtqueue *vq,
+					__virtio16 *flags)
+{
+	return vhost_get_avail(vq, *flags, &vq->avail->flags);
+}
+
+static inline int vhost_get_used_event(struct vhost_virtqueue *vq,
+				       __virtio16 *event)
+{
+	return vhost_get_avail(vq, *event, vhost_used_event(vq));
+}
+
+static inline int vhost_get_used_idx(struct vhost_virtqueue *vq,
+				     __virtio16 *idx)
+{
+	return vhost_get_used(vq, *idx, &vq->used->idx);
+}
+
+static inline int vhost_get_desc(struct vhost_virtqueue *vq,
+				 struct vring_desc *desc, int idx)
+{
+	return vhost_copy_from_user(vq, desc, vq->desc + idx, sizeof(*desc));
+}
+
 static int vhost_new_umem_range(struct vhost_umem *umem,
 				u64 start, u64 size, u64 end,
 				u64 userspace_addr, int perm)
@@ -1844,8 +1909,7 @@ EXPORT_SYMBOL_GPL(vhost_log_write);
 static int vhost_update_used_flags(struct vhost_virtqueue *vq)
 {
 	void __user *used;
-	if (vhost_put_user(vq, cpu_to_vhost16(vq, vq->used_flags),
-			   &vq->used->flags) < 0)
+	if (vhost_put_used_flags(vq))
 		return -EFAULT;
 	if (unlikely(vq->log_used)) {
 		/* Make sure the flag is seen before log. */
@@ -1862,8 +1926,7 @@ static int vhost_update_used_flags(struct vhost_virtqueue *vq)
 
 static int vhost_update_avail_event(struct vhost_virtqueue *vq, u16 avail_event)
 {
-	if (vhost_put_user(vq, cpu_to_vhost16(vq, vq->avail_idx),
-			   vhost_avail_event(vq)))
+	if (vhost_put_avail_event(vq))
 		return -EFAULT;
 	if (unlikely(vq->log_used)) {
 		void __user *used;
@@ -1899,7 +1962,7 @@ int vhost_vq_init_access(struct vhost_virtqueue *vq)
 		r = -EFAULT;
 		goto err;
 	}
-	r = vhost_get_used(vq, last_used_idx, &vq->used->idx);
+	r = vhost_get_used_idx(vq, &last_used_idx);
 	if (r) {
 		vq_err(vq, "Can't access used idx at %p\n",
 		       &vq->used->idx);
@@ -2098,7 +2161,7 @@ int vhost_get_vq_desc(struct vhost_virtqueue *vq,
 	last_avail_idx = vq->last_avail_idx;
 
 	if (vq->avail_idx == vq->last_avail_idx) {
-		if (unlikely(vhost_get_avail(vq, avail_idx, &vq->avail->idx))) {
+		if (unlikely(vhost_get_avail_idx(vq, &avail_idx))) {
 			vq_err(vq, "Failed to access avail idx at %p\n",
 				&vq->avail->idx);
 			return -EFAULT;
@@ -2125,8 +2188,7 @@ int vhost_get_vq_desc(struct vhost_virtqueue *vq,
 
 	/* Grab the next descriptor number they're advertising, and increment
 	 * the index we've seen. */
-	if (unlikely(vhost_get_avail(vq, ring_head,
-		     &vq->avail->ring[last_avail_idx & (vq->num - 1)]))) {
+	if (unlikely(vhost_get_avail_head(vq, &ring_head, last_avail_idx))) {
 		vq_err(vq, "Failed to read head: idx %d address %p\n",
 		       last_avail_idx,
 		       &vq->avail->ring[last_avail_idx % vq->num]);
@@ -2161,8 +2223,7 @@ int vhost_get_vq_desc(struct vhost_virtqueue *vq,
 			       i, vq->num, head);
 			return -EINVAL;
 		}
-		ret = vhost_copy_from_user(vq, &desc, vq->desc + i,
-					   sizeof desc);
+		ret = vhost_get_desc(vq, &desc, i);
 		if (unlikely(ret)) {
 			vq_err(vq, "Failed to get descriptor: idx %d addr %p\n",
 			       i, vq->desc + i);
@@ -2255,7 +2316,7 @@ static int __vhost_add_used_n(struct vhost_virtqueue *vq,
 
 	start = vq->last_used_idx & (vq->num - 1);
 	used = vq->used->ring + start;
-	if (vhost_copy_to_user(vq, used, heads, count * sizeof *used)) {
+	if (vhost_put_used(vq, heads, start, count)) {
 		vq_err(vq, "Failed to write used");
 		return -EFAULT;
 	}
@@ -2297,8 +2358,7 @@ int vhost_add_used_n(struct vhost_virtqueue *vq, struct vring_used_elem *heads,
 
 	/* Make sure buffer is written before we update index. */
 	smp_wmb();
-	if (vhost_put_user(vq, cpu_to_vhost16(vq, vq->last_used_idx),
-			   &vq->used->idx)) {
+	if (vhost_put_used_idx(vq)) {
 		vq_err(vq, "Failed to increment used idx");
 		return -EFAULT;
 	}
@@ -2331,7 +2391,7 @@ static bool vhost_notify(struct vhost_dev *dev, struct vhost_virtqueue *vq)
 
 	if (!vhost_has_feature(vq, VIRTIO_RING_F_EVENT_IDX)) {
 		__virtio16 flags;
-		if (vhost_get_avail(vq, flags, &vq->avail->flags)) {
+		if (vhost_get_avail_flags(vq, &flags)) {
 			vq_err(vq, "Failed to get flags");
 			return true;
 		}
@@ -2345,7 +2405,7 @@ static bool vhost_notify(struct vhost_dev *dev, struct vhost_virtqueue *vq)
 	if (unlikely(!v))
 		return true;
 
-	if (vhost_get_avail(vq, event, vhost_used_event(vq))) {
+	if (vhost_get_used_event(vq, &event)) {
 		vq_err(vq, "Failed to get used event idx");
 		return true;
 	}
@@ -2390,7 +2450,7 @@ bool vhost_vq_avail_empty(struct vhost_dev *dev, struct vhost_virtqueue *vq)
 	if (vq->avail_idx != vq->last_avail_idx)
 		return false;
 
-	r = vhost_get_avail(vq, avail_idx, &vq->avail->idx);
+	r = vhost_get_avail_idx(vq, &avail_idx);
 	if (unlikely(r))
 		return false;
 	vq->avail_idx = vhost16_to_cpu(vq, avail_idx);
@@ -2426,7 +2486,7 @@ bool vhost_enable_notify(struct vhost_dev *dev, struct vhost_virtqueue *vq)
 	/* They could have slipped one in as we were doing that: make
 	 * sure it's written, then check again. */
 	smp_mb();
-	r = vhost_get_avail(vq, avail_idx, &vq->avail->idx);
+	r = vhost_get_avail_idx(vq, &avail_idx);
 	if (r) {
 		vq_err(vq, "Failed to check avail idx at %p: %d\n",
 		       &vq->avail->idx, r);
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
