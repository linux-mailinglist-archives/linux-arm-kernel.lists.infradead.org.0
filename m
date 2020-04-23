Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C451B6A1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 01:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+kOqitzgKc9ovMSCbz5ov+UjJpM/Y55gpRpDyvdJoAs=; b=AkBvc3ZLPTy3s4
	Jbs9XySd0m2UZm/NkoIJnXjqGarpn4axNrm4TDfI66GoMY1k3xkfhbrp/Gx9z/RJh07a5Rp8jXNV0
	ehG4NXJlpQjHJu9AIHv+EwIC3p6KBoyjCC6gGz4WQ0OKFiI+WLq26NXZkgukmQeFC1gSjmRMdvEio
	Uodxg6W1/hX5DUblEV/5LEUEQnsZ0RF+E17cqcRsJFo7pTGkdATeBkj1J5huVE+7rqn6TpSf4qWWg
	73tlW5OnHxm1ZtoYM0LrE84wnYPFXs877Fp9os4+pwARAUzchUMX1AtGm31X/5MKMy7NdoMHaNKpm
	4PET2qG0RS3wYDoAl5pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRlb1-0004wK-RR; Thu, 23 Apr 2020 23:49:31 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRlar-0004uc-Pu
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 23:49:23 +0000
Received: by mail-pf1-x449.google.com with SMTP id r28so6991462pfl.23
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 16:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:subject:from:to:cc;
 bh=nxY7DzxbSarsBkUzCoMT9+dGA5Hco9t3mPu1VJ2rH2Y=;
 b=uOju//yn4UyyKcrbIqkrxiL8zIMZZEg2ktPPrjbkXIlQioWIBUvR/W6Bz98oaqmQkV
 v2AHqRC1usHxBaVdtpyBbVu1ZcOZrSUrn7adTZreZTuL23S1T/NbLx29nyYZRHCdiKqO
 SVkbEYnOmpOd/0JI0NKomy6qusXWGxPz/OuxNTYVJvLo2NIG4G69j22ERs2QFMQGpmJT
 ESw4tJVXhJSd4tc8QxIUeoR4aON8KeYKkALnrw5s47ohmZNBhPo+qwT5b8jUYQKYPvE8
 WTOtObU2xAn3XndG7GJQt9zP7wlg+LYUgG88+iPAfzU2ZtN13cCJIExA/TCFKLD/LDtq
 ya+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version:subject
 :from:to:cc;
 bh=nxY7DzxbSarsBkUzCoMT9+dGA5Hco9t3mPu1VJ2rH2Y=;
 b=l6WjVJgkiW8sO0zu3oesdYLHxLv2P0i2lys9asAKjWF92EHRnrzoSgSU7kkx3cLX8v
 MsdlwBpp42qvRwD2zvCgb4wNwlN5EYkMvvB9hpxkt7lABxvpc2rXKmrp+mDwxEfFexd+
 W7g2Fegmc22SNw8O6S+1ayx760owfHtyFjFNqveQZz8vX+5U4zjZ9k/svlUnejGUN8Bq
 lgjbYVvevam1fg5QWAwf/pRVruIA0LsQzLlYDlWPBVr8tG7MAnwR1zemwanELaW5RzES
 zyeo3jG/naeuYpUlSB4WLKkO09qZjSB8IEFN3X5+PiAW2OcGbhlBsHvawXXfMDkuG+LF
 sAlg==
X-Gm-Message-State: AGi0PubhLPpPDcWL2KrEb2G3ouAjHTwwANEPaq0rYbej24NnsIe2qxb3
 sFYkpLq7n56dvo3moPH1MHNdJY8=
X-Google-Smtp-Source: APiQypKgFDb8KCzmgYgxVDucLRyOXpZ9H/xmwoLlzRcIvPE9zKQdwc/6Sn3ijVAcRQw7W9+f3dCU3xs=
X-Received: by 2002:a17:90a:24e7:: with SMTP id
 i94mr3380061pje.117.1587685760232; 
 Thu, 23 Apr 2020 16:49:20 -0700 (PDT)
Date: Thu, 23 Apr 2020 16:49:03 -0700
In-Reply-To: <CAMn1gO6Ki=3Znco6xr9h3MhxfTGCH-PYk3V+KxKi_tpNYDzVuA@mail.gmail.com>
Message-Id: <20200423234903.226369-1-pcc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH] arm64: dts: fast models: Switch to dynamically allocated VRAM
From: Peter Collingbourne <pcc@google.com>
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_164921_895025_15B751DC 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Will Deacon <will@kernel.org>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the Fast Models Reference Manual, FVP has 32MB of video
RAM, However, even 32MB is not sufficient for some applications,
such as Android, which requires around 100-200MB when textures are
allocated in VRAM via DRM.

FVP supports DMA between DRAM and the graphics device. Therefore,
use a dynamically allocated region of reserved memory to provide
a sufficient amount of video RAM. The allocation is of size 256MB,
which ought to be enough for anyone.

Although this means that the designated VRAM ends up being left unused,
FVP allows the size of DRAM to be configurable, so this should not
be a problem in practice.

Signed-off-by: Peter Collingbourne <pcc@google.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 66381d89c1ce..57641f16f22e 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -103,11 +103,9 @@ reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
-		/* Chipselect 2,00000000 is physically at 0x18000000 */
-		vram: vram@18000000 {
-			/* 8 MB of designated video RAM */
+		vram: vram {
 			compatible = "shared-dma-pool";
-			reg = <0x00000000 0x18000000 0 0x00800000>;
+			size = <0 0x10000000>;
 			no-map;
 		};
 	};
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
