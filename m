Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B25116969
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:35:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+qqLNV2kKyz0AXl6/zaUM1zek3d4Y+5QGlp7jHCsU8I=; b=Twp+1QsabfP6a3
	iR1qj7D1frbbL45/kU7SmZXf4FKEXjzX1ZVyYWcLTUmohmAnHfk4ynNc9vrjvWUR5aKPW9n05X5u/
	hV1zIoxtldss9NxJsGXq5lqmgAZNk478yJ0PKpnZ8HUsqIYrQOpzrMeJnRm2EyGfQ+6dy+lXcGtKe
	K/kjMW/2V0vIDrav8Jg25sRk2tNDbADVoEvPdd5WddexDh0MuVJkb1UDHLMSYVB4sFAZlKTNTnvsh
	5ELUgA5kTWzAmsYdRmBbcKR70PPrJSjxFNU46d2+/g/FRgAkGAv6ZnRB/8xkGyuAM9tUjLIqUwW/f
	yI80cOufEegtJavSWWOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFRT-0007th-Hc; Mon, 09 Dec 2019 09:34:59 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFRH-0007rs-KC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:34:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id B87D22283F;
 Mon,  9 Dec 2019 04:34:46 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 09 Dec 2019 04:34:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=3mO1RRmUnAaSlAkrt54tKHrUx+
 M1Fqww5Jl4YKVu7Qs=; b=TyJIRtksI/5wFa2kv7dEtblFaCxc3nTZh4lROWA1/v
 p9Q9/5JqVRVQJfbex242y8G6y2Md13TiI1fjZm2tDmu3xp/um8munqFDWWDjPoLA
 PFxcW4JOLvZXtaj0XmsdQo7ZVFwgDFdb5ofE+Er+aRDWZKEt0rxQWmCjBYh6mILb
 78z6aLW02K5idgqqlQ1falZmJU/r6gn0aOXtT+Ehll9rSq/Qb64TC0p4dYPyhY02
 29PCZBwW7VG8R7ms3qTf1IvNe/QDgimg+xWXnRkzvRt6rHicMBhKlWQ01l9L9GZN
 s+F+3HaVGgaCwWOgQKIfFM46gcozxDKmxQHRV4zCpuXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=3mO1RRmUnAaSlAkrt
 54tKHrUx+M1Fqww5Jl4YKVu7Qs=; b=vLU8FDUudhxbb7kAVrGetuK/+NMr4KwDQ
 fElW2QCkRRXO4zI3JNsuTP55Oqw1GefjKoPvSfchNiFkiUjj8jNqRoWp/7+4xQLp
 ZHGeVsVG+6DZtn4wKlFu6LF4C3wfyjBRNL9YiBDj/Roh9GQZ6JpNMm5a+gWR1DdB
 LRlUHMnUiTxNF7xTO92PRGEVkKaycIakjvgVBCwFC2Bimol4ybz3dx1BxoBL06am
 4pAFQngMjzw1261h67b7G3mX8DK6qMK4L1mzay8PR0as3NSohxIRNTC4C2PymBCM
 p/s5WwUFQtPHRQuQhaxO8tM2BYHk6JIJNuS99zwPgcBqOwYWxMYEg==
X-ME-Sender: <xms:NhXuXTm2LKIoGo1rAzE9Qt3IK0uD8mLdv0W_d7X8HcOnyu7zdUuwAA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeltddgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcu
 tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrke
 elrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhn
 ohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:NhXuXSsbUH_OulYrJW-KXqcNjklVN9EPCoywjdv4VVXlmTs1wX7bHw>
 <xmx:NhXuXVIaPIzL5w12_HeYvqv3l-4QR_L6PAAligbe3txj8e1MzT3ozQ>
 <xmx:NhXuXfjKR2jzBX26er4x_xDmBA5rrmTYPevLmfcGmTCh6SFJSjTQhw>
 <xmx:NhXuXTwzGyzr6KqALU7336NjDj5O2Ww-POi8MoenDK7PGGX-ArguDw>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4D3408005B;
 Mon,  9 Dec 2019 04:34:46 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 1/4] dt-bindings: sram: Allow for the childs nodes to be
 called sections
Date: Mon,  9 Dec 2019 10:34:38 +0100
Message-Id: <20191209093441.50694-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_013447_825740_77D32F38 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, krzk@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The generic SRAM binding currently only allows for child nodes of an SRAM
to be called sram too. However, these are also called sections in a number
of device tree, which seems a bit more accurate.

Let's change the name pattern to allow both.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/sram/sram.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index ee2287a1b14d..83e3bc64d6fc 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -55,7 +55,7 @@ properties:
     type: boolean
 
 patternProperties:
-  "^([a-z]*-)?sram@[a-f0-9]+$":
+  "^([a-z]*-)?sram(-section)?@[a-f0-9]+$":
     type: object
     description:
       Each child of the sram node specifies a region of reserved memory.
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
