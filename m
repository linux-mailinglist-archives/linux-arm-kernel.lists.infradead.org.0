Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C039BB47F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 09:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YzGTgrZ8kjEdpgnHtMCQKRZbQGvQ1TTQEkI6yPFSzmM=; b=Y8ZZ02p5vtTaPN
	G8RscYhFw/8Vz2xxhWpMdT5gQrFF/hvWDw5KkmnsmJZ2tq/9coGvhsCI5KrqiG8hCMWe4Q7Kz/jRT
	lR3K7Z8lrYg3zDO6cdFGysE+81O0+tpkYz+8F59jJfCfLLhpTXnG5IPZlkVchxZAyvsa5+fKxhqR9
	U9XEM0A934oVajwpWQr8wenU9YxoNodP8zt0Aofk1kZS7I++JLWdCfrMxbk1Cmf/QiZSxrQ0fE3Yp
	Ys5ypxP4lbRlL+JGohX3NZBRA4OqhTU3te1wQemO2BN1Ims6ZXvlYmw5czJPPIxYeSdQhPSmoR8Zk
	is2y0ekbAMvtaM+BSkxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7i9-0001oi-1k; Tue, 17 Sep 2019 07:15:41 +0000
Received: from [213.208.157.37] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7hu-0001oY-59; Tue, 17 Sep 2019 07:15:26 +0000
From: Christoph Hellwig <hch@lst.de>
To: corbet@lwn.net
Subject: [PATCH v2] Documentation: document earlycon without options for more
 platforms
Date: Tue, 17 Sep 2019 09:15:23 +0200
Message-Id: <20190917071523.16672-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: schwab@suse.de, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The earlycon options without arguments is supposed to work on all
device tree platforms, not just arm64.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---

Changes since v1:
 - add comma, fix typo

 Documentation/admin-guide/kernel-parameters.txt | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 4c1971960afa..d5956c29b93b 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -977,12 +977,10 @@
 
 	earlycon=	[KNL] Output early console device and options.
 
-			[ARM64] The early console is determined by the
-			stdout-path property in device tree's chosen node,
-			or determined by the ACPI SPCR table.
-
-			[X86] When used with no options the early console is
-			determined by the ACPI SPCR table.
+			When used with no options, the early console is
+			determined by stdout-path property in device tree's
+			chosen node or the ACPI SPCR table if supported by
+			the platform.
 
 		cdns,<addr>[,options]
 			Start an early, polled-mode console on a Cadence
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
