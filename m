Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07527D763
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrXlPMMC0YCO1JNjj7t0Tmebgc1CAzyPUwoueOdWxOk=; b=i6XoOspzkj6VE0
	fxGOsD8XTUr9kUOiJ6rhzBeGeOs7DiBuhXTVfWiEwMp4uNULl7czWccG++j6/l9hlzvuTZ/wYDhxI
	+FQvz67zz2QMhagMBNscRA1Rvf+NWqc4w8VK7YbLiNGZV8oPMU4UT7TlvaAuWgT9XxidSDnrfQbMu
	hRGz7ufQQcxr5qc1rvUIcpZgjX131uXy/FnjFS7FjbXm7EPJuU214EvXTJm0cPppCesMkUpCH6ElP
	H9dRD+YcHhKKn5sAim1/xaMeIKKaGVPIyeI6W+2DLcr3J0t7GnsseXwj+h/ZuBv4wSZnimnRE2UJv
	GCulnIC0i4KKWnGNVSnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Lk-0004ZY-Fa; Thu, 01 Aug 2019 08:22:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Jm-0001XT-Nb
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id u14so33623130pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QZrcuQ9yf2dvoM/LK+86CRpxpDI5KmyMnFr+EN3SZok=;
 b=JQrn7jF9JWShYAafGE5jWBSK5tUub+i5d0k3JeBjKeEx25TQaSaJbJslZkhkHNb+bK
 QKBOKxd3TZf8QMlTT4Qt5XYcG6u0gxoFzgJwT9QQslAj+EWH0213vShsW2zuWb6VnBN2
 H5nqpJQeFu8GwiuN5I9rEppi/LrPVQJLiPhzqWaMCg/XjRiHSzSHb+auX92vT2NvMfSj
 MBoOodjo+7SKXPMXm4C0zwbxomguH+XuMK4Ymqb3IImOa3xZSQsAVjfb1NvQn7qr7Flb
 UZDtChpZwh8Tl7v7Epe01QEqJaX1ymTnLN21DjAv3mfSq78I++NgjpoX8yq7M2x/pldO
 gZIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QZrcuQ9yf2dvoM/LK+86CRpxpDI5KmyMnFr+EN3SZok=;
 b=lU0qCGUDQGWU2jwejP3VnlulOLU09xWBGKjyCyytU4C5OoPQksiH3yYwjAT0Y1NrYI
 jg18ZuNBnHwxFyZGjDqCgkpzgpioZkofrjL4R/iuczerqKDE55AfkMRA+f/DVGaVd4wy
 rP6fhnA5Sn7s+36pnVeMOyB7xXSO0bEl0frZCOL93xl/7aiWCXPQbbC98FGE5QoYNPFd
 vc0GzpT6pmgtpvS2+TP7Ak/2wai7mVdOKxPJhDCTBhLt3VGdypEIy6Hpo7L3sct7cocE
 dvP2RPw22u/HCP7CjxdmOXgvLZwty88MHfmbW2hZhQPi0E9Ym8k4lHG+jm9B0OdEci8U
 1BRg==
X-Gm-Message-State: APjAAAWOJfJqn/z1KImKo+ndhZ+zGUn4wIyMyyUxPwNPx1tXFX1A3DgL
 C9UDdp1SLh8dEXXP7oRUpiC3Aw==
X-Google-Smtp-Source: APXvYqyrGUQC1ZAWht9Zoam/7t7fuGAI9uez8mB6s7RyA4jBJrQHQZxRXtFNqsg6bkVFghKXE90Eug==
X-Received: by 2002:a65:518a:: with SMTP id
 h10mr116068175pgq.117.1564647609294; 
 Thu, 01 Aug 2019 01:20:09 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id u16sm4035318pgm.83.2019.08.01.01.20.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:08 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 13/47] ARM: spectre: add Kconfig symbol for CPUs
 vulnerable to Spectre
Date: Thu,  1 Aug 2019 13:45:57 +0530
Message-Id: <f894ea52cb1cc2e7bc2a791741b912387cb4c8e7.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012010_794065_0CCA9321 
X-CRM114-Status: GOOD (  10.32  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit c58d237d0852a57fde9bc2c310972e8f4e3d155d upstream.

Add a Kconfig symbol for CPUs which are vulnerable to the Spectre
attacks.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/mm/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index 41218867a9a6..7ef92e6692ab 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -396,6 +396,7 @@ config CPU_V7
 	select CPU_CP15_MPU if !MMU
 	select CPU_HAS_ASID if MMU
 	select CPU_PABRT_V7
+	select CPU_SPECTRE if MMU
 	select CPU_TLB_V7 if MMU
 
 # ARMv7M
@@ -793,6 +794,9 @@ config CPU_BPREDICT_DISABLE
 	help
 	  Say Y here to disable branch prediction.  If unsure, say N.
 
+config CPU_SPECTRE
+	bool
+
 config TLS_REG_EMUL
 	bool
 	select NEED_KUSER_HELPERS
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
