Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E279CBF657
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 18:00:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfEkQrp5KlHE/aBI3Ynbhb8Og6i5+GFIVgxS8L6zZBc=; b=qBHJW3vd9tK8yB
	UsVfr/w3OU/iSmgklTXYSTzERTlIyHusPng8EbMK2y3XeQkTilA6TKQdMhjGf2AOsvJ2eBgYce6yh
	yVytowOsgz7RY9+rxaJBNN6BAmfYUkczeKiljfKDJNWlpG1NYLG9UA41pkZefKFU0+IIh2kZPXU1j
	hvXWIauQWeNcUj72HrvX30690zdTeJQERQsc/4OxDrlkbFqociXnOteM8V6Ebn5LIZHs6Uew0D/YG
	vHUAdVBU1s3+D+2mzoVegkdLwySsRH9WVDI5b39J4DN5kXCbvkhsO0ESUW86M0drPcyVSOeUwPgzC
	ix7RnJwXZClUoSiFNWMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDWBO-0007jX-W9; Thu, 26 Sep 2019 15:59:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDWBC-0007jF-ED
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 15:59:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04BB128;
 Thu, 26 Sep 2019 08:59:42 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 014EC3F534; Thu, 26 Sep 2019 08:59:40 -0700 (PDT)
Date: Thu, 26 Sep 2019 16:59:38 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2 2/4] arm64: vdso32: Detect binutils support for dmb
 ishld
Message-ID: <20190926155938.GM9689@arrakis.emea.arm.com>
References: <20190926133805.52348-1-vincenzo.frascino@arm.com>
 <20190926133805.52348-3-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926133805.52348-3-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_085942_525120_D00DF62F 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 02:38:03PM +0100, Vincenzo Frascino wrote:
>  arch/arm64/kernel/vdso32/Makefile            | 9 +++++++++

Could you please also remove the unnecessary gcc-goto.sh check in this
file? We don't use jump labels in the vdso (can't run-time patch them).
I found it while forcing COMPATCC=clang with my additional diff and I
get the warning on 'make clean'.

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 22f0d31ea528..038357a1e835 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -40,9 +38,6 @@ VDSO_CAFLAGS += $(call cc32-option,-fno-PIE)
 ifdef CONFIG_DEBUG_INFO
 VDSO_CAFLAGS += -g
 endif
-ifeq ($(shell $(CONFIG_SHELL) $(srctree)/scripts/gcc-goto.sh $(COMPATCC)), y)
-VDSO_CAFLAGS += -DCC_HAVE_ASM_GOTO
-endif
 
 # From arm Makefile
 VDSO_CAFLAGS += $(call cc32-option,-fno-dwarf2-cfi-asm)

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
