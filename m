Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD2C126ECD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:23:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WtB2RMLHztYrE/Yz35z2Wb8f8smJAzy545JIyJicsQQ=; b=DId0vUl/1a6xzw
	ov7lV6LMFDRjHVY88P8/Eytzoiuyfvlubg5j3HAvB4WM4K+jka7fz5QLLud/0Na1sh79SeYzwGhzc
	+EIMyQjCx5Dk+zPs2r+62408XHha2l9f9irNimFlNQj6jLFr0Mah7YO1mslIoOk5w6HKvwpsL1df4
	MNh2VvA09I8G6JAsAn0bW6VseiUoROr1aoimRWndcTPxp8bVLW2XsQAMwz365WDro+SB9YBvexECi
	fvUQvVgy1sVcZhJthxcaM/1v0IjFRXp3bRYtI1b3utbn4iNblLbuaI7los/M+ZKQtqJJ7sYhnEsUF
	6jQhAlYoEhsMl71xEDKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2KS-0000is-8u; Thu, 19 Dec 2019 20:23:24 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2Iy-0007ye-Do
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576786910;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Rg1wYXnRn/k+RIKPQ+i/0sUB5Vcf5b0Q6aPGnn8D5qM=;
 b=jha20T9eQeInG761dIIiKprPlt8JIyU780Vgxfzxnp5xNEek+wDKzgSxOxOZ5hiALf
 qB3T6qW87Zs4r1NBW2ds1D9xyxH05TBrkyODulKHiSqF5DSi/Jz4L5v0eIRwTrCfe/XA
 SNzIvFDbpHfZg9QY+u/M0VT0hiLiytVf8RlCpJKGOScPfiPaKgtgOyrIJx2xlUbGkxUp
 lbdXDoovQNya+3WbESDVxYfv4H2R5Fpap2jNqxkci5/BVuax6aItdg41HT0CXs4RWKso
 ExO48eZ+DkBrDZgoviCgh7WAd9eed74w6Mpw8QHIuDmajkRDYTffov7056+DPzA9bfF5
 dWog==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXtszvsxM1"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.1.1 AUTH)
 with ESMTPSA id f021e2vBJKLf3ZA
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 19 Dec 2019 21:21:41 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 3/9] dt-bindings: arm: ux500: Document samsung,
 golden compatible
Date: Thu, 19 Dec 2019 21:20:46 +0100
Message-Id: <20191219202052.19039-4-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
References: <20191219202052.19039-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122152_642226_6E1A817C 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:4 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Samsung Galaxy S III mini ("samsung-golden") can now boot
mainline Linux; document the samsung,golden compatible that is
used in its device tree.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 Documentation/devicetree/bindings/arm/ux500.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ux500.yaml b/Documentation/devicetree/bindings/arm/ux500.yaml
index 006cb4a5f331..accaee906050 100644
--- a/Documentation/devicetree/bindings/arm/ux500.yaml
+++ b/Documentation/devicetree/bindings/arm/ux500.yaml
@@ -29,3 +29,8 @@ properties:
         items:
           - const: calaosystems,snowball-a9500
           - const: st-ericsson,u9500
+
+      - description: Samsung Galaxy S III mini (GT-I8190)
+        items:
+          - const: samsung,golden
+          - const: st-ericsson,u8500
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
