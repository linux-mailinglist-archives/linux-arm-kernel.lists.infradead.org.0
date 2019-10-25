Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36722E496D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 13:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+om/IUfcge+dFJd9U3/5GtOFoXP1DsYTwjwBf0tMRjY=; b=DOvzQGrpqCgcdHpd5adpKxjAKp
	+/+ah1j+zfbuD/yk1rD3/MQxcxVdFs9WHjY52wFqgZOqHYO1vcs3+HcBm2hcmLS0KY+0f/SYfWy70
	qqBJ3WLskj0DsYd84NwrA9+7Tl8xP8ENx7EXaJRqjTdAyHh7HkjmupJF+52eptxjICQ3MIeKn39p6
	eArISvr5+FYow17S0uRL9xIKoFWqDsHgFJsIUYKH2xnrTp68qCd7E2ag02UdoAE5IhMTF1pqsYsoI
	FdUcngKmKRH1EorzmBYN7bpG8Uc0Bj/II6G43YKtNDq3MqsJTY/QFVDf8UtQt5oDOinoR0iyaghEM
	+1lXEeCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNxU8-0006ga-S7; Fri, 25 Oct 2019 11:10:24 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxSZ-000480-T1
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 11:08:51 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id Hn8b2100L5USYZQ01n8bdM; Fri, 25 Oct 2019 13:08:43 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNxSN-0003rD-GA; Fri, 25 Oct 2019 13:08:35 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNw6A-0006ms-Jl; Fri, 25 Oct 2019 11:41:34 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Jonathan Corbet <corbet@lwn.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "David S . Miller" <davem@davemloft.net>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH v2 1/7] debugfs: Add debugfs_create_xul() for hexadecimal
 unsigned long
Date: Fri, 25 Oct 2019 11:41:24 +0200
Message-Id: <20191025094130.26033-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191025094130.26033-1-geert+renesas@glider.be>
References: <20191025094130.26033-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_040848_118325_7F449D7F 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The existing debugfs_create_ulong() function supports objects of
type "unsigned long", which are 32-bit or 64-bit depending on the
platform, in decimal form.  To format objects in hexadecimal, various
debugfs_create_x*() functions exist, but all of them take fixed-size
types.

Add a debugfs helper for "unsigned long" objects in hexadecimal format.
This avoids the need for users to open-code the same, or introduce
bugs when casting the value pointer to "u32 *" or "u64 *" to call
debugfs_create_x{32,64}().

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Add kerneldoc,
  - Update Documentation/filesystems/debugfs.txt.
---
 Documentation/filesystems/debugfs.txt |  5 ++++-
 include/linux/debugfs.h               | 21 +++++++++++++++++++++
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/filesystems/debugfs.txt b/Documentation/filesystems/debugfs.txt
index 50e8f91f2421ec04..8c8e60fe8c7deb86 100644
--- a/Documentation/filesystems/debugfs.txt
+++ b/Documentation/filesystems/debugfs.txt
@@ -102,11 +102,14 @@ functions meant to help out in such special cases:
 As might be expected, this function will create a debugfs file to represent
 a variable of type size_t.
 
-Similarly, there is a helper for variables of type unsigned long:
+Similarly, there are helpers for variables of type unsigned long, in decimal
+and hexadecimal:
 
     struct dentry *debugfs_create_ulong(const char *name, umode_t mode,
 					struct dentry *parent,
 					unsigned long *value);
+    void debugfs_create_xul(const char *name, umode_t mode,
+			    struct dentry *parent, unsigned long *value);
 
 Boolean values can be placed in debugfs with:
 
diff --git a/include/linux/debugfs.h b/include/linux/debugfs.h
index 33690949b45d6904..af6c2e5b7d3c7afa 100644
--- a/include/linux/debugfs.h
+++ b/include/linux/debugfs.h
@@ -356,4 +356,25 @@ static inline ssize_t debugfs_write_file_bool(struct file *file,
 
 #endif
 
+/**
+ * debugfs_create_xul - create a debugfs file that is used to read and write an
+ * unsigned long value, formatted in hexadecimal
+ * @name: a pointer to a string containing the name of the file to create.
+ * @mode: the permission that the file should have
+ * @parent: a pointer to the parent dentry for this file.  This should be a
+ *          directory dentry if set.  If this parameter is %NULL, then the
+ *          file will be created in the root of the debugfs filesystem.
+ * @value: a pointer to the variable that the file should read to and write
+ *         from.
+ */
+static inline void debugfs_create_xul(const char *name, umode_t mode,
+				      struct dentry *parent,
+				      unsigned long *value)
+{
+	if (sizeof(*value) == sizeof(u32))
+		debugfs_create_x32(name, mode, parent, (u32 *)value);
+	else
+		debugfs_create_x64(name, mode, parent, (u64 *)value);
+}
+
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
