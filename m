Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9352EA5B8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 18:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SituZ3bxd1tQwmovw3Frdj4FobzjaZ4lkqAQylsJXsY=; b=ZjcR9XSE7/3H2m
	JMC9dVFVpa55MNZ+vPuQ1oclIarKltwGV9BM0OCxdfl99N63JXGnNXdP6tbS+4uimfIiZi0FYngeV
	nKu7xClmik0DDzrukQjJAXsr+75b6UcvymWyP7MyEhcAX5eC7r3NqpVj0zNYU7PhVJQNBd5tYx8nD
	gFHbWTFBKPbY5ijncJJx749javwGDH8hF1qdzXELyqbrR6FJj1S6ngB8a4KDC5zCGQD3e52Rxqkc3
	NNxpsMywIb0nv9Z0FnTKCKDXXpnnex+J8S7vuUBdXvB+J9vv2ivVwktzR2bDyva2D2QMDs4uugglt
	Hv+YDVxKgF/DyVOl+NYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4pWo-0003cU-Ug; Mon, 02 Sep 2019 16:50:06 +0000
Received: from mail.pqgruber.com ([52.59.78.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4pWe-0003c5-4X
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 16:49:57 +0000
Received: from archibald.tuxnet (213-47-165-233.cable.dynamic.surfer.at
 [213.47.165.233])
 by mail.pqgruber.com (Postfix) with ESMTPSA id A5989C72856;
 Mon,  2 Sep 2019 18:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pqgruber.com;
 s=mail; t=1567442990;
 bh=oJKuoxU5eSUldooJbFfaeJ+aojy6A8Sdw5Wn6VneLAk=;
 h=From:To:Cc:Subject:Date:From;
 b=Gd/onljmlyWrNMZ7HsAz0c7k0fm+4N1i2XEmPvC3ppswLGreJpShCZdzv+uXc4VUe
 swTrTtMT+KrG7ANA0qWexJZGZ6Hgpin1D/rXeLfUlghQhveDibU/HOftsyuVjf4RAR
 UDeZ4GOtnuIe742XSrFrRWY2RuOCnmI+hUUCbf6E=
From: Clemens Gruber <clemens.gruber@pqgruber.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arch: arm: reuse addr variable in pfn_valid
Date: Mon,  2 Sep 2019 18:46:22 +0200
Message-Id: <20190902164622.18593-1-clemens.gruber@pqgruber.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_094956_328283_2B2E75C3 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.59.78.55 listed in list.dnswl.org]
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
Cc: zhaoyang <huangzhaoyang@gmail.com>,
 Clemens Gruber <clemens.gruber@pqgruber.com>,
 Mike Rapoport <rppt@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Avoid calling __pfn_to_phys twice.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: zhaoyang <huangzhaoyang@gmail.com>
Signed-off-by: Clemens Gruber <clemens.gruber@pqgruber.com>
---
 arch/arm/mm/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 98e17388a563..a5fe2bdc76de 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -179,7 +179,7 @@ int pfn_valid(unsigned long pfn)
 	if (__phys_to_pfn(addr) != pfn)
 		return 0;
 
-	return memblock_is_map_memory(__pfn_to_phys(pfn));
+	return memblock_is_map_memory(addr);
 }
 EXPORT_SYMBOL(pfn_valid);
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
