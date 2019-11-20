Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 516471039EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 13:19:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cbWB7Ybc8xZj7K/K6sxf5q1gxrVLQlaZPfGKN4cZGK0=; b=t2zVqTWEeJdCFB
	hemMKVsfZBGR9OFXFGWY61pxj44WnKt6rW3QI1UeZqVQi6X5XCqeNHnVV0KisE4WAymN1wd83Y40d
	xmul0EGk0vi75GRAWB1+q74i0Rhs4UQ9S4TKH44iZKrWpL51E89giKcpgjcLhN2nCxJ21E4+g6RJ0
	gxB1VaX7Okex+RekH++mBCFlxbMgyXtSmkUcdsW3j5mnDAdyVfGFy0U+WqjIS1R9TClvi/Rfv+Zh7
	87dRAt8VdXYka95phMd7cKFmZ265hDZ1HSDuA6bzZy7rz1y1F2iZQS/WYFxjGQrg/2icjiIy2/OU/
	7TuB9VDk1qD2O2k96DLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOxF-0003W5-HH; Wed, 20 Nov 2019 12:19:29 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOws-0003Ll-7e
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 12:19:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574252340;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=Dzh8SFoA3sNROsDXQ3RrtKvhSUXT8MqRPyWi4MJ3Gtc=;
 b=d7b7VXyTRKkHItDxIQEs3x4908+1SaQY/4chHJjUE4yDxPFEIyFHo8yQSSel4MYgUv
 VdlIhjQMeVtI9SRYm1f8T/pU8YLF3uNjgWH35NEqyq/aKYrM3GT6d8eAVrIjiQOXh4Xn
 fw2IevJUSmfHcz1gSW3k1l+NTk2KFpP6luLcCfB7WZMIQvJ5evizBivTP5GNzc27n/eA
 /hGbBnz6VS78ydZDlEvN9n3cWXnklCoEZaSzYTPVBa/7JN6x8uvySf17Z/0eR1dzsQrp
 STKF3a+XWvc6ScrULf1imFDB6zGF4HphsfccXe+tbCogAVPhpBEiSOSNmljLCgfKa3ez
 ausg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXs8Lvtn4="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAKCIusCI
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 20 Nov 2019 13:18:56 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add yet another for
 ST-Ericsson
Date: Wed, 20 Nov 2019 13:17:18 +0100
Message-Id: <20191120121720.72845-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_041906_870514_1F5A48F7 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unfortunately the vendor prefix for ST-Ericsson is used very
inconsistently. "ste," and "stericsson," are already documented,
but some things in the kernel use "st-ericsson," which is not
documented yet.

st-ericsson,u8500 is documented in bindings/arm/ux500/boards.txt,
and is used to match the machine code and the generic DT cpufreq
driver.

Add it to the list of vendor prefixes.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 967e78c5ec0a..c9b0bab8ed23 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -909,6 +909,8 @@ patternProperties:
     description: ST-Ericsson
   "^stericsson,.*":
     description: ST-Ericsson
+  "^st-ericsson,.*":
+    description: ST-Ericsson
   "^summit,.*":
     description: Summit microelectronics
   "^sunchip,.*":
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
