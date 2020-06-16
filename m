Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47811FB3A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqfV+aN24vuIJMjGC3COnjj5TvZYDMb8HflkabP10GU=; b=lbm9mUy36klEAb
	tX0KG5AQW65U/GhCtbDvLVaM/Dfc61+p9quJJU/LoqgEV7ObgmfyLYudAVwUmdm9fTpqTolc2NAsR
	GN8mweSuLrHJbnkbE65PkwZAyUJ0fcUL++1au5VcKOKJ/cB84sGelwZPtK+CaG2TSxyvFEdbx3W46
	dAQ7UdExvyNZ8bBffoDuRRW6Q9USHcCNCCvc8yLPx660nZ8LHT9GzU4O3xzYPIT7zXgaHvpTlKeUY
	z/t3veNao7cqNAZq4pqPzcEm5M7jE0lHsggzpx/0vAg2TO0iK/1BcmoDq70VX73umfLWQukGQoH5T
	6MFEQWbH399wBFAguqZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCHW-0003HN-Co; Tue, 16 Jun 2020 14:09:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2u-0002Ge-93
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id t18so20884152wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iUGGlLHCO3otOOHojhNK90R/D2K76Rxe4RnhKkj0ZJg=;
 b=rDV9T/RKG7tgVMzzHfcKh97OGuTfVQ3tZyHdNIw+5vil2PbabFkD8k3EHRhMNbvmA0
 xaigYCxvns3oS/CkHQtJaTgk8dwVg0iz6vNvbjhpq3O+aZ9zAYeC85Kxvun3yinWvL2w
 PKttA7A/fNKVMAtatmAGRioxm3+w6Wq20kswTDSOu7cyQ2/aY+P9G9BIGsZRbdJfDORG
 B0LYAuJKzW2eu9Iid9BRBAjAI3KcCuAxNJ2lkKgY2jyerF0OmljdxJNtwcaPOviCmWWi
 H8/ssoCO91nVDtYu43e4MXx5lmpi4IbDz7JxHIqKFDv2RZhRKTnqKSiAL/Ag8LtlBRlD
 O1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iUGGlLHCO3otOOHojhNK90R/D2K76Rxe4RnhKkj0ZJg=;
 b=OBqgwDSgLU8YUXi1mDXShaZ+hi64Z0QLEojM3ysU+fVL0Cqr7JxRryEItfGuVkc1nx
 hwnQ8trBU5J1/Jrnbh9VcvEKHvYmPmLd1CZBZapNPSZg7hdTHlJdKSmNxfShmK+kYatd
 aj1Sgx3b1UmVZUJn7FHKBqUZ1bEA1l4iogKflaCVGBB889tJSlS75FEvtD+XSmH7PFcb
 J5mYEQ21t5cBWzUZwk8tKLDE81b4xCl2CD+2AKMuloh/n9dBtWtIzK6xc/jjJ9Zi+Q1n
 5m7Bewd1+DPm6ERisoJBAPyyMtBGLlXOTDHrnCQ8CKA5jh7qS0tZl4OAjAEwSYEAqUSl
 DcqQ==
X-Gm-Message-State: AOAM533UvHSdyGAeF4PgjYr/dDK417H+0BMba45yQ1kgj6ZUT03nvNo2
 dfG8DtBfg2MgZt4z2E92t4A=
X-Google-Smtp-Source: ABdhPJwlysuFl1HhqVqR03E8fIV3rAPMC/xCd2un4eBrG2FUrg8nysVfgPA9K/BElWQqyJRwlKhXeA==
X-Received: by 2002:a5d:6b86:: with SMTP id n6mr3127178wrx.167.1592315675040; 
 Tue, 16 Jun 2020 06:54:35 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id x13sm1712793wre.83.2020.06.16.06.54.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:34 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 44/73] arm64: tegra: Add Tegra132 compatible string for host1x
Date: Tue, 16 Jun 2020 15:52:09 +0200
Message-Id: <20200616135238.3001888-45-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065436_326327_6BC7CCA3 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

While the host1x controller found on Tegra132 is the same as on Tegra124
it is good practice to also list a SoC-specific compatible string so any
SoC-specific quirks can be implemented in drivers if necessary.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
index 11a1bb428595..6ebfe503489f 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
@@ -83,7 +83,9 @@ pci@2,0 {
 	};
 
 	host1x@50000000 {
-		compatible = "nvidia,tegra124-host1x", "simple-bus";
+		compatible = "nvidia,tegra132-host1x",
+			     "nvidia,tegra124-host1x",
+			     "simple-bus";
 		reg = <0x0 0x50000000 0x0 0x00034000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
