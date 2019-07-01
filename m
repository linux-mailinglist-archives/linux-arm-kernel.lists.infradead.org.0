Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C32A5AACE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KOptwWk7YPRCPoF8lmXQwuoPqKXquKTgtxre52rSI0M=; b=OAg1K+Tuft1kESLkSs1xTs9Cik
	sbLIB57IxOO6/xz954guH+zCcPVsEnjJSvxXztrxakrav2DJxpRkBARl23E1MFwp6oyZ5QM1qidq+
	C1nHDgLZtg0ad1p0a1K048PmRHAz0jS0rwL44z/6I2TTa3XoDGSQ6S27+GYtDMGj52LI74rAJN8d3
	VZQT3/yAkgtJcy1XHXrHvElBjlGjo3WKaO+EALpvV9lNdlH1ohXwkdDZ2SRDzkZjmnhHqkR2tqMIV
	86DxXXdo1JxwJLCKFxArjUe0L+5IPrR8+sQPx+IBXrycS6qr34cgxQWV6ZY1lLyg/glmk0oyZJOS2
	4ce/BElg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCHT-0002bV-Vk; Sat, 29 Jun 2019 12:16:35 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCFM-0008AP-7o; Sat, 29 Jun 2019 12:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810445;
 bh=ECVOnFevgWF424uv7F5vu9dk7W5YSvOe7Tz+YVxftMU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BlErDyj1ehXXTJzRT1gp+bQpWgzLPt9Pre5lvMoyJTJIoqezpbbjVNARuG74XYMAl
 YqqCiwD2sZyi1O83je4OulSIolziIpp0XzYd++enXj3Q8h6P0cZuu4hGBpFgeq9F2J
 7RGoVh+tRn0Px/oEwx8xupUrJiQcyGcYqrCUHaHA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0Lu7ty-1ifExH32CE-011Vvo; Sat, 29 Jun 2019 14:14:05 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 03/29] staging: bcm2835-camera: Do not bulk receive from
 service thread
Date: Sat, 29 Jun 2019 14:13:18 +0200
Message-Id: <1561810410-8829-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:vhA/UTTX7d4Rfy8PJzKLcID82/sPDB08aEhYv4i1G0mxQA5gRv4
 QoZHcVGOyB7y4dzzRbml7z6YvhF/3YYEQ/HfrgB26NydLBn8S2u7krcmJfB6wnT8ndov4iG
 DkzVtp1aRlmtX01A/etJ/8zT0J9u+lAjo8GE22E0Z0EuAqr6qdHIz+86LD0jWKY1rNTqVTG
 vqTCd6mvcDRZrpKxZFhzQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KPhfDolOGus=:U0TXf92BNgzdw5NclVku4l
 krf6nD6FRr3epcE9H+oAzH0qr9TPCbx8ELCIlOdeg37tsk4lcUPj8e8o73dJyvLf2+j9OkBKZ
 tXKLnuyNEnKyZnTMF6Ym85vltu4OiAGKwJ1yGp9Lg8cHSOHwzE0Y9H5Ks07hkHbaiXZrzYVM8
 JfyJIpBjgua93LeefR+aKurrP4GpzuvOmuHh2DEhwsAYa1aWj8gwQS57OfgLqbv+Y1HS4xFuX
 4x9vKuXDZjq16xNqsrMYCgl/FxSXYFW2fKe4UpUypMFNf4+oJHpXQqChnVfOmAKOTMXjlO1Tl
 S4nQKiTScoqyWgi3ytNIzoxMwZ2VaDhaE+PFgByrbmvCJ9KPgsCbB3zofk+RoA5b1i6NNk0qm
 UtbOPq8988wCAZ8ft95g+0FU3DzxuKLK6Pmv/3x3i+kO/JGee8KIdSEjk6MYn7kgXt5nLMqii
 uW122fv5wzlo/vDZoMGSSH8KuiaunDcbYtdxfIQZpFGU+0Yw3DdapOwIrxA9rMFKzlk0A8LoL
 Pm5aIbFe9yD1iduwTopXbOv2EbYIZBmZQ3eJD23YsEf5l8u58p1yjLUG8+sClN13P2X55ZVrG
 9u7HFAp+itMs5Zim8VhSCA3tjdGkEAYTxYHQjUg6YDmcab2ViaVcGnLyPnRlMVosboaHRHBVA
 qeo3DbI3dzb0pVWRyhPeapVCkzZi7Yu+8/rbgmxjuuS7SBDuYXJ79BCLwM5fFuYeEbqdloBVx
 2Ttj+d9mXdQMPPSmhSXF9AKwIhgyBi2ELi9thVgQUOFX5KM7d6WK8EHItR2RXhCyrqLFo8rSZ
 hSXwp7iQQ4U1JSRW2YwjoR3QKGrAvooRxWih8Dcg8OqZqnNckNaYnNLue0xDRIu+1ut9C6qVW
 tZh27SI1HpKx3eLMLkN6dEwjNRYm0Xce6u0aNKQqnQhZ/GjGwPO238NimMe30uhpjvsdS4ddr
 mahbTbStk6ERddAS9nm2a0Lp5xgQb5W7BK0WcbROw9GYJdYLyI4e9Huo13Q4nemCz2DuOCuWQ
 EHTVirfBMsyGa/0HN5Bn1qJ0Kso4AYhtDU8M2FJ59Wlj8Selu2VFE58AfdUhcqRg7Dz0B4Cnt
 VDdjRULI0jrMak=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_051424_573875_C5B96BD5 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

vchi_bulk_queue_receive will queue up to a default of 4
bulk receives on a connection before blocking.
If called from the VCHI service_callback thread, then
that thread is unable to service the VCHI_CALLBACK_BULK_RECEIVED
events that would enable the queue call to succeed.

Add a workqueue to schedule the call vchi_bulk_queue_receive
in an alternate context to avoid the lock up.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 101 ++++++++++++---------
 1 file changed, 59 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index f1bb900..1a343d8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -117,8 +117,10 @@ struct mmal_msg_context {

 	union {
 		struct {
-			/* work struct for defered callback - must come first */
+			/* work struct for buffer_cb callback */
 			struct work_struct work;
+			/* work struct for deferred callback */
+			struct work_struct buffer_to_host_work;
 			/* mmal instance */
 			struct vchiq_mmal_instance *instance;
 			/* mmal port */
@@ -167,6 +169,9 @@ struct vchiq_mmal_instance {
 	/* component to use next */
 	int component_idx;
 	struct vchiq_mmal_component component[VCHIQ_MMAL_MAX_COMPONENTS];
+
+	/* ordered workqueue to process all bulk operations */
+	struct workqueue_struct *bulk_wq;
 };

 static struct mmal_msg_context *
@@ -248,7 +253,44 @@ static void buffer_work_cb(struct work_struct *work)
 					    msg_context->u.bulk.mmal_flags,
 					    msg_context->u.bulk.dts,
 					    msg_context->u.bulk.pts);
+}

+/* workqueue scheduled callback to handle receiving buffers
+ *
+ * VCHI will allow up to 4 bulk receives to be scheduled before blocking.
+ * If we block in the service_callback context then we can't process the
+ * VCHI_CALLBACK_BULK_RECEIVED message that would otherwise allow the blocked
+ * vchi_bulk_queue_receive() call to complete.
+ */
+static void buffer_to_host_work_cb(struct work_struct *work)
+{
+	struct mmal_msg_context *msg_context =
+		container_of(work, struct mmal_msg_context,
+			     u.bulk.buffer_to_host_work);
+	struct vchiq_mmal_instance *instance = msg_context->instance;
+	unsigned long len = msg_context->u.bulk.buffer_used;
+	int ret;
+
+	if (!len)
+		/* Dummy receive to ensure the buffers remain in order */
+		len = 8;
+	/* queue the bulk submission */
+	vchi_service_use(instance->handle);
+	ret = vchi_bulk_queue_receive(instance->handle,
+				      msg_context->u.bulk.buffer->buffer,
+				      /* Actual receive needs to be a multiple
+				       * of 4 bytes
+				       */
+				      (len + 3) & ~3,
+				      VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE |
+				      VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
+				      msg_context);
+
+	vchi_service_release(instance->handle);
+
+	if (ret != 0)
+		pr_err("%s: ctx: %p, vchi_bulk_queue_receive failed %d\n",
+		       __func__, msg_context, ret);
 }

 /* enqueue a bulk receive for a given message context */
@@ -257,7 +299,6 @@ static int bulk_receive(struct vchiq_mmal_instance *instance,
 			struct mmal_msg_context *msg_context)
 {
 	unsigned long rd_len;
-	int ret;

 	rd_len = msg->u.buffer_from_host.buffer_header.length;

@@ -293,45 +334,10 @@ static int bulk_receive(struct vchiq_mmal_instance *instance,
 	msg_context->u.bulk.dts = msg->u.buffer_from_host.buffer_header.dts;
 	msg_context->u.bulk.pts = msg->u.buffer_from_host.buffer_header.pts;

-	/* queue the bulk submission */
-	vchi_service_use(instance->handle);
-	ret = vchi_bulk_queue_receive(instance->handle,
-				      msg_context->u.bulk.buffer->buffer,
-				      /* Actual receive needs to be a multiple
-				       * of 4 bytes
-				       */
-				      (rd_len + 3) & ~3,
-				      VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE |
-				      VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
-				      msg_context);
-
-	vchi_service_release(instance->handle);
+	queue_work(msg_context->instance->bulk_wq,
+		   &msg_context->u.bulk.buffer_to_host_work);

-	return ret;
-}
-
-/* enque a dummy bulk receive for a given message context */
-static int dummy_bulk_receive(struct vchiq_mmal_instance *instance,
-			      struct mmal_msg_context *msg_context)
-{
-	int ret;
-
-	/* zero length indicates this was a dummy transfer */
-	msg_context->u.bulk.buffer_used = 0;
-
-	/* queue the bulk submission */
-	vchi_service_use(instance->handle);
-
-	ret = vchi_bulk_queue_receive(instance->handle,
-				      instance->bulk_scratch,
-				      8,
-				      VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE |
-				      VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
-				      msg_context);
-
-	vchi_service_release(instance->handle);
-
-	return ret;
+	return 0;
 }

 /* data in message, memcpy from packet into output buffer */
@@ -379,6 +385,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,

 	/* initialise work structure ready to schedule callback */
 	INIT_WORK(&msg_context->u.bulk.work, buffer_work_cb);
+	INIT_WORK(&msg_context->u.bulk.buffer_to_host_work,
+		  buffer_to_host_work_cb);

 	/* prep the buffer from host message */
 	memset(&m, 0xbc, sizeof(m));	/* just to make debug clearer */
@@ -459,7 +467,7 @@ static void buffer_to_host_cb(struct vchiq_mmal_instance *instance,
 		if (msg->u.buffer_from_host.buffer_header.flags &
 		    MMAL_BUFFER_HEADER_FLAG_EOS) {
 			msg_context->u.bulk.status =
-			    dummy_bulk_receive(instance, msg_context);
+			    bulk_receive(instance, msg, msg_context);
 			if (msg_context->u.bulk.status == 0)
 				return;	/* successful bulk submission, bulk
 					 * completion will trigger callback
@@ -1793,6 +1801,9 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)

 	mutex_unlock(&instance->vchiq_mutex);

+	flush_workqueue(instance->bulk_wq);
+	destroy_workqueue(instance->bulk_wq);
+
 	vfree(instance->bulk_scratch);

 	idr_destroy(&instance->context_map);
@@ -1855,6 +1866,11 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)

 	params.callback_param = instance;

+	instance->bulk_wq = alloc_ordered_workqueue("mmal-vchiq",
+						    WQ_MEM_RECLAIM);
+	if (!instance->bulk_wq)
+		goto err_free;
+
 	status = vchi_service_open(vchi_instance, &params, &instance->handle);
 	if (status) {
 		pr_err("Failed to open VCHI service connection (status=%d)\n",
@@ -1869,8 +1885,9 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	return 0;

 err_close_services:
-
 	vchi_service_close(instance->handle);
+	destroy_workqueue(instance->bulk_wq);
+err_free:
 	vfree(instance->bulk_scratch);
 	kfree(instance);
 	return -ENODEV;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
