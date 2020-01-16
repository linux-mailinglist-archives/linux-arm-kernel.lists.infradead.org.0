Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CA813EBA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXOFhV4jofud7y90VgDvCgNcgRsaJrfKSC01Dr14RSU=; b=RbAhyQoEYoB5PQ
	nmP8105eRejg7lS7jOLR/2yqdB1D2QIsTdUKGqHJA8OY4sFspADNWTew8iPXLYffQJXCNoK8Gm3Ff
	FV8xELFQbp8puphUlHPkUKYpmsmkosL8m30U4Qh+MJllws2mMurLr0ytpqGQJsXUSTRd+LlJrs0Sh
	TOxB/Ko0LzYO2zoBlO2iNfS/TRjOLuJcjlnN4rHbNrlXGaltGXPYbpcgPlCrTVd/+BxFQpR8pSV3O
	ayNe2HWCO77RQN/tWxVTjDfshso44iSLFU2E+y4gk0BstezuAuIerU7PR6LlBpuRvqGX2wAZjeIv/
	YI0eZjp2Bp19+rxMOOwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9Iq-0002tc-3c; Thu, 16 Jan 2020 17:51:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8mD-00034d-OD; Thu, 16 Jan 2020 17:17:51 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D184E2075B;
 Thu, 16 Jan 2020 17:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195069;
 bh=1HtmT7m+kFaRKNM2WgnRVGCCkcls9ULYbGmvbiUNWpU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sgWMjhZUr6V1iPCupAmP4er6NOv76X8/hGz2qRqruqEMuAgQbJSFfiXjUFmWhunZd
 65WluACAqaUr3KB6ykIL00YF26TGzNg8Nx0mDbUTMxJVZeYXzhhGlODtnxH/lBUSYn
 OhgYeMWBZYhKyK2M3hH6WtnePN4RR7F13iudxfvc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 022/371] staging: bcm2835-camera: Abort probe if
 there is no camera
Date: Thu, 16 Jan 2020 12:11:30 -0500
Message-Id: <20200116171719.16965-22-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116171719.16965-1-sashal@kernel.org>
References: <20200116171719.16965-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_091749_842057_73D0E842 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Sasha Levin <sashal@kernel.org>,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Wahren <stefan.wahren@i2se.com>

[ Upstream commit 7566f39dfdc11f8a97d5810c6e6295a88f97ef91 ]

Abort the probing of the camera driver in case there isn't a camera
actually connected to the Raspberry Pi. This solution also avoids a
NULL ptr dereference of mmal instance on driver unload.

Fixes: 7b3ad5abf027 ("staging: Import the BCM2835 MMAL-based V4L2 camera driver.")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c        | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 377da037f31c..b521752d9aa0 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1849,6 +1849,12 @@ static int __init bm2835_mmal_init(void)
 	num_cameras = get_num_cameras(instance,
 				      resolutions,
 				      MAX_BCM2835_CAMERAS);
+
+	if (num_cameras < 1) {
+		ret = -ENODEV;
+		goto cleanup_mmal;
+	}
+
 	if (num_cameras > MAX_BCM2835_CAMERAS)
 		num_cameras = MAX_BCM2835_CAMERAS;
 
@@ -1948,6 +1954,9 @@ static int __init bm2835_mmal_init(void)
 	pr_info("%s: error %d while loading driver\n",
 		BM2835_MMAL_MODULE_NAME, ret);
 
+cleanup_mmal:
+	vchiq_mmal_finalise(instance);
+
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
