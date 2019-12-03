Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C8110FD09
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:03:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56hUrbZFY0shnewyoah0Fbn17n2hE9Ixbd9AkSzFtLo=; b=BymmzzGAEiAb7d
	c9R9t7fkXwSRYBJKQsWlbJ/bsnlLSUlde8teey+PUOr0NGwsfy0yc19T091CjGBoM6jDhMPLqm/o3
	CvtDtgEDg32jM+0ksBvvzOGZnCKIcJgFUB2JsZzqOfbcFB4YfYyrrqxG71FKQ/c2ju8ci1p55ySiH
	ymvOev35ZxkDrVi5gDuxOb8GKUOKweGQ+02B+jDWcQT6IvWVofnIL2Fkgqwg5zkz842AIfnwqCHfe
	DhBqEiaA5wf62uvhP2V4wNAVBi0TP5cJkGhVLNHN8Hz2mc3hr02mAOUnLgKXhBTn5K7K9A9h9F/3m
	4yxyXExH0DcQImeMldQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6tR-0000Zc-FU; Tue, 03 Dec 2019 12:03:01 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tG-0000YN-KP
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:02:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 4163E22387;
 Tue,  3 Dec 2019 07:02:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:02:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=HvGKvLGsejv5q
 6GtTUOtGOukBgIcidGBW9MonuS68ho=; b=ZhrnwV6uViMAZA7DE3VsRIv2y8sXN
 5hjKHMWJ5RYy9gvC9/tDa/mbWucW2WyxnS8FwW1AWnkdNLaDGfxda3KuB3/81y4j
 cW8JaWy0IOTZaho+6PeoguX7l0sgJbWlHwrEENGPUqTs15nzNG976FKax/nQXDBN
 VAgTCntkVjKE49ShbL/PZOuhzJ1EcpAFARviacyck2vqg4KHgnjYFTVTeHi3n+B9
 iPDYjLBMJRhIgH1Mx98lb2L0hADXmBQcimcoprWRN1SkT3BPAnzI5FaAJMoMPQ/B
 MXacJHmGEZuiIsNp2GA/1m+QVpVnJ/tb0BxCaJyjxEgFvexJ9TxI5LqFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=HvGKvLGsejv5q6GtTUOtGOukBgIcidGBW9MonuS68ho=; b=sl0EBSwP
 fgLfdNvtYWMq/0qrx0ZGOv27mt4dcztUaChUrZSERre07/ihve3kCbQCOjm3Voqk
 MRlo1nOvuXOveWhBPRLP03b86a8F+hNZjuL72+V7zau/vOzmvCfJGx8ShAD5lfUA
 f4zujIHv0dBHSZnocs88gc5oRZQ/rzDVwN3WkKUX7+8pocg9S4vfs3Mc0ievGkHL
 mEk071WC5LjbtQWZkI544+n+zDbtS+2t86TkFgLVZXZgRNbxuukVGtaScoiy3EHb
 rw83Ewf+/9xPZBonrbAhRnM5ipX3MKBRVx7bDjibtpVLn63sj+f3phhz/Qd8stkB
 KQZJ0JxpCFCTOQ==
X-ME-Sender: <xms:507mXXpS44J2E45MefSpX8tSikwu0lYlyK0wFrrO7Br3OmtqoYhWYw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:507mXRn7vMqPqPrN5DsJ7J780TPxURG48xFaDKotRxQJuBiqvk4kOg>
 <xmx:507mXfx9HFVOZVZ9rm2-i11nHBTD0drKeWLmkbEXfm3j-L84tyWUAg>
 <xmx:507mXf1gat-BVlWeMrbE2wx9uiqEqMZWk4cNFfU4RAGKjQGkbI1I-Q>
 <xmx:507mXWbxXFwHAE-iFS9J3-ByRyCdtVYORzJCkbx3s-aS0YvpX-dEYA>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id C0480306010D;
 Tue,  3 Dec 2019 07:02:43 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 01/14] dt-bindings: pinctrl: aspeed: Add reg property as a hint
Date: Tue,  3 Dec 2019 22:34:02 +1030
Message-Id: <b65a012a91b49352c0cdef01e8959a62537c8d76.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040251_100647_2FA288BE 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pinctrl node sits under a syscon device, and can assume offsets from
the base of the syscon based on the compatible. However, for devicetree
correctness allow a reg property to be specified, which an associated
driver may choose to use to discover associated resources.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-gpio@vger.kernel.org
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml | 3 +++
 Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
index 39ad8657d018..bb690e20c368 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
@@ -22,6 +22,9 @@ description: |+
 properties:
   compatible:
     const: aspeed,ast2400-pinctrl
+  reg:
+    description: |
+      A hint for the memory regions associated with the pin-controller
 
 patternProperties:
   '^.*$':
diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
index 3c6405be07ed..f7f5d57f2c9a 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
@@ -23,6 +23,9 @@ description: |+
 properties:
   compatible:
     const: aspeed,ast2500-pinctrl
+  reg:
+    description: |
+      A hint for the memory regions associated with the pin-controller
   aspeed,external-nodes:
     minItems: 2
     maxItems: 2
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
