Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C301FB3EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lwo0Y5rM5UKfOPyI2rzEdmkI4U8F8gjQav2usXqpx9Y=; b=bsZhHtMGkdgqiu
	CRQxRL93+DzITezTPUIf0a6qEFqXmcmNItafsXWqpW9l0zU2MCViMXalhipcej8dmRUvHYqt6ZBMK
	LvZLTTRblv1NIhbkgFayucub8h6e/jqUGwFo4GVq9UA3X8aWDnhxtfs5MaHiNcpm/a302hQqKz2Mk
	sBBCz25jGedcONjmldcQo4dMrYT+dLs+JHWeUlhtKLXLkxygqujri3htDbH2efIpZUgzfPa86ScMs
	WwLGKVodYG1yRbWLZQlvsQTixYp2QrWbhhY6PF2VcWZw3YnCVQ0UUNxvrfhbWdoCvZY23kVqGLG2T
	0vvcTdNmqvROsu8DaicQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCMS-00016O-OS; Tue, 16 Jun 2020 14:14:48 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3O-0002q9-4B
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id p5so20850629wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vQrAbRZWbplxXwXzb0xz0CFwouZ1zpZU0LF6qFAbzmY=;
 b=Vdtswjqnt7aRRSednGL+53hFv7Q+f624Hzp8hQvmP/OKUc0KiQD0Ayg/gX5zo+q6Gl
 cvv4oOJKUhGlQIjqRHbft4r+64G1TSzWcdIlh65Xp0MyMcDNxSoUGV58/81ahN4Hynn0
 OBqjmncB/X4MkzZlSzSy3SN05zmRT5TtJkzAoQxMc0KX7ShVKrAp6f8xI++pJvixJ9h6
 rgMBpCVlYdmu55sRN2+N3nuZyJHfDFgfRxm0W41qBebXsjsoPpvoL+QEVmWHo78bVYgL
 3hA9Z/FyHChMWI65fwUkrkd0zfFanOh4kqrpYLeSLlMwegyK4O+TLBSA2vuqxhCYVUl+
 DhKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vQrAbRZWbplxXwXzb0xz0CFwouZ1zpZU0LF6qFAbzmY=;
 b=fSeq/kAwGXbtzjey13qkAvcFheh4cCVociSnqtZaXEB++wQ7MtPQmza5Cgc+fiuR0p
 NUf2eyd/kP+586T2pZud3iymUr56qyAnzLj6tPEZLkIbmE+jW5PDyZzLQUZ+Suk+wBsm
 LpLHlWCTV7H8RrUOWCj4pzS1PvfrREhWr6AEBbMEsSBB6tMDkvdW1a1ZE5J7vu7iABXm
 kJjCBxSbiCHjyyArL6VJoBXzExv2Gn13YQgdFvp0zGXJFRI4UQYae2t89jDkSp6uDL1i
 VKk6KOROgggtpMrqJJAgjDMUVDPPLRF//WTEag25aSur0u95zDRRwJCc5xvinwzRQw84
 FZfw==
X-Gm-Message-State: AOAM533ZeSrzJUUIN5NTO0p6MpjrmYqWaR/qsTEAvfHXC2tlZR3sI9eN
 pxHWMgVXBXgo3k0AXC9N37sPdtge
X-Google-Smtp-Source: ABdhPJzHESeXsUzSgo3PnNTDbYQACYi+ZtOvWBdX00k0HBTT05FT7jTYO217EKwC3e10LeR2qrynOQ==
X-Received: by 2002:a5d:6391:: with SMTP id p17mr3449332wru.118.1592315704674; 
 Tue, 16 Jun 2020 06:55:04 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a10sm1096598wrm.21.2020.06.16.06.55.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:03 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 57/73] arm64: tegra: Use sor0_out clock on Tegra132
Date: Tue, 16 Jun 2020 15:52:22 +0200
Message-Id: <20200616135238.3001888-58-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065506_303073_15591128 
X-CRM114-Status: GOOD (  10.46  )
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

The sor0_out clock is required to make eDP work properly.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
index c4d3a88403eb..6d9bd9cae388 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
@@ -141,10 +141,11 @@ sor@54540000 {
 			reg = <0x0 0x54540000 0x0 0x00040000>;
 			interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA124_CLK_SOR0>,
+				 <&tegra_car TEGRA124_CLK_SOR0_OUT>,
 				 <&tegra_car TEGRA124_CLK_PLL_D_OUT0>,
 				 <&tegra_car TEGRA124_CLK_PLL_DP>,
 				 <&tegra_car TEGRA124_CLK_CLK_M>;
-			clock-names = "sor", "parent", "dp", "safe";
+			clock-names = "sor", "out", "parent", "dp", "safe";
 			resets = <&tegra_car 182>;
 			reset-names = "sor";
 			status = "disabled";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
