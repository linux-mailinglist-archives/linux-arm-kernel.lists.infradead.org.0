Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ACE142E40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 16:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7u0fykNATMYYFoOVBNmCgX4/CTSGKaCd0zYCPlMvB4w=; b=a/HNG8KWNH61cl
	6htEBD6b8HNLkLFRAXun4o7NhK9bECQKMlRf6N3IDLBR9qAgYIjv7FumO7E2Qy4HHxs//7SASf+sj
	EIwuISe7mnXEGqmMVTbt8z2w6l58HZYtEN+tLH02gW4UG4pXLR2ASSWZA021O56H1XDUXqpnF3cXK
	AJHxmztBeeti9tpvkuLQcIDtGvtfPccIVevuVIqsvRt0Q5txoTThlnlwwdb+XRiGb102gIWeavCPF
	GPn2pwktXXVve0Xbd7XJ28ILdHOr+kJti0X3pwyruOHAy9xwLe7FpqivqbivYfeCu06+SylkwUvr+
	oLXz11ZrxHySJxGTyLxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYYl-000287-P1; Mon, 20 Jan 2020 15:01:47 +0000
Received: from kross.rwserver.com ([69.13.37.146] helo=kross2019.rwserver.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1itYYZ-00026N-Eb
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 15:01:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by kross2019.rwserver.com (Postfix) with ESMTP id 3E1EBB3629;
 Mon, 20 Jan 2020 09:01:33 -0600 (CST)
Authentication-Results: kross2019.rwserver.com (amavisd-new);
 dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
 header.d=neuralgames.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=neuralgames.com;
 h=x-mailer:message-id:date:date:subject:subject:from:from; s=
 default; t=1579532490; x=1581346891; bh=dshgkKumJVS0zAqIIrcV+cw7
 enEW8iyIBXeKU3OU9w4=; b=kY+GPOBBbjAO2SEjaQm70ehoBqYzhl9zuqJcDvf9
 rZjYn0c8QmwPVNoZ13ejhQEWEEnhy4Kh5ot8OLH+v4A4uxbzILR/GUZ+2SXAfMJp
 Ie2Jt9n13YD3PsTv8s1wVAI0BzbzOf1+onms+kCrTQTe3ti050chJ2HoYxhOJn6F
 Yyg=
X-Virus-Scanned: Debian amavisd-new at kross2019.rwserver.com
Received: from kross2019.rwserver.com ([127.0.0.1])
 by localhost (kross2019.rwserver.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5l7g2zoo_9du; Mon, 20 Jan 2020 09:01:30 -0600 (CST)
Received: from localhost (ZT-GROUP-IN.bear1.Houston1.Level3.net [4.14.58.158])
 (Authenticated sender: linux@neuralgames.com)
 by kross2019.rwserver.com (Postfix) with ESMTPSA id 9F147B3628;
 Mon, 20 Jan 2020 09:01:30 -0600 (CST)
From: Oscar A Perez <linux@neuralgames.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Oscar A Perez <linux@neuralgames.com>, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] hwrng: Add support for ASPEED RNG
Date: Mon, 20 Jan 2020 15:01:08 +0000
Message-Id: <20200120150113.2565-1-linux@neuralgames.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_070135_623671_A583C105 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This minimal driver adds support for the Hardware Random Number Generator
that comes with the AST2400/AST2500/AST2600 SOCs from AspeedTech.

The HRNG on these SOCs uses Ring Oscillators working together to generate
a stream of random bits that can be read by the platform via a 32bit data
register.

Signed-off-by: Oscar A Perez <linux@neuralgames.com>
---
 .../devicetree/bindings/rng/aspeed-rng.yaml   | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rng/aspeed-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/aspeed-rng.yaml b/Documentation/devicetree/bindings/rng/aspeed-rng.yaml
new file mode 100644
index 000000000000..06070ebe1c33
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/aspeed-rng.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/rng/aspeed-rng.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+
+title: Bindings for Aspeed Hardware Random Number Generator
+
+
+maintainers:
+  - Oscar A Perez <linux@neuralgames.com>
+
+
+description: |
+  The HRNG on the AST2400/AST2500/AST2600 SOCs from AspeedTech  uses four Ring
+  Oscillators working together to generate a stream of random bits that can be
+  read by the platform via a 32bit data register every one microsecond.
+  All the platform has to do is to provide to the driver the 'quality' entropy
+  value, the  'mode' in which the combining  ROs will generate the  stream  of
+  random bits and, the 'period' value that is used as a wait-time between reads
+  from the 32bit data register.
+
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - aspeed,ast2400-rng
+              - aspeed,ast2500-rng
+              - aspeed,ast2600-rng
+
+
+  reg:
+    description:
+      Base address and length of the register set of this block.
+      Currently 'reg' must be eight bytes wide and 32-bit aligned.
+
+    maxItems: 1
+
+
+  period:
+    description:
+      Wait time in microseconds to be used between reads.
+      The RNG on these Aspeed SOCs generates 32bit of random data
+      every one microsecond. Choose between 1 and n microseconds.
+
+    maxItems: 1
+
+
+  mode:
+    description:
+      One of the eight modes in which the four internal ROs (Ring
+      Oscillators)  are combined to generate a stream  of random
+      bits. The default mode is seven which is the default method
+      of combining RO random bits on these Aspeed SOCs.
+
+    maxItems: 1
+
+
+  quality:
+    description:
+      Estimated number of bits of entropy per 1024 bits read from
+      the RNG.  Note that the default quality is zero which stops
+      this HRNG from automatically filling the kernel's entropy
+      pool with data.
+
+    maxItems: 1
+
+
+required:
+  - compatible
+  - reg
+  - period
+  - quality
+
+
+examples:
+  - |
+    rng: hwrng@1e6e2074 {
+         compatible = "aspeed,ast2500-rng";
+         reg = <0x1e6e2074 0x8>;
+         period = <4>;
+         quality = <128>;
+         mode = <0x7>;
+    };
+
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
