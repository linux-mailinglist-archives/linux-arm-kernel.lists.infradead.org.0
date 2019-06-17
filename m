Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAA548071
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pe716lhw16y64ZPewi1lTdGEFLoml3i23KKY+BPbHyM=; b=hfs4Ny/TbXdid1
	3+Ip2I0Ns9JYoiesJsVL40sBkI4WR63Se/mrHRd1pyIypCa8SNit+txjgNIDlXbcDNEIABlcQEiEQ
	+S74/JkGxtEcm1PEGXSijNu6XAe/HtllMP7WqSYQyhjstQed+zlpvaFncRzKAeILc+kYi7Hy9K7Pc
	ibfBoFuTxGLY7q8OkewuiBSP48eALm1oocTeg6lg7cXzXB8CRPPsxn7xWfprRmTxgoSGmM9n6+u5o
	2gIM5A6idv8rAWJeZDKRLOyBS1rHdUBQ//ouK75AQHO2bfl+rWF7JV9OlIaI/C16R/Cz/UUOlLJRb
	HPdz6K2EzMjThakU/iJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpdy-0006Z6-5f; Mon, 17 Jun 2019 11:17:46 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpdl-0006Y5-AH; Mon, 17 Jun 2019 11:17:34 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MsHwC-1iVLw61pjW-00th1H; Mon, 17 Jun 2019 13:17:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Maxime Jourdan <mjourdan@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 1/3] media: meson: include linux/kthread.h
Date: Mon, 17 Jun 2019 13:16:51 +0200
Message-Id: <20190617111718.2277220-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:mSHisb9SBlgUUulWsfD80t6IakUBYWZsI/Spxa2zTsENfcv0/oL
 wXRwf2cAITNDLjhX5OdADkdf0mkzcN1j9sL2qpnkOOHIYc63+Isk5bje/I7TYvBZHfDGJVA
 r7A0t7lhVt8vsJkJcZAlSHPCCkG2B0cUlkxSCtyTkeBDZivJYXHrZfJrcHVhh8U/NkHVn+G
 z8XIUrkJTFpUT9flwto5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5enVdSaVH3g=:lmcLQZFPDGsXUdZosube+q
 +4bBPYpxQcZH3YRVmoqGVXVMqUPyq8TM7t1NN71zGmMECjpzcIQmLaU7wBehGX3UGiPVgveud
 bZngn+x3mEc1dBYhDKvsXXpaE3OprU81Txg5XLowGYq6isNZ6KIOgJi3tH6dlfn0uObbpEFnB
 4ahGUcHZnkN5rAZttQtt3MZX4IPADmEW6qUqV2DG/ljWH+HInH0qSuztP0TS86JrXpIR6ePUb
 T9kfGAMH9jVdznB3U2hmjp1OnjUtgCzDYFg8YA6Jo54lmz+kHJ0j5B5DhwrlDxsYQ3wTqGKoo
 tl/Tqaz6zYPScHb1WWULi1QSKdcTUd6rJi1lfl7njBI5S48ulo7ZqtY8ljuokbZG6vFHeUmi5
 dRp3yhAluO/M9XvyQ1PMIop6lgTH1YdxbXROBk48FbCe6K6aGHWoYhBIh/aYUTTNgdrZreBiD
 d4tEKweu7ZsbYbMrbcUuxk6cwHkAcU4KiM2ux1AALq9D51+xFnsXwX3sLjkn6hJdLskd186X5
 nAhmEuYcb7MnoiAOOv3WDlNbTJ9ewCh82N1J2PS0IbKHBlQU6uVmHG3b9gTNNTwcHu9a6rFjN
 a2ovzOzKLSDdWfmAw6B4p9m6nN7wTMN3DAm9rqgQ6nyghjUgg2s1YbddtQiK3Xor9sp6xjfbg
 hGvLWwPgjOhrvGT0k4E5veu8V5wi1NikcQB656On7/8RjcH8m4TpuG8OplhGPBBx0Ssb3EV5h
 +N7WfNq/1vPfUrrjdHG00Z4MX80xwcFKSjHb1A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_041733_647501_08068D60 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-media@lists.freedesktop.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Without this header, we get a compilation error in some configurations:

drivers/staging/media/meson/vdec/vdec.c: In function 'vdec_recycle_thread':
drivers/staging/media/meson/vdec/vdec.c:59:10: error: implicit declaration of function 'kthread_should_stop' [-Werror=implicit-function-declaration]

Fixes: 3e7f51bd9607 ("media: meson: add v4l2 m2m video decoder driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/meson/vdec/vdec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
index 0a1a04fd5d13..eb335a0f2bdd 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -8,6 +8,7 @@
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <linux/module.h>
+#include <linux/kthread.h>
 #include <linux/platform_device.h>
 #include <linux/mfd/syscon.h>
 #include <linux/slab.h>
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
