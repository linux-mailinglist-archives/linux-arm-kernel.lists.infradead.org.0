Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE04A1C52A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZS0qt1hzNaoYv1OGTTPxNm1nNoWRr/8rJJWDEK8DRKg=; b=nrXy4jbjVlYWPg
	HMcygClgLnCxhiAl0BHdLX+w50NJQzdhVXY83klGWhcjxg/lay7tKSMHZSUFg6xejYGTHLCI+9pMF
	ClEFraJB//htMb1zr9MXSGvOI7nGIbuM+DfOlp56trIrzmmAqrJ0r4pzwNZ/dE4OTRnavvcYFxiiz
	pHittm5KHJp5CEN/Mq/vIepTwmw9rdfc3R2eLpu0RTXgZWhHkRezinEyUxjcN+LW6XuDJUyLNA9XO
	sfYxsrwIItgAPwfRs0y1bRZpK4U2XpP5wSOML6AHYVjKd42lvCegtyxd+xUxuNpXeNBNTu66qYN7M
	bUCj3Kj7+3ft/DcwVDfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuWP-0002oP-P8; Tue, 05 May 2020 10:09:53 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuWF-0002n6-KL
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:09:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 238115C00CB;
 Tue,  5 May 2020 06:09:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 05 May 2020 06:09:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=kxz6dVnKinrsF
 EyoSwmLmcaIKY2++Ip3fyKHn+I7HeI=; b=sWtGjDr00xMO3OAuhCR5Uf1uNS1mF
 XPcIoWSnz7UPFr6PjLuNQ5k2Q9Y/vRVTv6eX8p1ygcJHFcDbg44fhllqNp/z5Bjb
 Wgsszwhuvn4VuLvyNJkU/aRwVcSsrTaGCUB61mzQGMsVWnPWFZrtCluukXPk8r/t
 Z55wOneR/4iir9tmks/2gXZGV99SO8PhaCJIILshBL+jdDNpn46FkkHAOMnfk2+M
 8fOJGyD4Vw/A9aTFhIIQdyCdj0kvxMGT9C5uok9Kp1HMcuSzO86YTriCvywfZ6bS
 hCq0CjuZXLJ7EfSoAQkCc7camX10PoylIN4Yc62y7sjYu+QTpszmztBVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=kxz6dVnKinrsFEyoSwmLmcaIKY2++Ip3fyKHn+I7HeI=; b=RDd86n/8
 3kW/DV7CJTIvyUuPBfjEdW9pKE+GbJxN5/6/wZ2iyWoiHFVQfbNKkjr+3Q7CkY/c
 43Bwxw1k+GOWD1XmUK4wBpwtU7B1Kj62Thgqpx7733zJfiB+ddueptgno5FqyPQA
 u+CU8osIS+6KNRt4zKKMXFk+wy9XQVzdGPOr4i012eIJ9YprgkBQLv24MEJehkSp
 oRP54ki+GTjSLpED8q7Vrb7FusuUdTayts3eZPhzSkIfgBkY938zX1MITLwoUQz5
 PGy8VnVU2ej9sEbmqpXKdXSh8ivRlSxy7UxZaCRY61ADT9+0lf4S2at2TcnuW5BG
 UO0ZPG3jRqt+PA==
X-ME-Sender: <xms:ZjuxXvPQUZdGJG919kPZZ1pqbBkLp5LzBO5Bn_oZlBQYFu2qqFxgqg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeigddvgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
 vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ZjuxXkFnmWBEdc6k0orXS39qmuHXaH9qXVwcqMBQUHpzBptMkWY-mw>
 <xmx:ZjuxXv_l2lXsX7GF7PaYxC1BO-cAgvvGW1CkVkipPQTcPcQseWePbA>
 <xmx:ZjuxXibZJuSskFNhzb8jzgDlZV6eH3r1kcu8k_XtmfYGeCIReW4Zkg>
 <xmx:ZjuxXsT5TOfCa0Gcup5G2IoABNUx6Wkm7RLeXZZnzl7U0980Jraj1g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B149F328005D;
 Tue,  5 May 2020 06:09:41 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3 2/5] dt-bindings: display: sun8i-mixer: Allow for an iommu
 property
Date: Tue,  5 May 2020 12:09:31 +0200
Message-Id: <ef88e9d96eafe3f921cfbe087c5f0a25a5dd41ac.1588673353.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
References: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_030944_131991_2006F1E4 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The H6 mixer is attached to an IOMMU, so let's allow that property to be
set in the bindings.

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
