Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DB61C7E2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 01:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j4qxVJCd2BZD5YTKIPw7qJw8/9FoXQMsoaYQqR2kfgo=; b=FfEybLpCnnqLQXViYXGw90FDHq
	jf7GAhnkCiSl5UQwrGHD9rbprtB3zPBMbEFh9nclBIgBuiUeMPdQz+OVgpnaqRHIiThgk1Nc4RGPn
	yHzDp293sfDZ+X3V/yIfx5s/YA38GaHbL4LLDJj9gp4g45Biuh3CZau5ZVVB51uQdgkr4PYZKmkob
	NqUWhwvJQ78XwYiKK/BrO2HiF3GJVB3B7H8+lt/UH2dzETYYCCY63IdtVHjj5+klFhn3Ss3SexC1o
	q+PsrJb85lX5QZvLs5fg6mWIZ2fvOIP7Y378CLwhFi2a5P+/1oc7RiEWPsFiSdNSyOPcyhpTdfQ7o
	yJTlePtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWTpt-0000Vv-7B; Wed, 06 May 2020 23:52:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWTpA-0008VH-RV
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 23:51:38 +0000
Received: by mail-wm1-x344.google.com with SMTP id u127so4660215wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 16:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=L6lgwXPpMh2GtBwOjnERxrnC7AaO1OA7jICyPp9jmNs=;
 b=apPwHFu1P6UNTbkrrbtI543/u8/jdj8sEUqcw4VRCQcGNWrcanVwuKrxIH3yQKYLaL
 yUGDZTRCazWcVb5fUZjRZ2P7vtfwNAjDY6s8LEuzu0IAwBfYzmZM1s5mu/+lhnDuaASN
 RsX+UQTtK5JyHQppY/VH6xVcft7bkEKPKSk2+VAaPbtxtj6zJYMsPb/g+bE7fxSLxaBW
 OARDyCpFXVj1qxTHAS/Ec1KgGRjcyGaeSOuk6WnUrE8jJtWHO3oKcCZEoaVqRDeqlqdO
 HVieYTwmnC+Hr10RXk5222q1qxSC24sBBR7k7UY9uMyYaPdAOj+BMTCZcXe/zQQ4wA+f
 zdSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=L6lgwXPpMh2GtBwOjnERxrnC7AaO1OA7jICyPp9jmNs=;
 b=qaATxe9Z55Lc+8Z5bJoYkM9Bh1AnryYn+Br3pScyEIsq6QFff7XAG4/Vb15CH0kDAZ
 e4U14I0VVHYB0iZ+ZmUnLSV6TGPhYOJC7wkUfRQ/uRIsWzPeZR3fdZ4pCYJ0SFM3Q1to
 heceau4waBvDul3lNJ/y62GBqUeEgdHmsQ4sJOO/iBGZkKu4QtFnWzmkbEGoyB9dnwZ7
 /hqkvJGgTXZXxqRiZ0068tlrf9PvEohYByRaGmDxgKSQFYpWxPzc06V9N+Q0iSGMfW3U
 MGueLZbUccudDq0OTPIl8+oa99tLVMRW9hfQtHjFdNW0gfk8neTLEnODDr+ziAqTeXWr
 LHKQ==
X-Gm-Message-State: AGi0PuaROFRLquSKCUKeyY7+5fk9C9PD9VMdzQtFiHvfrfy3bwLO/2QW
 lxwsmeth9B+xxWSsspsj5lEl1cfn
X-Google-Smtp-Source: APiQypK2VMD1eXgHEZ9tdRtcyCXbhsFg4EUcUl9jgjtMdK4mscTZ7/kWpHqrDiPB1AVGlnnWgrDLJQ==
X-Received: by 2002:a1c:44b:: with SMTP id 72mr7010886wme.58.1588809094835;
 Wed, 06 May 2020 16:51:34 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b20sm3693161wme.9.2020.05.06.16.51.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 16:51:34 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Date: Wed,  6 May 2020 16:50:09 -0700
Message-Id: <20200506235009.25023-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506235009.25023-1-f.fainelli@gmail.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_165136_909355_65B32EF4 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 Mike Rapoport <rppt@linux.ibm.com>, rmk+kernel@armlinux.org.uk,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gregory Fong <gregory.0xf0@gmail.com>

ARMv7 chips with LPAE can often benefit from SPARSEMEM, as portions of
system memory can be located deep in the 36-bit address space.  Allow
FLATMEM or SPARSEMEM to be selectable at compile time; FLATMEM remains
the default.

This is based on Kevin's "[PATCH 3/3] ARM: Allow either FLATMEM or
SPARSEMEM on the multi-v7 build" from [1] and shamelessly rips off his
commit message text above.  As Arnd pointed out at [2] there doesn't
seem to be any reason to tie this specifically to ARMv7, so this has
been changed to apply to all multiplatform kernels.

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-September/286837.html
[2] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-October/298950.html

Cc: Kevin Cernekee <cernekee@gmail.com>
Tested-by: Stephen Boyd <sboyd@codeaurora.org>
Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
Signed-off-by: Doug Berger <opendmb@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 5986277296c3..7bb5264a9c3a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -312,6 +312,8 @@ choice
 config ARCH_MULTIPLATFORM
 	bool "Allow multiple platforms to be selected"
 	depends on MMU
+	select ARCH_FLATMEM_ENABLE
+	select ARCH_SPARSEMEM_ENABLE
 	select ARM_HAS_SG_CHAIN
 	select ARM_PATCH_PHYS_VIRT
 	select AUTO_ZRELADDR
@@ -1515,6 +1517,9 @@ config OABI_COMPAT
 config ARCH_HAS_HOLES_MEMORYMODEL
 	bool
 
+config ARCH_FLATMEM_ENABLE
+	bool
+
 config ARCH_SPARSEMEM_ENABLE
 	bool
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
