Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE02858A6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=62cx+HnzClTksFkm4Rbq6ljI12EfnTIQbNFPIO1Hisc=; b=sNaWJHPf4POXl7OxjUk0z7kZ1q
	CD7Tsu1y6xmU57mtBUV3tTeqNL3Emkm/juI2u1+y3ciVWIUZMV33BWzcIklXXCu7d+HBF8M7tnevo
	iBkZ1eglvc9Y6CGXlcbsLEJHCrq6E12VVF5f4/Tx6Vw68rzyWtbnDpBcongJF0MgPnKo5vB+ZsgfE
	nZ+ia16K62WFWbCvHiVpbgDFN1dp0IjwfKKGfoCIRyhthx6ZhTFEcfFOQQdxgRbdZcH9Tjdge6f+Z
	g26a5arC+V6mVuWOHHTpIuThufJCBCGSRqTMbJ68t8BYdVJTZn8W2+ezp99OP2O5TBgCOiWzRLZln
	vN+R+1Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZab-0002mQ-Ur; Thu, 27 Jun 2019 18:57:46 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZt-0002Rd-Si; Thu, 27 Jun 2019 18:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661809;
 bh=JJVkmfbW6N0NvT9ruDXhbQcny8kYrpPTfEhBaZDhb3M=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=kneeQV6aiwq//qL0SNrWVx6slJXGkEW+5JAbrO95yJvzJEpH3iP84+GHT8p5skE4Y
 fE1ZprQ7AZPyWj4wu6WPODAhHvWwi4DnHdVDBIao+EE0E8fD+BcQ8gI+Wqn3qWU0k7
 F+l6CprxzwWm3zH7Ykhz5cRCWl6bwjPoR+J+OQNo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LZhsq-1iPr4u3QI0-00lUJz; Thu, 27 Jun 2019 20:56:48 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 01/31] staging: bcm2835-camera: Ensure H264 header bytes get a
 sensible timestamp
Date: Thu, 27 Jun 2019 20:55:58 +0200
Message-Id: <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:WAIkKWpwVdxTM/+coczNlxmlJbV5WdBPgtR/3uHZeto+K08Eclu
 svQNmXV5h9vW+mdUk9XfNzTa76HYH94DgyrcbG9ysEHKf7Y7q5mwONpBh2f1zxUXNKRDk7J
 94I1oiiLSSgAG3KMoByyQOHl1c6eYOj+CEvhHGREnO/EfomE/znzsLsSiUwtvpGEs9f2/+/
 AGHU7n95xzI6TFywU3VNg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gswxCD8kVYE=:xiyG4+ypd7rsY7IMwgK+p9
 oSpNQ4FmJeADjcHkrPLX37xpNApU771sNLIElrvDrdbt8aFoG94JIIYdsmhS+oiIgUMcVWtU3
 cI6IaQndpj+QeBrx9M8iGWR8SnsnzOV1Wf6RItduKoUcmoM1MzYtt0V6liCThgGksM4C/zztN
 hzHI1gq0BSB4x2KGDQ5ryUbZYU5uj7EXZ60VDCSIkLHZfyFo7dtXPS30G3y4pz4cpRXVSh/40
 SnB6X91zO2glqAouKv5FaWM3id8lVEdRKIzODu4KNDf0cggODa+V46K/y815su2KCLoTr06dw
 ngCgqnMnAMv9B8FsdNeZ/ccFl40Genrwf3zqBVWMVUb4gr1rfCGHDCYNLfUkCMkkfvbvZGlQn
 wxjMggZ0xdLJZkq6/Js4UY6n5iaoO5vc1btBk9DvTe3vBindkHbRmz9GnkXLUP2tjz7Lv83zg
 aZ+uKuipihzvA06ef2IdYWUZzvfCUzm8CIsxq3nAKFO3UW6lPhcPmvA3OFcpv+AU9FByZAD95
 NugRbunYJdQhAEsJwMwH8fsuTIu+JGz/dpeqkNQd+etIOCIrcXhue+HcwOWV/0xqfhROfNX4o
 VsXZMMFwIWZIAk49BbUI3CV70OtBxzIYN+yyMEQF0HVFi+Uhcj9BcDUlmOOpfnOao+t/d/QLH
 UcOvv1heFDn8+BF1laIZoBq2m6m7iNtt1OxKZry0ykprLdrfG54EeDm03oPN3ktaHIoP5AYEA
 jK6UMwtNFdlzFmj8empbxqG3//mloU0ioeswXeIakZBJHfnlAYVNcMiP/uCzKZ1CPqrQulzkf
 zF3avInqa/R1xxsu1nHLsDBKj0fLrQQa1RYCiDU1bzvsUq/kcafC38nHYAguVbK6zf8LchGVE
 6qmNt0Qk964u2AiR55D8EO8cBJT1VWse867szrgRnkIxAT8TN+Kk4ab4SGs9mVWM+EqInEHjG
 j4WIfAwqc2woBd8kYGvqTfF7gafKbBi0E9vQsu2xve4hXuvvrQmR+M6pv8ZCX3/uq7QHWG72G
 C7nnGhX3kAzu+xPncLrChstdqoorQ9UgsyGkmC/fH9cfGaaVS01vTeEhUFzKbicahvx9FX5zu
 frldOegjUoid+Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115702_268393_87F0B55E 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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

H264 header come from VC with 0 timestamps, which means they get a
strange timestamp when processed with VC/kernel start times,
particularly if used with the inline header option.
Remember the last frame timestamp and use that if set, or otherwise
use the kernel start time.

Link: https://github.com/raspberrypi/linux/issues/1836
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c  | 14 ++++++++++++--
 .../staging/vc04_services/bcm2835-camera/bcm2835-camera.h  |  2 ++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index dce6e6d..0c04815 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -359,7 +359,9 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 		}
 	} else {
 		if (dev->capture.frame_count) {
-			if (dev->capture.vc_start_timestamp != -1 && pts) {
+			if (dev->capture.vc_start_timestamp != -1) {
+				buf->vb.vb2_buf.timestamp = ktime_get_ns();
+			} else if (pts) {
 				ktime_t timestamp;
 				s64 runtime_us = pts -
 				    dev->capture.vc_start_timestamp;
@@ -372,8 +374,15 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 					 ktime_to_ns(timestamp));
 				buf->vb.vb2_buf.timestamp = ktime_to_ns(timestamp);
 			} else {
-				buf->vb.vb2_buf.timestamp = ktime_get_ns();
+				if (dev->capture.last_timestamp) {
+					buf->vb.vb2_buf.timestamp =
+						dev->capture.last_timestamp;
+				} else {
+					buf->vb.vb2_buf.timestamp =
+						ktime_to_ns(dev->capture.kernel_start_ts);
+				}
 			}
+			dev->capture.last_timestamp = buf->vb.vb2_buf.timestamp;

 			vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
 			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
@@ -541,6 +550,7 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 			 dev->capture.vc_start_timestamp, parameter_size);

 	dev->capture.kernel_start_ts = ktime_get();
+	dev->capture.last_timestamp = 0;

 	/* enable the camera port */
 	dev->capture.port->cb_ctx = dev;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index 2b5679e..09273b0 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -90,6 +90,8 @@ struct bm2835_mmal_dev {
 		s64         vc_start_timestamp;
 		/* Kernel start timestamp for streaming */
 		ktime_t kernel_start_ts;
+		/* Timestamp of last frame */
+		u64		last_timestamp;

 		struct vchiq_mmal_port  *port; /* port being used for capture */
 		/* camera port being used for capture */
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
