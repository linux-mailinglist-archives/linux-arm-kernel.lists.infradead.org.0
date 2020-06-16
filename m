Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7031FB310
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqTFHbWU9dEJHXTBkXNiJfAv9kEDqgVJtVvEeRWESNw=; b=jUY5pD083EriBL
	RWt8pUq6L2dJSm48Cb74PHJXJIFdTeLsQPoXfHL58Bev0AEUvgCTZpX2Ulc3JVDf5FzGdz6l4oFG7
	DCVxYb3Oo6jMhv7sRWg2mBkptU81x/+BIeTyp+dIiNUoKbCXBG0/IkfCxt0Bn9cqnUyXGxi0E054G
	GxDI4zQHqA/ElPtd0F2L+5vGEmuXIaBXfOliXiU9906/g+HEhP3aC8Yk0aBMChcTWykh2FXdb8FpH
	tocB7msLJ4bywOqX6OIoxsrmtm4/YjV9HBEAfjvOkil+i/ToLWj6WE3o76QvNV2ivYS6R9twhhmSx
	8hp1Hir8Qd0RJ6CLfJSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC6u-0006ry-KE; Tue, 16 Jun 2020 13:58:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1a-0001N4-DP
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id q11so20888069wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FT2XLpfBDjhksZtGFD0bEBzgpWT5Qpglrh+vmdOd/oo=;
 b=bSZJDYwIxLNahacewvcxphbOsAC+HSNSBsJRptZpwLITEgOkA4y2rzTTQqqYhx19H5
 ExAYqLTb0vgPpv8EwOVx5eVZ57iVTa6OaQo7awaM3WWiI78WbQ7lsO709u8HrGxj5hLB
 2Xvgy6dKKcYai63He7ezWodaclgfNYlocbgNPYpvH3bwxvI00J4eiu5wK4HZTqbHOft9
 1rlHorDTTMDmwS8CeRuYi+7C9EieSEdDoyYY4dUFdF+HJrkiWsu7yhA7DXWK03cBWRbK
 xUw7+LecocwcllFSp5EFKb9PjuOJ2c8q+X6D4jYxRi3FEO8wigot4yO4YNvZgFjVYQDY
 RmKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FT2XLpfBDjhksZtGFD0bEBzgpWT5Qpglrh+vmdOd/oo=;
 b=Iq/8Nw1UNrSiFdKwEiaV5xKoS7TztgXhaotJ39h9S2Kej4OUF24+IOMvELNrroXiND
 708RY8dLhAv39s4EMyu6adivayMfVWZ4qGlhABioNvv7ZT227LGEzI8d32+e3TfoNsxE
 wCBY9eykHrpEPHzy69+RsSYKWh35TzaiepAy9z2PNnu21QpaUu7sipvBUGwpl3XnI6sT
 yqGEKPHlqAGK4K1mC6m53muAZofZkciFg2gIq+dkwMrrX3GkN1WR4bU68CMoyYOdVWiN
 Yf8sPMnNGTVAWF5hQsBJ+7XvuQjCsubL7fcwABUQUVTviZId/6XRyDEbaBQ1TyuG/ov1
 EJAg==
X-Gm-Message-State: AOAM532lya+Qy6fARFbl1wVzSDa1r82LgmIJdJjOrKy2ribT25BuM8C9
 7Q+6j3o7oZTt93nieXgYtN4=
X-Google-Smtp-Source: ABdhPJxbMvXDt5cbMxmncdZsxboagCBEEqp5k2CMTYXn6m3dztuFwDsTjCU4ppfvevzOAUYUtcvI/Q==
X-Received: by 2002:adf:c385:: with SMTP id p5mr3239900wrf.409.1592315592683; 
 Tue, 16 Jun 2020 06:53:12 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id c81sm4199809wmd.42.2020.06.16.06.53.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:11 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 11/73] ARM: tegra: The Tegra114 DC is not backwards-compatible
Date: Tue, 16 Jun 2020 15:51:36 +0200
Message-Id: <20200616135238.3001888-12-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065314_494396_8C9B9CFF 
X-CRM114-Status: GOOD (  10.54  )
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

The display controller on Tegra114 is in fact not backwards-compatible
with the instantiation found on earlier SoCs. Drop the misleading
compatible string.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/tegra114.dtsi b/arch/arm/boot/dts/tegra114.dtsi
index 392f06107b32..a06b88b01ef3 100644
--- a/arch/arm/boot/dts/tegra114.dtsi
+++ b/arch/arm/boot/dts/tegra114.dtsi
@@ -56,7 +56,7 @@ gr3d@54180000 {
 		};
 
 		dc@54200000 {
-			compatible = "nvidia,tegra114-dc", "nvidia,tegra20-dc";
+			compatible = "nvidia,tegra114-dc";
 			reg = <0x54200000 0x00040000>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA114_CLK_DISP1>,
@@ -75,7 +75,7 @@ rgb {
 		};
 
 		dc@54240000 {
-			compatible = "nvidia,tegra114-dc", "nvidia,tegra20-dc";
+			compatible = "nvidia,tegra114-dc";
 			reg = <0x54240000 0x00040000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA114_CLK_DISP2>,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
