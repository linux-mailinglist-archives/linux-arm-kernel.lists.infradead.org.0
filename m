Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A373B71B6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHa8BJbnubUs/tO3uA7K8iXfbTEwokWm8qUWXnXaFTA=; b=J9TC24j21JQEYh
	v1wOqiDozYnzXJ2sqJmjd/OvxDqokwX5O4zNxPXjmqCojy1CAp/Dav2YsaWzO2+Ev88ffLqjG0Vbj
	M7ADAHhNZKHZu1TqMnx0ZeGgbxRtO1aVEWmmoYuP6Um4J+rx/4SupqSOJpEOEZGdQeKBYwSL5N5JL
	O9bNqN85+quqBOcDPBNCbRLd9AFpMrvBadHA98pTrNMFEUxvyxucLRBM5fRBs518hikBMaBfjMEaw
	prZaauwKtlbH3dqCB8cesNbLnHCHu3FlE1koc9HPHVh9I2EZO7YNPKF88oxztxI4yx+qQCZqUvAMm
	7humpcznSvpzAqVZPdHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwZd-0003nI-Il; Tue, 23 Jul 2019 15:19:29 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwZR-0003mm-2H
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:19:18 +0000
Received: from linux-e202.suse.de ([195.135.221.2]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M8hR1-1hlHjw0RF3-004hcK; Tue, 23 Jul 2019 17:19:09 +0200
From: Fabian Vogt <fabian@ritter-vogt.de>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/3] RFT: drm/pl111: Support grayscale
Date: Tue, 23 Jul 2019 17:19:03 +0200
Message-ID: <1709073.y2qmsckc0Q@linux-e202.suse.de>
In-Reply-To: <20190723133755.22677-2-linus.walleij@linaro.org>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-2-linus.walleij@linaro.org>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Qbbt6grsJIsyGherZqvzoLnN+i3Fk+bBk8p3cfTPzw6k18vjWPR
 YThHS4X6qHTBNgDADWo1YxJa7eLwRzkQhdU/JW3sfVwpe7rtB59jcoSZ7Pm1RWUDC31YHIh
 fvjE80dskaFFhtTVhV846Xj6CUv4J2u4UUlfWODbOSQqRxgng7iqVO5rvlQmPhGWqxfvxk1
 YJJ0NomiTWSyJFMgDXrdA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7djPDRCcKFA=:loIxpjDo5x1yK35tDP2C6l
 GchIijPBJ9+CvMXdDoZFiccw4+G7ekJRO4bBQgO5WGoZHDsTJEywrgtn+mtdmxvmqhYEqyf9D
 SPQjRf0gWn8MaONs8vqkPw+l1VN7CipdOChFwvhZZC/fcRvznpZzfLJVM/s0q3LBjrJmBFXMw
 h5qGkeiZrOnAL35jujsuTVnbRSNtOJFnQzLzVKE2o0xbd+Bji1cho6vytyIZyONdWzuLa8bnz
 qY/CY+sD+BtOTAvDgMZquVlwlovbp7Izd4TdGlv4S8OipKhU6AuhiiPCTovTwuPoU1MDVYF/y
 9w64HsTM06CABHaf/fgVFG6kBnP9j135eBOjq2k01YdByqmlLox/BM0EJJD4++wJxB68ZTwJE
 iLiLDo1FAsgA0tIRD6yn5C2fiC9Ntj+iAyYMPRyLbZKuyfpbpt7qiYZES7fuikkmu0Pi6VLps
 tdmHsSZVEslNz+RvIxdM2XnyZj7+ocVBmT05zeqEJZTfnEd0WJFQWREnaVDHyw+G9Q6kiiyBO
 q5bQfdkK1HngoeSnxSuuDxha/6ruAzjRKxY3tbAwBp977D2DPG8eglP2uWqumEnvu6+sRC/vs
 L/saPjfA5/iQV3JBfX9cRIVvSgUc4EheMFvDbX+zGAXbZEFRwaLduHMyLPhjhnvMlToC4J56P
 CIzriczvygh3qMPTLhNfeBqRvcLOnmGfZApYJKWeW/f8K+xK67Qve2KmmOTPS562jfQ++eIOQ
 S8j4NlDkLJ8oNmgx2yqMfGz2GjYw9+lmsEarK2+44Xw7SOlCazll4lALe0o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_081917_400193_9A68BE36 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [195.135.221.2 listed in zen.spamhaus.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Tang <dt.tangr@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I gave the series a try (virtual CX and TP so far, will do on a real CX later):
OOPS with a nullptr deref during probe.
This diff which just moves some lines around fixes that and the LCD appears to
work properly.

Once I verified the 24bit depth and clock speed config on HW as well, I can
give you my Tested-by, or would you prefer that I resubmit your series with the
fix below?

Thanks,
Fabian

---
diff --git a/drivers/gpu/drm/pl111/pl111_display.c b/drivers/gpu/drm/pl111/pl111_display.c
index 587b4d148c18..bd84d7a5a0f4 100644
--- a/drivers/gpu/drm/pl111/pl111_display.c
+++ b/drivers/gpu/drm/pl111/pl111_display.c
@@ -133,10 +133,6 @@ static void pl111_display_enable(struct drm_simple_display_pipe *pipe,
 	u32 cpl, tim2;
 	int ret;
 
-	if (connector->display_info.num_bus_formats == 1 &&
-	    connector->display_info.bus_formats[0] == MEDIA_BUS_FMT_Y8_1X8)
-		grayscale = true;
-
 	ret = clk_set_rate(priv->clk, mode->clock * 1000);
 	if (ret) {
 		dev_err(drm->dev,
@@ -191,6 +187,10 @@ static void pl111_display_enable(struct drm_simple_display_pipe *pipe,
 		    DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE)
 			tim2 |= TIM2_IPC;
 
+		if (connector->display_info.num_bus_formats == 1 &&
+		    connector->display_info.bus_formats[0] == MEDIA_BUS_FMT_Y8_1X8)
+			grayscale = true;
+
 		/*
 		 * The AC pin bias frequency is set to max count when using
 		 * grayscale so at least once in a while we will reverse





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
