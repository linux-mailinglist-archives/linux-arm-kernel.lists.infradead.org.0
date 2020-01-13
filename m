Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD06A138A6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:50:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuiInWm0kzOYdWvn0Sl0ngUVG9Mvs6Xed8bKe2sRSp4=; b=LnnOkTNuGx4gKI
	GIt81iMfcZBir2fBw1BSLnQKXCHjxoTGDpXXpKgFOqaqxs08Vqxzv/hmcLjAY2yr4h4NI55yhwhj0
	E/gXAMq7XtXtgNdD5CaNIvOXir9YLZwGuyTEyFOMgt/ioimZWuJ7Y6qvwRIUcgUjZJsbk/GKR8fKj
	HQRMGoHUVOn/Ebbd2pfUSXqjlN3kgxwRMmz61VNyf4cms6NITe90FYer0MNk+9gVKalz0vLljNS9P
	zgevUfx0ETThqxf/IWtIYXDXN8nIGNVQiKaBSR6SqMT0Kone15QhG/afzWuxiiBmv92b1qSdhXU7v
	ycy4kSN0jYhVrQHFaD6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqrgY-0001sg-Rw; Mon, 13 Jan 2020 04:50:42 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqrff-0000AK-S2
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:49:50 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 833CF6286;
 Sun, 12 Jan 2020 23:49:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 12 Jan 2020 23:49:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=9YxF7o4BldhI8
 e6OFwdV3KAX/NNXrRs/YnHG4TVAwOU=; b=QsXbABDHTOUoyn5fVsU+1XAwDOjfm
 Saivg0ZnDPqoS28joUVuq0PHiJrI7oecGFMSRYMKtzI0s10+uLnNo+QqsBsBOE/l
 K7Y8TlwTiiuopj8zW5F7HLh/aTkMjJb6ZeVLIfgEFag00+y4anOUK7BUDsjrbEbN
 oMlvzrq90p5BcYEohB4vR9tSqZa0u35kscTyrAYbYS9Ct+fG3kE9YzPuX8CKAa3p
 qMukJL25zZqh4/Z3ZEw4MAHzAX3Z96kwyKasM3Gd7J5FJQ6lKPD99n3gUOCgE5CA
 pvu0PefzTvFJS7o0a1lL5TOJomqh31+he8zZ09nBR4Rz2jxyB5wZnFs/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=9YxF7o4BldhI8e6OFwdV3KAX/NNXrRs/YnHG4TVAwOU=; b=iaa1lIeE
 F35Mfv3kjGfQE1lNgnkNRAsD+NAeo2OfPBNDUsJbD27J1xBfN7iNSrQB4N0rCxyf
 YI7i+yad0bLMR+E3B/adDwlxRDiKOkDycmtYmntmbkOoPc6ACCz2b6darUVWEnbp
 BpLEKjong1C+b2324f+OCuBNlQFkVqYC2yAsijGQfLoMiXPaXkgwjxeOIpHTIF1L
 8C6y34Y+AgZ7K6W3apxcETgQFfWwruIDc0EBYM6WkBdD4v6ULIv4GDTmCPAYmPZn
 34/mZMBj08bzo3RKIcvZAsw3H7VCoRk1qsov97IY+KAk2SVksI207RA9++fb4POT
 PIyZtN/V0WkoOA==
X-ME-Sender: <xms:4_YbXvUPBNuGmdaxYZFpBKwzv6fvphF6dC9iX4W_173bhsn2izPGIg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:4_YbXl-EBWqpz8_sC8YyUZsJOtjvbRYvGf_fW6GizEXXshqdu-Lh0w>
 <xmx:4_YbXjfC6tVkI4bXcs5oEyF8gj8rTP72KzH3n4cqBr6URqHLeXbKag>
 <xmx:4_YbXvibB7Tq2qjcdo_6G0Q6q8JB1JjqUMAcgkAxvUnTPuaoIHOe5Q>
 <xmx:4_YbXktKn8pkeOZg3618L_HAxYOKxfsPzM8xW4d0voaQyOsq1MqQ_g>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id C46F930607BE;
 Sun, 12 Jan 2020 23:49:38 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 3/9] dt-bindings: irq: Add a compatible for the H3 R_INTC
Date: Sun, 12 Jan 2020 22:49:30 -0600
Message-Id: <20200113044936.26038-4-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113044936.26038-1-samuel@sholland.org>
References: <20200113044936.26038-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_204948_052221_1FF0F9B1 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner H3 SoC contains an R_INTC that is, as far as we know,
compatible with the R_INTC present in other sun8i/sun50i SoCs starting
with the A31. Since the R_INTC hardware is undocumented, introduce a new
compatible for the R_INTC variant in this SoC, in case there turns out
to be some difference.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
index 0eccf5551786..fffffcd0eea3 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
@@ -29,6 +29,9 @@ properties:
       - items:
         - const: allwinner,sun8i-a83t-r-intc
         - const: allwinner,sun6i-a31-r-intc
+      - items:
+        - const: allwinner,sun8i-h3-r-intc
+        - const: allwinner,sun6i-a31-r-intc
       - const: allwinner,sun9i-a80-sc-nmi
       - items:
         - const: allwinner,sun50i-a64-r-intc
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
