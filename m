Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EA812A560
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 02:07:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7BU/EB9Pfhy3JEP4fi4JiYzD/uYoGOeSnn0eHbzuZw=; b=PkxDd8JgdzYr+M
	ImqjOE44O6NMTMj7fBkggL9sevFXvGaCinhIJnWOHkPfG/XBgkZZeJAIUjgM8rzHMxND5gbV3dTn3
	fBiq+LKU1dPXr/qPtkqtpuiMlmk8V3brFoe9l9Rm5RoTrMDlvXApI8aBwUO7qCMHB431pO559DAzc
	nZ2uOk4YO10/sLquO7UQ4Nl+AlyHhznnSl4ZIKqzZu1PTc6+5Y6Mq91eheUbw0XjL6GCiIHXyxG6W
	dTHiaCHMzr1ISoRHsBKVCKWdrk/5qQOq/FI8k048Hzb+QZ/A0edCSoZoMN1gONSzt5+6vqtY8thk+
	UFi25yCEZWaF+PDUk9Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijv8u-0001Rn-Vb; Wed, 25 Dec 2019 01:07:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijv85-0000dD-2v; Wed, 25 Dec 2019 01:06:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19so3401036wmj.4;
 Tue, 24 Dec 2019 17:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Mty/FeKQ1wDgVa8w9Nr+2aawC0goo22XNed8kugKhM=;
 b=nsIyRfJeBDJmdHJW7QotBn8a3e4KqpfpPdrhMxitrdrEjPmQn1BokouaEDljANB+uA
 opRGU1cauaPWkweuiuT8vOtRcs2xf4cYnzJRW8SM8noie3rNoQhmqULNQ+YQ+yUZeszO
 +V+JRBXJWXFtxNpHcgrixH74Q75GI7pmz00QsxBeMau+1SBy946gjmsMc4v7VZhupoNz
 CNBByMQ5klAnkYFuGixbXAG77ctfE+VToqt2r2kvKHtZjYgtA4bktiPoVPaWPmDZRPLQ
 OCM+xY5JPtS8ee2SA+AVjndjqoDdccPHmPbAYibnU+0CgQ+2F4iEY0inxSprZAW9+RdB
 /DCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Mty/FeKQ1wDgVa8w9Nr+2aawC0goo22XNed8kugKhM=;
 b=CmIlp5Taq5g3KdC9iMwPcukEBH3g2/oU92+sr3nktQRhCjN+7Lm1gDVjd4eJeTcqwe
 ouW03lI/SFBwEuCiZztoecj1B/aX2pO/+CDjudKhqtKT0fttwZ5dw5mmk8V07Hbi0br3
 YZUAiqnrLbei3w/GVo1z+p3e2AHqK5Hig0n0iIABvXtey5gxtVWNwIqRDqpTepflC9OJ
 xHfvETkvfSVGfCP7h6YV1oeBsjDCupZJfJEWdUPRuZL/WVfb7x/J0JY1A9YXY0pNOdVD
 mhnfiuCKJ2lkszfyl9hfgLwg8OxE+NDccpw5dHSxIjP+VXJdXCz801/eq9F2A4n9Wybq
 E9cw==
X-Gm-Message-State: APjAAAWGa1kqxp+ZlYNENdBb8EmvuDWYhCagGIBpuXJQAoiw2Pdo8/IL
 mjhO6pw/fuCjhxbkeYsV/lu0BIro
X-Google-Smtp-Source: APXvYqzl0orMCs0Tq92Fg5kOXV4XxPYq1w8bznh03vYxz3Kod5nZFWE6+Lls2gxHOsub3gUlCCjyVw==
X-Received: by 2002:a1c:6a13:: with SMTP id f19mr6802974wmc.20.1577235983449; 
 Tue, 24 Dec 2019 17:06:23 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id x26sm4066127wmc.30.2019.12.24.17.06.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 17:06:22 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 2/3] ARM: dts: meson8: use the actual frequency for the GPU's
 182.1MHz OPP
Date: Wed, 25 Dec 2019 02:06:06 +0100
Message-Id: <20191225010607.1504239-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191225010607.1504239-1-martin.blumenstingl@googlemail.com>
References: <20191225010607.1504239-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_170625_124491_B654537D 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clock setup on Meson8 cannot achieve a Mali frequency of exactly
182.15MHz. The vendor driver uses "FCLK_DIV7 / 2" for this frequency,
which translates to 2550MHz / 7 / 2 = 182142857Hz.
Update the GPU operating point to that specific frequency to not confuse
myself when comparing the frequency from the .dts with the actual clock
rate on the system.

Fixes: 7d3f6b536e72c9 ("ARM: dts: meson8: add the Mali-450 MP6 GPU")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index b35d7444c1f4..eedb92526968 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -130,8 +130,8 @@ opp-1992000000 {
 	gpu_opp_table: gpu-opp-table {
 		compatible = "operating-points-v2";
 
-		opp-182150000 {
-			opp-hz = /bits/ 64 <182150000>;
+		opp-182142857 {
+			opp-hz = /bits/ 64 <182142857>;
 			opp-microvolt = <1150000>;
 		};
 		opp-318750000 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
