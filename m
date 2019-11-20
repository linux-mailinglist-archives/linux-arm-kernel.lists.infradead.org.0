Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB32F1031FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtN7oV5+oWLBoj38sHwqC57oTb711lpT2nCYlAJBXxI=; b=lLaDxjF44G7hOg
	QIPQvGPMWq2Wm4ANRnhKB8Q5dasduFLRQHTf9Bh8aIkui+GYdFY5l9mlXRLTYuOdRH3P7+3jtI3vx
	pz4Z1grebSmvBDs8eOQwTwdLq+n4Q0O4MotxAoEn2fe8sflfF7sAuRCAqal73KwmsiZVzKXj+N+6n
	ogsCdKXmtsMfHlXqD0Lc58ZA/9tOOE1LrvyZKrUkvtyLirih3gXrSld0tGHSEqUgDssen10acv0ni
	kg+kGKew4QkwXZ3rtN/XuSZjN0Dp4zK1JwVOJAoE0wlgqy8vMeV01K6qXTT7L5saHokRo/MH9Zk4w
	xuXKjIAuqWnuC9xw9atw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXGXN-00057Z-BL; Wed, 20 Nov 2019 03:20:13 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXGX8-00056q-Eo; Wed, 20 Nov 2019 03:19:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574219795; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=BpjWrV94yGBTXFWbbdxFHjxmAm8D9PMwse96A0QAyOXhcxoCS3EFHC4RLDkzT5fjVgWGzQS+89EO/XqkqV3Zf7w4OLJUJXoCJr4EzdSsrAyvwobPdFkN/w0G9lDz9Gh4PyIQ2RS544KQt15d9Z9ZajPfhOmgrTfEt2mXxi527fg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574219795;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=hUM9b+dswT9UPWGlwBwCNyrp4zRDfMTZRh5LuHt9eB0=; 
 b=RJpQYP6XmffOYPpCLiiielT1JXzEKudU4xMENecGYWvMEqZx64IlLXKZgvqPb4er8fpHQ2AZ64n0Pkd+mU2ObizN3THucxM0vqNekNOoa17BmmS6Ak4rO8XcAQPYG0AMQCex77fYTFjqeg92KOyrSAuT3DvQbnC0/FLm07QWYFs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574219795; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=1694; bh=hUM9b+dswT9UPWGlwBwCNyrp4zRDfMTZRh5LuHt9eB0=;
 b=NUsCEu3m2VD2aRVon4jt5dm6oAxDZHk9Yjr2uODkCgJ38hUoqLq7v9i1MR6rYBLe
 zGMHybZ9vSep+yuuiAi4yHQsgocHApFByNyDEEJHOBlcpIW/8A1w5xrzYJAuY6CA1o5
 S+fAHdgKU/WF2QpeN5CyjogDciPe8iMPJ5kIRwwo=
Received: from localhost (c-98-207-184-40.hsd1.ca.comcast.net [98.207.184.40])
 by mx.zohomail.com with SMTPS id 1574219794570904.3468110611888;
 Tue, 19 Nov 2019 19:16:34 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191120031622.88949-4-stephen@brennan.io>
Subject: [PATCH v3 3/4] ARM: dts: bcm2835: Move rng definition to common
 location
Date: Tue, 19 Nov 2019 19:16:21 -0800
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120031622.88949-1-stephen@brennan.io>
References: <20191120031622.88949-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_191958_545853_6A32C7DC 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Matt Mackall <mpm@selenic.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM2711 inherits from BCM283X, but has an incompatible HWRNG. Move this
node to bcm2835-common.dtsi, so that BCM2711 can define its own.

Signed-off-by: Stephen Brennan <stephen@brennan.io>
---

Changes in v3:
- moved the bcm2835 rng into bcm2835-common.dtsi rather than a new file
- split out enabling rng on bcm2711 into its own patch

 arch/arm/boot/dts/bcm2835-common.dtsi | 6 ++++++
 arch/arm/boot/dts/bcm283x.dtsi        | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
index fe1ab40c7f22..2b1d9d4c0cde 100644
--- a/arch/arm/boot/dts/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -70,6 +70,12 @@ pm: watchdog@7e100000 {
 			system-power-controller;
 		};
 
+		rng@7e104000 {
+			compatible = "brcm,bcm2835-rng";
+			reg = <0x7e104000 0x10>;
+			interrupts = <2 29>;
+		};
+
 		pixelvalve@7e206000 {
 			compatible = "brcm,bcm2835-pixelvalve0";
 			reg = <0x7e206000 0x100>;
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 3caaa57eb6c8..5219339fc27c 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -84,12 +84,6 @@ clocks: cprman@7e101000 {
 				<&dsi1 0>, <&dsi1 1>, <&dsi1 2>;
 		};
 
-		rng@7e104000 {
-			compatible = "brcm,bcm2835-rng";
-			reg = <0x7e104000 0x10>;
-			interrupts = <2 29>;
-		};
-
 		mailbox: mailbox@7e00b880 {
 			compatible = "brcm,bcm2835-mbox";
 			reg = <0x7e00b880 0x40>;
-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
