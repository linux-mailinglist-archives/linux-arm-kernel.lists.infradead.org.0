Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B031944E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oa/1nZt/9M8xS7VxGUCQ2FMjvFdrFgvMdhPpHq9ZeZQ=; b=oiPxlRDTaReRka
	k12v11alhC5nEEYAbA8L7Hvn3BJw0tymHyLEKCcFnbgSNGdp72y7MvLhWvmyGgDh/kknzLxhvz0sM
	Dh5eTfuM90lPxSczrg5J4fSPP0Lay70FOazbFnpKY10OzoASTUWhJwyDwc9N8DdDRAVe1sR9wAtd6
	AiCeaOGp+kW2vvIW6hMF5ZIw/VF4qmpuLqW1fSocBCHM22+kPGiXZTalSFRbptoZbw6tVjT+SD/o1
	G3Bc67y46RZspTUF6fVKCYkc8Rewq91joGnKWVt2vLFYtkB+XVGb7iQIFG6MXoUAThGD8c1JNBxOJ
	y81vtAhY/1P5sBhFA2dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVtK-0006Q7-Ng; Thu, 26 Mar 2020 17:02:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVrS-0004TF-Fq
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 17:00:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id a9so7847016wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 10:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gxa9/8xWJiWiAnJoP5kcdi2AFtJ6sEZwxgWVvybuWHI=;
 b=wox7ZbpJR2NASF2XImey0+PMq5gjabP88qzzrAzsgIO2mqkDbs/puc5HB0nHa32xQk
 TXTvt06zZQwxr82wCkOyNUqWip+K4gcBV0/yfjHqZOB2D9CwNZ6+d/w1wm8ff5Jp7Mg2
 8Lswl8d+TITSc1mb8W4blydnLKgn7V84yBF/4TqWhFxhMPejKD+KiwaoTTjY/0FKBL2y
 /NTigJwaM8l7xFWt9jldZyq1e7u98g4b0cMCCv/UHurzcEBLY9KYDgbvAoBbqGHoBZrG
 FmX+xIPglME3YMudrQ6VCcj1v99R9WvBJ6rm3wuXXvuUu2BmMsxpah4S18PQzuMUERF9
 LwHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gxa9/8xWJiWiAnJoP5kcdi2AFtJ6sEZwxgWVvybuWHI=;
 b=oBgIbP3RsyznNSecLNKIotXaqUfnf5wK8Wc1dOyjWA+Lo7ek9GEIYTsFHK9Gx9E2OM
 0FiKiow3pBPIfuQeSo3W10HBOlwYne22a6enlOU41Dfaa6IJb4oI0G7CLI81S1xocu9c
 Af/19nQw/ubGSJA06Nlz7XUKeXwwiRf6BgmMk0CvAtVuhRClUmerpcmKpnnZyo78yaiC
 UQu3MVnpm7bACNvYTS/ZrRpPQ+aNCNIeQTtEVo0CGpu7QweX9s94ZkKjeFkh0zPLDgAU
 y31YC1jhcRCGvE98YsWhTrzgjevD9C3aovC+e+TTEIwmYyp+SUFCclsgkZSHWvUSf08X
 Q2Dw==
X-Gm-Message-State: ANhLgQ007Ein1e76gMvVJh1ds4lFRzcP23ALdrKLpFMqaSyeuYNHHfGe
 kXTY/9aIOEaEc7k4IfglOJ+uAl+1gJC/Xw==
X-Google-Smtp-Source: ADFU+vv6qM1KmchXEKdNWuCW7bywdYt5WvtsW2577e4jpNyneZiOrb68QnerCwIAlSk3xpt9y+hc9g==
X-Received: by 2002:a1c:2c85:: with SMTP id s127mr905935wms.18.1585242004777; 
 Thu, 26 Mar 2020 10:00:04 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id r15sm4609823wra.19.2020.03.26.10.00.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 10:00:03 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: sram: Add Amlogic SCP SRAM compatibles
Date: Thu, 26 Mar 2020 17:59:54 +0100
Message-Id: <20200326165958.19274-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326165958.19274-1-narmstrong@baylibre.com>
References: <20200326165958.19274-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_100006_676585_F71D869F 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatibles for the Amlogic SCP SRAM memory zones.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/sram/sram.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 7b83cc6c9bfa..0aea3d239a48 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -73,6 +73,8 @@ patternProperties:
             - allwinner,sun50i-a64-sram-c
             - amlogic,meson8-smp-sram
             - amlogic,meson8b-smp-sram
+            - amlogic,meson-gxbb-scp-shmem
+            - amlogic,meson-axg-scp-shmem
             - renesas,smp-sram
             - rockchip,rk3066-smp-sram
             - samsung,exynos4210-sysram
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
