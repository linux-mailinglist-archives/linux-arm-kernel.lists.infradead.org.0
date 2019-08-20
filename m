Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5765958FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8HzREPo3rh14QacOm3U2QIXCTgGbzXPJ3FR3hpO2tKs=; b=EBWG9zeRcsbFsM
	A2hjQlBNFBSf6Uzsu5kN3uAtvQnm0+UOsvcKhkJEmJ98kxj+FCwAKgdXz7QobZr5/vDFk15WxxLi/
	aPc3zNC6f/4SSyzqIqTNUaBrl65gx/imL1Ewxko9z3nR4Sq6ynQ63apaxSpk4KDRAzYCpnI5mc4qT
	/RIp6aiMrzbjA/dXOdzYXqtOk4xVtPxmuFxL95RAqujdjaU8+upL/kBkONdKhtP0mbUeZM917KsCm
	sbsBRB9wphK+xEzPDOOncauXPZxDCgtxO9LqsjQJf26kBmrlsgwwfCacDYYB5GfeM1Q3/YQlmp0B7
	+qGe7jv8GTDfMOkSgAFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzz1o-0000IN-IE; Tue, 20 Aug 2019 07:58:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzz1b-0000Go-4x
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:57:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so11334957wrd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 00:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tchdtmk5F7h2SP8mzdRtJmsq+fYnHuGWtMSSIw89WGE=;
 b=QBVD7UH61GHuPXpXQft/phCUoJkwNJ8e6e3nCTfc/1NqFxhFr4j7SeAnWxYD0GG1eH
 FxbH5XW57kDWs3fnFMongqoQ1DlvaP2HEF+QwPAVQ/lQo5GFUKwp/SVwc4BFQeTPD30K
 o0Miqmc2rj+PSNaKUrMIA2jxslfSsGPhlViWXng4HVm9przmpP98RN6ezcruNCRjDdFs
 FIoIFAwbfyjYsS9y6w/9wA7wyz/s/Rtmx2PuomRK8+nMZRr9Ege32OHBeVjZ7cegbc/z
 vKkrszkEVli6JHEU2P4bj0/hG/Ov8R38U/z0nQYeqal47JFkGa9XWbk9pl/x0gSf+6B/
 IsrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Tchdtmk5F7h2SP8mzdRtJmsq+fYnHuGWtMSSIw89WGE=;
 b=tZ4iq1b88A0mdjm8sphPTgoh2QXMNABmiuERHCmp5SBe8K34grNLCBlJ1L5aClEhZQ
 PGKx/BocoL/xI5QvEyfFOEcihOxQL1mgsuCQLgH1KZxmSyV0Ql+133vhBLKDKz4dxWxA
 kk9J4WBty321KOYQ/wo4FDjeajAFqZRijFK+C+dEMa0MluirmzANl1jzwnpbnwmNcs+B
 oQvElMl0Qpdn1gqYRzQn8jV2B8Csl1+U9F88ZZoNRmyy1fLV13FDyb/GS2b0HIOWMyMG
 qasLZJZ783bUlYyov1Ab0PihBnw+fEpVdhjGTK1Qx0WTEANc2ZnUQnbR7ehPHP0gpi/K
 PHKQ==
X-Gm-Message-State: APjAAAU/tnOTqaism+OSvgXXJA5g4V+JqgvCgWpqZGVtkg6fYFMm2qW3
 83L08sktx+eVIL5WvICoTm5DFA==
X-Google-Smtp-Source: APXvYqz35DSpTf0iX8quJPKfw+8fSiZAcN4YJ2/eier/D7uQL2HGvfnfx43BsLej8/27j+Tkzhst0Q==
X-Received: by 2002:adf:dfc5:: with SMTP id q5mr33919384wrn.142.1566287869291; 
 Tue, 20 Aug 2019 00:57:49 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q24sm1506467wmc.3.2019.08.20.00.57.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 00:57:48 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: davem@davemloft.net,
	robh+dt@kernel.org
Subject: [PATCH net-next v4 0/2] dt-bindings: net: meson-dwmac: convert to yaml
Date: Tue, 20 Aug 2019 09:57:40 +0200
Message-Id: <20190820075742.14857-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_005751_196857_7BFB2695 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes since v3:
- Specified net-next target tree

Changes since v2:
- Added review tags
- Updated allwinner,sun7i-a20-gmac.yaml reg maxItems

Neil Armstrong (2):
  dt-bindings: net: snps,dwmac: update reg minItems maxItems
  dt-bindings: net: meson-dwmac: convert to yaml

 .../net/allwinner,sun7i-a20-gmac.yaml         |   3 +
 .../bindings/net/amlogic,meson-dwmac.yaml     | 113 ++++++++++++++++++
 .../devicetree/bindings/net/meson-dwmac.txt   |  71 -----------
 .../devicetree/bindings/net/snps,dwmac.yaml   |   8 +-
 4 files changed, 123 insertions(+), 72 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/meson-dwmac.txt

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
