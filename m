Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F03919B86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Et2XeeXOEMALc2AD3w2QLY/R9GMzfg7jQ15T+r1M0qo=; b=j8eAA2jEAx1koJ
	CAaRE6zryIWIcaa+Ragzd79baueAN6DO8CT236ygwydhUq9QWBIitA6iQtxTwTFhlcBsLrY5Pf8bG
	L5JWgzSwlOTCA4kFln+8cA99KbLTgd/CADq2YstmylWR7I9dFB3xE4tbBWP2yPqzXcwaC8+SOMcZJ
	aGGJUbf3ARODDtYr9/6fv/TZBdY8HptXU4cwe6pIecaRc/VquMEzQj3Jbv2xNzQB6H/7SqyMJKYtn
	JPpNWwO/tbVX5aJ1O5DNvWbcQ+fhyEymJ0fljdsrxeQ1GN9tw4YK5XIt0JPTyY4HFNM3SMhRVbssw
	bOoxrr2sUnwjkmJ6rHDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2hC-0002Pp-U7; Fri, 10 May 2019 10:24:06 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2gr-00022g-Qs
 for linux-arm-kernel@bombadil.infradead.org; Fri, 10 May 2019 10:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vwc1YfUtcojvhLFHHpCxjQw0m2BEKd7mFTY7Bja52pw=; b=sy/zIxvnwdSP/UFHboKJwnDz8D
 x1iKRZE8rRdO22d52sdv8sQ6mMaDARFbRQzPp4UiIzVtklhUJ5Z3ZGJvA7t1Xo+19q29FJ8eUFSSJ
 OCOCGzHBWXjcEoyovDgQIUawNjhwTKtxIyU5dP4GlIqvTqLk6cuXkWob6+ePAwmDwRdCSBjfp4ttl
 0FOBY0xXzf5grWDtzFb4ZuocgcanizvEP/ZoszV5LAVl0FdrY9cEHrwDiRAL8TiOQ1nEDuisZ6sXp
 iI8A9BUjQ6O7LA7EQNSPK/fgE+xzLrq9WOGI3QKOE+pqzMI+gebqwoTPP+BLRaXHJq2vZE7uugHl0
 mXxy3isQ==;
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2ZI-0004NF-Jj
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:15:59 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id D7C10891AE;
 Fri, 10 May 2019 22:15:40 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1557483340;
 bh=vwc1YfUtcojvhLFHHpCxjQw0m2BEKd7mFTY7Bja52pw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KJP+zxpR724yy88dudp+bMh4tPzOvNM7mrSj8K9sEsmWbgyM+vvmkmRMg6bnX8hVX
 y7+ayiSVkx+nUpyKLKR91mDesR9TKxZPp2RAV5/BaI5bb7ke8Uf6CvbjGsRoIYnuv1
 5fYB06h6vSAeRzMctUna9hCiDmBTfuJDSS1Qd2qubSq0HZ0O0NEIYiQAruMe9PW0WL
 098EHjlN434xQPLAX4nz7tI7PK3ZqgX9OcOrtPn+CJD9z3N4J2Bq0ELxmLgZSAgw67
 0lFAUywtE6sxR6U5T3zuwbUZddd9QVwqDxKXQNFMkU7Rn235wKcEmio77mddQOea7i
 OuDIOumkjVvsQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5cd54f4d0000>; Fri, 10 May 2019 22:15:41 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 2F7E113EF9D;
 Fri, 10 May 2019 22:15:40 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id B8CCB1E1D5B; Fri, 10 May 2019 22:15:39 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linux@armlinux.org.uk, bp@alien8.de, mark.rutland@arm.com,
 robh+dt@kernel.org, mchehab@kernel.org, james.morse@arm.com,
 jlu@pengutronix.de, gregory.clement@bootlin.com
Subject: [PATCH v8 5/9] dt-bindings: ARM: document marvell,ecc-enable binding
Date: Fri, 10 May 2019 22:15:32 +1200
Message-Id: <20190510101536.6724-6-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
References: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_111557_118161_2F2B4EAE 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for the marvell,ecc-enable properties which can be
used to enable ECC on the Marvell aurora cache.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes in v7:
    - remove marvell,ecc-disable
    Changes in v6:
    - new (split binding doc from implementation).

 Documentation/devicetree/bindings/arm/l2c2x0.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/l2c2x0.yaml b/Documentation/devicetree/bindings/arm/l2c2x0.yaml
index bfc5c185561c..913a8cd8b2c0 100644
--- a/Documentation/devicetree/bindings/arm/l2c2x0.yaml
+++ b/Documentation/devicetree/bindings/arm/l2c2x0.yaml
@@ -176,6 +176,10 @@ properties:
     description: disable parity checking on the L2 cache (L220 or PL310).
     type: boolean
 
+  marvell,ecc-enable:
+    description: enable ECC protection on the L2 cache
+    type: boolean
+
   arm,outer-sync-disable:
     description: disable the outer sync operation on the L2 cache.
       Some core tiles, especially ARM PB11MPCore have a faulty L220 cache that
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
