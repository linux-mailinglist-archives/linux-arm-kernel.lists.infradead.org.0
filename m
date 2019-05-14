Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EC91C56A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aMVGKjmAeBxjiyu+LKxk2rWI2BtPex+Xq6Unz0lhNi4=; b=tCy
	jbKZ/R3HOEH046ztcWiBhSe4IpWaOQnmjUP2rJhytfrsw/2+7D7koTt0dlTJWtiqm7NF5dzVFfFuq
	SoIsPni4+0KXX+2WU/BDiTY/Qs+LNb+diEiWSpqQxdccMywsoeQ7uL0w0DkKQgdBEzKwlESNJ6oob
	AqO+ai1/TDkC7Ynfwv0kAeFT9+lk2uLV/oM6WPDZjmiuYTfD5QITe6gMqCAGkV+SvXQ5u4Jg42B+o
	5kIgOozhSy8GG+Jou+vW4w1Xuutv6sD4IZWFTdH1EL1Avz8TorQ1g4ca7xRR299gzgIg3yZa2GZYe
	CJZ9MXmlWdhsdpFJGP3oDEytOlfkoVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTBr-0003yM-4W; Tue, 14 May 2019 08:53:39 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTBi-0003xh-Hi
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 08:53:32 +0000
Received: from ramsan ([84.194.111.163]) by andre.telenet-ops.be with bizsmtp
 id C8tJ2000i3XaVaC018tJqu; Tue, 14 May 2019 10:53:20 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hQTBW-0000EN-Kf; Tue, 14 May 2019 10:53:18 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hQTBW-0004fH-J4; Tue, 14 May 2019 10:53:18 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] dt-bindings: arm-boards: Update pointer to ARM CPU bindings
Date: Tue, 14 May 2019 10:53:16 +0200
Message-Id: <20190514085316.17883-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_015330_959832_73F3FBC8 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ARM CPU DT bindings were converted from plain text to YAML, but not
all referrers were updated.

Fixes: 672951cbd1b70a9e ("dt-bindings: arm: Convert cpu binding to json-schema")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/arm/arm-boards | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/arm-boards b/Documentation/devicetree/bindings/arm/arm-boards
index b6e810c2781a4ec8..ed51c1f4657c0b26 100644
--- a/Documentation/devicetree/bindings/arm/arm-boards
+++ b/Documentation/devicetree/bindings/arm/arm-boards
@@ -199,7 +199,7 @@ The description for the board must include:
      A detailed description of the bindings used for "psci" nodes is present
      in the psci.txt file.
    - a "cpus" node describing the available cores and their associated
-     "enable-method"s. For more details see cpus.txt file.
+     "enable-method"s. For more details see cpus.yaml file.
 
 Example:
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
