Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBF2971CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3Mns72xzU3HBdBjmDoVYVdCEAV2RG16JuD783PoMag=; b=XnF2XVZdaLI3Zv
	9ed5LIDTfJrD2Cr0mFNRnMP7KaQ/EKjiA64ndxUSKSA+Kf9EVzCuHYjJMRj05KPwq6s1pnRTCcEJU
	DUkm7M6Y7KDBxiwvJk1PPmps1Gu63tLBXU+1di2vw+AYl5IsbgtT6Am4tg6llRihPt+yZNVIN5owS
	8FsnIXJX+aXE87buVh8XnRO6fiq8pPj1Nw3wr91Clcbk661h7At8vaKGUSYWaz0byEZsHa3y6lOjJ
	rZzmxHhkxW8lkgFN4PBm5F/wTLaMi3Y25duJTZazApsPZbamCAEB9iLN/3m162ylY/v/BqfIVkQZz
	6cKeM+nPDh7R0h+QN8TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0JcO-0008Cp-8j; Wed, 21 Aug 2019 05:57:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0JbK-0007RA-30
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:56:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id q139so667456pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 22:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CGzXZK4zikEN4TxWRvQDpen5CEPMtDK0toXHnI7EWGQ=;
 b=lIuoBZCRnm33wF3mp82iFhcZCsLLsq4fMk40MMbfdJnsjqOLDVP53jXHSSyq3ZQazA
 bno688xMHYc2s1CVzoPSqMvi8sKN9g/hjFLuFeuHOAuJnQVwhBWMTkaQObYOc36G77ud
 4zd/yF+VIX3F5ZZbihbJ+dGFnlmLxYCqdTSyK/JyM8j1afqJKBfSycymSCMCB8cgl1yj
 qxorMRS5duqLnExx9vo9Tjnxm4dO4qKF3zj+9dRnCcdvLfeBMN4b7GlufLafuSAwRoQf
 SDdMNdAqObcuEA7qC6yXGz1ueGzZNtEmYfFXLbMyxkhXBVyx8jHl5G25dAohLOgL2V9t
 V67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=CGzXZK4zikEN4TxWRvQDpen5CEPMtDK0toXHnI7EWGQ=;
 b=nf9lQKUHgjC4TbX/Nnx2Ufg0zUqeIveUzpxgtLP14vJSr4aNipT9qv1eMkYtdJ+wA0
 JxHPO8Q6HqERQONI+ELW8QCFZp8mouYfconBZyfvIdJMdLl2CrYCNzwQ+x1lwYJPpVlu
 usDmAKn0i+qgPulnyZ/GUEPDNH/AmsxOqmw+znl7FGB3m9jxzK+JdkDaRtAXWIzawfw8
 VRcDoTkICjShnIdS3BuDDr1B4fxf8Z5uIxIWZ8Qs72mrV8IQoexlZ/JMlqGgLmHQjAmd
 SuExi+kCnEFFvxGaznHTmqUlrL1rLjGIAnY8bwREEfsxmY7I52luVYWsuD4PrXlwct9k
 c3Ww==
X-Gm-Message-State: APjAAAX4R4rgWq4JhcZnTgd351YY/MixJ5LzMm+zwcL6S67phtO3OAfT
 KLCbgnZH6GUohMzaNJJZwoU=
X-Google-Smtp-Source: APXvYqzYQ0JMPmykoZ2pidi+Eu/vt3Wt6Pi8aoiHcXBeHnBsKVP3bx5fquxF8TzvRcAZsV6OsETtuA==
X-Received: by 2002:a63:5945:: with SMTP id j5mr27559844pgm.452.1566366965125; 
 Tue, 20 Aug 2019 22:56:05 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.56.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 22:56:04 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 3/7] ARM: aspeed: Add ASPEED AST2600 architecture
Date: Wed, 21 Aug 2019 15:25:26 +0930
Message-Id: <20190821055530.8720-4-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225606_676129_BDF3ED6A 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2600 is a Cortex A7 dual core CPU that uses the ARM GIC for
interrupts and ARM timer as a clocksource.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/mach-aspeed/Kconfig | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
index 2979aa4daeea..56007b0b6120 100644
--- a/arch/arm/mach-aspeed/Kconfig
+++ b/arch/arm/mach-aspeed/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menuconfig ARCH_ASPEED
 	bool "Aspeed BMC architectures"
-	depends on ARCH_MULTI_V5 || ARCH_MULTI_V6
+	depends on ARCH_MULTI_V5 || ARCH_MULTI_V6 || ARCH_MULTI_V7
 	select SRAM
 	select WATCHDOG
 	select ASPEED_WATCHDOG
@@ -33,4 +33,16 @@ config MACH_ASPEED_G5
 	 Say yes if you intend to run on an Aspeed ast2500 or similar
 	 fifth generation Aspeed BMCs.
 
+config MACH_ASPEED_G6
+	bool "Aspeed SoC 6th Generation"
+	depends on ARCH_MULTI_V7
+	select CPU_V7
+	select PINCTRL_ASPEED_G6
+	select ARM_GIC
+	select HAVE_ARM_ARCH_TIMER
+	select HAVE_SMP
+	help
+	 Say yes if you intend to run on an Aspeed ast2600 or similar
+	 sixth generation Aspeed BMCs.
+
 endif
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
