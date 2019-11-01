Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE58EBBFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 03:29:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ePQVTUFeYK2kvK57w7rQbv8NKppU9Y+VWn7e572LXbo=; b=du7O7Jh9nlGTgH
	Ud4/GpiItUoRVSJt7cWWVL6vDK7lozZGJYK8wJA673/57/u4YdMvPJDh4E6sYl+cbZQ5KI7k7OtN0
	vwmAsPL7mqhM6Fhcnl/3rPQLHrV/d8gtKLCKecpdB+pnTuGba3EJAwJnkhkE0aVQxiR8FyoJJY+Op
	4ij+defp1sWH/hLPGFjDJuRPmqJcIUK4PV1tTlHzUkFso+4bHOePSpEwpbRUQsPBt93s3cIH6DFg3
	+KpJuxepMgokeLxTewQpAD8eHlm4JGs+i47MhsYveiIeaIpTV/Kf1JMA78V3tU6TNNzRRg6YmEnx8
	iInoAoKYmDmLNgl5QSQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQMh2-0001dP-O0; Fri, 01 Nov 2019 02:29:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQMgr-0001cp-BJ; Fri, 01 Nov 2019 02:29:30 +0000
X-UUID: 83277e11ca37469fb56730e960c7b4fb-20191031
X-UUID: 83277e11ca37469fb56730e960c7b4fb-20191031
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1806161455; Thu, 31 Oct 2019 18:28:40 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 31 Oct 2019 19:29:16 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 1 Nov 2019 10:29:10 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 1 Nov 2019 10:29:10 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Felipe Balbi
 <felipe.balbi@linux.intel.com>
Subject: [RFC PATCH] usb: common: change usb_debug_root as static variable
Date: Fri, 1 Nov 2019 10:29:09 +0800
Message-ID: <1572575349-5596-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0BC6BF59A4B94D77E8F22C50E62B63F4624266A34528C7C889666C16795174A52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_192929_394280_246AF88A 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabrizio Castro <fabrizio.castro@bp.renesas.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Try to avoid using extern global variable, and provide two
functions for the usage cases

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
NOTE:
    Prepared but not send out patches for drivers using usb_debug_root,
because I'm not sure whether this patch is needed, and many drivers
will be modified.
---
 drivers/usb/common/common.c | 16 ++++++++++++++--
 include/linux/usb.h         |  5 ++++-
 2 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
index 1433260d99b4..639ee6d243a2 100644
--- a/drivers/usb/common/common.c
+++ b/drivers/usb/common/common.c
@@ -293,8 +293,20 @@ struct device *usb_of_get_companion_dev(struct device *dev)
 EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
 #endif
 
-struct dentry *usb_debug_root;
-EXPORT_SYMBOL_GPL(usb_debug_root);
+static struct dentry *usb_debug_root;
+
+struct dentry *usb_debugfs_create_dir(const char *name)
+{
+	return debugfs_create_dir(name, usb_debug_root);
+}
+EXPORT_SYMBOL_GPL(usb_debugfs_create_dir);
+
+struct dentry *usb_debugfs_create_file(const char *name, umode_t mode,
+			void *data, const struct file_operations *fops)
+{
+	return debugfs_create_file(name, mode, usb_debug_root, data, fops);
+}
+EXPORT_SYMBOL_GPL(usb_debugfs_create_file);
 
 static int __init usb_common_init(void)
 {
diff --git a/include/linux/usb.h b/include/linux/usb.h
index e656e7b4b1e4..ad96e0aa0127 100644
--- a/include/linux/usb.h
+++ b/include/linux/usb.h
@@ -2001,7 +2001,10 @@ extern void usb_register_notify(struct notifier_block *nb);
 extern void usb_unregister_notify(struct notifier_block *nb);
 
 /* debugfs stuff */
-extern struct dentry *usb_debug_root;
+extern struct dentry *usb_debugfs_create_dir(const char *name);
+extern struct dentry *
+usb_debugfs_create_file(const char *name, umode_t mode, void *data,
+			const struct file_operations *fops);
 
 /* LED triggers */
 enum usb_led_event {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
