Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4785AB1B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jQcbIB8exzBngMMLgbG2s9AJcPMQn45wtPnBH19OAyo=; b=Pjf
	ED5cX5lH9FoIWu2nMdVGmajOXiQWRU//U1s50/4Q3GyZv9WF79Dv09aeruOuyE7jVzGKgGPWsh/y+
	TU9WCYyd5cVphkmO8x4cYd/tAiw1XmXkzPxSFS8HmG+uEAhKyW6Qtf2XIwYryhZPxBGbKgGMfyBHJ
	GWzaKVbRe1qGoNFZI/4nlugIuK31OOFT5GB7fyNsfm7nGnt0TQZccaEXrLYvaj8rAHnUx+E7+x2BJ
	lBlKI7y9w+dhdP61RARRAv0LyiAxnhFk8yHy7Eug3eyiSkK7ZP24fT2B2V5ygHr4D3yxRhbOI/m7Y
	GCHZogIcSc0bAZBIZOXAOTqu4GxRmSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCop-0000Ej-10; Sat, 29 Jun 2019 12:51:03 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCn3-0006Iw-TX; Sat, 29 Jun 2019 12:49:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812538;
 bh=3x9fK8+WqdxIrAe71mFcwmVde8zp+yFOeUm23taVNv8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=ZLg9bw7CysS7PP7s5vQ4fSfGM/ScglHIELtpiIGidglmdNyE4HSoAqb3r5icFFMST
 9xnMTHZbtJxEcgRsfM1ijGI5sM/mw/nGAfq6FWzh12nqXTrHW26EcHwt45THtHbP6w
 vV1t18RObDq8ST1UkiQyBG1RrXkFGm3vZQK7T12k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1Mi2Jt-1iBqln0dOb-00e4QF; Sat, 29 Jun 2019 14:48:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 16/29] staging: bcm2835-camera: Handle empty EOS buffers
 whilst streaming
Date: Sat, 29 Jun 2019 14:48:23 +0200
Message-Id: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:/cvNt30+YDthGsZtjLDMUA0vzzYtzqySl0JtpspYABVgnNvyT5A
 zE2DJOqV1xkwuThgyTqD9z8anSY+QuKz+oH8bQljeaaqL2iYWlRY1xCP1FY9aBGE1KYEhSm
 wqG7F4+nmpM/hxm+VXjBM8WGbpzid7sgsEGFVKpnAvTYhiV3Cn7MUxyBWnlD6esrpAaLAgN
 wWALLTPenrX0WFrFAJHCw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:L0Z3RZh+wyw=:vEMdpum6xqsFntXlnuPLFZ
 kslF8C1dPuapdvsNpVBVGwzoGKdRXf0DoLivMH6wf5sMhxXkFmbxXeFQBFH30UK/Zi2LUsq2G
 sJeStWnOkQgON3eedGGxNzZ2sPDsjW9vmxHmRbuxI+0rc7ugl0Y747oYyj6GyUSjRHWcAprfw
 wLHY2XvKiuWoYL42XWGyJvjbYgIwkJv0IuBYa1RJyQ3yj6BsstEYrNVNxwim2QHkRyNItQSAP
 XujLVStm1wK8q7M45sZCfC32q/9ZMQSwSypqIhjOxzGQbzzm5yBPP7pma2RN+/V+6WFwYtwUb
 G+KZ6kOf9nneJZ3GL0wYuK6Z6inh2IqV1TQ9wCebqSukfez7tybaEsKCPvI9SpkD+I49V8vkp
 htbPVQxtDGbXZQhEtXNQnAxg0Jxr/0R0aqZNHPhlOM3AKZU24vYeGk+ykz/RaEzJKCpeVutRW
 ZfuHf/AA9IVb7+xRBvYFTJBr+zIb5BbGDuyB11t86kW1F6a/ultvh0f7X32VPzn7PzASW54UJ
 c5PS/6l26zebIkW/r8AXxXnovy+pcMjblthY33yNZJbJaZBbBpbzR24xb99/lrMCScbOvlgha
 XQgXhd+dxtNxZ9kUPnBFhj7RbcKaUxSoE1JTAdwoXojcj1cfRSZCj/Y4dre0VMO+wK7wCmM4r
 0kGs93i8KgdDLkH0344adXA7pV64ALxefZpRwLOsBriNQi6cKhF/ofr8Hi7x7oRmtczftkKOb
 DEFtDLqLlIhEDYvfrFTwczd0niy34b+hWuqFVznVOmWdDZTc5ja/bVVSrrLYOiDInHimFmZ1j
 yUOQiSRRJtNZDYQa0Gu1zB5Vct6nrRI5/xp91pmV3CUgcvauln2OrJaWLdQh3v7prI7qs2a2B
 FcR+3k6qzA8dpKXXVvfpwIn+GnBfsmlKySyZKvhiiVFj9xfunaVdncwICTDFV5Al3GOtzn892
 rsAlvYcDLO5MdnOUAF8vNnQfxiNoaSo/b9hg3QtZRmz6ZHZT9g1wGT5xOGd7SjGy+cHhTXc8m
 Au1xnrCx/IC9nS5127N43uRbC6TlBP7YVt3eT63IBXg/YXsjxmV4Ofdz4xXnTZgRTOMr5eKTA
 KjSUBi3vA7pWM4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_054914_244913_282370D5 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
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

The change to mapping V4L2 to MMAL buffers 1:1 didn't handle
the condition we get with raw pixel buffers (eg YUV and RGB)
direct from the camera's stills port. That sends the pixel buffer
and then an empty buffer with the EOS flag set. The EOS buffer
wasn't handled and returned an error up the stack.

Handle the condition correctly by returning it to the component
if streaming, or returning with an error if stopping streaming.

Fixes: 938416707071 ("staging: bcm2835-camera: Remove V4L2/MMAL buffer remapping")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c   | 21 ++++++++++++---------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c       |  5 +++--
 2 files changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 296f4f0..5a51e4d 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -339,16 +339,13 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,

 	if (length == 0) {
 		/* stream ended */
-		if (buf) {
-			/* this should only ever happen if the port is
-			 * disabled and there are buffers still queued
+		if (dev->capture.frame_count) {
+			/* empty buffer whilst capturing - expected to be an
+			 * EOS, so grab another frame
 			 */
-			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
-			pr_debug("Empty buffer");
-		} else if (dev->capture.frame_count) {
-			/* grab another frame */
 			if (is_capturing(dev)) {
-				pr_debug("Grab another frame");
+				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+					 "Grab another frame");
 				vchiq_mmal_port_parameter_set(
 					instance,
 					dev->capture.camera_port,
@@ -356,8 +353,14 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 					&dev->capture.frame_count,
 					sizeof(dev->capture.frame_count));
 			}
+			if (vchiq_mmal_submit_buffer(instance, port, buf))
+				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+					 "Failed to return EOS buffer");
 		} else {
-			/* signal frame completion */
+			/* stopping streaming.
+			 * return buffer, and signal frame completion
+			 */
+			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 			complete(&dev->capture.frame_cmplt);
 		}
 		return;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 59eb812..d0f7b67 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -332,8 +332,6 @@ static int bulk_receive(struct vchiq_mmal_instance *instance,

 	/* store length */
 	msg_context->u.bulk.buffer_used = rd_len;
-	msg_context->u.bulk.mmal_flags =
-	    msg->u.buffer_from_host.buffer_header.flags;
 	msg_context->u.bulk.dts = msg->u.buffer_from_host.buffer_header.dts;
 	msg_context->u.bulk.pts = msg->u.buffer_from_host.buffer_header.pts;

@@ -461,6 +459,9 @@ static void buffer_to_host_cb(struct vchiq_mmal_instance *instance,
 		return;
 	}

+	msg_context->u.bulk.mmal_flags =
+				msg->u.buffer_from_host.buffer_header.flags;
+
 	if (msg->h.status != MMAL_MSG_STATUS_SUCCESS) {
 		/* message reception had an error */
 		pr_warn("error %d in reply\n", msg->h.status);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
