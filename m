Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACE01508F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 16:02:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:From:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=gffdU0qu7dU9fRt0NccH8CMHUIUffKMAh/FbkLRDDdc=; b=o5744ZG6pWjpUn
	MfuGMT5U9y4xoG1DLXTfm1z3bYLTQoT4YblNFyt2yxNz+yJZ9lr56PxhZHIuvqAC5zyztF/q3vZxz
	MZcI0DEG+PxdILVBsP+VyMsVQH9gxvs5AcKEyPEkMxFLULKVB6ei9VIKvzQEb48rm3afqBxtR19eg
	SYx6D7Ma3I7dUxbew0/yTiCQ2zjBrrecIkKjBErXy6KSEv4fxtLJiAlx3jumIyPg4wdSNpWdHrsUt
	KenLllt766xplBXrv5t8XCesaHuxQQ5c+mumYZMSZtIrdgZErP/rHtxQZXxT2K4oClH+Gw37SkS+n
	B1KLFih6w5i838HFwCzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydEt-0007dL-4w; Mon, 03 Feb 2020 15:02:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydEh-0007an-7K
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 15:02:05 +0000
Received: from localhost (unknown [104.132.45.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DBBA2082E;
 Mon,  3 Feb 2020 15:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580742122;
 bh=8RbNC67gnr1zILYYyT9clo1PxHn0lxc4WPGibZ3CqQw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=sqvwAvme+ldIZuf3WMIN/aF3m2Sgd3uMiuB5NY3EOz9BjYdRCoysLRzBuc78dWVvd
 ln4nDauhRzKfZfVuaYdF8NO2n+pbwjlp2Txjnei71veaGD9Y3gi8XkkNdKs6dHvf/6
 Iu2QZrB27DW0q46vQ0Z1JpV3CN0/tueszbzvdVj8=
Subject: Patch "media: si470x-i2c: Move free() past last use of 'radio'" has
 been added to the 4.19-stable tree
To: gregkh@linuxfoundation.org, julia.lawall@lip6.fr, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, lkp@intel.com
From: <gregkh@linuxfoundation.org>
Date: Mon, 03 Feb 2020 15:02:00 +0000
In-Reply-To: <20200203132130.12748-1-lee.jones@linaro.org>
Message-ID: <15807421201458@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_070203_284551_57654720 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    media: si470x-i2c: Move free() past last use of 'radio'

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     media-si470x-i2c-move-free-past-last-use-of-radio.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From lee.jones@linaro.org  Mon Feb  3 14:58:36 2020
From: Lee Jones <lee.jones@linaro.org>
Date: Mon,  3 Feb 2020 13:21:30 +0000
Subject: media: si470x-i2c: Move free() past last use of 'radio'
To: stable@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Message-ID: <20200203132130.12748-1-lee.jones@linaro.org>

From: Lee Jones <lee.jones@linaro.org>

A pointer to 'struct si470x_device' is currently used after free:

  drivers/media/radio/si470x/radio-si470x-i2c.c:462:25-30: ERROR: reference
    preceded by free on line 460

Shift the call to free() down past its final use.

NB: Not sending to Mainline, since the problem does not exist there, it was
caused by the backport of 2df200ab234a ("media: si470x-i2c: add missed
operations in remove") to the stable trees.

Cc: <stable@vger.kernel.org> # v3.18+
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 drivers/media/radio/si470x/radio-si470x-i2c.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/media/radio/si470x/radio-si470x-i2c.c
+++ b/drivers/media/radio/si470x/radio-si470x-i2c.c
@@ -483,10 +483,10 @@ static int si470x_i2c_remove(struct i2c_
 
 	free_irq(client->irq, radio);
 	video_unregister_device(&radio->videodev);
-	kfree(radio);
 
 	v4l2_ctrl_handler_free(&radio->hdl);
 	v4l2_device_unregister(&radio->v4l2_dev);
+	kfree(radio);
 	return 0;
 }
 


Patches currently in stable-queue which might be from lee.jones@linaro.org are

queue-4.19/media-si470x-i2c-move-free-past-last-use-of-radio.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
