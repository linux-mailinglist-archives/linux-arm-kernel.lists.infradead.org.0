Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ACF1039EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 13:19:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leRlUADcG+qqLWAKiF0WPVrVfco5k+2P9sY+wzRXvto=; b=TDrV79Vd6ImmXt
	xqbYbKnK/Lg9VYkFknwlcxJ1k/td3hTCxTdKrmXmjDtMGWoLs5/zGVABfG0SUCvs5oHKw5gYrXkQa
	KDuP2tPNo5RKGXaHebPypznqBwfe9e0PnT6xrptwBBfifiG2UNy2CFtwAnAUWagsXnXiU4PPx54yG
	x16l/TInMS/qbx3V5mKGdg5xvcw66DkZguXS+pQrirJcVQYlOixVPjHvAxQVwifes8u9B4MSE0ysd
	ChE945frxCI4tAyuBmPXADU5VE9V2/ega3ZcAzmVzDtpV7K8smpGGiYXa9EcXH1VCg4C2TEJ7EE5J
	e+wA5wSDS6Knh6GdaDhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOx2-0003NP-7i; Wed, 20 Nov 2019 12:19:16 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOws-0003Lm-Aq
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 12:19:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574252340;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=8bNbmxi3KvdKXR9c7NN+7STy6Idi0+mrpOteADbs+zU=;
 b=KD2ExH/2XcAgr+Cc2kud6VqUKfFgPkf7UYQHAGuB4qBTMpHFVLdKh/ekrMKhKD44w0
 rFwCgNVhhY7kJcYEdBhZpMgt60XsaHbu9mwFrxBqDkP4f1Y8bWZVE9mnflQqXIxhERhn
 /CpNtOxS/ILONJVQm74ImUHxC8kr3+rPC0Vn+ok345VA+iAoVfSyYUQC0i7k6owahDyi
 2hq6IcXMh5Zwa+Ypl1AvRrNEoyqr9E3kOfrUvMMfd7y4f1uEQnv/yMccnHBLeFeNeH+Q
 c3z7IlFoQ1bDoS3N85eJ3DZrrE7vyX7GAD/65lKnwnFWeVlQewXrJ74dOukE0xhOmB3I
 R0Fw==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXs8Lvtn4="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAKCIvsCJ
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 20 Nov 2019 13:18:57 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/3] dt-bindings: vendor-prefixes: Add "calaosystems" for
 CALAO Systems SAS
Date: Wed, 20 Nov 2019 13:17:19 +0100
Message-Id: <20191120121720.72845-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120121720.72845-1-stephan@gerhold.net>
References: <20191120121720.72845-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_041906_870260_54DCFE1F 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:12 listed in]
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

The Snowball SBC supported by arch/arm/boot/dts/ste-snowball.dts
was made by CALAO Systems and uses the "calaosystems,snowball-a9500"
compatible. Prepare for documenting the compatible by adding
"calaosystems" to the list of vendor prefixes.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c9b0bab8ed23..cfc3376309b9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -157,6 +157,8 @@ patternProperties:
     description: B&R Industrial Automation GmbH
   "^bticino,.*":
     description: Bticino International
+  "^calaosystems,.*":
+    description: CALAO Systems SAS
   "^calxeda,.*":
     description: Calxeda
   "^capella,.*":
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
