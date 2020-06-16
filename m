Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C50E1FB3FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFVXD919hB07sQ3yV5sRtegaNysLUVMnnyJRha/bR9w=; b=l00O822nOO/b9a
	W4fJZ6bFvAvcwV/Ta9z8FR7supzjgK0b+nYDaKMLB8NZXpnbWBq238x+70PLH0LvtXjLgT8JNUMK1
	uRhMMxduadi3xC0I0p6b0TwX399vKKTyAP/bzgmd0b76cvD86jpE2FtN6kCce9OFnx2p+S0oKZERI
	GiCNYfO2FewFN2WATat6vLOosfEjR+XbxdAGzWdM357JXfytCBeg0NjBGAbM5wZhodZyJIEEVXRQ+
	lTaMjA+pD3WAmPFHkCaevEXTz8tFuhWSiKZoTrWSMlCXQciyARHy3HLHQ0CQ/dKF6MQvIYgApXiWt
	AkLRd7f71Uw+cyONtXeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCOk-0005Nk-M1; Tue, 16 Jun 2020 14:17:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3j-00058G-Bz
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id b82so2985823wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qZkPY5bmoCgpmhUCVf6pNbB0U2EgFEkvwmeKVPqcE4I=;
 b=RJBSY6X3D75xtJyfmnTDI6AZfDHhVeb64mmheEEmVIb/poZNRfrXigc+Kg10fO4Hvy
 e7IiCqrmBN36GV2U3nGUDZDf5rZAtlkRCHLcwVwx1LaIKhcWZ8ZFY1WU0YvWoqYKFJJb
 03Kk0e4KOkIumR/Js4azvwYTa2kxAxPCSko59QWp4pBPE5/e6McJLYcMqVf3isRsKijp
 VHAfk5YTUZwQtJdxMFHqbzGVATF83sQlcgox+JFw5gdE8nM1m/0basM2WFig1a8Wy+iX
 0WSLf6j49GiHDsStQZ8kBobnmkpbHvfyXtTLr6HjKCP+hYeW7MY9Dh6CYo16NhlBL2gL
 v3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qZkPY5bmoCgpmhUCVf6pNbB0U2EgFEkvwmeKVPqcE4I=;
 b=mkiaP622pixgvQCwCEr1/LLN1jD1Zwb4Ggum/x+1TegjGLRs+uMujIKqleU1k+62RS
 q1XOvZVthTVIH1gcRz/NFfwFvJFS4TaCONzDfe3fan/HrBFMoMftoNFJkoN0uh2/mgx0
 f2Xo3TyHOxLkqwIj1rH8upUv0g9vJYXmOFV+9IuLKINEf13HT5uOjYnfkK5wQrmm8tgL
 /rzkBVenFiQNd80anRSrmSsbE5ee8gS6iKF03q8MKR/HowPGtCSSEg0iRfa48tmvTBY5
 kZTNqudcnmOuQTk9owHYG0Q5ukckCWE9Z5EujEGXi/zCDxEB6f3YfnAsuds2g6qiqFGz
 4UHQ==
X-Gm-Message-State: AOAM532EpGvH+Fu8J+Ly1QfEZxcC9QzOEGG2TrwNAu12F+MJJh71yh0w
 mpoAxtyFH/jKMihhjUtqkb0=
X-Google-Smtp-Source: ABdhPJzhOQC9gckMGWo4NKUvSt4NZfpgQk/k5WXziNdJe6I0mhJandqfAD4DXCQ2dCspJWQEhoMUEQ==
X-Received: by 2002:a1c:c908:: with SMTP id f8mr3402681wmb.150.1592315726078; 
 Tue, 16 Jun 2020 06:55:26 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id u3sm4187727wmg.38.2020.06.16.06.55.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:25 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 67/73] arm64: tegra: Remove unused interrupts from Tegra194
 AON GPIO
Date: Tue, 16 Jun 2020 15:52:32 +0200
Message-Id: <20200616135238.3001888-68-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065527_495513_A8DB1F05 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

The AON GPIO controller on Tegra194 currently only uses a single
interrupt, so remove the extra ones.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 2ecb80e1b09d..e0aa6c74073a 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -999,10 +999,7 @@ gpio_aon: gpio@c2f0000 {
 			reg-names = "security", "gpio";
 			reg = <0xc2f0000 0x1000>,
 			      <0xc2f1000 0x1000>;
-			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			interrupt-controller;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
