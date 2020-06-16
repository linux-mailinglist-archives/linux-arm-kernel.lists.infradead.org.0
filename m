Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494451FB374
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffTpCio8q+rB5Ws6nRALsAa9Bc1ZR9GGnay4FYUCZFc=; b=sqB0Mio/9U0U0D
	r+TpdjGQpLVihrWvMGnqsC3s3BuPtDKdtQeY0R8c5YBredUL6e8iPuLp/4NxFkwXrsSIVBGfCU3wu
	SmZTZS8hKmiJ6c8CCR/bQZyQzQqHNPI1bSmlbMLuWxAFLRAVrmWx9KBY/lzTj9p9TnhSyijkBbsfL
	nDFAU65pyEjSL8nIThKLRr/D16AcM3h9bsZ5CRGl4yRFqSRNUSByxWW7mE3YRooVs7ArMykDUE9kA
	Gwl5SgRSJxGxwY1PM5rF3iyBVLcnl3lgJ6dEuhn06lADAlbFnjJEv+/eBKPavHEI4C201kdvVXrmx
	NpyiC2ffP4ivVn1wWiUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCEP-0000ck-RO; Tue, 16 Jun 2020 14:06:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2U-000206-OI
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so20896503wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pwE35G81wgEIvaTTAj8x7ONwFHGN+HySTYYEqF0s99Y=;
 b=Jv1sFJzp58JI28XF+/gu0gljB0qYxU/OqEcP3oSh5BKS1iaklTd4gA410IVLtHQ3f6
 +H1LWqsCDVN0aSJJ02TumbWf7ZGMTeKvdoizX8Vyp+tyiOjlzYseMxJQPNO4wkMz0OPz
 EeLZj5zvZnnGjasW7eOPXmGAkr+0JfND+l5tgQRr/IlGrUB/X02T4hGbhCXADKxyHCjy
 +hkh6xUSCRV5LeyvgWIFGtjVc9YUp1w6nPcxH9gF5iaTZLFVWa5s2GCsO9ERlM/Cz5tT
 kaAXZuxWOYsJ9Eo+CCD7Xi5DKakAIT/zcNqIbbKYuJBgYiCCx0PPZ2uS0utLzHUcx7PF
 CcoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pwE35G81wgEIvaTTAj8x7ONwFHGN+HySTYYEqF0s99Y=;
 b=Y9LfrBte0Sj9t036HEe4k/3g/ZEEtPNgBXO3wNK1Jf5VwZ5NqVvlLx/l85qgD8BULd
 4YULvXjrqv0XqX1wXy5+WRs+vK275sBQpvpNBNhC2taAOO/zfBWI8BjGBXLO8NOJx4I+
 ck1REasEVi4RL4q2DJfhXYw+7tmfKUydPI2OH9rfbXcda4KYcQMzk+hapHLWmDulMs8h
 eL+yH6aoaS+ZVxyt9/+OfxgnWOvFxrIM7bjOWTRLJxdmMfum6CzoD6fezoKE1IXoancX
 en1Hq7ndQH8x6sqzBb1+jysTXvmGyzkfXQz0P/sce7MPq/AUJ5wyk6sVc8bQYQP+Pxnc
 3vag==
X-Gm-Message-State: AOAM531/HAb4HN+aOLGU8tunzSbk7fYIpPBl6YjFli3BmTGsAv7ZTQ1b
 frjmHgl6qGUHZ6w0J/vL0gs=
X-Google-Smtp-Source: ABdhPJw3w75sDLQDhSMDHVawPQsm/dWJbeacSJHf5qyvFJ1g0kkLRv427rHG4Bu1lBl4G8L3bUF52g==
X-Received: by 2002:adf:82f4:: with SMTP id 107mr2387804wrc.163.1592315649142; 
 Tue, 16 Jun 2020 06:54:09 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id z16sm29333427wrm.70.2020.06.16.06.54.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:08 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 33/73] ARM: tegra: The Tegra30 DC is not backwards-compatible
Date: Tue, 16 Jun 2020 15:51:58 +0200
Message-Id: <20200616135238.3001888-34-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065410_979970_B006E77B 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

The display controller on Tegra30 is in fact not backwards-compatible
with the instantiation found on earlier SoCs. Drop the misleading
compatible string.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra30.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index d80f9d3d2d18..bedab43016c7 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -197,7 +197,7 @@ gr3d@54180000 {
 		};
 
 		dc@54200000 {
-			compatible = "nvidia,tegra30-dc", "nvidia,tegra20-dc";
+			compatible = "nvidia,tegra30-dc";
 			reg = <0x54200000 0x00040000>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA30_CLK_DISP1>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
