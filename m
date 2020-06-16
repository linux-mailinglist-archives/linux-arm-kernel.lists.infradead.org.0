Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E201FB349
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhqbptGiANVM1ug62aFfWUkwiaDMry1uE5kCRz6hcqA=; b=LX+S7IqE3gEMny
	5HMLtemTYOL9eDVRAYnjSa7i5d1WaE3CCQtNjPQeDO0KVXGDc9EIKYlpvBBBdFxY/XI9+n8g8IcVi
	1KbJrHsEhyB1RKQi9wRyk/tAb0jw/qHopAsHh9elpoHmRjWX+5sgLiNXCD+bdve8LH5oJQYRIAUou
	1ej08dt3PXjNsAXwn0kN0GKvlygG487snaIMVfbxVT52oDME9Gq0L3WS60iLD9wYraH9+mJsWLxqj
	1Q31ACKuOh/tNrl4pOWOuu1OGM3yipfV69jX0tUVt/Don6xP2CUCj97sCS+xV5Fxk52z5W9shj1g2
	IPrZmvvQbXeTpglIANYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCAD-0003Dk-0Q; Tue, 16 Jun 2020 14:02:09 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1w-0001cP-Pu
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:44 +0000
Received: by mail-wr1-x436.google.com with SMTP id t18so20880241wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iXboMnPmHQIHtE6HM9vw2yFF9ZSbpIwzP+DcxPet0tM=;
 b=Gzss4fSM87UaJzKPYU1n97qDJ/Lt4naG7zj/ylaKOxQcfvgQwlOVEPEJVfJK5HwM1g
 cjls36HJTPepPLCgXPKKpyp2TQgU+EwueaQMze1ymSMXJSK1shpEAZXlG8rzy++Sn2Mq
 mh90+tN3dXKLYTR8DpTZhG4xLQtsdLcUojWAR6e61jOqSt+yLqn7V7tNftayIolSudFG
 PdnRju7Yx0u8evzXHo61udcbBSjq2Ct/AXv2s2ze/HB33F64IwJVB5nQN2of81qtphjJ
 xs1qfXCbvqOrkdjT/XoB1c+BgqiWpOgDQ8QFX/Rs+CMtLo59O7+77vSABlNIri8MMjUT
 9Alw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iXboMnPmHQIHtE6HM9vw2yFF9ZSbpIwzP+DcxPet0tM=;
 b=Q+s6rYZfKOVB42wjQwChAODEyR2XM9C4wSL1RjS0MaJOqMvfV4PE7GxDu4nMQaRfl4
 1oX9zjTINgB0lqgfpjFpMMhqvr+fdGuMIBVdCaNkR3m5bcvmpQlgEo2r6qYGw+AHCncL
 2AKRyyJOI+pYmyQNIUseXInoITZHQLtZXpJUmUgdgdl46KFgz7AayoD4QmzCV9ZgyDAX
 zazXtu8wt6Aqwlgux6CUYNAEBTlJVECP8MUkT50CWmJwoRmCy/4eDoF9Vsyyv8pYmTSN
 Fu1XDSyWw/LuPX+mIQxz1go+BAZly8+HdvTYOXpFS/2qeYgnWGgcS0Hkt9ZK2P25Hzbf
 0yfQ==
X-Gm-Message-State: AOAM532fwkDa9OgCTaw4xnXayC2dFT6TQiX+FRfYcNX7lb4yt2dPtyGZ
 nlRfThdCru9g0Gn2v0zcsEM=
X-Google-Smtp-Source: ABdhPJwAabq2qictYV0u1lT6v7v69dvOMKqGISfWlUh+49ofOGrc8/Ekt+ENvEQoYlPLglQJr4Dw1w==
X-Received: by 2002:adf:f003:: with SMTP id j3mr3224077wro.228.1592315614149; 
 Tue, 16 Jun 2020 06:53:34 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id n204sm4389946wma.5.2020.06.16.06.53.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:33 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 21/73] ARM: tegra: Add missing panel power supplies on Nyan
Date: Tue, 16 Jun 2020 15:51:46 +0200
Message-Id: <20200616135238.3001888-22-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065336_877525_A0F39980 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:436 listed in]
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

Both Nyan boards are missing panel power supplies. Add them.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra124-nyan-big.dts   | 1 +
 arch/arm/boot/dts/tegra124-nyan-blaze.dts | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/tegra124-nyan-big.dts b/arch/arm/boot/dts/tegra124-nyan-big.dts
index 4d14dec21af6..1d2aac2cb6d0 100644
--- a/arch/arm/boot/dts/tegra124-nyan-big.dts
+++ b/arch/arm/boot/dts/tegra124-nyan-big.dts
@@ -16,6 +16,7 @@ / {
 	panel: panel {
 		compatible = "auo,b133xtn01";
 
+		power-supply = <&vdd_3v3_panel>;
 		backlight = <&backlight>;
 		ddc-i2c-bus = <&dpaux>;
 	};
diff --git a/arch/arm/boot/dts/tegra124-nyan-blaze.dts b/arch/arm/boot/dts/tegra124-nyan-blaze.dts
index 2a029ee86dd7..677babde6460 100644
--- a/arch/arm/boot/dts/tegra124-nyan-blaze.dts
+++ b/arch/arm/boot/dts/tegra124-nyan-blaze.dts
@@ -18,6 +18,7 @@ / {
 	panel: panel {
 		compatible = "samsung,ltn140at29-301";
 
+		power-supply = <&vdd_3v3_panel>;
 		backlight = <&backlight>;
 		ddc-i2c-bus = <&dpaux>;
 	};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
