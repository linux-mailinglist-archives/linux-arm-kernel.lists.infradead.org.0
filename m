Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A132258AAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gdwPdN0U8nI18GQ3+joWXza5b7bLb5l9LAuiLBKxRj4=; b=A2czx5CrRIKM9/ruhXe7tMb+9p
	0cTpAjN9W0BVayBF0liWFIaaX0Q+62Unq8KUshgA+QGhAgISj9I8vvYZupLjVAxd40oSjb2XM1/GR
	BBVIz0v1PjmPtaH3jsZy+D7cGtJ+qfjtECTXKxcK10+pSYisfoC3DNHOtnbjtnyAl9mfoScOG/qlf
	1sj0BCu3vfej5TD7EVvd2MV7eKz99UJJvfkKSwa5oTgT6FeCK46SvhihRcB1QTnhbNBlRCg1YHCYr
	Yba+vk1ELpJFVYuI2VSgn+sCG6x3suU200j3HjquOq8yHgGErKoKL5ekB04RKCYVQSptSXyVKtMrY
	YZtLWgbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZjw-0003b4-JG; Thu, 27 Jun 2019 19:07:24 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZje-0003Yv-Ua; Thu, 27 Jun 2019 19:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662414;
 bh=LRyz6YBXxxPj6I4Vwjk1xVVm3VP1fgqB6kgOc9SZZ2c=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GirP0fljl41TxQXSm1O9gJJhCN7MtAvA2NBIiwQ1KIGrkVfPAHj5Sw6fDcvYKJtfu
 E2osrqmE8u2cTkC3cE840XaN8IrmJZu7A/fIroOc7WbAh3bGnOCjBGDXaha1CpbSbd
 zZoHQI4w7AkPHYC0kt1W6a9CXQRsjQtCaDZHzNsg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MLB89-1hgIcJ1gDx-000Nai; Thu, 27 Jun 2019 21:06:54 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 26/31] staging: bcm2835-camera: Remove/amend some obsolete
 comments
Date: Thu, 27 Jun 2019 21:06:21 +0200
Message-Id: <1561662386-23045-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4xomtyWSvBDrQz0zJqh5x0hXvsx0k3JhFaFYg3KGa6+d+DFRHEf
 bxv7FTElzUlvQ4k51+EbPC6FX/4pGQbQ4EKK5gQOxEoefI9XJMHsohhv7Sr87ki0H6aV+by
 GX7eVNC2peAsNFNkVgXvYJxN6YStYZi3vtpUzeoQ309nbnK0uWHnU354e36D8hBOUJpsfkw
 SkIiLpwSJsfSQRg98to6A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZnwXJ6Xicg4=:lytjMVXwZM643hxn+PT0hD
 L/OZl/YY16Ftz3EXRg2qGYJRcT1eXFvSBo2v/CCL3DMphM4+c4ugw6rlorf0e0+DfR4nwTpel
 zCFReDmiZ+b+JLnkQ5TmfsxUm5EZaoTJI/S8goBbuLxCzctOId5FBoUgX6epxXKv6kty99lqV
 7hqXn7dtmDoPYVer7R6PvvnKWM7FhFVDvJsloC4IFzxhnHaRlrvNynisitWfs/vwSyyJNRXfs
 QLwSSmw+9zud3MyS20SOItxYjn5rmajUTg+xHDiJTkXn60+0VTFnWfrT03pKeECt/dV3Y7HNG
 zSWv6Zt9hZCAONTZlcqtIkgwn5b8wYYtNfWY24kthmz9/TWaIr8rWFSZUpvdndfjhoc+iyP2x
 zaPAXJZ+MynjnMLvRKShmK/xlUNT/KocM4RtJCG8a/7QJV5WVcjUR6AmR2rndubwnLAhmeHqP
 um4Q0KQw1S0uIr9NG6220M51MjM4HTCrdEFvLYxj3jwPEP0m9XC+j4AeJgzRglYb2YYMYr7qY
 47rASphbqix3KtXZEoLNpRFIqoYDJcvOlA27Cf2hNnSQAeHxWRbHlWsdZ119Gd3rDmZIRObOH
 29xyIin8zMCtqu84GaN+Cfe7SEGwPSakbOW0gJRpHrQ+RL1QRkugRhI7wIQfcdQZFfwckckMi
 x6Qvz9GzW1lyEmFLol6azUFLu3fbW/yh+W7uZpmj0nFlKi049NuUMXTM8Bh1sAI6PHAM4xcL6
 oQOcPmVX0clJAsuLbmoXsFUxaOsufsfmlUwd86blc6UaA1fYPsttn3eFkFcaFvm74pPMD76fK
 xyGXm0k9xjsIcqnKW4tXuJPZ1KctvzX0jSgRhhfGvK1UpcfIpX6fxQK2iv0UjrHMctfbckThR
 dc8i7Y7uCR0Yp3h5gzWj+RA15KbX4G4zJQYw0aFqx8eh0tE6Y1o4Yc4fNLaqwhPoLi0Ic5VGw
 NsLoaXsQnnvdwJ/G5HMqBBVPNtXB4dpW9wXx9QS2KD7F0zYkxPdKeJ+tGSJMYrvKBQ5rST8e+
 ini5oieKZ7DFA/JEvcgIAyUAyYyThr82ux+g0Md5sHPtP7QyAhfaiMzHgIXlNGcXFyr7hxb21
 pAaWxZ7mpklkYY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_120707_299619_955A0BF1 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
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

Remove a todo which has been done.
Remove a template line that was redundant.
Make a comment clearer as to the non-obvious meaning of a field.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index b8aaedd..848b14a 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -971,10 +971,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		ctrl_set_value,
 		false
 	},
-/*	{
- *		0, MMAL_CONTROL_TYPE_CLUSTER, 3, 1, 0, NULL, 0, NULL
- *	},
- */
 	{
 		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
 		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
@@ -982,11 +978,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		ctrl_set_exposure,
 		false
 	},
-/* todo this needs mixing in with set exposure
- *	{
- *		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
- *	},
- */
 	{
 		V4L2_CID_EXPOSURE_ABSOLUTE, MMAL_CONTROL_TYPE_STD,
 		/* Units of 100usecs */
@@ -1152,7 +1143,7 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		-1,	/* Min is computed at runtime */
+		-1,	/* Min (mask) is computed at runtime */
 		V4L2_SCENE_MODE_TEXT,
 		V4L2_SCENE_MODE_NONE, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
