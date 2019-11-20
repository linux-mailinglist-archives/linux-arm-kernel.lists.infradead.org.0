Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB47103202
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:20:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rhbtJPX6vXycxr7yqc+9B1sRV1WKCRyzTjzidExQFk=; b=At08crObzkmSty
	vIiZ4sA8h+kSOu5bjRoYOh2lF76MlK70QZAlQ3I/DnOH3VOpxCMqyalUBRpPTC6fFhwzxv59a4pCi
	myeYiDSta6sJg4kdIvwAeAdk7qJd8cFhRxEd+ho7FMAc6zNEVfSv6j7vPn+D37S3NPwFnJuOuwKG3
	s2aHhxQ2vSTEf7zA4xNYrB94kiXrWFrsAT/mc0GUjfdYjAyZ5qjYT/aYqTeAVcHH1LDHboyPIz5cE
	ZxWc/QlYG2LrtSFiGMYFSBv6QwJ58D7iSBNn2EWznxk81lGV5pBXSOOCty0J7azbJ0QOKKWXEfycj
	O0FAUnRbHSBTcZNtPZ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXGXb-0006d5-3C; Wed, 20 Nov 2019 03:20:27 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXGXU-0006c7-2D; Wed, 20 Nov 2019 03:20:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574219797; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=MJqYY4klgG6JsagsSo7sKKSS+LgL644mpWpkTc9t7F6khmj3fD0q95+ydAe51Uip2GaPu2ORppSLonc4rLIXFP4Wg8IDqO/0StvmGVh2Iyk+YZq9ubLosGm37xOZ6cnOUfQbA5ZHzK/UULmRB4aF0Bi22HApVifggoWFCLDCfWo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574219797;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=o3ll4FP6xCHVlz+SirNioLQSMfodSwmxu31hCQHcgJo=; 
 b=gjiSGHFfAgFyo/CvJXgRx9cA1J32I0Y/9RFSY+KhRqYl23tM5s3vAjfMLy5gQA39DfWgIDm1Hf0S0CQQc+m1yId61ZFMKgoWsKFpQQBHQ7fbC0HRCYQojRWhKVCIx0cRZAQfZhV1JCeeAjn3UOAguZYw0fw3+ILWLuGLE3bc4p4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574219797; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=877; bh=o3ll4FP6xCHVlz+SirNioLQSMfodSwmxu31hCQHcgJo=;
 b=JRrajEjDPjquW3CRi7H8oRGyskJ6kSrwYzLA8dXinGI+mnDEqxCWFkJrrwl0UhOO
 Ge3XI5aPwW3SlrKc48Bb1stSjn2ld2RO/VohjcZHUwTkM2FOrosQ01WDub8nrSwQ3pb
 I2b2n8q1o1SUa8Ldigx2owlPVaX1aGibDuEu6T6Y=
Received: from localhost (c-98-207-184-40.hsd1.ca.comcast.net [98.207.184.40])
 by mx.zohomail.com with SMTPS id 1574219796587191.63371913747665;
 Tue, 19 Nov 2019 19:16:36 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191120031622.88949-5-stephen@brennan.io>
Subject: [PATCH v3 4/4] ARM: dts: bcm2711: Enable HWRNG support
Date: Tue, 19 Nov 2019 19:16:22 -0800
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120031622.88949-1-stephen@brennan.io>
References: <20191120031622.88949-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_192020_177307_DE7B83E1 
X-CRM114-Status: GOOD (  11.23  )
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

This enables hardware random number generator support for the BCM2711
on the Raspberry Pi 4 board.

Signed-off-by: Stephen Brennan <stephen@brennan.io>
---
 arch/arm/boot/dts/bcm2711.dtsi | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index ac83dac2e6ba..ed0877d5a1e9 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -92,10 +92,9 @@ pm: watchdog@7e100000 {
 		};
 
 		rng@7e104000 {
-			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
-
-			/* RNG is incompatible with brcm,bcm2835-rng */
-			status = "disabled";
+			compatible = "brcm,bcm2711-rng200";
+			reg = <0x7e104000 0x28>;
+			status = "okay";
 		};
 
 		uart2: serial@7e201400 {
-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
