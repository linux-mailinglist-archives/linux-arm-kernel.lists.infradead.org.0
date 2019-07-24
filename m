Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E5C729AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqL3Wg2xHwvGG6h69nNZX7gbB9wgUALPM28N3sA+zxQ=; b=pewPCXQHG2A5ZJ
	IwsjthoyhifHiXn9zvZKjyYlsqHCDhHZ04dDjtc09WRrV/Slf8AMLnmmFHF43ULlH+pdSivykcY+S
	RCAm48Wz8bBYXMxDJdUeBg3RhJF/Krh7k8sb6BZ+ZP8Z6ZFxI0Qj44fGGyaLJ2IUKzqLcn+8B+9Wx
	8jguxprbPNp3G7cnTVNqAYEP/UmVo8S6OTvbVfinjFAw6ia694xtIzSVN7BylWXxTd5oXvzES6c+T
	2Ppptu+zGOhR28ODup/lFVcpM5uVaR4aMk/4o++LGAZn0L0i3tbUVRnGFF7udPMI/XJLge5qR54mV
	ZE1BkesHKXuBbtONi6FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCQB-0003uU-M8; Wed, 24 Jul 2019 08:14:48 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCOo-0003Ac-Vv
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:13:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 26E371315;
 Wed, 24 Jul 2019 04:13:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 24 Jul 2019 04:13:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=DN2+Lj8I7jFnN
 IMUgDd2QFBVg48TKo12C1rBwKfbzK4=; b=Q82/EoOGrisOx1VaTEyTN4D24J9MV
 tjZq/hIz1OnnTwifcqwuT1bz23TkKgZTy9kFDunatTy4ydSsPzGQ25ZQPBoAqxXH
 1xMxI6DCz/cXJlB98BHs6G5X/UN8ml4VR8lk8q5GoZTZdbpzUNJW2U/O3/YNQe1P
 A++Y6wym4Uj2+IZP8/eGyidNZHcPjLrjgA6PSdc8OgdQkJKJ8gkOOBUma7IRxziA
 S12PuTJr5JzIJ8zilGvJJNf214XrAvFJ5iZZV+ukc48ykw9iXJcx6aEJ1PlT+sbL
 qabn/ioVgIMze6JIGvwP1k/KyzqKBsYtDU37J4nuXCHdObWeFGTRCyjjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=DN2+Lj8I7jFnNIMUgDd2QFBVg48TKo12C1rBwKfbzK4=; b=nET6tHWd
 JJ96qY49c4Za0UAt5MieK0yfLHxga23nXgtOjq2zcHTfeWUy2g2iXisRNa56DtVT
 QRaccRzIveH3Rm9NgMSQO8f/dlhsoN2KhlDcg5pfQouSbDAxwvDuGNptP1I7v2X2
 H9EQIU4S6R/m7P8nxW58k9sgx6Se7GkRr2L0LM9XHrfXspvujomH4qEd22/wtvko
 bUo5saJ+DSm1ZSuqZFvYaq0OJKGbh6vfzl1P6hj1xJDN2A1BDvt0zQBGyzACtXLh
 KLaUFiO+lT//88ql8SU1HcvK2dsFXS1kElJru/anvTVvbHSsVqYF49HU+HJ8aHeC
 elVDEa7+FKUveg==
X-ME-Sender: <xms:IRM4XfRui1gp9DZ0fTXg2AcK9atTVynS1ByzllgFP4tl756yashxUg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrjeelgdduvdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 pedu
X-ME-Proxy: <xmx:IRM4XZUom8hNEXdsDaO_Pl0qrubtZCQ2uD4ROZrk6eMgH_u9rXu2dg>
 <xmx:IRM4XcnhiaevzQ-p6Kt2uYSDafesBSnp2jzbrADrBn-8OvY7Cr7xhQ>
 <xmx:IRM4XX8dtMO-jIft6q_Qjsu2EmlWsbmS0SfdooGG5djvIEtWYP6b6A>
 <xmx:IhM4XYLdsVgbWmJdVA2xzX5CefS3r9d7WaciF8TjGNXSdHWzTFavUg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6A32680059;
 Wed, 24 Jul 2019 04:13:18 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 3/3] dt-bindings: aspeed: Remove mention of deprecated
 compatibles
Date: Wed, 24 Jul 2019 17:43:13 +0930
Message-Id: <20190724081313.12934-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724081313.12934-1-andrew@aj.id.au>
References: <20190724081313.12934-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_011323_392144_1092E6B7 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guide readers away from using the aspeed,g[45].* compatible patterns.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 Documentation/devicetree/bindings/mfd/aspeed-scu.txt         | 2 --
 Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt   | 2 --
 .../devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml  | 5 +----
 .../devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml  | 4 +---
 4 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/aspeed-scu.txt b/Documentation/devicetree/bindings/mfd/aspeed-scu.txt
index ce8cf0ec6279..4d92c0bb6687 100644
--- a/Documentation/devicetree/bindings/mfd/aspeed-scu.txt
+++ b/Documentation/devicetree/bindings/mfd/aspeed-scu.txt
@@ -4,9 +4,7 @@ configuring elements such as clocks, pinmux, and reset.
 Required properties:
 - compatible:	One of:
 		"aspeed,ast2400-scu", "syscon", "simple-mfd"
-		"aspeed,g4-scu", "syscon", "simple-mfd"
 		"aspeed,ast2500-scu", "syscon", "simple-mfd"
-		"aspeed,g5-scu", "syscon", "simple-mfd"
 
 - reg:		contains the offset and length of the SCU memory region
 - #clock-cells: should be set to <1> - the system controller is also a
diff --git a/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt b/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt
index 854bd67ffec6..0e1fa5bc6a30 100644
--- a/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt
+++ b/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt
@@ -26,9 +26,7 @@ property:
 
 - compatible : Should be one of the following:
 		"aspeed,ast2400-scu", "syscon", "simple-mfd"
-		"aspeed,g4-scu", "syscon", "simple-mfd"
 		"aspeed,ast2500-scu", "syscon", "simple-mfd"
-		"aspeed,g5-scu", "syscon", "simple-mfd"
 
 Example
 ===================
diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
index 125599a2dc5e..9368e4b6d4d0 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
@@ -15,16 +15,13 @@ description: |+
 
   - compatible:     Should be one of the following:
                     "aspeed,ast2400-scu", "syscon", "simple-mfd"
-                    "aspeed,g4-scu", "syscon", "simple-mfd"
 
   Refer to the the bindings described in
   Documentation/devicetree/bindings/mfd/syscon.txt
 
 properties:
   compatible:
-    enum:
-      - aspeed,ast2400-pinctrl
-      - aspeed,g4-pinctrl
+    const: aspeed,ast2400-pinctrl
 
 patternProperties:
   '^.*$':
diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
index 3e6d85318577..939fb755a6db 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
@@ -22,9 +22,7 @@ description: |+
 
 properties:
   compatible:
-    enum:
-      - aspeed,ast2500-pinctrl
-      - aspeed,g5-pinctrl
+    const: aspeed,ast2500-pinctrl
   aspeed,external-nodes:
     minItems: 2
     maxItems: 2
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
