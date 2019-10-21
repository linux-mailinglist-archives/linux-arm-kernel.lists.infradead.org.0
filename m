Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654B1DEFFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bb9ZCAlNLl+SKacPVSYdWLvkykN3Wb2YELt6+RE9ijg=; b=qp/6yGF1WWLP7I8rQlG9n1Fqvn
	fgFAkUWvN2/7QdJ+MLtXectCu4S7w0hBSth/mPUgIUpRs3LRP/+bIAh4dIK+wcql8tcKQY0PcWLqr
	oEG3etaGJZAFIRUdKBUxzjEKLJj6De04io7BToJkhhImQNipluD/oIfZ6DakCZyQJvJe5i0mDFbYs
	kdePQvyagJG2LSm0Rj6s52/eJ0mSppxhbayh+MgAf/7RSkNTk1/vRvDZGyr5q1cZyh1087oHlAvat
	OGru4889S7GHrFhQnP5I3aA0aKSAqG/MNDEqXQeBfWC1E4WW/otxkKFdS1eIP6EdqryvyWZgf6OHD
	6NQC3ycw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYpQ-0004o3-Bh; Mon, 21 Oct 2019 14:38:36 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYor-0004al-Jj
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:38:03 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id GEdo2100C05gfCL01Edox6; Mon, 21 Oct 2019 16:37:54 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iMYoe-0007cx-CY; Mon, 21 Oct 2019 16:37:48 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iMYoe-0003ma-AN; Mon, 21 Oct 2019 16:37:48 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "David S . Miller" <davem@davemloft.net>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH 1/7] debugfs: Add debugfs_create_xul() for hexadecimal
 unsigned long
Date: Mon, 21 Oct 2019 16:37:36 +0200
Message-Id: <20191021143742.14487-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021143742.14487-1-geert+renesas@glider.be>
References: <20191021143742.14487-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_073801_828148_D8845752 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
 include/linux/debugfs.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/debugfs.h b/include/linux/debugfs.h
index 33690949b45d6904..d7b2aebcc277d65e 100644
--- a/include/linux/debugfs.h
+++ b/include/linux/debugfs.h
@@ -356,4 +356,14 @@ static inline ssize_t debugfs_write_file_bool(struct file *file,
 
 #endif
 
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
