Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC79162191
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 08:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T9ctOejWE85B30qVoj2x1pKDB6qOcw7BxlmOLVWwcxM=; b=n8gByZ/96TNBI4
	IwfMYJZ0HSNGPspQP36p2M/EGm9B/rbYETobA6pfZlPitms4u4o0msrUVXxeCX0EPKadTAzgIw8XW
	KM2SN4Md6V11l4hCV4YpGknqA3ZYi+uRHGm/OHh1PISk3T5LPet6EZne2Wervs98DvWjTrluXqks3
	ouxhknbvsqgm79i9N4UHUTFfOm/DXYQhHuVhKyapVjQ2EacAcmn2F3ThctaS/lDPLxmNFQ+dfNodI
	fmlupSWoThQq10hPt+Nf4twx988kMc3wJ+1SKa16jWIj0Vh6d8jU7OrQkOHTUOFKuvjQzQQl+Nh6F
	lFdA4yWK5ATEMXl8e4nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3xVk-0007fr-T0; Tue, 18 Feb 2020 07:41:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3xVa-0007ef-3A; Tue, 18 Feb 2020 07:41:31 +0000
X-UUID: b211d7faac2243a88eb14e2fb18c0552-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=R5o8h58rYOA1fQLNSXIwPhnCU0xALWjQ5mRQdByDjFk=; 
 b=gV+vQumofRgeHZQLi18ZL0fXI0cOe/m8m9jHQK1lAAwIwiikMv2ILEXat/eyhU0IKRcshFL0QWupA8xNmwG/j707T7GFs7L/sAdvYuq6fi0fCOzpXQSn9nB2mR/p9Wky/ggJ7CRWDs0fdL5mb+PPO+/bq/uHzSDFyXvILobmlKU=;
X-UUID: b211d7faac2243a88eb14e2fb18c0552-20200217
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1953344872; Mon, 17 Feb 2020 23:41:24 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 23:41:21 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 15:42:30 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 18 Feb 2020 15:40:51 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Matthias Brugger
 <matthias.bgg@gmail.com>, Shen Jing <jingx.shen@intel.com>, Sasha Levin
 <sashal@kernel.org>, John Stultz <john.stultz@linaro.org>, Macpaul Lin
 <macpaul.lin@mediatek.com>, Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Vincent Pelletier <plr.vincent@gmail.com>, Jerry Zhang
 <zhangjerry@google.com>, <linux-usb@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Subject: [PATCH] lib: iov_iter.c: fix a possible calculation error on
 remaining bytes
Date: Tue, 18 Feb 2020 15:41:12 +0800
Message-ID: <1582011672-17189-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_234130_143546_D7D88DAB 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: CC Hwang <cc.hwang@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This issue was found when adbd trying to open functionfs with AIO mode.
Usually, we need to set "setprop sys.usb.ffs.aio_compat 0" to enable
adbd with AIO mode on Android.

When adbd is opening functionfs, it will try to read 24 bytes at the
fisrt read I/O control. If this reading has been failed, adbd will
try to send FUNCTIONFS_CLEAR_HALT to functionfs. When adbd is in AIO
mode, functionfs will be acted with asyncronized I/O path. After the
successful read transfer has been completed by gadget hardware, the
following series of functions will be called.
  ffs_epfile_async_io_complete() -> ffs_user_copy_worker() ->
    copy_to_iter() -> _copy_to_iter() -> copyout() ->
    iterate_and_advance() -> iterate_iovec()

Adding debug trace to these functions, it has been found that in
iterate_iovec(), the calculation result of n will be turned into zero.
   n = wanted - n; /* 0 == n = 24 - 24; */
Which causes copyout() won't copy data to userspace since the length
to be copied "v.iov_len" will be zero, which isn't correct. This also
leads ffs_copy_to_iter() always return -EFAULT. Finally adbd cannot
open functionfs and send FUNCTIONFS_CLEAR_HALT.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 lib/iov_iter.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/iov_iter.c b/lib/iov_iter.c
index fb29c02c6a3c..f9334144e259 100644
--- a/lib/iov_iter.c
+++ b/lib/iov_iter.c
@@ -36,7 +36,8 @@
 		skip = __v.iov_len;			\
 		n -= __v.iov_len;			\
 	}						\
-	n = wanted - n;					\
+	if (n != wanted)				\
+		n = wanted - n;				\
 }
 
 #define iterate_kvec(i, n, __v, __p, skip, STEP) {	\
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
