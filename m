Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8181ADB9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsPHfX8LJC2TKzzQEgrRVB5v0p5sZEuml7umv9CHWnU=; b=bsqHFQJTvMPz60
	f65YmLPc7cVzualStwN/B/6hrk0Ssz19VgRdOpwa4qyVv17chuvAbABY4LOe+k0MDVzcpC/ddl5Ma
	fOL5rYgMNqnxkPh3xFzC+t5KyjMq3yNr5HjGfFjHfCPkmXI46LwaS7XKoCC63qKheY2DvqBZmJsC1
	5HOmppbIZPuKFUysH9P69WgrhoduikbJO7ZtIt6JNtgFI4vUerC0s33Y5F7C82pVoQLDfX5gcvGb3
	TZQjCZpjyOdNgY7omUeXUSk1K7O5w5gP3021QK4GEuW5Lon/Ic/ukR/7F7mHe+E92rsAGPfiMqTAz
	SJTwKs77qtCJh0LCoJHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOZZ-0005ys-Es; Fri, 17 Apr 2020 10:50:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOY0-0003l5-89
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:48:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id q8so91777pgq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 03:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OiYeCJDllSXh/csfqHOEAwyzX1Erb7SYSMIFRdyE9io=;
 b=Z4udcHNE0Y3Ijzz7PtyUJeL/RMI/ufEZFDEwrXz3EL00jGYu/ubeWa4zSPLhwopDYv
 W86bK/xMZlegTjV0kIoF1QadhKiP0zYfuIqsr0og86DrARHBMTgzCIPQ4dzgDJZrqL1e
 XXMOTrm9xF8dLUbsNkrq1eFikOKLk89j2abhelqCeIV6hTS64/yu3EbDVxX4Ac804SYK
 wc7qjEJKlzQW9pJWiAOtARrAELh6OyFQYFI6TOLQJkxBC0kLd+kJsJPCWM65HSHGlem9
 JeHcBtYhUVgWou+0JeIf+rfDsg+jUDUDiMiQTTOdSl68bTiwN8PXiRvF394QIFAKed/A
 0rmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OiYeCJDllSXh/csfqHOEAwyzX1Erb7SYSMIFRdyE9io=;
 b=tFsBPTFfjXtcreh0DDIQcrcnPGv/9SyuSFpNxn3CyDCwuHsD5HG0/R28ySIL4Lhf70
 +2rAvDv3l3Y31Y4oAKrkH8+htmnRpmdjWkTSnkD1lfNkARnHcEWShGzU66Q5jPGF4Qh+
 /KFiTx5H9VZPRmBdvVgyW5CNLEpnVJrX4yGgV+nFK3sY4COay+PEDKsSkwR87scqtU/l
 kITlhCvJYJ5WUbDAeDL/dkuyy+vkc9gto8HQ+8phKxFeeBA3ZBSs8dAk5z9vO1AWlcsB
 Q4FR++nt7yVi5ceHCrpWuz4mT5Ar4d9XWx19xjoaa+iiNLmLPPEoNGKlZxZoEP45GO3+
 xZnQ==
X-Gm-Message-State: AGi0PuZSQavQdFOqKvTEx1U/UxzJt87FfxT7HsTGZTWoXLPEIflitCRX
 7Hpju8727yTD1D0AeSC31ryN7Z4I/Nc=
X-Google-Smtp-Source: APiQypIAbf9kat6u7y+gU3Uao1uccK7T4gn72NvHMpDUlRjFNLjPJ3/fmX/iUkr4bbv3vHTzBt0mIA==
X-Received: by 2002:a63:721a:: with SMTP id n26mr2486016pgc.386.1587120514516; 
 Fri, 17 Apr 2020 03:48:34 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (unknown-105-123.windriver.com.
 [147.11.105.123])
 by smtp.gmail.com with ESMTPSA id a12sm12771844pfr.28.2020.04.17.03.48.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Apr 2020 03:48:34 -0700 (PDT)
From: Kevin Hao <haokexin@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: entry: Fix the typo in the comment of el1_dbg()
Date: Fri, 17 Apr 2020 18:32:11 +0800
Message-Id: <20200417103212.45812-2-haokexin@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200417103212.45812-1-haokexin@gmail.com>
References: <20200417103212.45812-1-haokexin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034836_326604_1F3147C4 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [haokexin[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function name should be local_daif_mask().

Signed-off-by: Kevin Hao <haokexin@gmail.com>
---
 arch/arm64/kernel/entry-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index c839b5bf1904..420cd8e1534b 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -57,7 +57,7 @@ static void notrace el1_dbg(struct pt_regs *regs, unsigned long esr)
 	/*
 	 * The CPU masked interrupts, and we are leaving them masked during
 	 * do_debug_exception(). Update PMR as if we had called
-	 * local_mask_daif().
+	 * local_daif_mask().
 	 */
 	if (system_uses_irq_prio_masking())
 		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
