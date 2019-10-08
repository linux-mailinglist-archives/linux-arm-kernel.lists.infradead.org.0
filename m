Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A00CFDEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1+tHMMMAeb7CjT17ErVJYUCHy/JXkLVJmVkPNu50gU=; b=IQ/rxwgRXn9Bmw
	vIQAWPjravPkT6tBT8rv2Xk+1N9ZhjPXso53SRFxp8sPL63o8YLaInJKusrguEIBbQ2qfNTw+p0fa
	w3VfjtqDiBheqgJXP958Z+l6RZRxBVisojzhv9KER77qkQ/g2FESa96osv3q6Bl3cPquiHAhDRdEX
	gZ2tTpIiMjbe+8Pot0NEow21+jfI0kGc8oNnKW0Okvg3sBzJZOWNbybAsQ8qyQWnyFffgEuaLgybJ
	RasB68sGGiQt8SlK/fFjFveGzP5TdgDH+u5tdZHKG+W71XhUiXCzxRRSb3328c8wARcQei7245v6n
	QLi5ZlnfVSt5shx9x/ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrdG-0000MZ-Qq; Tue, 08 Oct 2019 15:42:38 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrb2-0006uy-KS
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:22 +0000
Received: by mail-wr1-x436.google.com with SMTP id h4so11245957wrv.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v1fBkRqeoTupUy6r5T5rATOuRaKZb5JdrMIl3ut6gZ4=;
 b=xU2wdODr8d5X7dO32U+0Xy2v/2R1Jt2O3m/Ge4vhJfa4x+17e27cA0zf/njfbrm6DA
 JjgXqRWl82p3KQkz0fs8X2l/WOemYKT2Ch5LYgRcdCfKR43sdLoW6+3UQbeIcNEHpqhC
 NW2xqnvDkQ6PTjnf8gGVi8cOEKDochDeWTSYiBY8G6z9ZVbjOkJHVc1T42ahU/WDhNO2
 vlro6LEEauaVgYwsCGPzsk+1n4J3pdMyjsT42qfLl9lzDIAyeLqS35qi2RGgioVpTpML
 k1l5zi52Jj63exxuxIK2XHoL02cQyQGNCQadFGokMyyqV/zAs/LT/Vum0rZLtNXlQDI7
 Vbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v1fBkRqeoTupUy6r5T5rATOuRaKZb5JdrMIl3ut6gZ4=;
 b=mWtMBa8FYrDfo9LBZGjO4NXFG3dFeWSG/YRFWCRDFSgFc+n2fOpT2Uk34/GK0/K+2n
 kCUxSc0qmJO/jsYSVgMYjaF778jYBCpj6tHP3x55aC2Z/YQ54ZqgwTlthuXS0z5czf18
 Lv7xaWBxJy0q14TZvdFHUW4Ab+n0ufriD5U0Wl6tEdqy+jKJ43MSxiEIXBBtaRZ29mjd
 89pHq4MxB04GHlPgzBwMvDNKs6We/4pgqMwaHAiLQVIPpveqmUlgyHRJ2nGlw9aQb0uU
 gvJfqunPyzoghVQuWiHnXSqqml7TH37hFlZd3r17EbPVsripSXq08h3t52bbUcXF8G6z
 M8nA==
X-Gm-Message-State: APjAAAWFs3u3skFdauudj9xkjhPjInV0oDA5mkjC6aw0TxULP2h15vjo
 y+vX4MTI9uC5uvy41ghuV/B/gRtoJQdKIA==
X-Google-Smtp-Source: APXvYqyywOaE3CjTPedvbAFrXAEhFioEYVtqA9mttFRLJwPQ/CPg+yGIKHdfigNxBVx/+6Z1fEQPCQ==
X-Received: by 2002:adf:f2c4:: with SMTP id d4mr7855414wrp.108.1570549218180; 
 Tue, 08 Oct 2019 08:40:18 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:17 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 08/16] arm64: enable generic CPU
 vulnerabilites support
Date: Tue,  8 Oct 2019 17:39:22 +0200
Message-Id: <20191008153930.15386-9-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084020_799585_0DC87E0D 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>, Mian Yousaf Kaukab <ykaukab@suse.de>,
 Jeremy Linton <jeremy.linton@arm.com>, stable@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mian Yousaf Kaukab <ykaukab@suse.de>

[ Upstream commit 61ae1321f06c4489c724c803e9b8363dea576da3 ]

Enable CPU vulnerabilty show functions for spectre_v1, spectre_v2,
meltdown and store-bypass.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e3ebece79617..51fe21f5d078 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -84,6 +84,7 @@ config ARM64
 	select GENERIC_CLOCKEVENTS
 	select GENERIC_CLOCKEVENTS_BROADCAST
 	select GENERIC_CPU_AUTOPROBE
+	select GENERIC_CPU_VULNERABILITIES
 	select GENERIC_EARLY_IOREMAP
 	select GENERIC_IDLE_POLL_SETUP
 	select GENERIC_IRQ_MULTI_HANDLER
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
