Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097601F41AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwvgbTKjoXtNSiy4bcuoCX54BSSX1DaqSNIizS5nLX4=; b=SodLBwbOF+Q/I1
	Q5fX/sF1sfbtpk/nYfEOVlyJlNHj30vjqVvTQfIXXuAIjrVqhgjmv0tYcYwj/mLishUF5tC0ULQ5h
	FCkxj2KYqP6wLbXZZkvRh9zV8EAalmq5Tt1GWTbdrJYjVO7t51ZF/0OzmSuwAOs1H6uqde23ipBG/
	r3lAN4JKUZq+ZYtuik3kpUY7NlLoA4HL+EItdMwr0zdz+5fWnR/sGn8QWlbdTDE8DZBA/H2Zpuhu5
	p75m2lD1kukeiKx28uI7Fcv6EtSBdwVhdfd+OQHGJpyzjF8lcq6oeB9Pn/TzfgRXQmVEvm+SFndDE
	czRjxWtp78JhTUr9kr7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihdu-0001Av-B6; Tue, 09 Jun 2020 17:02:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihd3-0000c1-Ta
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 17:01:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id q11so22166813wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 10:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WKkGKM1i+ZwjQU8y1F8HIyZFPfYPlnsKwCB0yR3tEE4=;
 b=l1KrU7/E31ITIYvTfzAncU/3ntg1p3J+hQNm2CqUP6C5TwinNB1fmslNVYfUmaA97+
 sXblARRGnzrbPvsWKUx3u3rXRfM+wZayRivtffPho7e6cSWIyu9kMVw18Gbimj3DpJiD
 lig01x0hwrbI6AHS9YT8uQPrxhQPI8XC8b+jmYeH9Bzve/2XACyki0NJHzUcb+6bG65g
 B+noBL8e0g3PEanuKZC8jntVyKlxjgOocmPzvxzezW0T7jsMLfZ4/zGQT2gD8DzAEWa/
 vh2j6aGy5sapw2/KXUmkWNDF/B/rcNVedbz9Jt0y81K2XxU6EYuIwx7WR4hVIhEIK4sN
 w0kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WKkGKM1i+ZwjQU8y1F8HIyZFPfYPlnsKwCB0yR3tEE4=;
 b=G2xDX0Yja609DieOIv0lV2FA0cRYs6GcwocD4cH+kJrg9+NdltWWOFgAJWtdOf1VjC
 K/qlpt1xfa9/NMc+uXBO8F6CWV45q8dbrrcydJG/yWn8taaUT5qbF3ZC65LHqHc8632L
 WWE9d/sz65v8yZiZUCiqtFp1xvRp0GhJnb7XLC25GwHS3ram3/SC+3+NejLn6iXQRdWH
 3mfHJ//aRvBc2lkuEqa9sUjIaozHH/DMQl8QjaohelR2KlY4C40ZqJBZjC8yRxAOjBaz
 TvkLfRzOiCnm71BdUOjnp8vS5uM3QH3DGRaVUIxU+xApRgoomDVssmTVpP8GMUyKkU68
 6N6w==
X-Gm-Message-State: AOAM5333zVH9D6Flk8IAwUL7K7wTSM5xBp4LOfD2/NlUc2ZH+mOfr3u7
 98vUW6k9YeG2YjiwvL4EnCqevO9y
X-Google-Smtp-Source: ABdhPJzgTI+524MDuS7w5lagpPtbOaBYaupWOktz4kyyP9U6rMau70HYUh5ipMQDAj7LI/iV41Sqxw==
X-Received: by 2002:a5d:400f:: with SMTP id n15mr5825010wrp.419.1591722090607; 
 Tue, 09 Jun 2020 10:01:30 -0700 (PDT)
Received: from cluster5 ([80.76.206.81])
 by smtp.gmail.com with ESMTPSA id d16sm3500004wmd.42.2020.06.09.10.01.30
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 09 Jun 2020 10:01:30 -0700 (PDT)
From: Matthew Hagan <mnhagan88@gmail.com>
To: 
Subject: [PATCH 2/3] ARM: dts: NSP: Correct amac_base lengths,
 mailbox reg and add amac3
Date: Tue,  9 Jun 2020 17:58:30 +0100
Message-Id: <d638e006713d82d1a6af4bdbcfa516f425264bf6.1591719237.git.mnhagan88@gmail.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
References: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_100137_963166_864A9EC5 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mnhagan88[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mnhagan88[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Matthew Hagan <mnhagan88@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to gmac/src/et/sys/et_linux.c, IORESOURCE_MEM end address for each
mac is IPROC_GMACx_REG_BASE+0xbff.

The FA2 mailbox is specified at 0x18025000 but should actually be 0x18025c00,
length 0x400 according to socregs_nsp.h and board_bu.c. amac3 is at 25000.

Signed-off-by: Matthew Hagan <mnhagan88@gmail.com>
---
 arch/arm/boot/dts/bcm-nsp.dtsi | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-nsp.dtsi b/arch/arm/boot/dts/bcm-nsp.dtsi
index 920c0f561e5c..512720f39e04 100644
--- a/arch/arm/boot/dts/bcm-nsp.dtsi
+++ b/arch/arm/boot/dts/bcm-nsp.dtsi
@@ -47,6 +47,7 @@ aliases {
 		ethernet0 = &amac0;
 		ethernet1 = &amac1;
 		ethernet2 = &amac2;
+		ethernet3 = &amac3;
 	};
 
 	cpus {
@@ -231,7 +232,7 @@ sdio: sdhci@21000 {
 
 		amac0: ethernet@22000 {
 			compatible = "brcm,nsp-amac";
-			reg = <0x022000 0x1000>,
+			reg = <0x022000 0x0c00>,
 			      <0x110000 0x1000>;
 			reg-names = "amac_base", "idm_base";
 			interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>;
@@ -241,7 +242,7 @@ amac0: ethernet@22000 {
 
 		amac1: ethernet@23000 {
 			compatible = "brcm,nsp-amac";
-			reg = <0x023000 0x1000>,
+			reg = <0x023000 0x0c00>,
 			      <0x111000 0x1000>;
 			reg-names = "amac_base", "idm_base";
 			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
@@ -251,7 +252,7 @@ amac1: ethernet@23000 {
 
 		amac2: ethernet@24000 {
 			compatible = "brcm,nsp-amac";
-			reg = <0x024000 0x1000>,
+			reg = <0x024000 0x0c00>,
 			      <0x112000 0x1000>;
 			reg-names = "amac_base", "idm_base";
 			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
@@ -259,10 +260,20 @@ amac2: ethernet@24000 {
 			status = "disabled";
 		};
 
-		mailbox: mailbox@25000 {
-			compatible = "brcm,iproc-fa2-mbox";
-			reg = <0x25000 0x445>;
+		amac3: ethernet@25000 {
+			compatible = "brcm,nsp-amac";
+			reg = <0x025000 0x0c00>,
+			      <0x113000 0x1000>;
+			reg-names = "amac_base", "idm_base";
 			interrupts = <GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>;
+			dma-coherent;
+			status = "disabled";
+		};
+
+		mailbox: mailbox@25c00 {
+			compatible = "brcm,iproc-fa2-mbox";
+			reg = <0x25c00 0x400>;
+			interrupts = <GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>;
 			#mbox-cells = <1>;
 			brcm,rx-status-len = <32>;
 			brcm,use-bcm-hdr;
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
