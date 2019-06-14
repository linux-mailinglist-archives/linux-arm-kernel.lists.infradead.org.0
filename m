Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBA6464D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=askabROJCTTIFhgDALvipkc1jp+Mp0mq6ddN+4suGbk=; b=akx5TtSshflbFg
	wYAkpbQF6wRbDkivEiBEw0c4/zK6H2G1yt6hu69AxbbyomSvk48v6ZFTimf9hQxvNBCKcY2gRlXj6
	sPKi3UFPxgWJQ2mjb98dlqP2UivaQ28EWjFdzmBvbaZ10zfIsagc9wn2VJW+n6LRo4zfTLBDMKHFd
	YEoF5Fnml4NnSqK5xLb7NQUiEVzhS362LwrH7VtkEOQGwc2f8aZ9BRigL2juRIegZxgC0R/AOuwEI
	Iuj9RmsKWDt0ffs9oDrxvr1OE7Dox5TOAMJHgMwZEw3B+vCWrts65GjEkQDpdmEin3tlGS9VNV4N6
	L+yA7xXz2QS+yJ0mBQAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpLU-0003aI-L6; Fri, 14 Jun 2019 16:46:32 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpJD-0007pH-D9
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:44:15 +0000
Received: by mail-pl1-x642.google.com with SMTP id s24so1239157plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Non2BoMSGZisQGcDqDX68GAJtDt89o/Y1pHahHZtkpw=;
 b=rlf58sMSEWIwoOxw02uP0n9MWyrboVK4lgcIbkTGWCNuEqHmEw5+ENdEnc8yUBy6YL
 xa/7xTOfw1ZONqMy2w3bDcUqg1fLro2oBI55f6/OjyxCUGqfHeNcHerAQ18EUyWzTARQ
 ssBd0pQ5ionYtuuJrkkeGT/Sqks/rUU0lQpEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Non2BoMSGZisQGcDqDX68GAJtDt89o/Y1pHahHZtkpw=;
 b=X+Pgy7HsrlxmqBZPgpncJTWe3sMsJcg9P38yzQx6tewXqNsmemw+gJitnlFvnCfBVW
 ycaeWRiXYfDQJlhj9wlYAWrlglIP1nAbVRbkfVyrQsTRRV5s/5K/TwXBOWN3tQb6EI0w
 rjbt2vAZjhCaPDOYhkVcRQ3RNAPe619DT3NQf6qsyoIzI/2ER+wqmPEfAI0FRGwYu505
 NOdsUyQa7Z9KUQr7X8yd3SFf+ahmqro7y2Qu9NAXPyJgYz7AK2iFFJm9dGrdlWR3UEoE
 Z8Y9Q7/RFAMMrmD3CJu1CjkbpyLBSxtLS3tIWJK3S0hH5HO59Va7uZfYaqVqfOYKdeop
 j/oA==
X-Gm-Message-State: APjAAAXfyq5M/aAsofQwYee+Mjew5MuOkRxUMQMQtegUNhms100wysSj
 t5aw/NWDXUJgheacCqfzaBea3g==
X-Google-Smtp-Source: APXvYqw1QUf2Sqj4sT+KEQY5pTkiZm664fbyXbkXHmgQeP2NDpkJ5pMLTivt3XLzm0hRDnHdWl7B9g==
X-Received: by 2002:a17:902:7086:: with SMTP id
 z6mr11655193plk.196.1560530649787; 
 Fri, 14 Jun 2019 09:44:09 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.44.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:44:08 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH v2 7/9] dt-bindings: sun6i-dsi: Add R40 DPHY compatible (w/
 A31 fallback)
Date: Fri, 14 Jun 2019 22:13:22 +0530
Message-Id: <20190614164324.9427-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094411_512008_660BE2BA 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-sunxi@googlegroups.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI PHY controller on Allwinner R40 is similar
on the one on A31.

Add R40 compatible and append A31 compatible as fallback.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
index 438f1f999aeb..b7ad1be33008 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
@@ -40,6 +40,7 @@ Required properties:
   - compatible: value must be one of:
     * allwinner,sun6i-a31-mipi-dphy
     * allwinner,sun50i-a64-mipi-dphy, allwinner,sun6i-a31-mipi-dphy
+    * allwinner,sun8i-r40-mipi-dphy, allwinner,sun6i-a31-mipi-dphy
   - reg: base address and size of memory-mapped region
   - clocks: phandles to the clocks feeding the DSI encoder
     * bus: the DSI interface clock
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
