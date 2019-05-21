Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2925245CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:56:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPRPNg1b7Z0UJ4WM8kO4UvFSttvIl7iRZJQ091JSAoU=; b=NWFiNQijMg+c0J
	yY2eS2whxrEUyLMAVWeYbyxMefzwsgaZo1YpaliXVpC5vbWpsUeRjQVtnFWc742d9AWt0CdFydwGs
	NkGG9cfQp8nUEhlQ43spTNoVYTLmafG/mWSdYPQZ+4uV53lpWXj9iC0A3ATlDX1nyb9QX3snad8lt
	OVGmeCFzlgAwVU8meXNv2RPSZQXzJAi6sUH71MWcBXe49OBpo3gI8fMhfLXK0TxdsG/24p8aiKpBv
	In5dahmkn5p2fZJot78eYdkLC7bQUtn7GFvjGcBB/czuKygsCd6A5dcuiCTAUAxKwym+zRWyrF/6W
	hRdkl02z50NEP9XRryhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSu0v-0006Zw-Av; Tue, 21 May 2019 01:56:25 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSu0o-0006ZO-27
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:56:19 +0000
Received: by mail-lj1-x244.google.com with SMTP id 188so106420ljf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RK6ndkRTWz8BRsPXZTsaKWRwNL0f5R2SNYL8g1PubVY=;
 b=fN++ytDaN2pdbW3qPJHuazRjbjGW93QeXRud1kirzcB24kojHFKuLHo/Q6ofObZfzI
 drBGDRy8JnFYmbmJKgvlKFB/w/mtfWze/pq+bs33lgu3FB7JH4eLGDwB+/krRHKduFG9
 0XsgBbjZv3ZZQydqiITemWrZViesD6cRFBcAgl5orc1tHA6BL756HNMnGvG7venBISRS
 Am0kBLEvJgdFSPhp4VTs/vXNNFc7Hz/QvHto0XwJmN3FxOpm5QroyhJBqKcbRzTB6jIs
 42P1QmteyYr0E6te8YkFl0+npUhQ5awAKmmKtTDPFMgGjaocaCoxD2iAOApdZfKkbIjY
 ZFDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RK6ndkRTWz8BRsPXZTsaKWRwNL0f5R2SNYL8g1PubVY=;
 b=STVdhjairBw2g9708ILQpeVLKPCTQ6xOM3Os8FtkgCqFmptNinXHIjjwUiKFDD2epa
 2kNq6hNzZINywXQwoGPN7nIRFlrBNn+wLl2UEyi8e/OoKwFT6c2Cdy5M/Vf8oTLl2Hsa
 1wATmsX60YjL7Py8Y3VLTNDssLsulS/fhQ+SZqu7eud+30JJah5RUgA70Y5abloGqie8
 TzhaihISVcsO8nvtP6JbjJuyNO7j474c76dAmum+cLBp5b9dBJWyTCY0jKGNxbZP4VWs
 9IXf/NNEF3kKrbgdr8xV20WURc5ioTB4wM00vR82ML7AUZRdc8HJYMkZ5s7UdBVtTRLB
 2KDw==
X-Gm-Message-State: APjAAAXMHScEmbYV/XFbgk7r5BYkUdkGAVdcgGCDyUP7rG40WyFelizL
 Gg09lXff9rydeKx5BR5xa2IBfH3xkC4=
X-Google-Smtp-Source: APXvYqwC10WQL33ClqRv6GNVZB+zkXfD+IFesVBpoPQQoPTzcfDSttTeUBrfgOnpV2vNdnVSYXpPyA==
X-Received: by 2002:a2e:81d0:: with SMTP id s16mr17362430ljg.42.1558403776060; 
 Mon, 20 May 2019 18:56:16 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id i74sm4415508lfg.78.2019.05.20.18.56.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:56:15 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] ARM: dts: versatile: specify AFS partition
Date: Tue, 21 May 2019 03:45:35 +0200
Message-Id: <20190521014537.19238-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521014537.19238-1-linus.walleij@linaro.org>
References: <20190521014537.19238-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_185618_108170_C27A5A2D 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This activates the AFS partition parsing on the Versatile.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/versatile-ab.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/versatile-ab.dts b/arch/arm/boot/dts/versatile-ab.dts
index 269e6bf99ccb..37bd41ff8dff 100644
--- a/arch/arm/boot/dts/versatile-ab.dts
+++ b/arch/arm/boot/dts/versatile-ab.dts
@@ -161,6 +161,9 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x34000000 0x04000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	i2c0: i2c@10002000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
