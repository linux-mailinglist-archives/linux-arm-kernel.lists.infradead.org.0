Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EEC10432C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:20:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5C0yLvsSlruAndPicsrHxp1+u9M0pGrA4CpFxJgIQU=; b=eKvy5GCA1QDupL
	FrLlkhqeGVvhao3WTdz6Bph8NKGmzTxFXOildda6t6eVKkM+ocBgqV5aAB2yPbSbL2/u1CF2W5xLw
	PI2HlTnU4rMfEbTJPND9fHA4Mpka+XxkF5HtUCJM8D3NepbYSOxjU2Y7GztlBCBZeh+6faxSTZuem
	zxT638P84U8ehO2yJFgyQ/T1G+OeWWmjXu+vPEd/Hl0ouZFcpilFkjxxNB9kKip27vsDe3A2T7OEs
	RScURcVVe417ghmXGFZegjceN9Z3gSiG5ErR1XvyQyGT9pyJmvoZkNvCWCnV/0arXdWaT9fWKsLsd
	fSrK/nFaIddaK54HP62A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUaP-0005gg-OW; Wed, 20 Nov 2019 18:20:17 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUa5-0005dw-IF
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574273990;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=B1t/R73PXBi/xcZmdsHyecP+fHfXT1zfLtf97yMLTVQ=;
 b=mRaUzbnKkWzVZHjSwDZY8hxnaLAz0TW7+5bSideDlKGuLOnLTb82l138/eSfgFFigp
 qGyYJOs2oOlSrjJWkkfiYJeysIWMrc6HZ4fOVs3tuVKy/qjzclCUKFqBV5SC60qHZc2h
 6TCD/k1SNSQZ4sReWH40J808IdOziVKfEixX8kH7/tlOBHEhIrVe6zYmnIwxs3BIpASg
 tFxta4zYvzJjKSyvzFfZ07rRMK1goSf4nHOfZaCjxvZajxN3jwMRew5jiQYwfQr9w+vf
 KkVAh+l6sYx3IYToRUjhoMUrkQtbQidNdqVyRDPxdyd0gIyfre3eIBZmmrzCkmloKS9+
 6lUA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXs8Lvtn4="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAKIJlvAZ
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 20 Nov 2019 19:19:47 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 2/4] dt-bindings: vendor-prefixes: Deprecate "ste" and
 "st-ericsson"
Date: Wed, 20 Nov 2019 19:18:55 +0100
Message-Id: <20191120181857.97174-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120181857.97174-1-stephan@gerhold.net>
References: <20191120181857.97174-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_101957_766543_AD9BA8BA 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:3 listed in]
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

Until now, device tree bindings for ST-Ericsson have been added
inconsistently with one of 3 possible vendor prefixes.

"stericsson" is the most commonly used vendor prefix,
so deprecate "ste" and "st-ericsson".

Suggested-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
Changes in v2: new patch
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c9b0bab8ed23..490b5cc6b8e6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -907,10 +907,12 @@ patternProperties:
     description: Startek
   "^ste,.*":
     description: ST-Ericsson
+    deprecated: true
   "^stericsson,.*":
     description: ST-Ericsson
   "^st-ericsson,.*":
     description: ST-Ericsson
+    deprecated: true
   "^summit,.*":
     description: Summit microelectronics
   "^sunchip,.*":
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
