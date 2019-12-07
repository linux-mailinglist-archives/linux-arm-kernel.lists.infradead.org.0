Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A6F115C52
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 14:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QM5KUk0OyFNyBCT0oXgb1EudLOZ26HXNZxmnso4VXNg=; b=Ir3qWiD9zfU+m5rl01mQLaInVv
	87zZ0WtmgcQC/kEX3SYF1Ng1fBug6aT313Of006ga79iAFqB3F4FNPc8clxLJoPBtCFdTcRfh3l9a
	Nd4JRtDMVesJIumMiEv2aAMk0gwbrIekZufooA55AHvhrhZWpYR5NdN0xgaK+ruuu6W4OhCK0GOtf
	kjjnEiQElP5ItgpjI3mTGTlCw2K0GZVNYBwDVuXJVwrf0zAUabG6vg8sliVBudRg5/pdApG+7YIdH
	/6TX8z1+B1cPh0FRXV73IiCJaCmi7K1m7Q+Vwmj3JPmOs/CgzXakG2yOXmKTxQs6wOTdueUtVfrEu
	srgwxWzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idZoP-0003me-Mz; Sat, 07 Dec 2019 13:07:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idZoK-0003mH-1w
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 13:07:49 +0000
Received: by mail-pf1-x442.google.com with SMTP id 2so4814836pfx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Dec 2019 05:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6PpUMK/fvtT3W2NQbLvKL8csxRNa6vIgk1xEDsjC6bI=;
 b=NNVCAAj6R1V5V7V/PSONAwkW8RVZXFNsA2TQMJ+6ukcPGpSKS1R+wfpBcVK1pVwUoj
 /+760sCtrKCwXlJs3i0aJCUkOVG/Q1lLAOZmkAZ6TdOrzsThSeaaNvleTRL54tjCfOJw
 ueAc0J7rKPwUgZx5HF1RweVYqwrF+C+vh38sfBYx3SBHsXVmSRS1DNgjhX5/0gwH20HZ
 YpzQfa4+IUeV+b5UIshvK7vUgFvpwrfI6JUBpH8ztGpsjM9hFlk61XWc9UaVmHcA8sD4
 hfyqyk+9r6CfafJU/UaApak6CKqsRmQYSonhj8zpigXMVTdcMRe+LLWdmRTRLeTuDLGw
 L1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6PpUMK/fvtT3W2NQbLvKL8csxRNa6vIgk1xEDsjC6bI=;
 b=g0LIY84YykJxrbWCv/ASuNq1Fr+bPqbnFxpjp1qJ/X9AHQWP14WT+GMO6TOn8kHQeM
 rG8iZB39+EvSY1xA80+V6Z3b1ctVmj5GsWsXZ4UqVm7CuIYnnJr9rC0FRY1MyFuDgWbu
 m7qydLDazr+3nslAkyW3MxLjaMven8QkXSaghHlqep/GXfUmVOSfDlx/nptQbuP4rSn/
 JW5z2ATS9csB71FvOHupc4VdSTOqxpDKQKp77n9ma35pHIN8BtCJeK7YixSvJQwYWgXW
 skkdiLThMwgpC/apHJCr1AtZKl9SubOr1LJo/SaXwX5i6dGIN6eyquXLOQInUaL4qFq8
 YkNg==
X-Gm-Message-State: APjAAAU1pv5WFp6v2NPeYTz01tT13YWQa2QXyPnDC0ziezyeabrlNuA7
 pYwBgOw6qWJphvg9JONRacqnmZEB
X-Google-Smtp-Source: APXvYqydIZpADSEqCwmvzLGTWJiUvwkFpQSPAm7NlY/5F6LhMpTJQm9IS4Mbyu5EgU42L7avFhDItQ==
X-Received: by 2002:a63:4757:: with SMTP id w23mr8748703pgk.366.1575723688187; 
 Sat, 07 Dec 2019 05:01:28 -0800 (PST)
Received: from localhost.localdomain ([211.243.117.64])
 by smtp.gmail.com with ESMTPSA id f7sm10241246pfk.183.2019.12.07.05.01.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 05:01:27 -0800 (PST)
From: Hyunki Koo <hyunki00.koo@gmail.com>
To: linux@armlinux.org.uk, kgene@kernel.org, krzk@kernel.org,
 tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org
Subject: [PATCH 2/2] ARM: exynos: add select EXYNOS_IRQ_COMBINER
Date: Sat,  7 Dec 2019 22:00:49 +0900
Message-Id: <20191207130049.27533-3-hyunki00.koo@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191207130049.27533-1-hyunki00.koo@gmail.com>
References: <20191207130049.27533-1-hyunki00.koo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_050748_097237_6A8779EF 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hyunki00.koo[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Hyunki Koo <hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hyunki Koo <hyunki00.koo@samsung.com>

This patch add select EXYNOS_IRQ_COMBINER
on aarch32 Exynos devices

Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
---
 arch/arm/mach-exynos/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 4ef56571145b..c0efd544501e 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -18,6 +18,7 @@ menuconfig ARCH_EXYNOS
 	select EXYNOS_THERMAL
 	select EXYNOS_PMU
 	select EXYNOS_SROM
+	select EXYNOS_IRQ_COMBINER
 	select EXYNOS_PM_DOMAINS if PM_GENERIC_DOMAINS
 	select GPIOLIB
 	select HAVE_ARM_ARCH_TIMER if ARCH_EXYNOS5 && VIRTUALIZATION
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
