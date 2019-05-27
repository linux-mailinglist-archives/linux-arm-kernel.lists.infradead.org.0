Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99C22B6B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Doe80rgwi65noa0UtCLr0MuI7+GOdpQM/g07/5dsss=; b=pw3OstSAh0IiRn
	7wvjqzp8B6YppsDbGB9zU8XedCPTIBuhxgkDDKmBHOsVAJEQqYRuxGQzHHV0e9XGUFXNNZxujjMZ7
	DSlqOFPzDv5xiZuy7A0DFXEyH2MHPbSbNSmDM49e+xHg49KbWAdiJb7BP6IOJDsfPN5ggTSexHtfX
	NxaLL/Vbt54iLtaj681xb3bdAd9VoUMKLN+GRoQ6PTz517UNJ9V1+6mLdn5bjo79/O+aDPxN/o44j
	I/Dxf8dhm9/89B9+oEohtP+gfiSN1WRCl/gVV/yiY+w6eXcNkBFP4So9N93MpW3ktS2+p9My0hT3Y
	16GQHZHWxr4yrvY4VdGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFsy-0006R7-7L; Mon, 27 May 2019 13:41:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFqK-0002TA-Sb
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:39:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id f204so16218544wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dvB2+EbZJAEiPxI5LMXTznof0qGaQVfAy18zyWtxPt0=;
 b=WtFYkrtFYIRoQD5BySh2Q4euh/1w/73nMtXzlp6fOr4QdtCp67NecdupuFYep2yx+o
 bXdszZLxCNU0cXnVp5weVpCI+5Webe1BRaI8zeO2VS5lFgBDHc5HugKN/h5oa/+rr13j
 l0p5hkbf7W02oisR6u47h+JmtThsqB2DcRyw5fePoD+/UK0sP5PzTpT7DP+TzwhF7Hzr
 fLlphusxj+e4iY5eMC82Iab9unBz3wTBbrYvHB8cRilF0YwYYBxGdZK9TkP+EmtG4obw
 A0oakQ1AsejJ5bZlLAXZ/Sxhc5qsO3A15kFhtQH1KUxLTIFxGjnnq6xN/Bzr8o3/n4Q7
 i+kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dvB2+EbZJAEiPxI5LMXTznof0qGaQVfAy18zyWtxPt0=;
 b=ByXHZBrBaDQzLBH6539WgiymMQuc94hqz9sDUOPiTedUOPzay1EpPA6ppp6RaR1PLJ
 6Va7MDo5FLgp1qnU8RyKX6EfsjZKED3dLy9FjNT8N7GSFK0nt8KAmryN5KUWNuDGJWDm
 577yzhcxzuEVeVCJ5FCJfCJemen69nCjjfBW1g7kj1PNs7kCv/HB+4D3xH7ydbWHKYC0
 uCfBPlfpS13LFLcO9sZoRcRqYmHP9VUQcMl5wpyux+XI4JpJMbC+bnEoUzfobsU/F/Q5
 ZCvXlfYQcWMdpAkkX6LWwWfgq//jfBzRYa3VLb6qxMybjsrjeSPKNtAnaPLnxcxOcVAe
 ssdA==
X-Gm-Message-State: APjAAAXD7p0Fz1Kg8zoN/otQnKOdLH9pj5Qqzbphh006tU51/aUenQw4
 JJAe9dLxXtOnSArEYDO2aeZCLg==
X-Google-Smtp-Source: APXvYqzKBKq2uRyEn9/t3GONp1WVHuQyd/kWy1EzaqK5fAviCM453t6ahqnjUeVYqdyG5IZiryic+w==
X-Received: by 2002:a7b:c8c1:: with SMTP id f1mr6568223wml.164.1558964351405; 
 Mon, 27 May 2019 06:39:11 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a124sm7838335wmh.3.2019.05.27.06.39.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:39:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 10/10] ARM: mach-meson: update with SPDX Licence identifier
Date: Mon, 27 May 2019 15:38:57 +0200
Message-Id: <20190527133857.30108-11-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527133857.30108-1-narmstrong@baylibre.com>
References: <20190527133857.30108-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_063912_948610_99D12BC2 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/mach-meson/meson.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/arch/arm/mach-meson/meson.c b/arch/arm/mach-meson/meson.c
index c8d99df32f9b..04ae414d88c9 100644
--- a/arch/arm/mach-meson/meson.c
+++ b/arch/arm/mach-meson/meson.c
@@ -1,16 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2014 Carlo Caione <carlo@caione.org>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
  */
 
 #include <linux/of_platform.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
