Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753AC75E95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWkiUAZPTRChGWD2nX8kTJI2Lmj4rqxhp5oEUtWWFQg=; b=cnC1cn7JDIu7xw
	IDvE1eyTi4nabV28BQfk1RsNWzHu/BxMYuIXrYa0O/gOnS+DrWs/alo8RsJ2dAgWfst6x8+sTRCM5
	b6e/HPQ+AStk2d+nCCgzeCgM15xKZaYOerIFzbTDXbRm4a+NpICccrAt1NwMAgDkOKAPAgLJmHU5K
	CdhPDqdHIYBnAmoSKdftmfo4mI28sxNWYtDl/QwJruj8NQ+9gORV3YdSANmPNN5N81ohGxAv390GY
	MsYBWRAxVdlMCvPs1er2y30k75mR8u0KhTUvUWvzLkrqFT3iG3PnvTcMeqkkESTBQsUGlrQYQuvBa
	s/63qjabUCGgUcHMmsfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt1m-0006KY-V1; Fri, 26 Jul 2019 05:44:27 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsy7-0003zj-7n
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 6B0D422131;
 Fri, 26 Jul 2019 01:40:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=when0qkXTHByR
 DowfQK5HCqanY/vJnQ/jMJsPByOs70=; b=a+CsVaRljZpVprqFBSgnzv1R850JX
 PCONSeS5+Ns5kCX0vf9uiRklR7xqNHVA8dCG5aWQ1wfFQ7M+V86wIKOaIT22hEXW
 P0ARVGiZR6OpJ7Rm9o+snxwiR307GmPLwOOSm8jcrRTXmIDOUwzUwwys83rP374M
 XKw1WxYNTj/dD87o2UKjyzcn+XTZp1pgV5u5kbA1slt+/z9j5htO9pLinfkdNE8N
 qH4F/8NtIVod//rxJCPYPjEZpdaARnqnz+Ucpkd4a6oi08IcmN/a7ML5kZ+tO16K
 oDz2XYJPx+VWcbNytfBQJQ1Oh/Vum4DHwaPDET1PXFZB6d7jVztfj6MXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=when0qkXTHByRDowfQK5HCqanY/vJnQ/jMJsPByOs70=; b=YpAITDH0
 YCCMpCLlYpIqhTuGOmwJDSUyHp8A8PfR6q3vnmHz6svTlYDvd93NitxgP43l9uUr
 gdDFE5S+qMhu6z68iHBNxSrNZmhZc46dlLY5HEP/MHkdYG6SzgCqm37NJ2+Kuy/p
 LtNT/VOPnMgNHUEcAy6lkEndVQlIeZe6GrvkLdnr6OHA2EqYXe3vGLc3LsmlqHuZ
 Y2mRkTl4J4KQZj1ISi9j5YcQeqVFD3a1MlCvP6BiNvbwczh79TVRugtRlEJSdu1w
 0eJ184nSGWeDU9lAJ6nBWHDibaG7Oq3Amqm3XTMS2aP4a7doD0JN+Bq/v0b5iGt6
 agct9Yw1VBaHYw==
X-ME-Sender: <xms:VpI6XSUyElCjY3qdtf00HZIAG_hSVIbO-u6z1VBshCUOWuiObz5I0A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeek
X-ME-Proxy: <xmx:VpI6XRJ4nPPL2gcdzB_nCByc1LTGBGOSJM3V6qBS4jfu3A_jPyhxxA>
 <xmx:VpI6XaAgNSFu9RngqpfdeMiKVW3-nLr0WUbbwuCaAvsR3K4w1vNQCw>
 <xmx:VpI6XZdZ-7-7Z8qAWQuK862fS9g8Ju22NEgkupI227yUg7mfPCbxsw>
 <xmx:VpI6XZImWUphZneqP7nvCHXjY8voYYEn7t4v53TCl2GLxSHVBh49hg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 02E35380074;
 Fri, 26 Jul 2019 01:40:34 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [RFC PATCH 10/17] dt-bindings: pinctrl: aspeed: Add reg property as a
 hint
Date: Fri, 26 Jul 2019 15:09:52 +0930
Message-Id: <20190726053959.2003-11-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224040_183956_FF1D0829 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
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
---
 .../devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml    | 3 +++
 .../devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml    | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
index 125599a2dc5e..629a55c167ae 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
@@ -25,6 +25,9 @@ properties:
     enum:
       - aspeed,ast2400-pinctrl
       - aspeed,g4-pinctrl
+  reg:
+    description: |
+      A hint for the memory regions associated with the pin-controller
 
 patternProperties:
   '^.*$':
diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
index 3e6d85318577..2e8971e23a02 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
@@ -25,6 +25,9 @@ properties:
     enum:
       - aspeed,ast2500-pinctrl
       - aspeed,g5-pinctrl
+  reg:
+    description: |
+      A hint for the memory regions associated with the pin-controller
   aspeed,external-nodes:
     minItems: 2
     maxItems: 2
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
