Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5A85A53C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 21:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ap7ANvWP783uIjREiRh+wEREBUcEIz2STZqjunJXbhQ=; b=fxhmqg0zOfvlez
	sEgxgpHw3HmmelfwYNwrgEvu6oThkUox/EX3eRREPUZQk9YkpRokn3BbLk16KhDJcO9dITMjOuMpl
	oYWptTH7dmYL4OzggxMZKmipJ1cOY1ulmMx/XBtCh10dOt77xpOlJTh3u7uh9H1Fo8X6zCZfEo2Ie
	pgka4qeW+98dspOgxZTNk/ZFzOvc3ZrAm9i0sYU+bheSImrb8+65UY09uSeAEqMo3bQ38jUSK5JdG
	ZUmGGnMOXOwbPz5QWxR+zgtNgmB6zorS6WKdfrXH2Qmlz0ZXnX3IkJoWKjz4el4bIVieUUyWn85da
	h2pPm5nM6uU5bU17mWiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgwh0-0002ih-Ka; Fri, 28 Jun 2019 19:37:54 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgwgb-0002Xo-Li; Fri, 28 Jun 2019 19:37:32 +0000
Received: by mail-io1-f65.google.com with SMTP id k20so14867800ios.10;
 Fri, 28 Jun 2019 12:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rOnt24OKyg8IYLadN6LWQaA2kEEaOS+arIfbwjhJNR4=;
 b=UXHNBhBTVmfnCvIKOwgsSf4VmJMoaLKjS9AJ5eHTHFcOwSZ91ytD0ciGtxHAITlB46
 RtrgMr52FzM4PviChHo4qw+bj8ccr4RABS1bqo8tVQrrVR5fHsgEXrY7iyENVwCCFcCI
 7o8aJKgWIQnD7S1o0cFIfKCI+7m59qJh3GnJ7QYgaklgD0N847HFwYWDsjOOUV93zK07
 rxtUB81SUf67vndi6jKp3StLbYvXhStNJrRfb3KKnYjyCY5qmBmAr0rWREeeyNH6bDVG
 HXfNORdx/XF+thjJFUt3wyCmidnJURYoyCsl0priJFcXuU7n4Ksrj84zJkcLUokR/OLv
 sHsg==
X-Gm-Message-State: APjAAAV6buAalTychQCnNcACwXIe3XqeBJ9zcMZh3fvtxNuBzzbhzSzG
 W3vhYohuIJuRFtDMDGWUjg==
X-Google-Smtp-Source: APXvYqxtxWXQqs4yhNzHBeBOuvHhYb9tx5z9qryUXj1LZrI9tRYnL6j8xUuN4/7v7qTG4as0xfM0hw==
X-Received: by 2002:a02:cd83:: with SMTP id l3mr10927291jap.66.1561750647827; 
 Fri, 28 Jun 2019 12:37:27 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.243])
 by smtp.googlemail.com with ESMTPSA id q15sm3160061ioi.15.2019.06.28.12.37.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 12:37:27 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: mtd: sunxi-nand: Drop 'maxItems' from child
 'reg' property
Date: Fri, 28 Jun 2019 13:35:25 -0600
Message-Id: <20190628193525.7785-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_123729_709353_3D97D87A 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mixing 'maxItems' and scalar properties doesn't make much sense, so drop
'maxItems' as a single item is implied.

Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Marek Vasut <marek.vasut@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: linux-mtd@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
I'll take this in the DT tree if that's okay.

Rob

 .../devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml        | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml b/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
index fbd4da3684fc..e5a411518be1 100644
--- a/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
+++ b/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
@@ -57,7 +57,6 @@ patternProperties:
   "^nand@[a-f0-9]+$":
     properties:
       reg:
-        maxItems: 1
         minimum: 0
         maximum: 7
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
