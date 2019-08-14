Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248108D633
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyDEgwpndgzfoeZ8nE9drbOkUXURsRRfmLVDdmVbf2A=; b=VQ1oMoW2cazJMd
	+Kjojp5upWLKT9R/QEDDsntt7wWEWJZGPMwh4O0qpOdgtEiLZzoFpTxprDBZQtdesruT4zj2AtnB6
	0OcuQma1hGLbhk2yGsH3wCo9eZZsjXruSCdJ1Kmb68lY8Ztbd6I3EeYllr3l+771VIs5LFTCjuPEF
	P2ia0oulxExIgGucUtKuxXx7NVBiyMaMaUcQ9nXS9bdmxjkJ95Z8KaqnyirPr/P2LVyqJU7U8eLoa
	fqgfYHp7yKmzLFul3Tkk+2wOoyT19rP+ePMAcgEp3e8RfPXgzvE8eq95uOeuDHtknbOWeVKHpYX/m
	upVLbqHlZCXbgmt8YjnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuKN-0006gZ-Fd; Wed, 14 Aug 2019 14:32:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuHN-0002Zl-U1
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:29:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id p74so4782140wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9DsqMA3qFAXn24pl05ljozym+J7gax0j6GjVntAiYOQ=;
 b=TDu0To1gCBZ+0AOKz7IpaNPzK0Nklzt+Do4HG6UBKz8GHnEaskp1xeIHtdmHB5EGwu
 HQ+THz3WwnyD7hPhYAFN+GWMKRL3iUd8f6j/31JnYDhinQr4mk8ffnerVi4mfd1iiW7b
 96z9WAMcmvYshPheRCk5Ri0HObVUdnQdgAYiantB/y4xjGpUSm803U1c6ifMGhar3U6l
 1ppMmmVTnxYkC433993KQzu5XxnSIJbVTQ7bLVphp22U5smc2iZkmmfwqoNZZC+eApgf
 3XCecNk8mgl6nFbPeeo1dshRnLdmhAT1PpkP32hKuxHyvrmDnRIEB9ONN6nnWnoX92W3
 JFyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9DsqMA3qFAXn24pl05ljozym+J7gax0j6GjVntAiYOQ=;
 b=TxHdcyLc9PHKbuLjYNamTjFS9YNFOHyBgSN4ASwFFTjUsU2ozTiQImN/J1lFEW+GmN
 VvdbOalnJ7vVdIn+Yxsi/aNKdfgEurNmgZ18UU0kVruloD2x9J94Ub3L2KCvE5yA1o3D
 nzfH/SZx5Rokonuzh3yfB2Fsa2VVOKXabddzrALBZPSRUsOmzwiJ+9275HWcMjTS7/Zv
 FBbQsY/4ZWR74u4YXeoKqwjrJ77MK6EDzBpXdJHKHALMYhPf4TXswPvMXI7woLIWml/u
 t0faaLjPAfHS8Cshl4xxIX2Iy1eLNGDp9sIENQrtWyr2jZt1nZbV8uDdIwwq7XK3tMT3
 H14g==
X-Gm-Message-State: APjAAAWzIPTQ2EQwdOITqPJge2TNpemKbXWfYZ1NvXzNb33nOzGgM6Y7
 NAK4MwnTvF9/lWf2PnfVsuJRHw==
X-Google-Smtp-Source: APXvYqxaYmczp3cYsY3AQw5hAaTzvtpY7hpeQlM/ZpQaPs9n0FItyfE0GfptHr27uq56N5g8qEPzQQ==
X-Received: by 2002:a1c:6c01:: with SMTP id h1mr8773247wmc.30.1565792966998;
 Wed, 14 Aug 2019 07:29:26 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:29:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 04/14] arm64: dts: meson-gx: fix spifc compatible
Date: Wed, 14 Aug 2019 16:29:08 +0200
Message-Id: <20190814142918.11636-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072934_032237_D5E671C7 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: spi@8c80: compatible:0: 'amlogic,meson-gx-spifc' is not one of ['amlogic,meson6-spifc', 'amlogic,meson-gxbb-spifc']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 5b3dfd03c3d3..e2cdc9fce21c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -317,7 +317,7 @@
 			};
 
 			spifc: spi@8c80 {
-				compatible = "amlogic,meson-gx-spifc", "amlogic,meson-gxbb-spifc";
+				compatible = "amlogic,meson-gxbb-spifc";
 				reg = <0x0 0x08c80 0x0 0x80>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
