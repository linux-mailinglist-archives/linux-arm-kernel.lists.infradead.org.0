Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DD21B2AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 11:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8th4r6Dd96Zmw1vaoMzfyB5CGLUeCZtVE+O5HVj2jQ=; b=NyHTrhXS+QQqwG
	K434gG1HCyQzeuW57Uxtc1Jrp8yeZusyn0WSoqe+kc2mlIKuMOpGBsVgnOmKYHoz1IaABJ6WQ3f3N
	aPn+VSQMwDRxizTZjNEATAudTp4ZIfMyU9m0xCcne6tv3YIpSGiEVswgyEuAqQ8priIa9YPfK52GA
	2WcpYReX1R6t7CBVPit78GA3hCwbNRv9Nv+uVZeloZVMh7/RaTOs6YQDo7djZRnGA1Mw0RYxxbvlV
	AWeRWZI28RGsyby4/Uw25I1KBmvPw2qXkGag3GiboVlAEd9WD5Oafx9gNWVXTy+00kqYbA0RZl164
	/Um+ChKmLs18+j7vDuyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ74M-0005Uh-Lw; Mon, 13 May 2019 09:16:26 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ73x-0005As-H0
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 09:16:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id 7so6876314wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 02:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Uv+6NV0EmUQP0o5PRDrka5VQ1Yz7shhQm+scRcHDJZs=;
 b=PrHEdLQWGkg3wCKaKVYVhqAgvxPN8AddD8F95eEsou9MkjYYCZfe8HTRgUxYpGYN2b
 dr6F8D0T0TVej18Ri4Aks12ZaF8HmNTi7cThd35lyB2PszuStakgUBYBcK9h8s31i4xv
 mqqnjpunSO9yctBrY5DWzTRaQigPMcCpEO0FkZ8Wb09WV31zf3E43Mi/N31I8XGJZsX1
 //dhG1QQ4C42WTEthDahd1KJkSixjCpmq0cBCYZQs/sufY6iHsiQNYHCsXha//f4zguq
 L420INpGoj9ekK6sGWNwonoow3OXe00RfTqx9KMS7TJVnYhYwMlm8OXI1Al61wWvXvlw
 dQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Uv+6NV0EmUQP0o5PRDrka5VQ1Yz7shhQm+scRcHDJZs=;
 b=tmBsgtYPVqFTzXAxzp76U7AGDVT+bEAn+/x9frkQUh5cLiW7Ptb7E3S3nObeE53ZA9
 TfWJ5mAC1ajkem71R5O9Y2hGrfdk18Cd25v8KwD5gxHXnrQXp8Z0SGt8NxJ2MiaY4UyC
 XZoS88NhzyYGoONNh737L7rCLwMytVhra98vemttVcnxeU00/D8SNusDmNjtBmcQkKqX
 gJqYW00w89pb9ugenZ5N3Jx7tQgmbER+I3lP2LfPgtmYaDU981R9DK2O3DEqaaa4Ur9M
 BuI01w6D+VpDNHCjfNbu9zCumOi54nLUbu0ujAoGokB/XeQ+IokMNVmf7WxawJmEgqJn
 0JiQ==
X-Gm-Message-State: APjAAAWY4LPT3wiXnObrnfHNvs/8hk6OGtNqLGr0Qx65RkKdNjpWqUfX
 3q0kEKJPLmEmydS+8ezoql2udw==
X-Google-Smtp-Source: APXvYqwuNjtpZ5nXSONgqhfVluLzVKMVlAKJH+3lkBCN5WTnF8r/Y/p4FvW752dLN2C/gZJVrKB3uw==
X-Received: by 2002:a1c:d181:: with SMTP id i123mr15521449wmg.33.1557738959761; 
 Mon, 13 May 2019 02:15:59 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g10sm10795091wrq.2.2019.05.13.02.15.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 02:15:58 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: ulf.hansson@linaro.org, khilman@baylibre.com, devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: mmc: meson-gx: add ddr-access-quirk property
Date: Mon, 13 May 2019 11:15:46 +0200
Message-Id: <20190513091548.16674-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190513091548.16674-1-narmstrong@baylibre.com>
References: <20190513091548.16674-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_021601_563787_801A29A7 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, baylibre-upstreaming@groups.io,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Amlogic G12A SoC family, (only) the SDIO controller has a bug which
makes any DDR access from the MMC controller fail.

Add the amlogic,ddr-access-quirk property so signal this particular
controller has this bug and needs a quirk to work properly.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
index 13e70409e8ac..f8914dab06c6 100644
--- a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
+++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
@@ -22,6 +22,10 @@ Required properties:
   clock rate requested by the MMC core.
 - resets     : phandle of the internal reset line
 
+Optional properties:
+- amlogic,ddr-access-quirk: set when HW cannot access the DDR memory, like on
+  the G12A SDIO controller.
+
 Example:
 
 	sd_emmc_a: mmc@70000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
