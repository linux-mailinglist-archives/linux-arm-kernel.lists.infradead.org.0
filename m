Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E40C722D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 01:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pu5IRnRTb5XtnTXFmlbn21mpzSmbDu4BsnkyNAGO2Mg=; b=bgptl5P0MBE1pB
	2ASqzjKgWCkmdCFQ81TxqPfdHjveOLjRN+NANkx2kaQytcWJz5HxD9tkQHxTXhWVEPChVIiMNSJMw
	6U45kyIzmJKYrhbN9G8JiZWxzdJzM1xYs3WmAEZ6HanleB9SR8qiY6dGkRLA/rIqiJjZaoh6X01G8
	oncpk6iQ3NMa0BHh3lJd1kbDFwwZS68cbUOtKoW9dO9ol1JwCpqZlkWtvhI1VvRQHU389vykdVfdI
	yQa/gFDif3CCPu1qnjH3iI3r3zDO1m/DxRENrY56BqcYpdUSVvdLR9aBO8lynG0JNXFVMy3duUzM3
	HBJTZq4wSH7/n817baQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq3u1-0003i6-Rl; Tue, 23 Jul 2019 23:09:01 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq3tn-0003hN-89
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 23:08:50 +0000
Received: by mail-io1-f68.google.com with SMTP id q22so85473054iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 16:08:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HYo2fuuuneL5Fo4jEfaXQ1heuCdpTzyb5jPxys5e614=;
 b=BlJGnW25wnx2MkJ39J/2O/ozazr4YUTgDQREKmNdyWm+kesvFSlZKhqF9hfJeb0itq
 39HeMwGL6I6Ymnq0IKe/pW81pEL1jpEeNUKfNvI3dtnX7n7hg8R7FvisNrQ+mtlHll+h
 etpAJeV1NH3x04BxgpaYppLwOOKKbuuDZ+dzOpIxs9K2lGjGIWOWEAf/uEPLtlnXWAHv
 U4UrBMijBOWvvG9p6ZI1xpB/lu63UqFL7hmwYMCvc7HTJEIXmK2nefG4DRF+X5smZVeO
 Ypj3F3uO+R2BnL0VH7F/xSkRBjGar9TK47ISOBIfFsgSpcbBOTXoPR6v5tPC6ZXBIVw8
 qTlw==
X-Gm-Message-State: APjAAAW+xp017y7pOI/hdpwerp7yzaANxfqMLHaJ8JjmkKV5DDjuYD2S
 7H5yr6xJlcwFFmi8P08e5A==
X-Google-Smtp-Source: APXvYqwlJV09K4RP12HY5SbNeA4DQYH2eq1IjJhUlDTm+CQ6P0v68r2Ic4RqfVM0mf7j+OEb3QNpiw==
X-Received: by 2002:a5e:8210:: with SMTP id l16mr47099097iom.240.1563923325720; 
 Tue, 23 Jul 2019 16:08:45 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.254])
 by smtp.googlemail.com with ESMTPSA id b14sm48025590iod.33.2019.07.23.16.08.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 16:08:44 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: clk: allwinner,
 sun4i-a10-ccu: Correct path in $id
Date: Tue, 23 Jul 2019 17:08:43 -0600
Message-Id: <20190723230843.19922-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_160847_284660_44AB83FC 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The path in the schema '$id' value is wrong. Fix it.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
I can take this via the DT tree.

Rob

 .../devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
index c935405458fe..fa4d143a73de 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/phy/allwinner,sun4i-a10-ccu.yaml#
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-ccu.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Allwinner Clock Control Unit Device Tree Bindings
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
