Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC083292B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b3SCEqKfVCNdX5ZNRxGLtjCfpb4QEFB+weKRenjFHO0=; b=rbuOZ6JxccWHuCZaquvvWC7h0q
	X5USJx9xGlnB7TUIDsdBT/PrdNil5EdDme3iba5voc6u9M38dAuZ1do6EgvszOeuqEdBdEMFaCeTe
	sNpnOtxnsjFhE91Lmn8msdPfO7WuPWLxaPMZZJt1Kt9NLhH64qIa3kxIhJ4pytM0Wop0je9Wg8Yv3
	qnpe6HjeM38YO3Y8F7tJBvixA/OBfhcIMIbqRWhhubYInriD4PV7IySYjdRp3/xzltJoMju5yPmPK
	US+6u2UdDmhkU8v4261e0nXvXfMGEohatr+/ZkcfWsZ3cimbwMsXI6Tbbu9YN8kRRF/Ku0tqoOvdv
	+FTTpJAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5LA-0001Yz-TY; Fri, 24 May 2019 08:14:12 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5K9-0000pu-Og
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:13:27 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B85B23082263;
 Fri, 24 May 2019 08:13:08 +0000 (UTC)
Received: from hp-dl380pg8-01.lab.eng.pek2.redhat.com
 (hp-dl380pg8-01.lab.eng.pek2.redhat.com [10.73.8.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EC31219724;
 Fri, 24 May 2019 08:13:02 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: mst@redhat.com, jasowang@redhat.com, kvm@vger.kernel.org,
 virtualization@lists.linux-foundation.org, netdev@vger.kernel.org
Subject: [PATCH net-next 5/6] vhost: factor out setting vring addr and num
Date: Fri, 24 May 2019 04:12:17 -0400
Message-Id: <20190524081218.2502-6-jasowang@redhat.com>
In-Reply-To: <20190524081218.2502-1-jasowang@redhat.com>
References: <20190524081218.2502-1-jasowang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Fri, 24 May 2019 08:13:09 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_011310_575974_4E488512 
X-CRM114-Status: GOOD (  17.67  )
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

Factoring vring address and num setting which needs special care for
accelerating vq metadata accessing.

Signed-off-by: Jason Wang <jasowang@redhat.com>
---
 drivers/vhost/vhost.c | 177 ++++++++++++++++++++++++------------------
 1 file changed, 103 insertions(+), 74 deletions(-)

diff --git a/drivers/vhost/vhost.c b/drivers/vhost/vhost.c
index 8605e44a7001..8bbda1777c61 100644
--- a/drivers/vhost/vhost.c
+++ b/drivers/vhost/vhost.c
@@ -1468,6 +1468,104 @@ static long vhost_set_memory(struct vhost_dev *d, struct vhost_memory __user *m)
 	return -EFAULT;
 }
 
+static long vhost_vring_set_num(struct vhost_dev *d,
+				struct vhost_virtqueue *vq,
+				void __user *argp)
+{
+	struct vhost_vring_state s;
+
+	/* Resizing ring with an active backend?
+	 * You don't want to do that. */
+	if (vq->private_data)
+		return -EBUSY;
+
+	if (copy_from_user(&s, argp, sizeof s))
+		return -EFAULT;
+
+	if (!s.num || s.num > 0xffff || (s.num & (s.num - 1)))
+		return -EINVAL;
+	vq->num = s.num;
+
+	return 0;
+}
+
+static long vhost_vring_set_addr(struct vhost_dev *d,
+				 struct vhost_virtqueue *vq,
+				 void __user *argp)
+{
+	struct vhost_vring_addr a;
+
+	if (copy_from_user(&a, argp, sizeof a))
+		return -EFAULT;
+	if (a.flags & ~(0x1 << VHOST_VRING_F_LOG))
+		return -EOPNOTSUPP;
+
+	/* For 32bit, verify that the top 32bits of the user
+	   data are set to zero. */
+	if ((u64)(unsigned long)a.desc_user_addr != a.desc_user_addr ||
+	    (u64)(unsigned long)a.used_user_addr != a.used_user_addr ||
+	    (u64)(unsigned long)a.avail_user_addr != a.avail_user_addr)
+		return -EFAULT;
+
+	/* Make sure it's safe to cast pointers to vring types. */
+	BUILD_BUG_ON(__alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE);
+	BUILD_BUG_ON(__alignof__ *vq->used > VRING_USED_ALIGN_SIZE);
+	if ((a.avail_user_addr & (VRING_AVAIL_ALIGN_SIZE - 1)) ||
+	    (a.used_user_addr & (VRING_USED_ALIGN_SIZE - 1)) ||
+	    (a.log_guest_addr & (VRING_USED_ALIGN_SIZE - 1)))
+		return -EINVAL;
+
+	/* We only verify access here if backend is configured.
+	 * If it is not, we don't as size might not have been setup.
+	 * We will verify when backend is configured. */
+	if (vq->private_data) {
+		if (!vq_access_ok(vq, vq->num,
+			(void __user *)(unsigned long)a.desc_user_addr,
+			(void __user *)(unsigned long)a.avail_user_addr,
+			(void __user *)(unsigned long)a.used_user_addr))
+			return -EINVAL;
+
+		/* Also validate log access for used ring if enabled. */
+		if ((a.flags & (0x1 << VHOST_VRING_F_LOG)) &&
+			!log_access_ok(vq->log_base, a.log_guest_addr,
+				sizeof *vq->used +
+				vq->num * sizeof *vq->used->ring))
+			return -EINVAL;
+	}
+
+	vq->log_used = !!(a.flags & (0x1 << VHOST_VRING_F_LOG));
+	vq->desc = (void __user *)(unsigned long)a.desc_user_addr;
+	vq->avail = (void __user *)(unsigned long)a.avail_user_addr;
+	vq->log_addr = a.log_guest_addr;
+	vq->used = (void __user *)(unsigned long)a.used_user_addr;
+
+	return 0;
+}
+
+static long vhost_vring_set_num_addr(struct vhost_dev *d,
+				     struct vhost_virtqueue *vq,
+				     unsigned int ioctl,
+				     void __user *argp)
+{
+	long r;
+
+	mutex_lock(&vq->mutex);
+
+	switch (ioctl) {
+	case VHOST_SET_VRING_NUM:
+		r = vhost_vring_set_num(d, vq, argp);
+		break;
+	case VHOST_SET_VRING_ADDR:
+		r = vhost_vring_set_addr(d, vq, argp);
+		break;
+	default:
+		BUG();
+	}
+
+	mutex_unlock(&vq->mutex);
+
+	return r;
+}
 long vhost_vring_ioctl(struct vhost_dev *d, unsigned int ioctl, void __user *argp)
 {
 	struct file *eventfp, *filep = NULL;
@@ -1477,7 +1575,6 @@ long vhost_vring_ioctl(struct vhost_dev *d, unsigned int ioctl, void __user *arg
 	struct vhost_virtqueue *vq;
 	struct vhost_vring_state s;
 	struct vhost_vring_file f;
-	struct vhost_vring_addr a;
 	u32 idx;
 	long r;
 
@@ -1490,26 +1587,14 @@ long vhost_vring_ioctl(struct vhost_dev *d, unsigned int ioctl, void __user *arg
 	idx = array_index_nospec(idx, d->nvqs);
 	vq = d->vqs[idx];
 
+	if (ioctl == VHOST_SET_VRING_NUM ||
+	    ioctl == VHOST_SET_VRING_ADDR) {
+		return vhost_vring_set_num_addr(d, vq, ioctl, argp);
+	}
+
 	mutex_lock(&vq->mutex);
 
 	switch (ioctl) {
-	case VHOST_SET_VRING_NUM:
-		/* Resizing ring with an active backend?
-		 * You don't want to do that. */
-		if (vq->private_data) {
-			r = -EBUSY;
-			break;
-		}
-		if (copy_from_user(&s, argp, sizeof s)) {
-			r = -EFAULT;
-			break;
-		}
-		if (!s.num || s.num > 0xffff || (s.num & (s.num - 1))) {
-			r = -EINVAL;
-			break;
-		}
-		vq->num = s.num;
-		break;
 	case VHOST_SET_VRING_BASE:
 		/* Moving base with an active backend?
 		 * You don't want to do that. */
@@ -1535,62 +1620,6 @@ long vhost_vring_ioctl(struct vhost_dev *d, unsigned int ioctl, void __user *arg
 		if (copy_to_user(argp, &s, sizeof s))
 			r = -EFAULT;
 		break;
-	case VHOST_SET_VRING_ADDR:
-		if (copy_from_user(&a, argp, sizeof a)) {
-			r = -EFAULT;
-			break;
-		}
-		if (a.flags & ~(0x1 << VHOST_VRING_F_LOG)) {
-			r = -EOPNOTSUPP;
-			break;
-		}
-		/* For 32bit, verify that the top 32bits of the user
-		   data are set to zero. */
-		if ((u64)(unsigned long)a.desc_user_addr != a.desc_user_addr ||
-		    (u64)(unsigned long)a.used_user_addr != a.used_user_addr ||
-		    (u64)(unsigned long)a.avail_user_addr != a.avail_user_addr) {
-			r = -EFAULT;
-			break;
-		}
-
-		/* Make sure it's safe to cast pointers to vring types. */
-		BUILD_BUG_ON(__alignof__ *vq->avail > VRING_AVAIL_ALIGN_SIZE);
-		BUILD_BUG_ON(__alignof__ *vq->used > VRING_USED_ALIGN_SIZE);
-		if ((a.avail_user_addr & (VRING_AVAIL_ALIGN_SIZE - 1)) ||
-		    (a.used_user_addr & (VRING_USED_ALIGN_SIZE - 1)) ||
-		    (a.log_guest_addr & (VRING_USED_ALIGN_SIZE - 1))) {
-			r = -EINVAL;
-			break;
-		}
-
-		/* We only verify access here if backend is configured.
-		 * If it is not, we don't as size might not have been setup.
-		 * We will verify when backend is configured. */
-		if (vq->private_data) {
-			if (!vq_access_ok(vq, vq->num,
-				(void __user *)(unsigned long)a.desc_user_addr,
-				(void __user *)(unsigned long)a.avail_user_addr,
-				(void __user *)(unsigned long)a.used_user_addr)) {
-				r = -EINVAL;
-				break;
-			}
-
-			/* Also validate log access for used ring if enabled. */
-			if ((a.flags & (0x1 << VHOST_VRING_F_LOG)) &&
-			    !log_access_ok(vq->log_base, a.log_guest_addr,
-					   sizeof *vq->used +
-					   vq->num * sizeof *vq->used->ring)) {
-				r = -EINVAL;
-				break;
-			}
-		}
-
-		vq->log_used = !!(a.flags & (0x1 << VHOST_VRING_F_LOG));
-		vq->desc = (void __user *)(unsigned long)a.desc_user_addr;
-		vq->avail = (void __user *)(unsigned long)a.avail_user_addr;
-		vq->log_addr = a.log_guest_addr;
-		vq->used = (void __user *)(unsigned long)a.used_user_addr;
-		break;
 	case VHOST_SET_VRING_KICK:
 		if (copy_from_user(&f, argp, sizeof f)) {
 			r = -EFAULT;
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
