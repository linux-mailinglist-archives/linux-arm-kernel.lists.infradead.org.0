Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F401BE90B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CrbmgRjjarZWF9wZOfkOAezRU1hs8U1eYwliYbvpzpc=; b=Gd+a/RZKjp7tGF
	Id5RFUldzxtwV8QGE5H0Et9DzxKWoihJEhgg9u7wn8miIDS3AvjRo3G4Rdd/CS76+KK220AHgE9wJ
	5/YEQaP/BB4aQEx1LSEij/IhYcfwGnc+KJWIvqqcse5DCmytu0YcxHhPKuvP+5o9nNfd9dW5nUBHU
	+AYOzQlCLPpO/hZAmZT+q1jdsf8AhWD90wlTkrU125yajHEhcKgdhzbxQ9QQloeUl3j0/uUFH8wuP
	DnrXkBXxUNl7IY46WVAWYxjIeVUhplVDUlWlQblFWWzk0VD6BV8e+xh0O29kj1xwiKGwhIyYxrguQ
	4jdQ15BQb6xdRVWAMkeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtc3-0005Rx-JH; Wed, 29 Apr 2020 20:47:23 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtbW-00054U-H0
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:46:52 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:d397:940e:6b9e:3deb:3])
 by plaes.org (Postfix) with ESMTPSA id 8259C40020;
 Wed, 29 Apr 2020 20:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1588193178; bh=Rqs4HjYcziWdoELVeMyrIuXF1YyfE34PXc+elobZQps=;
 h=From:To:Cc:Subject:Date:From;
 b=hk/9t7lgfmJHTxXPfraMm8glNpLJjruhcgVLxCg+WeYERuAqjqsEgY4SBIrC2UgJg
 aMqL3gounEr6LZcNMNSXqtMlkkHoka0CH+yG0F8G7OjCdYB1qMHbSrHIwhE28coN6e
 oskYJmr734Hd7fm+p3ih2cj4TuZLklnnpyRLPrIe6vXifYU0/7n1GWQtQRwLpJnFIj
 BV5pGrKa3BL8TKh10ZjEQO8jqT1gP+oRvbPLDi306XjHb1xgGs8mqHKrkD77ASJ/TC
 idigqFGCLqhCyJVFcsxU+kjR2xD/3H/D0DM4cVbjkQuWGlmmwOqfVO+BRUfT+7JsB8
 aH5uFMc4SarWw==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 0/6] ARM: sunxi: Convert A20/A31 GMAC driver to use CCU
Date: Wed, 29 Apr 2020 23:46:06 +0300
Message-Id: <20200429204612.31883-1-plaes@plaes.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_134650_715850_FFBD1FD0 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Priit Laes <plaes@plaes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This serie converts Allwinner A20 and A31 GMAC driver to CCU
while still retaining compatibility with existing devicetrees.

This patchset touches 3 areas:
- sun7i and sun6i CCUs now set up regmap to allow dwmac-sunxi driver
to properly access the GMAC clock register.
- dwmac-sunxi can now handle syscon-based clock register to handle
clock itself.
- sun7i and sun6i devicetrees are converted to use the new syscon-based
access.

Changes since v1:
* Use CLK_OF_DECLARE_DRIVER to make it possible to probe again and set up
regmap using platform device probe.
* Clarify the meaning of "legacy" in dwmac-sunxi driver.
* Make sure we don't mess with the RX/TX delay settings when updating
clock registers.
* Update devicetree bindings
* Add sun6i-A31 support. (not tested due to lack of hardware)

Priit Laes (6):
  clk: sunxi-ng: a20: Register regmap for sun7i CCU
  clk: sunxi-ng: a31: Register regmap for sun6i CCU
  net: stmmac: dwmac-sunxi: Implement syscon-based clock handling
  dt-bindings: net: sun7i-gmac: Add syscon support
  ARM: dts: sun7i: Use syscon-based implementation for gmac
  ARM: dts: sun6i: Use syscon-based implementation for gmac

 .../net/allwinner,sun7i-a20-gmac.yaml         |  15 +-
 arch/arm/boot/dts/sun6i-a31.dtsi              |  35 +----
 arch/arm/boot/dts/sun7i-a20.dtsi              |  36 +----
 drivers/clk/sunxi-ng/ccu-sun4i-a10.c          |  60 +++++++-
 drivers/clk/sunxi-ng/ccu-sun6i-a31.c          |  60 +++++++-
 .../net/ethernet/stmicro/stmmac/dwmac-sunxi.c | 130 ++++++++++++++++--
 6 files changed, 258 insertions(+), 78 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
