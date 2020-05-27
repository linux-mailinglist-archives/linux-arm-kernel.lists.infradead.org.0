Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407461E3FFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwujznZotP4RJfpnN/RHW6DlDwS6sRvty6G+wzb9jlw=; b=DqNzNzHyqY9fjD
	Iwr7g6yz5ZA7oJW2z4vgLuJSwQGmNakQTf8O7q2G1KibcNhqajJljuJY5FvSCnv/TYWKu20k5IGLh
	MmgfWXZRL4uNYEPYQhzj4D9AtA9WES9eQ+jZqS7a/4WFiM/eZc3wvw4ZlRJs3dIvF9i34rAEDJ8If
	qNnSDgW7nw30qBG8q6HpR4GSsIxA8wP0ETyW1LXF561Za0jhDpiuveiDYeVyLwg/4Pp/mwIUwTmLk
	Q6ZZETzb8aIEvwNfzeijPE664Ml0CMdO8gOC9hQCzzHn5Q0NKPSIwYq0RCKiajX4Teb8EoD/65Lpc
	r98NmFRXE7R2qs+H/TlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduDR-0004DO-6w; Wed, 27 May 2020 11:27:21 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduCZ-0003eQ-34
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:26:28 +0000
Received: by mail-lf1-x141.google.com with SMTP id 82so14247529lfh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 04:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M2JtMCIr8sBIUg16KPZS8ec0bB7X2FozgIoYxF1MtfE=;
 b=V5kemVCOolx/kfOxTYXM6Z0cmf3lAOmty9c9UjUBaD6qfc5OYQJA3Tdvbo6kmr2avL
 HSHWKkNhszZeSGqH40O7m4UkhwXR4gpHY3alrb7YgsdUrrx2F+Maw5500g325FyAfOJh
 pK3mldXC0fbgHFpH0MXl53/OuoK70faKvyLjjpkXy112Rg85saP3lrFqoP6+nPbYd4Ig
 S3Q7uJ1V9YFyymc5v9p0qxpTx0fQIaFEaYQn/UGStJmpg0AVVl+xIOyhGuSGKSDKqWUo
 kF5HWpHXDGpUEcDMEdL81GW3zKMtkmEqLZ3DpKo/v1KZ2sKupOr3aYDhbeWV63keL7Eh
 T+jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M2JtMCIr8sBIUg16KPZS8ec0bB7X2FozgIoYxF1MtfE=;
 b=RNUaJN5QF3ejZvhSyAtFFJrtBYz/1KxEd0PuCCSW5gSNWTPJC2/SioIqYQbZzmv/DX
 d9GwoUaendm/FzN91uwFCN2MOB56XkfW7ikGbKOc+jHLk/ONEmpKAs54dBbyRo7uXM+H
 YLXQ6F12Wxa1D0loxxO5ewoYvl9J7uJ369yyUu7OW1j4q5PkqgMOh21Hm8AiLw3CDAHO
 AOYvTZY51DgKfRW4JvIj4Y5VCofbn1GFPp8CuULkUndpq6Af42keTWpLqyfJRmxDqwMM
 CCGGoZdpnIldbjWvH8/oXmG/ndkhNQiAt2fm/9IrV8kA84ehPHd7cHdBrPC7Myrhiv3Y
 PMIw==
X-Gm-Message-State: AOAM531LOSW9QK4TNdDYRmQY1hVedeaWva/Xo3vvh1TK2Ed1uSQSIad8
 Oin+ca0w213cwIKIXEXvd8Sgx/+S14E=
X-Google-Smtp-Source: ABdhPJyOCrskqLzjWCjyhSbDwILM9RL2LptnZYxcJGRzQt6UxcV2DTKDtVk02/cPsG/JIPz/FxqV0g==
X-Received: by 2002:a19:4ac5:: with SMTP id x188mr2933305lfa.180.1590578784928; 
 Wed, 27 May 2020 04:26:24 -0700 (PDT)
Received: from localhost (c-8c28e555.07-21-73746f28.bbcust.telenor.se.
 [85.229.40.140])
 by smtp.gmail.com with ESMTPSA id a12sm634907ljp.60.2020.05.27.04.26.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 04:26:24 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: soc@kernel.org
Subject: [PATCH 3/5] Revert "ARM: vexpress: Don't select VEXPRESS_CONFIG"
Date: Wed, 27 May 2020 13:26:06 +0200
Message-Id: <20200527112608.3886105-4-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527112608.3886105-1-anders.roxell@linaro.org>
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_042627_165536_64EED8CB 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, linus.walleij@linaro.org,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 848685c25da99d871bbd87369f3c3d6eead661ac.
Due to when I set 'depends on VEXPRESS_CONFOG=Y' in 'config
POWER_RESET_VEXPRESS' to get an allmodconfig build on arm64 to build,
and allmodconfig build on arm fails if this patch isn't reverted.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm/mach-vexpress/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 8391a5b3cd78..065e12991663 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -19,6 +19,7 @@ menuconfig ARCH_VEXPRESS
 	select POWER_SUPPLY
 	select REGULATOR if MMC_ARMMMCI
 	select REGULATOR_FIXED_VOLTAGE if REGULATOR
+	select VEXPRESS_CONFIG
 	help
 	  This option enables support for systems using Cortex processor based
 	  ARM core and logic (FPGA) tiles on the Versatile Express motherboard,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
