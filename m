Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A52558A84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k5xkwMOwQgQ5zanXcVI5UbKG+yK0dCJgc9G07xXJEUc=; b=hdAfzdwSPouPzE7C7Ah1a9nDjb
	159+pR+jyRovKEITE99An0eOjq6xDejA9JwrcTXCuVfLw80mo6WPjCs9UIUADBROQ/hxPQOE6cqkV
	gmzE/5qluoZyMLo0qf+BXDlJgEYzp3IDj9RsfAy+xHL8rb+GGCQPvzbSu+l7OO7ePjU6wyeGTxa/p
	0/zR5GCAk4Dx7KHHGcNe4rfMQYuNsf5x501LymII3buSs/BQQ3YTU4zO7ljFSFZXEun/SF7rOMbqH
	4Ak79X9ytTUfnBKQBB43n2EnpZ2Vo9ZYE79+wzB9pofL7lmzdG+yCuMcadoz+xBWZeyqpeBo99p3U
	o11wZMJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZdh-00068S-6Z; Thu, 27 Jun 2019 19:00:57 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZu-0002Rv-6v; Thu, 27 Jun 2019 18:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661814;
 bh=6ZFvvnoUoNYJ167DymQmDLXQrXXbVJGmoz5xkFUFkxo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=c/706gY0UgJYyKs8+M9mLDm95snT8ou0/+k7AY02/q20EFG8UvMBWwXxdHm8kiaLO
 nQQUwGTgzB1cK93HERpct22ndA0KGxjcN94dsH4SbYVDv2JRzbgcCUDJtzlD0n73dl
 mEsw6OEmBzhpYD6vXrYNrZi3eHpeeJB1VrCHWQsk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MexFh-1hvkuV23UP-00OY5a; Thu, 27 Jun 2019 20:56:54 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 15/31] staging: bcm2835-camera: Ensure all buffers are
 returned on disable
Date: Thu, 27 Jun 2019 20:56:12 +0200
Message-Id: <1561661788-22744-16-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:O5HYnB3cVymPrHoiHasYk5no3ykdniffUN7zAl1Rg8DafcpG+T4
 bMmsrtIPQWVMTk6RRq7LYJc2xvruBTi45jIn/zlwKzmn66kZyPE8CQH/Quots59VbICXMDG
 mGu+nBwhKtD4bnr7xQhkBu8YRzu0RArdoKdnmFkBx+C7LNRROAJl2bNW/B7zdoKYAgcHe4X
 ofyLC947wtCBd9WRF2v/Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9s8AdhaoNL8=:3lw3QTv8BeSWT/9P/JphVY
 rwMfz8IiukzeYAHGgsC8dO7EvdYBP6MiZMtCsmT8V+aWwzPEWB/yofwLfIYBD+yX+MdGrqIAd
 Vbt6ngCRtAZomwSXU2rxk9yLlM9gC4gC8WHN3Zg9d5whYlPYWQuyghpUe1uEkLlKKFjBsJE9d
 q/bM3HWaNhMqx8vdXD1U66T3/bWy5EO7as+hyMLsVm0d99jc+1GaV2M1X7F3CoJoEpzJUiCmN
 23yBEVfaf3VXY9iefmcjsCF3W+4+SJvTDvthy/FtnqRWc1Zq9vDre3swZewFDV6d2IXOxbzzo
 iGfa3rxLjzbdbe/NlUS5xDUXVejEt/TXs9TZaU9l3Rrwe7UwbYFpYmaKxVNvtoYzeuDUzlewS
 ZqidhVs21joVa20WJWOSAtayfgEwK1djFVXO00/CUlVtPZ5uS6k7iwxpM9JGUuKOzSIWckYG+
 aQmFmaceFI9BV9waZgQZV2+GlgFW7gqqdlBo9B5uODBKdlF4v512UTsktfQjnL/WvKCREh+CZ
 0ZCbf/6lg0V4feJilrmP4DzWc4mcZ1BR6huHNorWXBVlYssYku5rF59jDtmSphUntaCdtMY+4
 a5SyHT2hlesoBmSSyGsrR6Gqid8hKwPQtBk0mU7ac29s2uWTdjyO5dnS2FKEEEWhHsJfyNTgf
 UWGhO8CyFdslm2abEoj4Ne0IQPUYZ7FUaimyYktzAqeFO8Zz19+AA5qklHdA+zUva8lPBDMe1
 wXA5CDX72f8HCNABtWP3/0yDHGyZvBkqRC/77GfX9NJkOysA1u0uTT1YEdjTqTUGqYWQIKVMp
 174QzoPb3Mr6BfRgRVyEGXSFWQv7CBJNJauVYhWFz4LxhdiAbgM3GZKO67iHc8RcqXTKlQqLl
 ep6U0EHC6v+YzfdaU+sSsFgaTwvxPF8HTwdaR+PdgM3E/uWnlBvnFeN18xb/NYrr4FNU5/rK8
 H8RGYrQxmn9QhNFC7NSL2qFK9nkNzkoh+kOIg7v5cB1BzX/vzO+/r7q6APWHn5Oo3OUyXF/dH
 mSH1B0nGyk+gceokqYh4aJcslHTT3ZB6BmeznLX+eRjA8epAa6sXxZ752CswN8VDrMFtx6Tvr
 0K5MiHbDdhCLjU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115702_566942_F3BF1D4F 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

With the recent change to match MMAL and V4L2 buffers there
is a need to wait for all MMAL buffers to be returned during
stop_streaming.

Fixes: 938416707071 ("staging: bcm2835-camera: Remove V4L2/MMAL buffer remapping")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 22 ++++++++++++++++------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      |  4 ++++
 .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  3 +++
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 4968782..36eb4d6 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -595,6 +595,7 @@ static void stop_streaming(struct vb2_queue *vq)
 	int ret;
 	unsigned long timeout;
 	struct bm2835_mmal_dev *dev = vb2_get_drv_priv(vq);
+	struct vchiq_mmal_port *port = dev->capture.port;

 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "%s: dev:%p\n",
 		 __func__, dev);
@@ -618,12 +619,6 @@ static void stop_streaming(struct vb2_queue *vq)
 				      &dev->capture.frame_count,
 				      sizeof(dev->capture.frame_count));

-	/* wait for last frame to complete */
-	timeout = wait_for_completion_timeout(&dev->capture.frame_cmplt, HZ);
-	if (timeout == 0)
-		v4l2_err(&dev->v4l2_dev,
-			 "timed out waiting for frame completion\n");
-
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "disabling connection\n");

@@ -638,6 +633,21 @@ static void stop_streaming(struct vb2_queue *vq)
 			 ret);
 	}

+	/* wait for all buffers to be returned */
+	while (atomic_read(&port->buffers_with_vpu)) {
+		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+			 "%s: Waiting for buffers to be returned - %d outstanding\n",
+			 __func__, atomic_read(&port->buffers_with_vpu));
+		timeout = wait_for_completion_timeout(&dev->capture.frame_cmplt,
+						      HZ);
+		if (timeout == 0) {
+			v4l2_err(&dev->v4l2_dev, "%s: Timeout waiting for buffers to be returned - %d outstanding\n",
+				 __func__,
+				 atomic_read(&port->buffers_with_vpu));
+			break;
+		}
+	}
+
 	if (disable_camera(dev) < 0)
 		v4l2_err(&dev->v4l2_dev, "Failed to disable camera\n");
 }
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 0b95723..4d63176 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -246,6 +246,8 @@ static void buffer_work_cb(struct work_struct *work)
 	struct mmal_msg_context *msg_context =
 		container_of(work, struct mmal_msg_context, u.bulk.work);

+	atomic_dec(&msg_context->u.bulk.port->buffers_with_vpu);
+
 	msg_context->u.bulk.port->buffer_cb(msg_context->u.bulk.instance,
 					    msg_context->u.bulk.port,
 					    msg_context->u.bulk.status,
@@ -389,6 +391,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	INIT_WORK(&msg_context->u.bulk.buffer_to_host_work,
 		  buffer_to_host_work_cb);

+	atomic_inc(&port->buffers_with_vpu);
+
 	/* prep the buffer from host message */
 	memset(&m, 0xbc, sizeof(m));	/* just to make debug clearer */

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index 3498555..1750ff0 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -72,6 +72,9 @@ struct vchiq_mmal_port {
 	struct list_head buffers;
 	/* lock to serialise adding and removing buffers from list */
 	spinlock_t slock;
+
+	/* Count of buffers the VPU has yet to return */
+	atomic_t buffers_with_vpu;
 	/* callback on buffer completion */
 	vchiq_mmal_buffer_cb buffer_cb;
 	/* callback context */
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
