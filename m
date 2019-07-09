Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC6563661
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtvGSow80JBaHMrSJnYZt+J0mnBCKiavtI09znLgfwA=; b=oU7yJxyQQKbcMu
	9Pshvh21ECHFzVyZ48/UuuDgWWtlTPv8b/7b+wRo+HVZX839bwXbZYk6tpkRYhl9b46ehVAweng5V
	OGtFZum+B7HAC4yCDnN25/hI87DiS6faH2D1yQZ4dKNhlYr/+pTmQakw2OhITLBqEiDD/NzWJNbH7
	0Ygbz95KUiL3hFKvXEjjBn9tZpxfZL7/RWrEP3VY6M0aoUO771VecySAKOyHwjii02Aep1Q7oMdWR
	uV0RAJgxWrtDbHUlF0BDZtcKaHYaHjBuMmEp9n8JZFQaqHcB8tsnEBHynuVyUmw+apjoRolrXVjfX
	svL0B7ah7uU3fpo+OKYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpmX-0007Ve-B7; Tue, 09 Jul 2019 13:03:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpm7-0007Mu-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:03:17 +0000
Received: by mail-lf1-x143.google.com with SMTP id s19so12645566lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 06:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M3gNxZoQxGFJAS9PytMqlpu7JPyqZG60fnpoWp9WuE8=;
 b=AqxVgb++cOjQxuDrT3KDN2MxNa+9d4e0zFD7PqIVgSXYh3EM2vf2Zld1R/3kVrgUWd
 PR9CmxS6xx9LiiBBR5dOH79cRO59Zx58elymnasOktb8pMAZQCbZ6huMF++rAWCH9wPD
 ENytw9DX4+YKNXzfLQHwfIgVTqnAUFl2XgumCWB0Y+zrMIpGsj70EA6kLOUv+hE5fiKz
 F+llHLkpVROnMchRgdmlrVPIiMwPODFd47SThU9ol0ddzKP/LSvC5qwrIkYd1vAZykzJ
 JznszOjGngSko3xcbjzPhfQfvRzR85fwEVG7khFPHLFNztbCfBV356Cq8UY9ttYC+qlJ
 j+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M3gNxZoQxGFJAS9PytMqlpu7JPyqZG60fnpoWp9WuE8=;
 b=Lg2OTxXD3TREez9eQp6ZlGg85q/igxGZsLQ2fNTr/UDvkvS1NMvrS8Q0lDMugrTfFq
 +s/p5aOAPDvTfZZ8vHECtwWzl9+2pIamOZqJOHeUlL/sLXdCcUbtcLKuG5wLQsIG+Uuq
 0xOkflXxONvPzb/3m0M4PBmr4w19OF8VQxUCgfp6itFE0Lc8GhCwVD+qSKyhsx5AYFrl
 2FyekSO2YXjBFWxx0jPPrbms8apd7FGew9nXiCGb6+OeSeTq7M3RZkaKVny6BD2NFkJU
 gp2a2XeqA4+vDIZQNz5pgDRhRRbPz7HUiDb+RYFVftKZRqzfjPmKhNeHwtyvARO3bY7S
 HuPg==
X-Gm-Message-State: APjAAAWlb6rKfy81IkRZJQLna/W0SJpn6qTuwK7qCs64Xh0IWyg2985T
 4ROElCXZEdo70lJik+vw0N6ltA==
X-Google-Smtp-Source: APXvYqybjmDtzYSZFPPqdCHd6Gn2HeqDSYSy4UiakMcT+/IpOjyWMdXuqTiHvPeHD/pjs24yFWab0Q==
X-Received: by 2002:ac2:5212:: with SMTP id a18mr11515725lfl.50.1562677393890; 
 Tue, 09 Jul 2019 06:03:13 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id q4sm4808037lje.99.2019.07.09.06.03.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 06:03:12 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Russell King <linux@arm.linux.org.uk>
Subject: [PATCH 2/2] ARM: boot: Replace open-coded nop with macro
Date: Tue,  9 Jul 2019 15:03:01 +0200
Message-Id: <20190709130301.1916-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190709130301.1916-1-linus.walleij@linaro.org>
References: <20190709130301.1916-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_060315_767047_758C11CE 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Roy Franz <roy.franz@cavium.com>,
 linux-arm-kernel@lists.infradead.org, Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This open-coded nop as mov r0, r0 is a development history
artifact.

First commit b11fe38883d1
("ARM: 6663/1: make Thumb2 kernel entry point more similar
to the ARM one") moved the code around so that the nops
would come before the conditional thumb instructions, as it
turned out that some boot loaders were patching the initial
nop instructions in the kernel. At this point it is clear
that all mov r0,r0 are open-coded nops.

Then commit 81a0bc39ea19 ("ARM: add UEFI stub support")
moved things around and defined __nop for EFI support and
missed this open-coded nop.

commit 06a4b6d009a1
("ARM: 8677/1: boot/compressed: fix decompressor header
layout for v7-M") makes all invocations of __nop be wide,
but that is fine, because this is what we want: the
mov r0,r0 is inside ifndef CONFIG_THUMB2_KERNEL.

Cc: Nicolas Pitre <nico@fluxnic.net>
Cc: Roy Franz <roy.franz@cavium.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/compressed/head.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 544450c90673..93dffed0ac6e 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -169,7 +169,7 @@ start:
 		__nop
 		.endr
 #ifndef CONFIG_THUMB2_KERNEL
-		mov	r0, r0
+		__nop
 #else
  AR_CLASS(	sub	pc, pc, #3	)	@ A/R: switch to Thumb2 mode
   M_CLASS(	nop.w			)	@ M: already in Thumb2 mode
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
