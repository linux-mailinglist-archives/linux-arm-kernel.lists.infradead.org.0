Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1540410345E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:43:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4rtJxiQzlyBx+fOkp2FdK1uqIXGlAViRggf/MkYUgSM=; b=aZ9G4Lbkq5aseu
	j12wocCCzLuQHxrEFSKS+aCxXKu1wKCWhWXbPsrbbkQqBAJOBfkwiOJ6WXDvxU311A9iSN1GcA0tp
	crSYoZ2ILUoqZ5qIAK+0hy/SXu0yv91fQbkdFIMjsyYhKmfY0KLwwC7RN8Am2S5Q0HPEI/a5yxJQI
	AA1qiwSixe8xGD1C/GEqRPy+0fnEGX4xs+Yuj57T9/4m6/yOqSqaGnD1zmRwxR2hm59xnYytAG1TT
	uwP9I4lRHeQRPAVY6uDcfv+YsqMJU3C5GzoPWMvYrK4n4KrqD1GMWbMsCcD4/kMC35MPMIMhAcHSC
	wWmHtNPIOLDaiZZ5CuBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJiE-0003fn-Jy; Wed, 20 Nov 2019 06:43:38 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJi6-0003f8-BB; Wed, 20 Nov 2019 06:43:31 +0000
X-UUID: a95e58755f0347f792d734a5787f2a73-20191119
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=Po3I97gPH5un+YvUqz4HBd2ziZlvEJRiQYNqrIBg6bI=; 
 b=GnBW0GXYrUuKbjd3RTHcMK6R3FbEAwxisI/6RgxDa6zyF8nBDbzC9Mf/3BM7FVVDMqTzuLGcMZ475J3YTcOtxhMG6wVfNnUYqnIoMgyonLxPZ74VgvjdpoliyQA7rt6rSbt8lx6KyYKXYRdBKJD813/jh9qIS36GYAYGqCgIDP0=;
X-UUID: a95e58755f0347f792d734a5787f2a73-20191119
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1591833630; Tue, 19 Nov 2019 22:43:24 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 19 Nov 2019 22:43:25 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 14:43:20 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 20 Nov 2019 14:42:56 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Felipe Balbi <balbi@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH v3 1/3] usb: musb: create debugfs directory under usb
 root
Date: Wed, 20 Nov 2019 14:43:01 +0800
Message-ID: <1574232183-5760-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 01F70002478959B1D1A85763158DDF05B970B212D28ECF207AC1A07659EF2B4C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_224330_391558_69CD5C94 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Bin Liu <b-liu@ti.com>,
 Cristian Birsan <cristian.birsan@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now the USB gadget subsystem can use the USB debugfs root directory,
so move musb's directory from the root of the debugfs filesystem into
the root of usb

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v3: no changes

v2:
  1. abandon new API usb_debugfs_create_dir(), and use usb_debug_root
---
 drivers/usb/musb/musb_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/musb/musb_debugfs.c b/drivers/usb/musb/musb_debugfs.c
index f42858e2b54c..7b6281ab62ed 100644
--- a/drivers/usb/musb/musb_debugfs.c
+++ b/drivers/usb/musb/musb_debugfs.c
@@ -325,7 +325,7 @@ void musb_init_debugfs(struct musb *musb)
 {
 	struct dentry *root;
 
-	root = debugfs_create_dir(dev_name(musb->controller), NULL);
+	root = debugfs_create_dir(dev_name(musb->controller), usb_debug_root);
 	musb->debugfs_root = root;
 
 	debugfs_create_file("regdump", S_IRUGO, root, musb, &musb_regdump_fops);
-- 
2.23.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
