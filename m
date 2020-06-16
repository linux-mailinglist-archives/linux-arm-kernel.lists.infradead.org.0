Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 171201FB2E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SH1IxJsRUNurF1CLddC4wEfslCaObPeCLWamM30gjIM=; b=fT8vO5803FoC3p
	Akeqro+QCuktcPMOxQGF1SPDKfTFu8G1VI6WIfn7X3HVthl5TRvpwFWkN1K7JxNLqXW+C7CN55Tsi
	d1cXahf12zDsyy3FxEqkAP3LxYY+GVbt875yNqtCaLFs97iLZp6TxEXNL67dW32tK39JGgH72ylS4
	qKjCKquWdW1vjjlO1F30cjYJIVXrnSpPVZS+czKXyLDRuOihsyQdFX83tRBX58kGvNGsbQ5JmrMMh
	Zn08OvIty9DqnmODw/Ip+uXvWrcE0oHd2jAS8eRq7MBiuFYhWcCleiF8TEbE5ONcZg8NX4JjKUE6M
	khmEd2a2745xycL4q8Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC3y-0002vt-Bn; Tue, 16 Jun 2020 13:55:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1M-0001CE-5Z
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id q25so3186089wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZXEbv/x0T8NRWftaB6bwURGcBWmiOgCAbqfov9/KHNQ=;
 b=GcI+noiGq+iar/iB9yA/a6G+lmoNmtz702DbZ4kkXaeiOq0uu4/ohsCgQ9khUokXDX
 RAtBWdx0+DBSnNEn7PtwQyCUDTarkzbE2WwaRX7EGPXkopOPJ3R6yED6xCU4Kyi1Y4ys
 A2Xp3dWVyIQmC6gyr9LuNhguQ2LToFMcqHXuYzneXQeg16sZ3GgZYGmfW+JH8xJsUaU/
 di6Vz5y2+RfQqMmWFtVUomfLiDZckEO8ycgzwIWT44HAC0HKD2x4fQXRV4jl0gxQsYUw
 Bc5Y1I5z5MMyxTMUN7XJUgFDiCqVJ830Fn5nACeMHD9V8r1dQ1ju+nEuNu0KShIQdME2
 vGTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZXEbv/x0T8NRWftaB6bwURGcBWmiOgCAbqfov9/KHNQ=;
 b=R4UbkoT2L+BDo3IyheCsN85Qa9A30TKj/vUHH+vMaB3s8uuiXRxWfI2e1MJlz5K6Bh
 yhZw3jaBbbUXdC80Yc4ISB2uSJp7njRbLOLfLMWXktj9LOdJtOKL8xYXeioHrg8v8uDR
 E+t/j3zsyq/l204V7eRZStTc6WwS5ZHUMJeKbsS44pZPQFjtygDZkRSYGAxpxllMzEuE
 zuIVNJwPxGE4TOymGQIyvkG9hxpweJ6dWy7qb62MbwBWhFoaTQ/KBEj0NOxwh+ElT3DG
 fqG/TPxAJ1w8rWpkYKihq6UGp0uxN3US2zy11WtlgvsnEFEvQkgoC2Cy6XJXe03Jf5A0
 OHHA==
X-Gm-Message-State: AOAM530pT9HKzQbcFiG2ePP4EuDPlbqajFDPuM+ZxPpOs1vhJf47bwQu
 J0zwU7czEYZeznUOQ7EHkhk=
X-Google-Smtp-Source: ABdhPJwKRsi2fWVS01SU1sG57FGp8wzYiVSftb5oP8Yg8f8uc9tXrRvwipsqf5xc1OFluycle2Exyg==
X-Received: by 2002:a05:600c:2218:: with SMTP id
 z24mr3269785wml.24.1592315578629; 
 Tue, 16 Jun 2020 06:52:58 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id o15sm4079926wmm.31.2020.06.16.06.52.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:52:55 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 05/73] ARM: tegra: roth: Use the correct DSI/CSI supply
Date: Tue, 16 Jun 2020 15:51:30 +0200
Message-Id: <20200616135238.3001888-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065300_410875_D77408E1 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

The correct DSI/CSI supply property is called vdd-dsi-csi-supply, so use
that instead of the wrong vdd-supply property.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114-roth.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra114-roth.dts b/arch/arm/boot/dts/tegra114-roth.dts
index 5249afdca577..7378b5d6f2fa 100644
--- a/arch/arm/boot/dts/tegra114-roth.dts
+++ b/arch/arm/boot/dts/tegra114-roth.dts
@@ -37,7 +37,7 @@ host1x@50000000 {
 		dsi@54300000 {
 			status = "okay";
 
-			vdd-supply = <&vdd_1v2_ap>;
+			avdd-dsi-csi-supply = <&vdd_1v2_ap>;
 
 			panel@0 {
 				compatible = "lg,lh500wx1-sd03";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
