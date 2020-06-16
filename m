Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB2C1FB3BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/keyvXbTJitgNqiziPvTjO/0Ocnz7BIAJbSnjQD/H0=; b=pJLxHiT4ndt92P
	xy+cOsZMCbGcyP9v91EYrrhMx1NXsIg6pNl19ZBoVJKGIcYmI3U2TqzqDcjk4uFjJ+W09+d6DeMyL
	7rfDNntT3Rd8BtRSvuDXeIdKayXtHTTYCq09Fr3d2JjNQkeHFZ5wz/NZj90zMrX+veJyL/yNQiYTg
	rhYatzuIVhUfLffZzwdMuTMHiahlAJCuO75p7Ch7oXFE8iiIdcE2PHRPJUJ8DSaUQoDAcRDQ/D+tO
	WQ3wjul4A/DJZxWTyeTzCIktDOrbNJgclgMVBsH3QkwzkJOC2nZuVcZehM9PTrSia8z1oUajqvTlV
	Xur9eKiLVpqwvdakM90A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCHr-0003Wz-Du; Tue, 16 Jun 2020 14:10:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2u-0002FM-3x
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id c3so20835087wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DsMEBu9NP9UUnrvFSozUxYI5IG1Tzs7z2nhgLx138Kw=;
 b=TYuAs+ichorplRDnKFjy5+wdST2QdxG2MQEjOGuG6N3D9tsnOS8hd30/seCLwr3BRf
 rMxswnZF3pLQ/MOdF7pje08j/pVVRLQvYZ2n6jXzrc9jVYIKmQB7x/4bqoMc20TGe0Gs
 pvrd4hDDRvO/TkoIXgDP0vlbCItqRasuWjsjM6YQYu+FM2delgXP/E+8GFHBMkxELA3/
 qqn5pZe5dh0xWrKcTnxB6w72gAorxmEfMNO/nvNmLEQynJyOeyGyGXzkyjnBpZSGvBfa
 mufKqccFblqKKEzZjof++zISk52EE6XsdOYqM7pxJ/JUZ+qpxTojY0u/WQmE+oqI0u1x
 ASqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DsMEBu9NP9UUnrvFSozUxYI5IG1Tzs7z2nhgLx138Kw=;
 b=R3GqjSAGTG+EDjV0iQdPy/hQltAMIaui5rQ3dxIdud4Mi0r8ZLor2SgQ7uWxkc3bC+
 9sGcjMvqsOpqjXkIlGPIch8UieOLeVOC3HB/PA9INqPP1bWkFLy/BI4kaj6guBuSA5mY
 oV37x3ICghHrjZddLY+AE8DMe2+z7pwuyqbAk3np/kWpLcoQZLlRkoEcDYGzojZA5iBI
 wRqsOUBiHsYnsCUtWxS6QP7FKHPJX0g8Kcs2oOV3wnUMX22jZrPZbUQtv9cvH/Ep9Vt6
 2punoxXgZFh3hd34S0YEjr/sp0JRrGTLeipbsOegehFUIijsIF2DPcRkIOYMcWmJwlSb
 LmLA==
X-Gm-Message-State: AOAM532gZ2VB5r1/9qRcx2+EperscCCxYr4Yi1abUBD93S09LCNKbAs3
 gkeHWjWHEHvPsdTfNqWcUBc=
X-Google-Smtp-Source: ABdhPJznnUL6IMuByTTUPBiG8/VVwZkC1xDekBIRj48caOYej4Bxigd09Z+B3ADwTKz4kl/FQwlSqA==
X-Received: by 2002:adf:f205:: with SMTP id p5mr3442281wro.302.1592315673042; 
 Tue, 16 Jun 2020 06:54:33 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id w17sm30543978wra.71.2020.06.16.06.54.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:31 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 43/73] arm64: tegra: Add interrupt for Tegra194 memory
 controller
Date: Tue, 16 Jun 2020 15:52:08 +0200
Message-Id: <20200616135238.3001888-44-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065436_217934_E5543161 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

This interrupt can be used for the operating system to be interrupted
when certain events occur.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index a50504a317d7..73aba724bf67 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -179,6 +179,7 @@ mc: memory-controller@2c00000 {
 			reg = <0x02c00000 0x100000>,
 			      <0x02b80000 0x040000>,
 			      <0x01700000 0x100000>;
+			interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
 			#interconnect-cells = <1>;
 			status = "disabled";
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
