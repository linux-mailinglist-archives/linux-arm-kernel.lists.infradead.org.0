Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D1A1E3FFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Lxd2sc/OH8wMsUWW2tgH6y7rFPpXXShxf7JedovOlU=; b=M8GBzQQ4KNqRDF
	o+stb1HFAViVS3ZlyZLS7VdgDl9dc/U+wK225/nczgtuteVdVxqk/ksyQbY+6K/vdfgzuyv7st1Fx
	/o7+MTbPAFhNT0m5sE1AQ++e1x7Pgu5MJZ08C+X14OG4tVI4pqK/PHgUqf/RTPk+IjUre1unF9Fqi
	LpEYsGN7sgczfjx+7p/8VloPN5UN4BH261kpfZ7aMGtXvTCXOvczIaStfD7EeiC64d3SAMP7bTSFM
	qJBQ8lrEyGhTMaTUVyJmW9cBMdwpHPYSY5O+LEagWsa4o84otCyGNS0zjN4F3ExIvGF9i5G2FWL8D
	h+OrY13twz9K66+2RxcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduDi-0004SM-1S; Wed, 27 May 2020 11:27:38 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduCc-0003j6-5e
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:26:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id z13so18771585ljn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 04:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k7QD1+/Irx+1VllFQd8G5Bjp2O9W9kjYTs0FEoDMEik=;
 b=ONaJkYkRMcHeErRk8IHzp2w+8EQvfPsaAgChUgUktMUmtcYgYs5dsNUPwrdd7EYSKN
 D4DIXVxSh8u3zLOflHUEraISMLMQ/q3vCM3iubUxV5PigMwApQbkhw4RNuPg9ncvIcKA
 igWa+s5fR6fWEKXZModGjrdWz+h4RkpZiLE58jTQeLTji28ZQua4/RcpBz0uQLJfoHv6
 h2lEUZVOuA5FimUcUp9tk1qi4akUeGGx8ycuEGxWDgDoz5yLxUFniYV6PgTB5BGEi0wa
 0lRZEgAnQqKON74RapS8RXexD/+QgFsv2GP/RJQSWnCB1YyFFPRe8na8cjCvrVBtJwSV
 /e5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k7QD1+/Irx+1VllFQd8G5Bjp2O9W9kjYTs0FEoDMEik=;
 b=KesAAoHAEnXS+FIDoKKoaR82eToIx31aI8qgXzFkOkxprywRs6IIkOFWNGYgC3J8Sw
 /2XlPLK11ALEBLch30AonhkMUhzJ5yGarjR/liZ+O6KUQtk/DFR1OMkKXuc/QkkJdK5y
 niHVaPttGXzngQ1vC1Db4LOIYwN6c6d1TpY9ETdmw7ZvR/Vb+OVeb8KIzKt6UKa7OMa5
 3+ZDCrLVK09HHAelJolNzj2aSmiL0gU/uI61CELcSO1LJaiKGyuIaQJGh4/LFPpzs73P
 ePQwb93uj1jGvZqalfkSi2fCgzxQefauN8ZHW7MN1jKmg8I6lIH8SqNAhvgHtmZ/7E2L
 0IZA==
X-Gm-Message-State: AOAM532v1BZru5XLxc7HGG4GLDeW4G+ETx/Pq1m0F6vsLa+KrGGgAmCW
 Jnmv4CS71fg1JlqXKJctkEgdgQ==
X-Google-Smtp-Source: ABdhPJyJDrv1Hmbnw21diOmccCoGxDIOh35hLywSrDGN/chN+OoZ8ibsZbuSZCNyN3t40tOyXlz1BA==
X-Received: by 2002:a2e:8115:: with SMTP id d21mr2937651ljg.167.1590578788647; 
 Wed, 27 May 2020 04:26:28 -0700 (PDT)
Received: from localhost (c-8c28e555.07-21-73746f28.bbcust.telenor.se.
 [85.229.40.140])
 by smtp.gmail.com with ESMTPSA id y17sm628702ljm.133.2020.05.27.04.26.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 04:26:28 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: soc@kernel.org
Subject: [PATCH 4/5] power: reset: vexpress: fix build issue
Date: Wed, 27 May 2020 13:26:07 +0200
Message-Id: <20200527112608.3886105-5-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527112608.3886105-1-anders.roxell@linaro.org>
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_042630_262540_BE47F607 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

An allmodconfig kernel makes CONFIG_VEXPRESS_CONFIG a module and
CONFIG_POWER_RESET_VEXPRESS builtin. That makes us see this build
error:

aarch64-linux-gnu-ld: drivers/power/reset/vexpress-poweroff.o: in function `vexpress_reset_probe':
../drivers/power/reset/vexpress-poweroff.c:119: undefined reference to `devm_regmap_init_vexpress_config'
../drivers/power/reset/vexpress-poweroff.c:119:(.text+0x48c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
`devm_regmap_init_vexpress_config'
make[1]: *** [/srv/src/kernel/next/Makefile:1126: vmlinux] Error 1

Rework so that POWER_RESET_VEXPRESS depends on 'VEXPRESS_CONFIG=y'.

Fixes: d06cfe3f123c ("bus: vexpress-config: Merge vexpress-syscfg into vexpress-config")
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 drivers/power/reset/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 4dfac618b942..f07b982c8dff 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -191,7 +191,7 @@ config POWER_RESET_VERSATILE
 config POWER_RESET_VEXPRESS
 	bool "ARM Versatile Express power-off and reset driver"
 	depends on ARM || ARM64
-	depends on VEXPRESS_CONFIG
+	depends on VEXPRESS_CONFIG=y
 	help
 	  Power off and reset support for the ARM Ltd. Versatile
 	  Express boards.
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
