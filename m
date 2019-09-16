Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91931B3512
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 09:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q1W1yHSUVBNrPIBIKNw9CSebuSGRYY9X9HPtNqUhyJY=; b=YvAmQW+Bky2EzP
	l4SlOnZKhUsqwwMC8O6eJ9sTZvBNtHp5qPoQyHT9NObF59iDnFwXEp1a7s2dn1XMJrP7H6008VbRE
	aqQZ8NLgR6wRv3OX2PpcIsSjZulqZpXGlX82ot+XBaIjyKww3PNXuIqfnmK5gkdFsgJEx1eZMInZE
	SwqzCdI2Jj/3bvvgCMpQFpBIKy6zyxTJuLx3T+gbX0ep30M07r8cbhf+ILvYB9WitgEy8z2Esxh8H
	MN4GCvwTDIeZDeFOv2ZPPnzo55aBmi8U1uNTeV2yA1WBbUws3VwkoC8O8zH09mdwEwhr6PI275H5R
	XG39CNlVgazznTcJUk8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9l3Z-0005Sn-GP; Mon, 16 Sep 2019 07:04:17 +0000
Received: from [2001:4bb8:180:57ff:5cca:b473:ae29:d378] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9l2d-0005SW-49; Mon, 16 Sep 2019 07:03:19 +0000
From: Christoph Hellwig <hch@lst.de>
To: corbet@lwn.net
Subject: [PATCH] Documentation: document earlycon without options for more
 platforms
Date: Mon, 16 Sep 2019 09:03:16 +0200
Message-Id: <20190916070316.7371-1-hch@lst.de>
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

The earlycon options without arguments is supposed on all device
tree platforms, not just arm64.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 Documentation/admin-guide/kernel-parameters.txt | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 4c1971960afa..fe81d8922edd 100644
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
+			When used with no options the early console is
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
