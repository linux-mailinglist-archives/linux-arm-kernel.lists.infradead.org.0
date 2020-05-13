Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085C11D1715
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4RK2xTb0iZjwUJ9HWtJDHuIMfslTEIuZ5trhJaQAxc=; b=sylYLUMbyUWkbx
	qYGlBQB9rm5rVMfPPbCQrNYSOkOWNPW5lRF2u7ISbLTaaxawy09BceX8mg/S+1ZG+dcqLA5jjTHZF
	TlaOHJCtzy2SCplPx2MScLDpWmw9tGbDozGvrCRtfnwst1W3B5BHdBcbn3d+iOxi5KPBadGhUammD
	ummQAvnYIzKDzYjj0mkrUjf68qTX0IrfChv8H/gBQwuW+a6m/GoeK1k7egwYolcfW7rcJmJnpp3jV
	tFKsdN8KbWNQcgYGaFlVDqK3sMnN9btO6JPJwojsgdIj2dnwAZ0QDxuD9b1vNVLEJaMuQKnHrjqLO
	3FRESb7fumk8Z/+8tKFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYs3I-0005AA-MY; Wed, 13 May 2020 14:08:04 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYs2n-0004xN-DT
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:07:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BA4485802AE;
 Wed, 13 May 2020 10:07:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 13 May 2020 10:07:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=b/ssnOsTjUq2R
 zP/XjI8iXE51bGs8OKIIZRLrDvrIL4=; b=JimAHOWAf8Zvovx+Me9X3M6GHlEk8
 o2doqTBycrlQj6hRRLkVD1H2VEzCGRpIeW8m9GaJmZ2rgFMUrkwPvEl7miIK6QKr
 M4T/hZ/Alov7ipTRt0hsNoW6TAVFBBaABsWkaw2rxiyl9Cpy+vIG813y7WK8bDJn
 fVWTGB6NFbFQM5S1IpH1GvlgP7BpRt8efuID+3t0fLcnVG0vBFe8Dlr4IzWLI634
 5rHEJAPRgFjAckb7r9o0Qnskl4o0gaJopb10ndSCgP+uRoFLNeUMA7O7j9n2Bo/o
 gb/YLHe4rfloCkC7PiQkOSJLsFEoZer+4eTTsmtkyAT09djew7WOshMxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=b/ssnOsTjUq2RzP/XjI8iXE51bGs8OKIIZRLrDvrIL4=; b=RmkUne46
 PZZBfpur1zHaRZzp2Kl/I8F7p6FLCr/ENc/Dob0Td7HkIvi4G1Vr6luEde1K6V1I
 kqjeDwq++Xo9eGY1bmPqa9f7yrJ/VAbT+mxEEmPgLIR7qRDRCO/+0Bl2jGQfzalD
 EYsUgQzxyB5mFnsYV6OJlA8EdD1Y9A7Vad95aVvaHZuwEbd78lt/mNN5s/7DkfTI
 bByWlH+os5Dcoi+JodWp0e/r5pWtfMh/XhtNStu53fcRCtSLm/NfUEIQTRamsuoZ
 PZ4LXqpC8NCdlfHAOA8NEtDowAwxSK2gHDK8TlJ5deVurp00aQmajnybs4xMKV6S
 T83yeFjELqcJng==
X-ME-Sender: <xms:JP-7XuuQn-PDaGEJFoRwNen8quhkea4xU68KVJxJahq4HuqL3DMT3Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdejvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
 vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:JP-7XjfyvfF__tsugRhtoVMIE6ncCHOgJHiOJZiWquFwJXnrNXGtAQ>
 <xmx:JP-7XpzjkYls_53y6mCA0vZhnFOYIM8q3_VtJAkQ7p0enZhW4mxH3w>
 <xmx:JP-7XpN9TwZL6ldZnp8vm4lyh9JfEyAU-4VxqmMdmNQpARbsq1WzDA>
 <xmx:JP-7XjN4dDAdypIxEhoHMAK8kf9exfHuSUFirRtKY1YfvBqP123cZg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1A2533280060;
 Wed, 13 May 2020 10:07:31 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v4 2/5] dt-bindings: display: sun8i-mixer: Allow for an iommu
 property
Date: Wed, 13 May 2020 16:07:21 +0200
Message-Id: <7941e0c02794e6336da75fcac950ecd43be7fd97.1589378833.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
References: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070733_591200_450FF51E 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.229 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The H6 mixer is attached to an IOMMU, so let's allow that property to be
set in the bindings.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
index 1dee641e3ea1..c040eef56518 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
@@ -36,6 +36,9 @@ properties:
       - const: bus
       - const: mod
 
+  iommus:
+    maxItems: 1
+
   resets:
     maxItems: 1
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
