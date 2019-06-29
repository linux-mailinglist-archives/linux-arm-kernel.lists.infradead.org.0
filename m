Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D615AACA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pBoO4qHKu5WdfSDtJ0SKTH/lpkFJHSvxvfAKptXlf54=; b=QKNf6+VbmSkiUfprLnVx/TKmQr
	MproY0xXL1bliflRlLatVW7QL//SYNacKydKKQWvDVbSp32xJ8Ez1NiUqh3UrA2+nKlJSkbXSDJKp
	iBV8Og3Y3udqQY4J0GUmfadw2xjvm6NVuHhI72HjrFdNrxXyn8oJ/QYLuSglmahokI1sRtS95LjlJ
	INovS3MKgdloZLPoLQiGLPAlY8Gx/AWXl1zmeeqmucvhA+nuV1TH9wtn61EVnUmrhsJRApqbtCaud
	13K77YV9r/UetR6JSqMojKm8ltIDrE4sVubGZJ3pXooB+2okUZ43BR6sDL1JxcXPhPr6fY4+ytBpi
	LX7ZlcvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCGl-0001uE-0Q; Sat, 29 Jun 2019 12:15:51 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCFL-0008AL-0u; Sat, 29 Jun 2019 12:14:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810449;
 bh=2vMmB60hqr3zxMDs/2xUlpIve2eQnaNGGEk/RnKtgqI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hryCDATcdajfsa2L0v+1NRa6wMbUF95A2u4SMfsqcHQhewuM6Alof/qDnrPRaHKqW
 Qpm7fh9GBVsD18jSm0621o7vTkMBfXBI+yAeiS2xl/oWmW9khOE7X6QQ9n/thpr/4Z
 dtYR2QatwXEOE+1AvzKo65MWj7PkO3rkppPd+Lic=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LhwAY-1iKOgN1HQg-00n8LY; Sat, 29 Jun 2019 14:14:09 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 11/29] staging: bcm2835-camera: Fix brace style issues.
Date: Sat, 29 Jun 2019 14:13:26 +0200
Message-Id: <1561810410-8829-12-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:xg82IR/YrwzDKkqe0xrUSHWdnUCYSrOu/C4kVV5IZoQAEU+xv4w
 Cb9T95Vs//MaV27yrM58adcxfOUBiDeECBh8N6AzgP3k/vomS7kGutCoyqYIkKTQMnxSty3
 AWnxw8xECdE5LymmoScdh8/tIqJfHbZBKjQFuWiP6boqtMbDwy3pmT1Ehv2D7l4/97iWsJf
 ht7cz52+UZW7PgtVbSIoA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zD7mBSQaAx0=:jGmpEMPg9ZYJO67MKaSmFL
 8kjek2SG/fuUHrN0UkD0cYwhvIbH0L3rCW0OCk+jG1/Ric3+E9jaCDh+STIhPYxYNiqoCvn4P
 aqDIMdlD3dGY6nd614v46QPIrEeC/TJAQq+jTHf4PNpWAIR3B94VzDQMKFtJxUFlkLuFy+6mE
 yA8sphZ1lm73n3v73wF7kyqe35+lgw0rCG5PQ7ebnThakwbpJ6GIUYF/ZyvmEFg3oiY88PjI7
 eF8YYmY9n3dP2mXKezA/tUyY1xeLv2Y0J/Qjw6SklkgVn3vl1qNBj8JBOTLoQWQ5FCfW0lLAT
 cMH0GeQiV2493m1rZuMF+4E/NC0a9XUmNd5oNpghPiwVj5cBVlO+RqSiXglt/iMDMyR7QxmLi
 s8irWsZQ47A4Gp8wYWiK+zBBwam/udByYVIu5QNgJLJGI0QpSt6ks1q6MUeLBrO7qQvobzibC
 tD51bylGKFHwdd/iPBnHZgx6VVhVBthsv6ar6QVVWMC1Lt3rfZaDkVywYqlZTovPjzg+6/Quw
 QMX9LXsASPiXz0NWJgy3xgtZ8XVE+JQywWdAgf3W5wvNlIPm1tHBlaJHQ5emgthn/JI/AAafz
 VJbHIaUuFs0PkhLgpRWFXIeqSlj3AesIw/luiEKyAk515sbkl3shR8TuVoUW5uhZfxe+IeY6Y
 9HgBg2Zuk8NgAvbpdZAQHx/4Wnn6ERCT6GecQZNM4tSnmYRWyvaqtnq5cxE/gKWs//gSgZJYg
 Zdjt+6sedlRd9Zy4ODtIG/DhIQZadUyOVJJw5kfIB0Yp+9sM8PNYzG+fi20OD/6e9YKeYb9xD
 +543KVos5qrSoKxPpA+tCQhp/r7v1QdYDHgZeQpaBJa+SIn3J/o20UN3ulk4/jAKUY2p9yQb/
 C5pRpa8AavYiKI2nXPxo/NhaIPSnN6Hc0uGywv1cFKNeETuiF3r6KmTsXykIIu4/0DHlpXoN5
 jMY/3NHyvEnIsof9aMtbwOvXU9Ce8eDIhSkis7BXMU48RejDPlh+cAmARHnrmkRg7T9aem4Ry
 KhwwoOkxfzW4XYX9q0nUS/U7JRA27bGtYZZ8nrKncz98FW8xbrgyqFy5VjshXTIU2mcKkdfxM
 k9F4iYn8BsLu1o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_051423_413341_91918F80 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
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

Fix mismatched or missing brace issues flagged by checkpatch.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 ++-
 drivers/staging/vc04_services/bcm2835-camera/controls.c       | 3 ++-
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c     | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 753c3cb..8813ffc 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -543,10 +543,11 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)

 		/* Flag to indicate just to rely on kernel timestamps */
 		dev->capture.vc_start_timestamp = -1;
-	} else
+	} else {
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Start time %lld size %d\n",
 			 dev->capture.vc_start_timestamp, parameter_size);
+	}

 	dev->capture.kernel_start_ts = ktime_get();

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index b3d7029..1a7588d 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -407,8 +407,9 @@ static int ctrl_set_metering_mode(struct bm2835_mmal_dev *dev,
 		return vchiq_mmal_port_parameter_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
-	} else
+	} else {
 		return 0;
+	}
 }

 static int ctrl_set_flicker_avoidance(struct bm2835_mmal_dev *dev,
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 5175e2c..73cb295 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1262,9 +1262,10 @@ static int port_parameter_get(struct vchiq_mmal_instance *instance,
 		memcpy(value, &rmsg->u.port_parameter_get_reply.value,
 		       *value_size);
 		*value_size = rmsg->u.port_parameter_get_reply.size;
-	} else
+	} else {
 		memcpy(value, &rmsg->u.port_parameter_get_reply.value,
 		       rmsg->u.port_parameter_get_reply.size);
+	}

 	pr_debug("%s:result:%d component:0x%x port:%d parameter:%d\n", __func__,
 		 ret, port->component->handle, port->handle, parameter_id);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
