Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC2170162
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:39:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xx5JQjrwbG2vzZeRQFSH6l6UokAF8RHCMbeHE1yJWQw=; b=RypRj/3vjhKnoi
	Zpfgd7W9J7Mn9mRvlUfBFgvisAPJvEXNlyKmJbOsL1lTuUjMN8oD+nm4lmUu1SgSfQDMi9UDJ+9Zv
	CsNkPP4RG5WYcQp8fWQUMN3q+qrUjIWb6iL1UEO3ZAG8JY3ROJyCkWhwKp5DH5BfmlN2q/rvaerop
	X4AxgY+oVNP1pE2VTpjqMStlHJmHzE8gjmP6dZUpgSOZuehl1ExlkCzUYIIQye9SBoVtKabsK6mwP
	ZsHRiimds0ntS+IuAXB4i80azdeK+i7m3GkFeRg6IbLz2JsTUrRL+j60TLXuDgGKzhxOjIkmyHhcJ
	wSCTz2IDeP6h8jHEPRqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xq4-0007dt-4O; Wed, 26 Feb 2020 14:39:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xpl-0007ZB-6a
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 14:38:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1j6xpb-0000a4-Cd; Wed, 26 Feb 2020 15:38:35 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1j6xpY-00011U-RF; Wed, 26 Feb 2020 15:38:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: add vendor prefix for Linux Automation GmbH
Date: Wed, 26 Feb 2020 15:38:23 +0100
Message-Id: <20200226143826.1146-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: afa@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_063845_258379_70389D63 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Linux Automation GmbH[0] was founded in 2019 in order to develop
electronics for embedded Linux. Add its vendor prefix so it may be used
in future board and device compatibles.

[0]: https://www.linux-automation.com

Signed-off-by: Robert Schwebel <rsc@linux-automation.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9e67944bec9c..bef6841428a2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -561,6 +561,8 @@ patternProperties:
     description: LSI Corp. (LSI Logic)
   "^lwn,.*":
     description: Liebherr-Werk Nenzing GmbH
+  "^lxa,.*":
+    description: Linux Automation GmbH
   "^macnica,.*":
     description: Macnica Americas
   "^mapleboard,.*":
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
