Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF11016BF1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 11:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1QW/BOdiqTXJuLZiab398FSZ8OsWY/82treAyrkkcQ=; b=PrUlbKrnGIwab5
	kTbV6ZQeKHb8t0n2eBGEnjrZqFE+MshSnQP2CZut9OiIpZy7ncLSf2kyqwtbzU1E827xGTJmBnH9S
	p5jjErWCv5uLPT6Z+4deYGDOvmMPyCuMsftfWCAEZY6IyJclDZyeFhOI/iRmB1rHRZCD2KL9euUYO
	GdKmoXTlMZcAo360drIvt9l4XPpKpAEtU6yf3ke1qn4WEuLlXD1Q6MCmuDkl2ankSe4tUy5SHRYa1
	hWdmm4XexD8AavD57szulRUBC8wkNZB5UQozvJbGzYxG3JD+K2RGXL9tNFHy0Fg3yDLxxOWy2SZn3
	3VxxkNidmoNrLnGR5LEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6XpD-0002Jx-DG; Tue, 25 Feb 2020 10:52:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Xp3-0002JP-K2; Tue, 25 Feb 2020 10:52:21 +0000
X-UUID: 418ef9a282be4e4581782ad4f07d8273-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=F/HwmP2nkakeOJe6rb/hTQ+jcOaAno58DR/mM7/DDU0=; 
 b=cV2wzTUVO9sdNTTO5c2ZuOmuT47xPenpLJHqKSZz1K0MNz60SZOumoAx3FgC/RMOXFUwIZhrvojGlWTFaH95fdAa9ftmXOKCzHQm6zUGF69CN8jAtm5+NstBASQomDBEF1Pvt7+HZhcAcadma5n2lW0A+/fLunNhSJT3RrsnrkM=;
X-UUID: 418ef9a282be4e4581782ad4f07d8273-20200225
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1335490448; Tue, 25 Feb 2020 02:52:10 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 02:42:07 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 18:37:53 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 25 Feb 2020 18:41:57 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Shen Jing
 <jingx.shen@intel.com>, Sasha Levin <sashal@kernel.org>, John Stultz
 <john.stultz@linaro.org>, Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Vincent Pelletier <plr.vincent@gmail.com>, Jerry Zhang
 <zhangjerry@google.com>, <linux-usb@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, Mediatek WSD Upstream
 <wsd_upstream@mediatek.com>, CC Hwang <cc.hwang@mediatek.com>, Loda Chou
 <loda.chou@mediatek.com>, Al Viro <viro@zeniv.linux.org.uk>,
 <stable@vger.kernel.org>
Subject: [PATCH v3] usb: gadget: f_fs: try to fix AIO issue under ARM 64 bit
 TAGGED mode
Date: Tue, 25 Feb 2020 18:41:55 +0800
Message-ID: <1582627315-21123-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1582472947-22471-1-git-send-email-macpaul.lin@mediatek.com>
References: <1582472947-22471-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 861415B116ECAEBFF54A79652E47A283856E8F4245AD425BB9510418B61F86902000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_025217_667673_2476319A 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Macpaul Lin <macpaul.lin@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This issue was found when adbd trying to open functionfs with AIO mode.
Usually, we need to set "setprop sys.usb.ffs.aio_compat 0" to enable
adbd with AIO mode on Android.

When adbd is opening functionfs, it will try to read 24 bytes at the
first read I/O control. If this reading has been failed, adbd will
try to send FUNCTIONFS_CLEAR_HALT to functionfs. When adbd is in AIO
mode, functionfs will be acted with asyncronized I/O path. After the
successful read transfer has been completed by gadget hardware, the
following series of functions will be called.
  ffs_epfile_async_io_complete() -> ffs_user_copy_worker() ->
    copy_to_iter() -> _copy_to_iter() -> copyout() ->
    iterate_and_advance() -> iterate_iovec()

Adding debug trace to these functions, it has been found that in
copyout(), access_ok() will check if the user space address is valid
to write. However if CONFIG_ARM64_TAGGED_ADDR_ABI is enabled, adbd
always passes user space address start with "0x3C" to gadget's AIO
blocks. This tagged address will cause access_ok() check always fail.
Which causes later calculation in iterate_iovec() turn zero.
Copyout() won't copy data to userspace since the length to be copied
"v.iov_len" will be zero. Finally leads ffs_copy_to_iter() always return
-EFAULT, causes adbd cannot open functionfs and send
FUNCTIONFS_CLEAR_HALT.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
Changes for v3:
  - Fix misspelling in commit message.

Changes for v2:
  - Fix build error for 32-bit load. An #if defined(CONFIG_ARM64) still need
    for avoiding undeclared defines.

 drivers/usb/gadget/function/f_fs.c |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
index ce1d023..728c260 100644
--- a/drivers/usb/gadget/function/f_fs.c
+++ b/drivers/usb/gadget/function/f_fs.c
@@ -35,6 +35,7 @@
 #include <linux/mmu_context.h>
 #include <linux/poll.h>
 #include <linux/eventfd.h>
+#include <linux/thread_info.h>
 
 #include "u_fs.h"
 #include "u_f.h"
@@ -826,6 +827,10 @@ static void ffs_user_copy_worker(struct work_struct *work)
 	if (io_data->read && ret > 0) {
 		mm_segment_t oldfs = get_fs();
 
+#if defined(CONFIG_ARM64)
+		if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI))
+			set_thread_flag(TIF_TAGGED_ADDR);
+#endif
 		set_fs(USER_DS);
 		use_mm(io_data->mm);
 		ret = ffs_copy_to_iter(io_data->buf, ret, &io_data->data);
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
