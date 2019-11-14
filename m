Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C274EFC56D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wy5D6tpkJm/osodw4EFHubLukEjqb7jpeLfPE72lIjY=; b=jUX
	BoCtcDGHNmSXkkrNHuNPxeSdfI38U0GMNW4QO7ANP4I7Th6WUp20GsztIBfLyGENgBLs9HdJRYVhx
	qzxVhb4f6bO//uwFC2yHmlBkd2f7bb8tJeVTVdfMp63GwVWN1jr9Wsaf9zGf/6IdrF1+FqTsjUvyp
	TKr04VzL7m++DLZ3fZFtHQe3iJcvrwz31YLc6pSCIO/OfPh+fGvqezSdxUJjNEZy2qW5sYp2h0BKM
	InlHYSLIDZxfKGXyixQ/PdTm1crsEPVTo1K2ATpjgemJMviuaUDYJRlRc3KzWE2gwrcOLtGKajgFZ
	1zS6SSfi8hYLjBFLhCkHTAd4aPdcxfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVDO4-0000iD-T4; Thu, 14 Nov 2019 11:34:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVDNx-0000hP-LO
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:34:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id l17so5298550wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 03:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=hXXV/2kIvB08deAA2EN09TWub+GXZhxQylBGV0wly2o=;
 b=kiaWUZshTXZr77I5eM6Iord4uC+esCXUajeEDu2SLSeAXVtTQJxNXvn/FQxeDmINbP
 hT17ITCVf33E7Nuo5Pa2+FdnKKivHy4MyMPQj4CZH8O0ULOonqs1/Mepgy1lCxDcDDPo
 upBGlMw+9BhH8O2H4d2RY0V+vFjd6vM0zb3QqRYrGGOiaEwfmpMMoyhldK6cQ8vgcDHo
 9zQTdLi2HBjEGiZY49KODbfy6ti/XQ9hA8mH2PPqLNLouCSyZXIFF4NW8Y5QNvIW/7Yd
 /8KJ42P5CDv61U5sOVP7bcOPKI3zBjG5FL6it8hU7ucv8Nz4lbnbLUSrjLtHXxwnRcX7
 oNDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hXXV/2kIvB08deAA2EN09TWub+GXZhxQylBGV0wly2o=;
 b=WI84blI11E9G2UDzUOg+plHtQ8LVuDxev94mr5ZIVigyaUMBcmSpCnKnA2RMFitwgm
 X6JLesf06QWked3FgG11PgLVdk+UhCfo3J53K6NIi65unaXPjAXZRcpE0wUbp/R5L7XK
 yu32fRyDE3C4fkLZWx01o2axq/VnTmYFEBf5dBb47ycd6aT2y7+N7+Ijh72Axcp25fMN
 aclKaMvizOCynoXg9u0MZ9o3h0a4Ly8tio9SOsAhmh+6roHm3BXtR/gtCDpjhysWDSkz
 jNrGiFr1vRfSFbpq+ze7AP86jiaUF9UxQxAg65dFGES7mz8FZQeMynBFHuo4wy33+s1u
 zIBA==
X-Gm-Message-State: APjAAAVDoh/ucwfEe3MZvbQVbzSmyPZiBgoOR4lIjNJ0uxpeebxvWZ3b
 CisEiqiXnWiyAiK7It1xCdmvlw==
X-Google-Smtp-Source: APXvYqwa7C+SZPaRzDCDqgtRRX+BdBhI757ORIAlSyB2X3yAtBSVEylfezUJgRJyC7Xi8Z+nZfWaVw==
X-Received: by 2002:a05:600c:230d:: with SMTP id
 13mr6806183wmo.159.1573731239464; 
 Thu, 14 Nov 2019 03:33:59 -0800 (PST)
Received: from localhost.localdomain
 (184.red-37-158-56.dynamicip.rima-tde.net. [37.158.56.184])
 by smtp.gmail.com with ESMTPSA id m187sm3324275wmf.35.2019.11.14.03.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 03:33:58 -0800 (PST)
From: richard.henderson@linaro.org
To: linux-crypto@vger.kernel.org
Subject: [PATCH] random: Make  RANDOM_TRUST_CPU depend on ARCH_RANDOM
Date: Thu, 14 Nov 2019 12:33:46 +0100
Message-Id: <20191114113346.25138-1-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_033401_836268_7B75E691 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, x86@kernel.org,
 Richard Henderson <richard.henderson@linaro.org>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richard Henderson <richard.henderson@linaro.org>

Listing the set of host architectures does not scale.
Depend instead on the existance of the architecture rng.

Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
---
 drivers/char/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/char/Kconfig b/drivers/char/Kconfig
index df0fc997dc3e..3c2123a23600 100644
--- a/drivers/char/Kconfig
+++ b/drivers/char/Kconfig
@@ -539,7 +539,7 @@ endmenu
 
 config RANDOM_TRUST_CPU
 	bool "Trust the CPU manufacturer to initialize Linux's CRNG"
-	depends on X86 || S390 || PPC
+	depends on ARCH_RANDOM
 	default n
 	help
 	Assume that CPU manufacturer (e.g., Intel or AMD for RDSEED or
@@ -559,4 +559,4 @@ config RANDOM_TRUST_BOOTLOADER
 	device randomness. Say Y here to assume the entropy provided by the
 	booloader is trustworthy so it will be added to the kernel's entropy
 	pool. Otherwise, say N here so it will be regarded as device input that
-	only mixes the entropy pool.
\ No newline at end of file
+	only mixes the entropy pool.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
