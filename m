Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6400FACED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:27:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rRMnWHhT97KlobWS5ayfW+mD61mxvvOSVawKvTt8N8g=; b=B4dhynz7j99mAO
	181/men9n8gsWLSmPDmOCEUuoCwKn0al5B1zzll0SkUziLhC1czMEMGNxV22w5p+4zfMfpGidluhM
	Pp4fESXm8MpUQOzPNu/u/A5rRMsSvp6oCNQdKaegJgm1I3+bzltPMbUH+Fvw4d5ZOLZX66wuuSdj6
	sxs4xWmWBtNB/24/q3xVoIiRgcLULOZEyPiWRFPRWXtrRfj4i1RRdUBfY0QBnSLTrFSAkxM2VBLQm
	rS6z9oY2ZixZ/vcgYwScGXmOTo7vu7a/Pg6kt05PHuBcpIZtwEe+aMbI/fQcLkYLL5xHI72W6KVuf
	DA61wb0Xi1x0AOGBrYrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUovo-00018k-8D; Wed, 13 Nov 2019 09:27:20 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUovg-00018D-HC
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:27:13 +0000
Received: by mail-lf1-x141.google.com with SMTP id j14so1349922lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 01:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=98bbtxrlztsaSeBuCTpYhW6G78UV8jrpbvcn8tDSvYA=;
 b=plLBWJp5AQE02m++GEPUI0YTKIjDTL5RtW1BLYg8HBlGB8epyTQPSL35OrV2QCJHHz
 dlh8C9hIfz33ZhJWJLYHrWoZiPRvepsZ3cv2lPLq5wjba22yE8DV1VnHFromxUlRPeZH
 UEsL4I2pC9Sq96gxTC6aqd10X/oLlypGSlBnhPabamclUTEQJ62S8IcGryqc2F2yT66n
 XE3GnKeur9IvVOz3uhy2V0iaTlQvFmH9dtuu7wD3DonSbgVgYNY2WAFAkE5VPIQxZjGD
 6yG3z6iDpGRY87NUzmCHIuwQt4l2dSKLgTgRek5hpzhOVqrlq0Ltx2/WOzTZzMMGGFIf
 6m+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=98bbtxrlztsaSeBuCTpYhW6G78UV8jrpbvcn8tDSvYA=;
 b=StF9hX31IMPe/QCU9wzsbQmWhGVhtfHAjju79PnxNGOiI3+KeeH+T2/eT8GJbC9HR4
 6XJ7DSDZhu8dlNie4K++sSaxj1icfLjMYwEJ2uBA1r6UVz++SdWtU+2YgX3yyQWaSgiW
 P0n/Mf09mqhMZu3MYdzkVgjBboR4WEwmjppfPFX/zkzMiRueBDzDxyVGZhIuDUsWTH46
 4nLsygjFG86/gsSVBlZKyt82O/HyAAH0srhbLMm5lCD8Sn3VYDcTvyBGTAOAOC8/ndxQ
 3TngWJIRawWKTGkdYuhfAwl264svIX3pUyww1aA0fG7nJQDXv7GTkR6e9mgTFZUQNG5H
 oY2w==
X-Gm-Message-State: APjAAAXmzc4488PZqsDWKIcN1uyBZZnRwdRyDmn6poYWbVfN4AOqkTa7
 tzDzYXBMyqxjiQ8m2v4VDw/irg==
X-Google-Smtp-Source: APXvYqyJ5e7C/nCUl9Pi3lVJ8liQye4thGdWtnl2nLezYo7RVgIQsVKtF7flNXJjyitnyanCP2bepA==
X-Received: by 2002:a05:6512:50f:: with SMTP id
 o15mr1953084lfb.168.1573637229877; 
 Wed, 13 Nov 2019 01:27:09 -0800 (PST)
Received: from localhost (c-413e70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.62.65])
 by smtp.gmail.com with ESMTPSA id x18sm595872ljc.39.2019.11.13.01.27.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 01:27:09 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: catalin.marinas@arm.com
Subject: [PATCH v2] arm64: Kconfig: add a choice for endianness
Date: Wed, 13 Nov 2019 10:26:52 +0100
Message-Id: <20191113092652.28201-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_012712_581133_BCFD00A2 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>, john.garry@huawei.com,
 will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
CONFIG_CPU_BIG_ENDIAN gets enabled. Which tends not to be what most
people want. Another concern that has come up is that ACPI isn't built
for an allmodconfig kernel today since that also depends on !CPU_BIG_ENDIAN.

Rework so that we introduce a 'choice' and default the choice to
CPU_LITTLE_ENDIAN. That means that when we build an allmodconfig kernel
it will default to CPU_LITTLE_ENDIAN that most people tends to want.

Reviewed-by: John Garry <john.garry@huawei.com>
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm64/Kconfig | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 64764ca92fca..c599b6b288be 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -877,10 +877,26 @@ config ARM64_PA_BITS
 	default 48 if ARM64_PA_BITS_48
 	default 52 if ARM64_PA_BITS_52
 
+choice
+	prompt "Endianness"
+	default CPU_LITTLE_ENDIAN
+	help
+	  Select the endianness of data accesses performed by the CPU. Userspace
+	  applications will need to be compiled and linked for the endianness
+	  that is selected here.
+
 config CPU_BIG_ENDIAN
        bool "Build big-endian kernel"
        help
-         Say Y if you plan on running a kernel in big-endian mode.
+	  Say Y if you plan on running a kernel with a big-endian userspace.
+
+config CPU_LITTLE_ENDIAN
+	bool "Build little-endian kernel"
+	help
+	  Say Y if you plan on running a kernel with a little-endian userspace.
+	  This is usually the case for distributions targetting arm64.
+
+endchoice
 
 config SCHED_MC
 	bool "Multi-core scheduler support"
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
