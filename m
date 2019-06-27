Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0B558C8A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 23:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+8zBc+jSvPlQsRqFx2aI4NCOj7ij89harrmuVRuZrXQ=; b=dcbG/J6Y85YCWHpv5o1cxHXs3M
	2fFshYwecWWFso6G602JcogS74WoDY9aDgrX7zUm/QjGqLIx7gK2xBIw5mGVMrUtbLL5D5QQ512IG
	UzanjD9XijaE1WRIsg7FKSE22de0SofDUKilqlFDCD1zpLQL91P7Zht1q2RYuzAa9MYOfqDQjI0a0
	rxlNt4LY/4k5PuUityEtbkkMkWHFkPHhuCZ0Iar1hP02EfOG1kXsSMn25E4xcnYKECRt03PzmQazA
	y58MhwhSYJf+Y/qQm0U33f2WL7sRsSS6vNUmNc7h9mFne7/Y8J+CTC1F35V7IIji3P+IT7UtdAMvZ
	rSxJWBAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgbfu-00028L-1y; Thu, 27 Jun 2019 21:11:22 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgbee-0000Bl-Hp; Thu, 27 Jun 2019 21:10:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561669791;
 bh=5x34gYp6Uyi6CJY0kFm3PZXjSzyrVChOMLS0r3Akco4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=h03fJbJW/7gg1QuO2NfaJ617tEbTmP8u13OHt/Oh5VwGfBZ8wv18oVYl4hXmT+Jah
 J76tOLrPVpmlnIpz8gsSMtTipoCWoX2oN6BjnwoG88j7tsHTHZq38YJXcRMsDH0ZnK
 ozDlOZ+574qSx8Wwmz7MEsIcl3QPgcq2AmOFSaj4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MaJ7v-1i1Fjm0J0f-00WI0A; Thu, 27 Jun 2019 23:09:51 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 29/31] staging: bcm2835-camera: Add sanity checks for
 queue_setup/CREATE_BUFS
Date: Thu, 27 Jun 2019 23:09:27 +0200
Message-Id: <1561669769-2498-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
References: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:Mlex4ury0QpXvh3qld/Yk5PIv+tL8JhKdoUqZFxDDXHIXhlkusC
 QW8eAeoFawzNVxQCEbAtx2B2KjulBooNWVDk4Th/3aF3JHhuGxKcwgj8Kq8wJZTAk1kjE2l
 vcIP9JxIVI7dfrngOtFWB5KX0Ws+Q8f8K/D364z+0yp/tF+f0jTslsZx2LSZ5Ql5lXERIkf
 Z2PEolwEWNOPOsDn8Av0w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:237QWuQc4Lo=:G2mQgIER8ss0VpyNGDK6EW
 0wwn+ng2GBvhsMbuA0FnDTqlS+SSu1M+m4nhhkeVf2g3YQnZzHe2ZDqFjuH1wt41f+8WNUvjY
 /1814HtColxVjucaO3xQtdrel98cuXqUmxRboCKYKPm8f6WCMMp/UqhcFGWwjWUebd5JKll45
 WPqcIr37aicAl5RXahB7BsN5hI6FJ37Xi9EGtmw4K4BwUR/tprj4XN7VVRWw2QO9JzsHY3XeM
 eKdNX0SpN2xfQwafPQKZrlRyEbC6oH0gXQTq8BixRyNLKxhveqoM0slXXVwH8u7AR1tkkgUO6
 jmydwuK+M46olFqDJQyIX5Ztsll9UrQkoEGbbTb5YeUkptxBJMRzobN5v+E4sG7TI0q5iO35H
 K5wWcUHAJoSe01bSyyilZUZauxKhILzgXBSY7oag+VsBATc0N99tclr8zOlqJIGaYE2O7tpe7
 iGLAtpr2bLSdS9X2J6gmWxSnSnkEzsdakuUtRbfOG4Xp+UIz0zCy0KqUKS/RhKYSlv6u/qTa9
 jw4DGj5J2CaRwrBLvzWsGcz6Yhb0YzZrAp9aPUh4sHsdNCSW1rK/L13FwsF/T0IEuGiw5fR3Z
 UF4DuslEskj+a1deyol9WI7QKrxPjKAonFZB9aHxML1kkdt4ZwTgARBAE7+89KRD7cfkz6U3h
 iapci80fdiCIFQ3n+MBuQNkB6ob5lKIZlAOjLVGMn4QD8YmvlXXkjX7jBViq6p/PyGQJl03RP
 pJqwcDOxxfmkroFLYQkYOhIkC1vy/gBPjtnQ9sC1aQGEg7fYEQyT8VqQ5aDKcEWyfH4o8ILBz
 Wd8vK6eyNWOjXxY3Zkk6aEP58fFgxhTNPj5JhV7OsuM6KqQ8giC5daJP8kzW3npwP5gaCaPlT
 hqYzHWvkUyB75/vhIL7hFlMgRiohkpLWeIdiI2nNhceqynlmcB97x8uGJtATupePOAnYZtRFm
 e/IBUFm7hcoAA/iDVWvFs6xJBy08N/VnX8VcCzslHPgPgOhM4iOXbzeImaE6vGyNTdzxR8q16
 p3DbqjwGYQq/h23JGN8+nPHSwJoHJKoW+Od5/6VipTM9zKejNJSttA+uaZ+OMglcxuZMSuuIH
 sv1NPYM8NU4CWo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_141004_886308_0CEF398A 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
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

Fixes a v4l2-compliance failure when passed a buffer that is
too small.
queue_setup wasn't handling the case where !(*nplanes), as
used from CREATE_BUFS and requiring the driver to sanity
check the provided buffer parameters. It was assuming that
it was always being used in the REQBUFS case where it provides
the buffer properties.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c        | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 256667b..705644c 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -236,6 +236,22 @@ static int queue_setup(struct vb2_queue *vq,
 		return -EINVAL;
 	}

+	/* Handle CREATE_BUFS situation - *nplanes != 0 */
+	if (*nplanes) {
+		if (*nplanes != 1 ||
+		    sizes[0] < dev->capture.port->current_buffer.size) {
+			v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+				 "%s: dev:%p Invalid buffer request from CREATE_BUFS, size %u < %u, nplanes %u != 1\n",
+				 __func__, dev, sizes[0],
+				 dev->capture.port->current_buffer.size,
+				 *nplanes);
+			return -EINVAL;
+		} else {
+			return 0;
+		}
+	}
+
+	/* Handle REQBUFS situation */
 	size = dev->capture.port->current_buffer.size;
 	if (size == 0) {
 		v4l2_err(&dev->v4l2_dev,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
