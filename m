Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB61A5E00C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=I+c12IqkU8Cx/dV7H1ctBlWs0JJDgdtwADUZ4jqCzGo=; b=bmD
	Uz7PQ0kyP2/HaUq7kcjs91jXFPNsuBoCyI5QpExnqSgBjzQOTGhaFaLOH+U6y1JlIPQV/sR+Xu4oJ
	mP5uAzl6WwOnLW+FCsOXWEQU4HwrtDl2HHHhMs/4V2kUGanky95nFeghhvEZ/24ud+ki7M7JFVQWS
	hdHJWKAJkekTIP0RNGx2f92xshSXJVhxfq+uhRVpvdbfHT3op1tmqMpNX2sOV+qdmEXrZU8cBwLi9
	8+MrX8LI6ZqN83mBqRFbGhWWZGZCCF32s7Wu6RKfmxUnfv6zl1peJP5Q1IcypTS+ZYxtpba34+QKs
	0OL+OYyQwBbrQ/+DhtoOjYy0KmosyKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaps-0007Gp-LP; Wed, 03 Jul 2019 08:41:52 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiapf-0007Fq-BY
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:41:40 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 51E6125AEEC;
 Wed,  3 Jul 2019 18:41:38 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 64EAA9403B8; Wed,  3 Jul 2019 10:41:36 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH] dt-bindings: Rename file of DT bindings for Renesas memory
 controllers
Date: Wed,  3 Jul 2019 10:41:06 +0200
Message-Id: <20190703084106.484-1-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_014139_554444_9895D79F 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For consistency with the naming of (most) other documentation files for DT
bindings for Renesas IP blocks rename the Renesas R-Mobile and SH-Mobile
memory controllers documentation file from renesas-memory-controllers.txt
to renesas,dbsc.txt.

Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 .../{renesas-memory-controllers.txt => renesas,dbsc.txt}                  | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Documentation/devicetree/bindings/memory-controllers/{renesas-memory-controllers.txt => renesas,dbsc.txt} (100%)

diff --git a/Documentation/devicetree/bindings/memory-controllers/renesas-memory-controllers.txt b/Documentation/devicetree/bindings/memory-controllers/renesas,dbsc.txt
similarity index 100%
rename from Documentation/devicetree/bindings/memory-controllers/renesas-memory-controllers.txt
rename to Documentation/devicetree/bindings/memory-controllers/renesas,dbsc.txt
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
