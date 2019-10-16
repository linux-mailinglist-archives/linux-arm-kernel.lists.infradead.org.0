Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04EBD93F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zQeSXF5UjIRaMg0x8EuRwxGtjleuaqtpjJHCwS9CUew=; b=Y4I
	/cGwdwiligUm7v0eGPL/z6oqy7VwE5ehlQtma4Ar7nq2wz8fpNNw76J7VPsrrD3LAly3jzgiEvYsk
	ihcSj8Vzqk15pxJ2kXOOLqN6kq7JStf1oiUQ4zWbj+adz2iS01I724+m4ZEScX42lCv6yJ3gNm3kI
	r0xrGzXHtzsVhrdCZhsVF088dM3HqOi8Mb99i3wSKbdI13ZlV2sq9Kw2FptN1ENX/f8gk0CkmZ7dh
	lVBD9wX8/89NsWIaALW4nt5B83h7khXTLArPglGXxf4fhJJb1xpnxweRPbF3j+umF5+27ePNIPGn8
	0yQf9PQaTpYusZ4O3q9WdAtWDF+Q3wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkMj-0000NM-3G; Wed, 16 Oct 2019 14:33:29 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkMY-0000Jl-0Z
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:33:20 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id EEZ82100N05gfCL01EZ856; Wed, 16 Oct 2019 16:33:08 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iKkMO-0003nj-CK; Wed, 16 Oct 2019 16:33:08 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iKkMO-0007YO-Aq; Wed, 16 Oct 2019 16:33:08 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
 Chris Brandt <chris.brandt@renesas.com>
Subject: [PATCH] soc: renesas: Add missing check for non-zero product register
 address
Date: Wed, 16 Oct 2019 16:33:06 +0200
Message-Id: <20191016143306.28995-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_073318_266479_19A28E50 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the DTB for a device with an RZ/A2 SoC lacks a device node for the
BSID register, the ID validation code falls back to using a register at
address 0x0, which leads to undefined behavior (e.g. reading back a
random value).

This could be fixed by letting fam_rza2.reg point to the actual BSID
register.  However, the hardcoded fallbacks were meant for backwards
compatibility with old DTBs only, not for new SoCs.  Hence fix this by
validating renesas_family.reg before using it.

Fixes: 175f435f44b724e3 ("soc: renesas: identify RZ/A2")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/soc/renesas/renesas-soc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/renesas/renesas-soc.c b/drivers/soc/renesas/renesas-soc.c
index 5dc2ae55f746a48a..85aaf85ce6b192d9 100644
--- a/drivers/soc/renesas/renesas-soc.c
+++ b/drivers/soc/renesas/renesas-soc.c
@@ -337,7 +337,7 @@ static int __init renesas_soc_init(void)
 	if (np) {
 		chipid = of_iomap(np, 0);
 		of_node_put(np);
-	} else if (soc->id) {
+	} else if (soc->id && family->reg) {
 		chipid = ioremap(family->reg, 4);
 	}
 	if (chipid) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
