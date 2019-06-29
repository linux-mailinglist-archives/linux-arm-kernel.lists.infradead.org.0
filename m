Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3B55AAD4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V+1rxBQXLDNqXsnaIOi/by3TYFtZm8DExR4lSGWRZ1o=; b=CG4QR0YTZe7+1G6LqgF7vuZfv9
	E889vzXOTQaJVXKel5waAy0rEbSNGviaCc6dTz2KzPM9kaJNE9Ff5/pNDIxr8Xx61gUgQFEoQ0jio
	QVY5p0L+W2i4LORgSuVgoFMpIgrlMHBBUGJzerlrwWuYkeVK/9TGOlkNnC5i3djPwCFgy4k+Eqov/
	BoujVC1qMuPOsuGkZ7YAb6SzZsDT8TTFqimkKXNTQhvPZ6niBP8W5Jsp2/ygzva2BCFsmQL7yha8U
	8fraF8x65qCUB1aVez+jWa2CqTofCB6dB7IWozq/f4tcQhxzma+ewNAOFc5ug/Jyfz0D8fDv5TTOF
	I5NxSJIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCL2-0003dL-1d; Sat, 29 Jun 2019 12:20:16 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCKd-0003cB-QQ
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 12:19:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810790;
 bh=uI34PuI3UJ0Vj23e0pDBUSO4cLN7Oo++ZU6cixLGgXw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=HtTND0fFWSbd4SVX5sqIfz3mpoBI8/B8R7KISzTXiHHX1s1Q0rVBfeWQFdeGySJkR
 U8IAXSoGPxOFhPOWVHlk63c7U043i2YGWDUaxujLZCsHDnWdoVYlU6rHyuNuy6FJh8
 DQKLAEMvbSEQu53cWh6CeC3w7NSDzuzHbNXlHy2U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MHXd2-1hiIhW0fMK-003JgE; Sat, 29 Jun 2019 14:14:06 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 04/29] staging: bcm2835-camera: Correctly denote key frames
 in encoded data
Date: Sat, 29 Jun 2019 14:13:19 +0200
Message-Id: <1561810410-8829-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:vR8+uZhLA2j/tuReY3aykspH3dP08vrGsexgtNEW51mDQw81J8K
 +IrnB6W3LJVdLHToFBbZQGVW8m5mJ9Ooepo0XlWWwdQPZrpUkyha1IFm4eO6yuArbLD7bdr
 NPXP8yVpBopUwHmX68UjmGCS5kjRecqLDbZf6lBXEWLI6UIVPqjtMghk4nJ/PWAb0mbTnVy
 fuq/uFP/xnPqevb2YzTQg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Oss+GFbp52w=:Hlee7CTR+s6ZG5hWPy6AOL
 pb/2LLOSMiaQLBX7QJoaIpA+xgZpASdZ6KHOjnPEQX8QLFCV6o7QPLNbo7ZgwzqSE7TFIEOPl
 NSf7fRNP+1RVCSQV9egDybWcGFDOPHKcN1ULms9ziBBbWHgiOmezmnAUbarhw0pygBqLnMzkK
 xTDtbjGlV4cFpD3M1WbcATkP60iwzoBfDFXuj3m0SJQ8BOMg3YVq1KEmIwDQq2WlonhtKwsuG
 qiYMujc3B7HlZW3tDycgZG74oNs1Iy4butjUPJPp8Vav6wo72qYDOP5WiU0nYvgyHLJl9MWRP
 Azvz0V93Qg4GCmGBOLQJ8OWYvD8kboBRgJViEM0ZubvTxzIfoJ05JHV0fp9OxRRagEJHJysQj
 WP5fHPXbLI7dpV2PWNs6CReSrP1chw1hqJNtNABjP/0+e2jz5PJvLGlikA7C8KYx25bgyX67h
 UxU1NLM3Ioci/6NYCkIPuicDn87kO1tIebZ/zFZ0Aes/PgP5GZ8Qx1Lx8uBQcQzwya08J258Y
 WHSXqzemF6PuIqsC0WEcHdLD/keLIwZV3S+Lq1mpDeVp6Bf3L89ehAzrpcrg/aKGsPs0HYNFj
 W8qzGaLy6Z/o8ZcfDHRAcv4CFeKur6nkJ8A5NhknocO9/AKbwi05kXp5qLQFLOEj96zXHB3BL
 yEeEx0RqfYGycGOIeW8A0cg6FSnZJScQcPk/ZlEBUeqqsP74eJN6TxV+9ZhbamwN34KvOGdZ9
 JKeW6Cr//FS+ZktXJkpuiZnx2StHy175UxgXlH1I1lQAozfHK6HWWNFOvqP3ZnNMb7HDYcJe0
 B0fK1GhUTeKMGPSDarnJlyG4xFqPR6VFoegwnGihXqhlLk68q8GbIdIpFDM0co24hI5x0MnU9
 66eOHDnDnJ4umSblDMlnOBANGB1t6HGx7f0aS8Bxe6z2n17h/2mLnXrkL1F7IAbrpSkut9I8I
 xunt5G8MLWrXvcmYnPUffYAIDZsMLZwOVI9qqvk1RvsQn4Wy/HWAjhXi/e5qcqe6nR5ujk5H3
 Tjru08P8DSzTbkU+RAxcOVQyx4ApoTYdbKlIW3AdbS/Wig0KcdfzsZuahl4wGsQukp0RG3xJ+
 ZAj9547hYwi21Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_051952_162891_C1E00BAF 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
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

Forward MMAL key frame flags to the V4L2 buffers.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index dce6e6d..e81d4df 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -376,6 +376,9 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			}

 			vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
+			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
+				buf->vb.flags |= V4L2_BUF_FLAG_KEYFRAME;
+
 			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);

 			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_EOS &&
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
