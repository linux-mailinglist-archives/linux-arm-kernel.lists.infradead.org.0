Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7FB74C05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 12:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoZpeS55OQa1pKnnKP+w+jz3wK8Ds2FpVkEvjEMQCEY=; b=HtuGX5ZCwDa45t
	eI9cGe64LnwkRwH4CxG3oZct/V6Icrb/V1TSoylTVFiQLe9i7N/wgvOvyrcV5n13OBPrPTGQAxwKv
	yLCZigW4rllMX6RSuf9z9BA7l1LP8sbE4qpiN83H0Zi5X4XCIkjR7ucsoduMgZ+bVWJ1M9zm94K6Q
	2yjdSVw4btenvDaTC7I+RwvOs/urTWbZdlyFbF/KNFvhlW/jOSwqScnvg9TlLXHpjdrKXO5bdJ43k
	IamH2BlCfxXiTwMcs+s1hL/YCUQWdpah0B7f4jYgA5x22liNbqCS0xRMTHiWlE5mOwfw5S7f1DJa5
	+8LvuhVcHynz6AamYLcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqbDj-0000yJ-Hm; Thu, 25 Jul 2019 10:43:35 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqbDM-0000nx-Fs
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 10:43:13 +0000
Received: by mail-lf1-x144.google.com with SMTP id h28so34144755lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 03:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XpjNV+NMvqH+LpxRr8zkgoFmR2noH7509JIlqZCM7Jo=;
 b=LuEiCvOTvkInrAJWj0qXwyO7s1XERMW8pSHDK9VY8URGrgn87S6FUMVEr2HzEseoOu
 zaDVbiiW9I23Fgh2QSHf1EZlrKDkmPx7Wq6kJDhk7VFAK1wcZIOVxD6ap20Fu/3yRdRx
 /TWUX7b+bStIY8r7lf8sa1a0ZlHkmTSqACVxT8uWuzocM59uEODdNdLVaX6XRsII+FsG
 m+IZuwTahGkX8H94lXNw5tuJTVviQyqconFH/rt08Asg49Y8RKcYpimAhkcIUM70Deb9
 I0D+N6VMKBzMvzBkcjj9UVykkwPty3g7gzMTfs+i03HK4dOv4ND6qXSMzfG2oxGwnOZF
 4Wzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XpjNV+NMvqH+LpxRr8zkgoFmR2noH7509JIlqZCM7Jo=;
 b=oqOMGQtDkzKT+ddQ8nMvATGwAMLFmNwlqPhlnQHOEpbyxFnN8IQ9ELRt0FM0nOjSMd
 +yTXo7NWpYBpPIhVGguAYFFLi/GM4D4UWAs/51QsqsnYQECsmEiqLlLghPLfVdRoiGMK
 9ITQmZgllarC6oGUdqJMcsNyzdO8ypZ4xjcPt58a9EsJ5AtfVUnE3uU+2t7nRnhP4XIE
 kKPT+yr86hB2oujjQBJaoGtyNjo8ChLIN1WoxAdLJtS7lZvnQKOoTpW/dsCembjsNEve
 JL+n7PakdKqvVgSWJVfy+vJr2voExGsKHcMGykRhQphy0/P+xp2YhdubBRcm7HkCHhib
 i/+g==
X-Gm-Message-State: APjAAAW2T5+tnQF/TZncZIYJty3IXgaZ/a1VA2mxc4VrQiixBwkzGjQd
 tZcQpz0UL8lLZJRx3CeraRFEhQ==
X-Google-Smtp-Source: APXvYqx5mS7anbigc+++QypZ2if88kYGJ0a5LKp93fOIM3Eqx9brqMfs5/1ZEsgOU46pHJraeSucHQ==
X-Received: by 2002:ac2:4d02:: with SMTP id r2mr39615965lfi.138.1564051390847; 
 Thu, 25 Jul 2019 03:43:10 -0700 (PDT)
Received: from localhost.localdomain (ua-83-226-44-230.bbcust.telenor.se.
 [83.226.44.230])
 by smtp.gmail.com with ESMTPSA id 63sm9139580ljs.84.2019.07.25.03.43.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 03:43:10 -0700 (PDT)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 14/14] arm64: defconfig: enable
 CONFIG_ARM_QCOM_CPUFREQ_NVMEM
Date: Thu, 25 Jul 2019 12:41:42 +0200
Message-Id: <20190725104144.22924-15-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725104144.22924-1-niklas.cassel@linaro.org>
References: <20190725104144.22924-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_034312_529958_3C436C85 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ulf.hansson@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 sboyd@kernel.org, linux-arm-msm@vger.kernel.org, bjorn.andersson@linaro.org,
 vireshk@kernel.org, Niklas Cassel <niklas.cassel@linaro.org>,
 jorge.ramirez-ortiz@linaro.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM.

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 3e7618818250..9b0cc49f5fe8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -84,6 +84,7 @@ CONFIG_ACPI_CPPC_CPUFREQ=m
 CONFIG_ARM_ARMADA_37XX_CPUFREQ=y
 CONFIG_ARM_SCPI_CPUFREQ=y
 CONFIG_ARM_IMX_CPUFREQ_DT=m
+CONFIG_ARM_QCOM_CPUFREQ_NVMEM=y
 CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
 CONFIG_ARM_TEGRA186_CPUFREQ=y
 CONFIG_ARM_SCPI_PROTOCOL=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
