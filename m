Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B040447E09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4je2ZtDbVDj5glcygc9PjgwaPDdoacdBOMDBFKcSwuU=; b=VJp
	aDWGnlVWFU0pvNscPGbyyJIXfa1SApuy12c2hH1jLpn600H6dpXx+Lbz1l0I+ZyoJiQhvW9L8uhZm
	iSRPIqZobfukavrlp7aHSa6aG38GGfF67ElEefpFfb2ob/YH76GAzSi/8RCdizqLIbXbk8iH7WJhv
	G4cKilSZ+fGCVDAIddGMuVEHnc+LsKtd/yQ0kL3BE9jzceK/i89UickLVC2ibrrF83Cz8mzoZN5fA
	i44FWBVKu9EPWJ1vMnGm38sMUs9R1U6xtG6rbeBI6O5bgNF0NYsVamG5QtfN5M8vS8NwFDWQL7AIy
	nnajkKe4k9rB6ONKocCVJ/zc/eRvcXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcniZ-00057d-RM; Mon, 17 Jun 2019 09:14:23 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcniM-000571-Kj
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:14:11 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id C4E6525AED3;
 Mon, 17 Jun 2019 19:14:07 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id C1B9994024A; Mon, 17 Jun 2019 11:14:05 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH] dt-bindings: watchdog: Rename bindings documentation file
Date: Mon, 17 Jun 2019 11:09:53 +0200
Message-Id: <20190617090953.8770-1-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_021410_826852_436F7B50 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For consistency with the naming of (most) other documentation files for DT
bindings for Renesas IP blocks rename the Renesas WDT documentation file
from renesas-wdt.txt to renesas,wdt.txt.

Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 .../devicetree/bindings/watchdog/{renesas-wdt.txt => renesas,wdt.txt}     | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Documentation/devicetree/bindings/watchdog/{renesas-wdt.txt => renesas,wdt.txt} (100%)

diff --git a/Documentation/devicetree/bindings/watchdog/renesas-wdt.txt b/Documentation/devicetree/bindings/watchdog/renesas,wdt.txt
similarity index 100%
rename from Documentation/devicetree/bindings/watchdog/renesas-wdt.txt
rename to Documentation/devicetree/bindings/watchdog/renesas,wdt.txt
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
