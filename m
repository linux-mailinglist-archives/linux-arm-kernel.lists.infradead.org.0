Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7C810E5BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 07:13:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5unBIdpOB0MOftezWwqwly/N8p89lL7/JPEqW5NoKTU=; b=E4G4VG5oYx/P5a
	5zIXp1Z1CrHzDdw767ErTsd+xfPTpZVvViXEDa2vDcmjcQ2b8KmBtOR3hqI0m+ef8rIHW16feHn8j
	HEk7Dxa48tpRKTORUmhc18O9qwPNU92ncxyPOAJDVVYLmOHidruhmbUFzOk6++Xixmft8eH/iyZ+H
	UVou/ikYdvTfxD04NSnXmbghCwVQzLC1v78w43qWmjIgbsWgqb/nCwH81sVAgSGxEPEIvBGLNXtNl
	TAdaBEIor3EsDNrLOulPnTVP1l1W5GkzEaBBkscB3t4Kl81eipeOprgZKaMkId6ogh8RAyTHRCE9V
	hNzVN3ZqwVoAQm9KtQrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibexI-0003T7-Kh; Mon, 02 Dec 2019 06:13:08 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibex7-0003Rc-98
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 06:12:59 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id A005F224C7;
 Mon,  2 Dec 2019 01:12:52 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 02 Dec 2019 01:12:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=TtqabJhdBLFnu
 OzhCtXhhJk4fJG130v6hJIWHqb1EQQ=; b=A0t3yxpyK1QZDlhwwlJDWAtN2Y6f3
 xjWDT9pzsiFXm6vWFDIAvEBoJmHGtxUSj6Jjy/xKKmKQjPsEjTSvrocZYLXzIz0n
 6+7G3q3iVpby6bAAyTeBh/t/1uPq0NZxkeSfaLIj9Fb3ZGSpJ8AgrQ5pAIvfOA3s
 DZWSQC459aLA+4nfLolM1m2eTkPbEyWr7euJ6lqq+bhteVJTXxzAHYADx1bMw69Q
 Unqph5c3l6VoJd61HGa2R67BPbtSlXZJvwQcusHU3KlYjq5KmngYJOq/n3g+0lWD
 snwtfJwWp9R6zc8KUOBSvarfD41BmG+1Ap6wW56M8gh0JQWbGdbkenS2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=TtqabJhdBLFnuOzhCtXhhJk4fJG130v6hJIWHqb1EQQ=; b=bbB2Ya0t
 5Ee8PnvIejVToLi6cZG7XKpLMnuo2Kgx8ePZtBpikgeBpKmnJzGBI7GcCuGXEpvO
 +94arYPs7DU4qBOzyx8SHVWwcQOL3OnroGVPOdL7Et6RDgqIyJiMMDLCXyJCl3YX
 Q8pMhoLz2M104C9PzzlZ55RufL8Qnpk3V1XWCI65RHOeItNZ7ODaHj7g/w06gLMp
 5WGOx44WdMdd0sEbR97qFJy0gfwKWwcwTQ8GlTcUk6pGrqpQ/+Ej9quokg7xWkR3
 ThRVo/Rhi0GfJ/pTIug4zJ2Yf+FCTJ49+1LPd+uJj2zLyIbNtJ2sWzv9i3yv8dLb
 mJ2bN3ZMdbI4pw==
X-ME-Sender: <xms:ZKvkXYkA6ZuobEhyDPoDzfMkRsRvcpFuQ5hkI_Us22-c3YOz_fCZTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgleegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgeptd
X-ME-Proxy: <xmx:ZKvkXaxu_RSMEyiLLhJBwOmGpYqfXcjIZFuEiGSDJhxywLBj712D9Q>
 <xmx:ZKvkXe37rixxZhN8U2JKHoIPRNNnUC07jYMTE9qHyEYc_NQ8CALCKg>
 <xmx:ZKvkXTbWTZ7wJZ8FZcgyjyEcucH8_3D2ZnTlOO8qU79_4KLo-h8SSw>
 <xmx:ZKvkXY0OqYrJA8QdjNcbgYWC6d1rquTZqnEcQSif98uYu_wvTWgBnw>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6169880059;
 Mon,  2 Dec 2019 01:12:49 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: pinctrl: aspeed-g6: Add USB functions and
 groups
Date: Mon,  2 Dec 2019 16:44:26 +1030
Message-Id: <20191202061432.3996-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202061432.3996-1-andrew@aj.id.au>
References: <20191202061432.3996-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_221258_203446_A90B35DF 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-aspeed@lists.ozlabs.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2600 provides two USB ports (A and B) that expose various host,
device and HID functions.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 .../bindings/pinctrl/aspeed,ast2600-pinctrl.yaml         | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
index 064b7dfc4252..3749fa233e87 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
@@ -54,8 +54,9 @@ patternProperties:
               TACH10, TACH11, TACH12, TACH13, TACH14, TACH15, TACH2, TACH3,
               TACH4, TACH5, TACH6, TACH7, TACH8, TACH9, THRU0, THRU1, THRU2,
               THRU3, TXD1, TXD2, TXD3, TXD4, UART10, UART11, UART12, UART13,
-              UART6, UART7, UART8, UART9, VB, VGAHS, VGAVS, WDTRST1, WDTRST2,
-              WDTRST3, WDTRST4, ]
+              UART6, UART7, UART8, UART9, USBAD, USBADP, USB2AH, USB2AHP,
+              USB2BD, USB2BH, VB, VGAHS, VGAVS, WDTRST1, WDTRST2, WDTRST3,
+              WDTRST4, ]
         groups:
           allOf:
             - $ref: "/schemas/types.yaml#/definitions/string"
@@ -85,8 +86,8 @@ patternProperties:
               TACH10, TACH11, TACH12, TACH13, TACH14, TACH15, TACH2, TACH3,
               TACH4, TACH5, TACH6, TACH7, TACH8, TACH9, THRU0, THRU1, THRU2,
               THRU3, TXD1, TXD2, TXD3, TXD4, UART10, UART11, UART12G0,
-              UART12G1, UART13G0, UART13G1, UART6, UART7, UART8, UART9, VB,
-              VGAHS, VGAVS, WDTRST1, WDTRST2, WDTRST3, WDTRST4, ]
+              UART12G1, UART13G0, UART13G1, UART6, UART7, UART8, UART9, USBA,
+              USBB, VB, VGAHS, VGAVS, WDTRST1, WDTRST2, WDTRST3, WDTRST4, ]
 
 required:
   - compatible
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
