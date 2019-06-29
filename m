Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168755AB19
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:50:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LsztAvcIGy09M3D4eZtyfG1vy62Kc1yZgnVdUa5ZMgI=; b=ADu4Psw80PY9SdjinntNalJnzX
	RIBH9RATXmVfL1qjxGkWRia8zN8gvQRsifMTRHpDqoyi9/G6fJoZ/WWeEzCaPKmFo/osNVi5DA5Af
	G3T+ejZCvDIx/DoN5rIRCD8aK3q298fhW51BqXpqaj1as5JMNLKepQqLpNsy3yJ3KmHk5/yET1pJz
	VMAqtPVdiXKWpDuKago8FwnmjBiNuqNTjQxknqofvKxYFfdVz7LWF0fGgHtDTFeFyzOj1mnV7KOdF
	cCpXnZWZBiMfQxaqm+b52NDVRQnhlPRwDGrd65xAbfzZmIiNrRFb3Ci7aarvzKzAuCOqAt5+A06rX
	ojt2TDQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCoN-0008GE-4I; Sat, 29 Jun 2019 12:50:35 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCn3-0006Ir-64; Sat, 29 Jun 2019 12:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812539;
 bh=hBqLBGWSdZNpbsASbNgvGY4DcFFh5m6Ia2pIQ/9ixMw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hfKuiSKNgIjpTTiMcCK/6JkO2Z/uQdJFJa2VsKi4mBr47euIlezCkYInqZ2rdZV5J
 GIRW/gxaFJ2wqO9OtOB5yjtKvJpglQPci42im1BUusCJwi8ewj3b/s+r6V3LTZRJuZ
 wfpKVbGMO1yRvSI5NCBIUyG211+Uen0xWs8C7X7I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MGhyc-1hl4OG4ALK-00DmDA; Sat, 29 Jun 2019 14:48:59 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 18/29] staging: bcm2835-camera: Add multiple inclusion
 protection to headers
Date: Sat, 29 Jun 2019 14:48:25 +0200
Message-Id: <1561812516-9087-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:93E048EqDPBDg8k1FYT8MHgk3lqlBfQDzG3WG1ig8phF50D3QCn
 vsTHHvndx6KyhRTXj9MoYP6wIV9rGjQcfVGvUxNcion2zhGC1sqgmcgMmYaCuJNn+6znW15
 U0pMZuTojAZYzN0Y2STPm75Nw+RBhK4qAvcUeI4d9FMvOCiy/c3qeWcpP7qnM8yH+tyERGT
 8KXPMqntGtvqup6tqu0EA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WZS6uLE2RKk=:27LPaaUhxhKEQtRFJ8vp1+
 +G26dsRKJbz3HjSHLZ1VaU2+uwEWFzP2R1qyBMs3tzaJi8R+cqjtzp6e5ZCaDNxO5scwELZJD
 S4w8BWi9G4f48tCvzjb0MAx1MdalHE6eHGze/j74einB6FtufenOHtfnK75x5se3hyAV9Vklv
 OjOMb3zgYcaEdn3XHbrwXcfhyXffKzkglGiATb9z74YlXa5kpWF4zduFeD1BgZ1u9Tc8HoYAB
 ujbSqKn63+bwIvJTFnSxZPZ5JDd+olxP39sODGGU90g/fBaiKWGFz5aCCPD4oitCMvZP6Asmr
 rZy82QQhKFbz7yq0EH0hzfugrA1a/xCY1kgmwJfVONYj6WS/8EiWISuhXmeBPU6/ah8wGGsgK
 9oB4q5k1uIHVmKA2mc0uh4rSXW8eThrGoiMbuaa3H4wQ/WZ1mq3AFeRqdmU9QA6jWtvhE0G3Q
 fEEeLMb0uvOcpUN2kG/8gkhdTQtY/b9WojMWeDgsdQRgABd8xJyGuvn9VSSE/i4CQe1BqWuCc
 AeLvIt5STy08JeA/X4CH9hdnPA5Syx2iaKzjYD+9spD9CSz5zBjO74+F+qb8aO4d1iJxOPe8c
 8T8J1MpURVIeKCF86BZfNuMPuBiX/ZdIQZq3AFMTGZRHARAE/bSyW2/gcLZ3bGJAJqgmr/6t9
 ArCse4bjFj6t25ZkhIeEznXMWN/gsKJw8X/CfrVGWioXu7F4CD42bZL3rXT63U8y9+dnEZkQr
 IZ86ZQVOpiS4pXh/bdI3uuWrjO6OI3uherAvkwkkB1rzlyioYUsFoIzCEcSSgSJo8zHO6EXOm
 Cx6Vl2Ov1ShogJKdlzdaZ2XpOn5dmduJZifI2xpU8SM6Go4b+2IAW3Hz1DsNwKcQZlVUPP74D
 ChN9l8ertEChGrRuO1v9SxG4Du1tmYm52cvitDLbSo8JTOGMVhX9uWzzHz0sd3I2vrktu7J+e
 hAvOEyOMpIf+RxKyusqGM4YEMXBiL0OJoVPodJz35VwRc9xtVpwXvtHxob0zaRO7lJGh5vtuo
 8id82ahQ/NBZaXp+dN2Xvx2wdUxL5iVCEWIqcZL8eB2/IPovEkzYVgkAPY+MF61h7B9PPMcCa
 Ig2BzvFPfzkB94=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_054913_541824_B0D55F25 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
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

mmal-common.h and mmal-msg.h didn't have the normal
ifndef FOO / define FOO / endif protection to stop it being
included multiple times. Add it.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-common.h | 3 +++
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h    | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
index 858bdcd..6f56c51 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
@@ -13,6 +13,8 @@
  * MMAL structures
  *
  */
+#ifndef MMAL_COMMON_H
+#define MMAL_COMMON_H

 #define MMAL_FOURCC(a, b, c, d) ((a) | (b << 8) | (c << 16) | (d << 24))
 #define MMAL_MAGIC MMAL_FOURCC('m', 'm', 'a', 'l')
@@ -56,3 +58,4 @@ struct mmal_colourfx {
 	u32 u;
 	u32 v;
 };
+#endif
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index 8e0aee8..43cc593 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -23,6 +23,8 @@
  * implementation uses fixed size types and not the enums (though the
  * comments have the actual enum type
  */
+#ifndef MMAL_MSG_H
+#define MMAL_MSG_H

 #define VC_MMAL_VER 15
 #define VC_MMAL_MIN_VER 10
@@ -401,3 +403,4 @@ struct mmal_msg {
 		u8 payload[MMAL_MSG_MAX_PAYLOAD];
 	} u;
 };
+#endif
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
