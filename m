Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6AB831D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DCBXmfJUu+CPO/lAOiZEt21xfc10bza2dK81YjWt+RM=; b=BLh02H4yflLtOv
	npd/evLGDmzVvAsu6Wmq9Otyb2dhM4DEekYfKYO1WZUhcZGUzxcwy/F2Y/KAfKFzEbS5C7QI6ulpZ
	0lCl69ellpthd0DCBuOFF5O4TnYrfQLi+XXeAKcwqOGrLiTDQSS+cs5rMfWgzOvnsQi1oO0HJ9yyu
	+nuo7UiSUI9lS5o1UXcYvvoVmfpMk67rXS1NbuhdRST7C0KEbGNpSh0XA/gBWHPvfS5HHNKZxNTEc
	SR7bzZXlV7SLnA50LPv1QDuIcyl+9FQg7+lEEbPTDniLyzqBtZYUPCpeG7MWE7SuaQMig7Cxm8cQ7
	qGUAq288js/ZBAeEGaJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyvd-0001ds-OM; Tue, 06 Aug 2019 12:51:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyvN-0001bH-F7
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:50:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id l2so76300925wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 05:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i8yW7mVu+nN03VbqETwhpsoLUtIU4YcLbfhs55o7BvE=;
 b=RTZRwX5lhpwBk5ffpnQxAAYx7/cLanVfmlliMxc8iNALHbRdTPbkXa73FiQngVF4k2
 gSR0nOfzERuCwqrzYPvSe6lQofqNqPqmAIDQYitxE/mLl6BCuiy1cQSaNQfPw+V/7ShZ
 tnjlpMi5kgAstEAkSvRTFWs3Te4PCbUIiafni+sBHmgX7jOygkvQuhor9CBfI3jXaA+N
 qYJFwoWghWxkSlGmDwY4Ooltorgm5bfc65AOpvepNg1wS1RCvbIZRmCj0LVKqLMy03cg
 NPYjcOmyId0MlWnqhIp2J1V6qUTGUTpSHrJDxbxu4lRlPJ82xwQBpdT2BHMDT5IF/ItJ
 fEOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i8yW7mVu+nN03VbqETwhpsoLUtIU4YcLbfhs55o7BvE=;
 b=IZn/vzuzpNwfVwMOFgv+lal2syv8HsuTiucCWwDJhhQ/CMQwp2msTHFXzsg5agIAJI
 b91/rWGoBtdfTeKB2nFjE/6EsUOXwVfuROU1mrIbYnyvAd/fn6GmxVfmYJPjs1nTOyk9
 vUBUlLg+WZz7TwF95fgg7LN4SOLe1E+zcxxlzbIFv8LoGIR1BCaq+60tkkITXiX2jeQY
 APnvDtYw12h8Njmj6b76VrBFsUHBUzsS5AId7SWllD0EfmFCPdbjVcduOi0CGUT/Xytn
 BHyoBtjdrpihAVP4BzNUg0Wt5PebL6MWND2OuZQZ3vihatbfd5b955jPCN/8HWAVbWGI
 rMZg==
X-Gm-Message-State: APjAAAU8lf2KsZVlkN3yMf3LEZiQxsTEEefo0CkcVZMJQ54UE42Pb5b/
 KztHN07kW3voXGE4xzPe0jU98A==
X-Google-Smtp-Source: APXvYqyO9qfySQufHv8FTPVAmHGN0v/i1YcTHeQd2dt7QxoS3vNu24XyzJhi5stC39e658qAYY58Sg==
X-Received: by 2002:a1c:3b02:: with SMTP id i2mr4611089wma.23.1565095843565;
 Tue, 06 Aug 2019 05:50:43 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id e3sm109049221wrs.37.2019.08.06.05.50.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 05:50:43 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH v2 0/2] dt-bindings: net: meson-dwmac: convert to yaml
Date: Tue,  6 Aug 2019 14:50:39 +0200
Message-Id: <20190806125041.16105-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_055045_501149_2A7E72BF 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchsets converts the Amlogic Meson DWMAC glue bindings over to
YAML schemas using the already converted dwmac bindings.

The first patch is needed because the Amlogic glue needs a supplementary
reg cell to access the DWMAC glue registers.

Neil Armstrong (2):
  dt-bindings: net: snps,dwmac: update reg minItems maxItems
  dt-bindings: net: meson-dwmac: convert to yaml

 .../bindings/net/amlogic,meson-dwmac.yaml     | 113 ++++++++++++++++++
 .../devicetree/bindings/net/meson-dwmac.txt   |  71 -----------
 .../devicetree/bindings/net/snps,dwmac.yaml   |   8 +-
 3 files changed, 120 insertions(+), 72 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/meson-dwmac.txt

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
