Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1BA1508F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 16:01:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:From:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=VTdziI+al20qtbKGMzzcMXh8Gdx36I8/b4EIs+mEwKE=; b=pY9E7xtanMUm41
	Nyk7l54IVjzRE2awIH0AzShq4I+rgIlegxNpO1WSGOYOlnW2VTU5p9nuJaqOEOKTAJhJO9PN0uYJP
	I/ELD9+BB+2nS0KpqrMi2LIEi2XM44X1fP60ycrKgvz38vt28VVPqSh99OTkttlCfKh8/Z5UCJnSh
	9HDpjtP/e7CmU76aGA3xPKfw2wJdb5dKEgkAWg0ettuc73z52r/yr3/kUFh2Xq/BhyPjA6wj8QxFR
	DL6QxYt7gkjBMN0+ufruhUXcPQ1kTJteUBdW1k0PrGiQPy51b3zOZLKICzCDb/unqsot3hyKm/fUN
	JQ4fWaruQgpQiP06bUQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydEL-00078U-BU; Mon, 03 Feb 2020 15:01:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydEC-00075g-Ec
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 15:01:33 +0000
Received: from localhost (unknown [104.132.45.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A2D92082E;
 Mon,  3 Feb 2020 15:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580742092;
 bh=SCq3/lnyNgfDSoTqwh/lSS4TR1b3t2ZWt2lO1bAbzFo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=vL9HRIWLQlqD8q4O/t5mQD1LRW5GQJDX/NtfnvmHmc28fIs9YLFSdt6ZM0/1Df8wR
 SZNKcdiTR4fF7vZt1WoRbPmT9etY5517UlBOZGbWa+uf4l2H9FkFhRvvqqLHGtw2lw
 bawVyQgd1kczctiJUEWe5UAGkbgrwVQPmFiEAowE=
Subject: Patch "media: si470x-i2c: Move free() past last use of 'radio'" has
 been added to the 4.9-stable tree
To: gregkh@linuxfoundation.org, julia.lawall@lip6.fr, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, lkp@intel.com
From: <gregkh@linuxfoundation.org>
Date: Mon, 03 Feb 2020 15:01:29 +0000
In-Reply-To: <20200203132130.12748-1-lee.jones@linaro.org>
Message-ID: <158074208934130@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_070132_527148_4BB6AB38 
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

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     media-si470x-i2c-move-free-past-last-use-of-radio.patch
and it can be found in the queue-4.9 subdirectory.

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
@@ -458,10 +458,10 @@ static int si470x_i2c_remove(struct i2c_
 
 	free_irq(client->irq, radio);
 	video_unregister_device(&radio->videodev);
-	kfree(radio);
 
 	v4l2_ctrl_handler_free(&radio->hdl);
 	v4l2_device_unregister(&radio->v4l2_dev);
+	kfree(radio);
 	return 0;
 }
 


Patches currently in stable-queue which might be from lee.jones@linaro.org are

queue-4.9/media-si470x-i2c-move-free-past-last-use-of-radio.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
