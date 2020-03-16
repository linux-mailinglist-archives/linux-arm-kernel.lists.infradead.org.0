Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155221863E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 04:46:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PxfoORhPf8jUy5hwpvR6PNUVf0W2o6YGp/iNHlkNFvE=; b=aDO
	2lOh5zOB9UxoobplPAVjq5U8prJlUAHE0RLE/SFbqNHQLhwkRirTFJEXgPBlIw82r/rn3FXq5wTNx
	6TW8ZM12HHN51nYfSY14lAC0roTiw21E/uapPXRTK3Z/g9ZsPMfohbqwU8cpem7AU5A1rGZAiJ5aY
	fnSerPvEJwat798bju1BDL++1jGamZVTGFn7SzhdM9w7YnoZaXQoHwBtJrqckf00jA7Tgn9DQk9hs
	8Ib7NDUzR1dzy0txCAwvUIxkzn+WcGikZPyRZGWyRSZMUkC6QeUHh6HsELGtBkT5jQY07PO3qSRP1
	85CWQGFAvDVK3puBp1u4xhMqZqN9gMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDghx-00049b-JB; Mon, 16 Mar 2020 03:46:29 +0000
Received: from m176115.mail.qiye.163.com ([59.111.176.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDghn-0003cr-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 03:46:21 +0000
Received: from localhost.localdomain (unknown [58.251.74.227])
 by m176115.mail.qiye.163.com (Hmail) with ESMTPA id 0F225664012;
 Mon, 16 Mar 2020 11:46:10 +0800 (CST)
From: Zheng Wei <wei.zheng@vivo.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Chris Mason <clm@fb.com>, Josef Bacik <josef@toxicpanda.com>,
 David Sterba <dsterba@suse.com>, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hanjun Guo <guohanjun@huawei.com>, Enrico Weigelt <info@metux.net>,
 Yunfeng Ye <yeyunfeng@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Subject: [PATCH v2,
 RESEND] btrfs: fix the duplicated definition of 'inode_item_err'
Date: Mon, 16 Mar 2020 11:45:57 +0800
Message-Id: <20200316034600.125962-1-wei.zheng@vivo.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VMS0hCQkJCQk1KQ05IWVdZKFlBSE
 83V1ktWUFJV1kJDhceCFlBWTU0KTY6NyQpLjc#WQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NAw6HRw6NTg0CjdKDgsaKUIP
 SR0wFDxVSlVKTkNPSEhLSExLQ09CVTMWGhIXVQweElUBEx4VHDsNEg0UVRgUFkVZV1kSC1lBWU5D
 VUlOSlVMT1VJSUxZV1kIAVlBSU9OTjcG
X-HM-Tid: 0a70e172eeb39373kuws0f225664012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_204619_360290_38473B1E 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

changelog
v1 -> v2
 - resend for the failure of delivery to some recipients.

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
