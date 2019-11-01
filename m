Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98F9EC340
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:53:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DY8IOBXM4zl5n+kM2ysCHsX5A+2VpLmcZ6xdMQ9qcWc=; b=rfUycxbo/y/wbP
	SSCjcLRsT62yXi31JtwZ+TGyyIhRxsi4fmvuJCFIA/E2zXt5tEdgQ0jHCxl++qWhjjqMRUMx/b5au
	B4g2gH48faTI0x1f0PHt7ihgkfmvMkEyeKv9NAHv0AxElusj/i8dgmB2WqfddFdq9pPi/xFDvyrLC
	cvOdDHsR+kqsfQiXmrifd1HKOBOSGHGpR7XYuMsCvEd7rg7NEVSH9BdsqpbFtS9uQkmjIpzY7Yc3W
	Dby2iVFxEvp2I5h0D+pXf4Fa+ZJoxSzK1cumkshJ2Zmm/SgihrjbuyjAiYjVPqSkorwPEAdHJCx9N
	sdpuOLON0X2j6V6Qapkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWQE-0002SL-7R; Fri, 01 Nov 2019 12:52:58 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGb-0008WM-1C
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:43:02 +0000
Received: by mail-lf1-x142.google.com with SMTP id y6so7148129lfj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OvUZNskoObmKKJYsbx/wH8iXu8sDYM+jDByiAdju3Rg=;
 b=H/DAgeFpcXJo0tjQoKHDP9cxo5/LdWTfUYmStbr2surKVlSluXRlwhQhQqZBDV3k8Q
 V8XC7DhjRHkNy4MfzEF3RCs5zjs3EyE2i5o/5CqiOOUhAXU+FENj52DK5J/CDQ4y4ykB
 JZklD1t78EAgDyVROxcq9bHmO3TgMHqlhpfuc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OvUZNskoObmKKJYsbx/wH8iXu8sDYM+jDByiAdju3Rg=;
 b=Dc/p64nOUlgxOfm/ndF8cdtejOblaHUocQryK6omVl6xNuPmuR2cbKLD/EKdo/aIE9
 nfCEebuaMq99bW2/3GnPuh8HsF+o7cBCCPr1gEezR6BI9oBaYqgOMbaBQcHGzIZerWh4
 ++00ghmyWudUDAlStl3Br9ehx00mePHKCth3bT5ixZekR8wZmMuv82TMdPPkfyhOUaR0
 9UVZtBKOYVEMb+K6CKnNKMzKBlRuhrQo2nz5M2tceg+439i6n+BN1EHbyByNQhBNgo5Q
 Qrdi1mHyl0Oc2sj3+R6VpcrppNdnHCuz4SWE/tJtCg6scDLwpnb/5MlN1PlfDIHKUgMV
 /d2Q==
X-Gm-Message-State: APjAAAVbp+a1Kukc+9NbzrFeFdUnsePGjhEFwHfrwTpE01hXt7ob1ORw
 7Wd0PVjq+WM8gBuRpgIoAvBEDpahgy7iiXTW
X-Google-Smtp-Source: APXvYqwI3iIuteE6/4JNe1O8E/8fB4CE3gTkq92/iVMjvlls7ufSCpNe/zR7/3vjwyl2n4K9sKAH+A==
X-Received: by 2002:a05:6512:146:: with SMTP id
 m6mr6989528lfo.98.1572612178764; 
 Fri, 01 Nov 2019 05:42:58 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:58 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 36/36] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
Date: Fri,  1 Nov 2019 13:42:10 +0100
Message-Id: <20191101124210.14510-37-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054301_210120_D8077409 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The core QE code now also builds for ARM, so replace the FSL_SOC &&
PPC32 dependencies by the more lax requirements OF && HAS_IOMEM.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/Kconfig b/drivers/soc/fsl/qe/Kconfig
index cfa4b2939992..0c5b8b8e46b6 100644
--- a/drivers/soc/fsl/qe/Kconfig
+++ b/drivers/soc/fsl/qe/Kconfig
@@ -5,7 +5,7 @@
 
 config QUICC_ENGINE
 	bool "QUICC Engine (QE) framework support"
-	depends on FSL_SOC && PPC32
+	depends on OF && HAS_IOMEM
 	select GENERIC_ALLOCATOR
 	select CRC32
 	help
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
