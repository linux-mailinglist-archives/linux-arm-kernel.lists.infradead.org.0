Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B3D18554E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 10:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Qt5WAhWSJN4B50zktvjRN5LHFilGpqIQKkacU/zXQbc=; b=rnB
	KmdvOxJ0gAmMSEJ+y0sbUldb9yIfDTsqBCBak7V0w3+p0kmPGVD8O47Rd9QkqJ95S7N5cn+4dGkT/
	ZJW8KHzFzmF9WZ9te00nDZkeiffS+8YV1sKIb7Xzr1OGhn6nGlITooIXkkWbIR8H4ktkoeHxEw5tt
	QrvvbQJA6YE8nMPrg0mbFiaAkTxEXXh9zuo4cqvY5d2bsV6c4b/PyQJ+1dfKdlcJyqe6wKQxonaSY
	BojRqDdS8hbb8EFwFMXa7J+xe+8yeSaEv4jtoeSwJZLlgeVwIfJWsXcQBtDCbmwdaQ5qWS21UM6nf
	sw6ZOvzVUuEnmuwRenytpRB6S3osIOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD3WI-0003yn-AD; Sat, 14 Mar 2020 09:55:50 +0000
Received: from m176115.mail.qiye.163.com ([59.111.176.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD3W8-0003pq-L1
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 09:55:43 +0000
Received: from localhost.localdomain (unknown [58.251.74.226])
 by m176115.mail.qiye.163.com (Hmail) with ESMTPA id 44C1A66443C;
 Sat, 14 Mar 2020 17:55:31 +0800 (CST)
From: Zheng Wei <wei.zheng@vivo.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Chris Mason <clm@fb.com>, Josef Bacik <josef@toxicpanda.com>,
 David Sterba <dsterba@suse.com>, Yunfeng Ye <yeyunfeng@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hanjun Guo <guohanjun@huawei.com>, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-btrfs@vger.kernel.org
Subject: [PATCH] btrfs: fix the duplicated definition of 'inode_item_err'
Date: Sat, 14 Mar 2020 17:55:20 +0800
Message-Id: <20200314095522.63957-1-wei.zheng@vivo.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZTlVLQk9CQkJMQktKQkpNTllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTI6DSo*PjgyNDBJHjUBHzIr
 OksaCglVSlVKTkNPSkxCTEhKQkpNVTMWGhIXVQweElUBEx4VHDsNEg0UVRgUFkVZV1kSC1lBWU5D
 VUlOSlVMT1VJSU1ZV1kIAVlBSUlMSjcG
X-HM-Tid: 0a70d8785d669373kuws44c1a66443c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_025540_847771_BDDD5C0E 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel@vivo.com, wenhu.wang@vivo.com, Zheng Wei <wei.zheng@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

remove the duplicated definition of 'inode_item_err'
in the file tree-checker.c

Signed-off-by: Zheng Wei <wei.zheng@vivo.com>
---
 fs/btrfs/tree-checker.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/fs/btrfs/tree-checker.c b/fs/btrfs/tree-checker.c
index a92f8a6dd192..517b44300a05 100644
--- a/fs/btrfs/tree-checker.c
+++ b/fs/btrfs/tree-checker.c
@@ -957,10 +957,6 @@ static int check_dev_item(struct extent_buffer *leaf,
 	return 0;
 }
 
-/* Inode item error output has the same format as dir_item_err() */
-#define inode_item_err(eb, slot, fmt, ...)			\
-	dir_item_err(eb, slot, fmt, __VA_ARGS__)
-
 static int check_inode_item(struct extent_buffer *leaf,
 			    struct btrfs_key *key, int slot)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
