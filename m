Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529B61C2D92
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g450/U1urdL6E72Zxz7efkhAuTVrNdzDcHJvJaPABjA=; b=jDi7XkLjhdm1GfP/KrAsBWy4J3
	HYzCbR7mVvaEIUy6w09RsQFwBBaQ+aIc7kO32QZmqeo7yMavZDtYrFXa6SDjmb2Wo/qnK5pwfRSR+
	qgs9viWHeZ+LEHm+zb6R5ZpUKj3oajEfr9JCL3DoA4lMy/2l1++wm7Q1crVT1Y+Lq8HSKx5rqBCnl
	ZjRYK5zegvMJkTWRVOunKXgBNvvjBsuHTufxLZ6OsJ4gv177EFfwNA57fYvFlnloENTqjC9dNJRnR
	+64Bol8Rn0+MYpQCG6iV9uIe5Nqt8hyztTvJUNd+jTfUWA7KPec/8Lu3qOoBzF6B9wEoU4nsUZ3Ij
	YqK5VRQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGla-0002MQ-BG; Sun, 03 May 2020 15:42:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGlF-0002H8-8M
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:42:34 +0000
Received: from localhost.localdomain (unknown [157.51.190.160])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 276C3207DD;
 Sun,  3 May 2020 15:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588520552;
 bh=o8sRhaHgWPSPd3P6mFJsQFZFuiL8sjkixOve0V/XQ7Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ATJoA/U+2a4/VWsRvwZfgHEx0Yo+tJVM8MJ/kgIWWd2rtd6dt/bvLaIn15YJ1WS9i
 nVJC7tvOyD+ie19Rx3PGAUzHdON/esi4xr0/d9Szg8VDacW4HCKkvVu5gQC0WaOjoE
 CFi96PoNLl6iKI2QJJFoxbld+Li54c74ZBNHgce8=
From: mani@kernel.org
To: robh+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com
Subject: [PATCH v2 1/6] dt-bindings: Add vendor prefix for Shiratech Solutions
Date: Sun,  3 May 2020 21:12:10 +0530
Message-Id: <20200503154215.23654-2-mani@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200503154215.23654-1-mani@kernel.org>
References: <20200503154215.23654-1-mani@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_084233_330070_E388334B 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Manivannan Sadhasivam <mani@kernel.org>

This commit adds devicetree vendor prefix for Shiratech solutions,
a SOM/embedded board manufacturing company.

https://www.shiratech-solutions.com/

Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index e3f1b06d12ae..48ad8f954f33 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -902,6 +902,8 @@ patternProperties:
     description: Sharp Corporation
   "^shimafuji,.*":
     description: Shimafuji Electric, Inc.
+  "^shiratech,.*":
+    description: Shiratech Solutions
   "^si-en,.*":
     description: Si-En Technology Ltd.
   "^si-linux,.*":
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
