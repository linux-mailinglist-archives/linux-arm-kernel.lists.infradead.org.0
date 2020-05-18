	by mail.lfdr.de (Postfix) with ESMTPS id 1D5BA1D7A43
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:43:22 +0200 (CEST)
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bvppB4Ncp+jfy+JalM60WoHiSiUOjlKFWozh4EJ+TVk=; b=rJ9GIRDGd9FN8N
	O/omMGIREn/4JbV2YdxWOa4maMgZNAP0RyJoDbbGo/KUONFJ4Z2iVw1raNhErfmbgivIrrS8ZRM9S
	8yKqVPDJHZokgArRkXk00O6XJ8czhdtE+HfJ4bA8m2twsgmDdji9Xh8R0EyeqtxrYwHVKdXyNvXhv
	1ntL6PPJAT6ojbRjlecnag+STwEL/d8aREKuEBn8dcGP1UfYN2W6Haxu0aVeP2PRdG5fJiMGfwl5k
	a5YEvpX3RiKmUKkYwGe37c6/sDsHx4tLGaM86J+s54z6XUkIbr9GniFb2VRDudIhggKVTUDtHu+MO
	ExtzRsUhnm1Nzw7JZL+Q==;
	id 1jag2v-0006mA-Cv; Mon, 18 May 2020 13:43:09 +0000
Received: from mail-m1271.qiye.163.com ([115.236.127.1])
 id 1jag2c-0006bB-KC
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:42:52 +0000
Received: from SZ11061793 (unknown [58.251.74.226])
 by mail-m1271.qiye.163.com (Hmail) with ESMTPA id A1A835830E6;
 Mon, 18 May 2020 21:42:43 +0800 (CST)
From: =?gb2312?B?zfWzzLjV?= <wangchenggang@vivo.com>
To: "'Catalin Marinas'" <catalin.marinas@arm.com>,
 "'Will Deacon'" <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] arch/arm64: Enlarge arm64 command line length to 4096 bytes
Date: Mon, 18 May 2020 21:42:43 +0800
Message-ID: <00fc01d62d1a$35445a80$9fcd0f80$@vivo.com>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdYtGFURNVMZj7AgREeJ7DTp+HLz+A==
Content-Language: zh-cn
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VDSUhCQkJDQ0pMT09IQ1lXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTI6Shw*Czg3QjQQNT4wMSIv
 GjlPCx1VSlVKTkNCQ0tCSE1IQkxCVTMWGhIXVQwaFRwYEx4VHBwaFRw7DRINFFUYFBZFWVdZEgtZ
 QVlOQ1VJTkpVTE9VSUlNWVdZCAFZQUpMQ0w3Bg++
X-HM-Tid: 0a722805bb8598b6kuuua1a835830e6
X-CRM114-CacheID: sfid-20200518_064250_839995_B0066EFC 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
 Content analysis details:   (0.0 points)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.236.127.1 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [115.236.127.1 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Cc: kernel@vivo.com
Now android use many long command line, and oem need append some command
line to debug boot, so 2048 bytes cannot able to meet the requirement.
Enlarge arm64's command line length to 4096 bytes.
Signed-off-by: Chenggang Wang <wangchenggang@vivo.com>
---
 arch/arm64/include/uapi/asm/setup.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
diff --git a/arch/arm64/include/uapi/asm/setup.h
b/arch/arm64/include/uapi/asm/setup.h
index 5d703888f351..85e34aa784e0 100644
--- a/arch/arm64/include/uapi/asm/setup.h
+++ b/arch/arm64/include/uapi/asm/setup.h
@@ -22,6 +22,6 @@
 
 #include <linux/types.h>
 
-#define COMMAND_LINE_SIZE	2048
+#define COMMAND_LINE_SIZE	4096
 
 #endif
-- 
2.20.1