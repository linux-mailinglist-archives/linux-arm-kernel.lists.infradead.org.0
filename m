Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486F411B4C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:50:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRd6bgc4u2Mvlxuazr0CqRpatPPL4eLidIiqmRaZ9Dw=; b=Bj5SD5esMA4ChT
	0DnyyTQFAg7gMEr/1+bVkrmpwN1gKZleyxcCnYEkcxjT2MyRigsIf/zcKIh1UHEBxeC8gVKahIK+u
	lKvm9wNGoxKIPJ18JD1zk5UGTpWfwe6tp2mBcNCuW5GmjaInv9bBsuogL+HsaQ2wGCtTzKIY1MT6S
	rDLVxZCs/sCWLASdqsZAp+5Iny4u1qW0n8ShPsNd4pBAyBw+09p4r+k2lYUhUumiVQFG+dCUf5dO0
	Uv7BhZIPZrNKHcdNxD9PjGkB/bRXbJFUGMC8rsERpWoAwROpQfNix8By3a3uxxy/5yG03jRzdJp72
	XQl6MCg4TYXarGxMlxCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4Fw-0007Gk-B4; Wed, 11 Dec 2019 15:50:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49w-0007E7-6D
 for linux-arm-kernel@bombadil.infradead.org; Wed, 11 Dec 2019 15:44:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I4fktSZq2C6tAsSNSdGMGSsgS4WrgMCB49AsUx+YlMU=; b=Ty0Q0iwiN1mDgyRfaI6ZN8Jqcx
 4gUkkeqCrH6IGHBIm+VjIqCGyImtQuE5pbxtCwneKjpNafrX8Eh++9goQKSXpsFwEYot7RTOLgTNK
 l2QfeQ+O/olv+f9sEiIrpQvLudqgidpGfH28i4GPmbdX+pdSXr5mGXz0A3U929dMNujCzwPdinDnw
 oEVPJ3vnrXYUFzSa5JYQ/aT72yim8A/DEk89hAr7vceFCnlf2ihosgXpMLPBIbinGLlZFxi35cjBB
 yFPFfR6vXBTS9LhjbYHQ04QhAWEJL0UE56y3d7SLKRWcHZXwDoKw/pNpfttOkPfz9L7qzfLEbYRyt
 3eVaYGnQ==;
Received: from 212.199.177.27.static.012.net.il ([212.199.177.27]
 helo=herzl.nuvoton.co.il)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49t-0007Pz-8D
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:44:14 +0000
Received: from taln60.nuvoton.co.il (ntil-fw [212.199.177.25])
 by herzl.nuvoton.co.il (8.13.8/8.13.8) with ESMTP id xBBFfbOJ012119;
 Wed, 11 Dec 2019 17:41:37 +0200
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id 2E0816032A; Wed, 11 Dec 2019 17:41:37 +0200 (IST)
From: Tomer Maimon <tmaimon77@gmail.com>
To: linux-arm-kernel@lists.infradead.org, joel@jms.id.au, yuenn@google.com,
 venture@google.com, benjaminfair@google.com, avifishman70@gmail.com
Subject: [PATCH v2 2/3] arm: dts: modify NPCM7xx device tree timer register
 size
Date: Wed, 11 Dec 2019 17:41:33 +0200
Message-Id: <20191211154134.266860-3-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191211154134.266860-1-tmaimon77@gmail.com>
References: <20191211154134.266860-1-tmaimon77@gmail.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmaimon77[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Tomer Maimon <tmaimon77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Modify NPCM7xx device tree timer register size
from 0x50 to 0x1C.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
index 16a28c5c4131..72e364054e72 100644
--- a/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
@@ -120,7 +120,7 @@
 			timer0: timer@8000 {
 				compatible = "nuvoton,npcm750-timer";
 				interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
-				reg = <0x8000 0x50>;
+				reg = <0x8000 0x1C>;
 				clocks = <&clk NPCM7XX_CLK_TIMER>;
 			};
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
