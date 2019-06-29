Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFA95AB10
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c1L0jXir6XqW4x2n1uANJSZTVxrzX4sSVUljNLhY8Uc=; b=gOsNuFN8K8rTwjbNsXauSs5+WF
	eik+ckt+2ehd4bH0ZnSHjETeGUVcVQFNIbXpKg3cfBuD4s9Tioe3LaoaE5fU/iMb+l2pgL7DXlHae
	UcaLx8FpRe+zIk4isnkTyeGbVEdMy4zGO/SektFNVsXVQ4y7ez6Shfc8Lqwk2oquUBmOMERAO0S/7
	sHwf7LQGHTPK4cjjbfHqqbzVp3X9KmXFUZKSLjvamdECYdzcDL2fkIzXpOexU4Cm9JQ97+yrLMr1K
	HJkslciZmu5hHIzcmuDD8qLpI2iaiMiCcttQQYsVVAzN1NLCh08f9/2rZIng/+juW2Ap6ym+zFNoz
	bxvVKjfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCnD-0006K1-5O; Sat, 29 Jun 2019 12:49:23 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCn1-0006Hb-HK; Sat, 29 Jun 2019 12:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812538;
 bh=5Lgyn/hZ3QxnIC0S6D39JFYVbTuvdGMraIyFt4x4lGs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PA7Zq5bp2EmyybgeQvEN3rvPpYfmxkaH3RFaWq+qCJR1lX4TZTbp12pBNT0Iwl0h3
 MeABed/uzh3gHtY0KkqoPlLmcv5yfX9YQ8gNPYqrOEC6swZbOjwKff8qkSLFg4Tbwc
 kp8HY7Gj/duYjPp8U4ANJYi0sNBmZfkO6x0e6060=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1N3bSt-1ig4xl2MRH-010ddx; Sat, 29 Jun 2019 14:48:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 17/29] staging: bcm2835-camera: Set sequence number
 correctly
Date: Sat, 29 Jun 2019 14:48:24 +0200
Message-Id: <1561812516-9087-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:0IIAyh4ZU2BUuBfQtj+eM5IUn4ePO2T5pJ6qtNdfEbIRp1TKMCW
 JdLPsT4wmEP+wlWHK+LZn4hFhkcWGlnfM1pxHZRwZrhdvSCRyH+e2vl1BEjMAt7dqsTa2WX
 ax6YdI+XOww9m4y2I0PO8Gk33KqPLWtMmEwdcwoHq+jCqxrGUPBagI+MBpib/zbYS/YA3I0
 h3VB3DNfMZC9JxPSIcgBw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HGBbzrCvBqk=:p+XzXPYOLequL4frhkS0E9
 jl6vtAuVY1WQnCCjUpu+uiWSAENgSMK1hk0fkURgVw9o6hSHt5GW2lxhOqaNM4Ba9izEnEKde
 UCOymYY9/BYsa4wwm3qA5fRrcEtu1jXqz4rnbDRUCtcf6yr3dB7nxOicVzzdiQvjVH3uRI0pA
 xaUlUUOEGJxli4oh1QCmHtfgA7OdmSLbrGPhPFMInqIShangdIucQ82Sh48OXctPhFO9xafWs
 no1mjFwDwY879B5j5y6+RCZae4uUzzB3Rv2gpEXz/WXOZeKmPadUHLWQV9J+H7vmCktJWRi5A
 nnOAVaxvRFg1QRODa8PuvWbBNeF72e63EQZUcRfKI2vhjllP3Nojou3veN9D12lvRZGrLZMBB
 ItZf7CdqBhlNiiIjyCyRmP6V42NpQ4j5jeORWDftxMGGzKbmnuKuP2qvhU08jTLrz7or2W+nx
 cZrSs8ycLN2cxw9IB6EgUHb3Mq/Tnk2Dzf0Tnezjgb0xMtROoBz+H9lSb+rncCcSI+gHOIqkq
 ijCiZj3Zd5HNQEn4pFa7/Aq7MpfZuwu3k5l+OSczP8J3btTDlkrwcxB17rKOBLmEaLdTnQTmm
 1cVCmKK/zE+k6JUumxl8eNE7w+iQJt+4j6AMlYy0ygIJOlfNm4RoVmfslzrph1yN5ldMdeQlf
 W1l8fuxx2zzLHYGZqkFx4IJFK+37PM6bEr8uthZzxBH9G6vkudIsGyMrxOBtoap8El7od1xFV
 bGy3MOZaE+AITWEy2YXiXrKUTobxjFp03ixOu/uyqwIEj8yiKFHcssftqtV6LLaXBa6z7VxpR
 xquRVyIgbefqYxKDlljw7JiA1tqVZMYB3acjKJkpQNUxJ88J9Sr6haMqjLwkh2RfuOd45dN53
 9HFwAh/sdBF/DcQZ8wCCim16zrhHlJsWs7y/YauLwHQoJsfbfOKV++ZkOH055Iy7DUbMQm4N8
 t5r98zLwiFiWHVz6X//jhulVKUReMtrX57SLKHWiOXY8Rr6soqmp0FxddLBsdAIpwhj6kgX+x
 6lIjcl/RlGLpY66OB5SVJ1rluzCvFYzLfGe0zXR2ly88uDq70DKcdJZRUlxa1CjQ19SlU8Kw7
 zSYRJ5RGZQKoPE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_054911_881380_6D65B791 
X-CRM114-Status: GOOD (  12.01  )
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

Set the sequence number in vb2_v4l2_buffer mainly so the
latest v4l2-ctl reports the frame rate correctly.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 ++++
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 5a51e4d..167c218 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -388,6 +388,7 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 	} else {
 		buf->vb.vb2_buf.timestamp = ktime_get_ns();
 	}
+	buf->vb.sequence = dev->capture.sequence++;

 	vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
 	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
@@ -515,6 +516,9 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 	/* enable frame capture */
 	dev->capture.frame_count = 1;

+	/* reset sequence number */
+	dev->capture.sequence = 0;
+
 	/* if the preview is not already running, wait for a few frames for AGC
 	 * to settle down.
 	 */
diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index d9f0411..b5fce38 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -91,6 +91,8 @@ struct bm2835_mmal_dev {
 		s64         vc_start_timestamp;
 		/* Kernel start timestamp for streaming */
 		ktime_t kernel_start_ts;
+		/* Sequence number of last buffer */
+		u32		sequence;

 		struct vchiq_mmal_port  *port; /* port being used for capture */
 		/* camera port being used for capture */
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
