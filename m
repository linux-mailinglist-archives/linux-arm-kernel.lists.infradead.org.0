Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E15BFA23
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 21:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rb7r8376RSf2NJHO2SEk15Gbs49Hk1EkKNbLTh8FD78=; b=Ff/9LZV/+ctMAD
	TdhqCQquM6crmQj+1ve12TqvVxeubwRREKqgzcn44vGClh5ce7U6RI4Gjpf2gHO9+/oKcmEoafSB/
	dcqsu6X2BCjMrwfaqyOM9/l4gom9TZu8hConePTsMK86fVZtpobASAO/Ae5eUes6y00kA5DJBF/a9
	7eL4dieVjRWjnTi1Ue8kj2iHw6IXe33mZsIW//dDPFRgybgnelvws43JTuQzHV0gi9zZhY/FT5ayI
	ikcpArHmLkI9XZuk0I9xnNMDULkx6EvyJ1Ph/D0J3okkTtGhvt2o8uGBkLEgl5UxoYXkRppvMWVt3
	22hX5/alGIrWsNp/BD6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZVp-0004SV-OB; Thu, 26 Sep 2019 19:33:14 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZTo-00028D-Fo
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 19:31:10 +0000
Received: by mail-lf1-x144.google.com with SMTP id r22so88283lfm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 12:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rsypJ4JyedaYNx6RWWvSX6imROFVDBxRCyA4sdErGA8=;
 b=GGPdS2W3eZpVUxY0pzLQKQL4b6bUB+zr3B0dSzIZ52sgkbgf54Z+wh4mK88Q+QyecM
 +fcma3S18yM9+zLeODW3nTvueYR67NpfHssNxOn+R6w7wd6p5EhTxeQ6EvwOztt8jAzp
 4Iqulu98JyL0Q1C5RNfHt9rtdGuVyvN0zUpElsAQu2S1lxk8YOR0hopbfSzlOEhDVtJo
 F+s8VqdaV+ja9h/8xEcZhtGaNW9DNsp+cns47N/aKEQR5CaOa+z39IbLuGZYUNV1qklF
 tKdlsBow8VsCfDd5jGa2CQQuV3Zf/JVt/jFmFN/XU1TjFJ0/bBI1xtEsL8jOfVH+2KiM
 z0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rsypJ4JyedaYNx6RWWvSX6imROFVDBxRCyA4sdErGA8=;
 b=pD8mXwVLioYrT8/gkL0iTMzV1OxiisvXBxHeHupc+DOfsMqKLIC7aYCwsytAo8rbj5
 G8g5D5PZdHqqdIMbXkzVsLC3+zg4JOIM0IjiucDkp2i0jPjFNZZgTMGO8J4cQiOS/kZr
 c81y/ESZPmAqDv0xM3l4HbccJGKZOxsb6LgoVZbuSzkcp4RjVZeZpyuZEyeCD1/VINtB
 v41QTX9fLvoLbB3eWyTQr8aYff3c72kBM3/cekmveNIriXKXzMj9UkRsE1h6MuVjj3MF
 aXm0r4YuDXogHpwvW/Ai0lqhBZkpbu3ieltx1Vsh7G9d7tQBgbbj+eGtfGg8+u72oZkk
 y9gw==
X-Gm-Message-State: APjAAAVgk/pXww8vNYoEZT2hXTBhlCqBmDupG/9WFIONNFu0ARqKnHgO
 gCrIuODVYWxQbnjV1OVP8Rn6Pw==
X-Google-Smtp-Source: APXvYqwKed/w/gxyhfXpvPb+gb1Vek3IYxj+Vzi00MuyUbDuhzDUjYBRMvHbgH1ysbuGBj0rnrhdlg==
X-Received: by 2002:ac2:5451:: with SMTP id d17mr114619lfn.77.1569526266912;
 Thu, 26 Sep 2019 12:31:06 -0700 (PDT)
Received: from localhost (c-413e70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.62.65])
 by smtp.gmail.com with ESMTPSA id r6sm17998ljr.77.2019.09.26.12.31.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 12:31:06 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
Date: Thu, 26 Sep 2019 21:30:30 +0200
Message-Id: <20190926193030.5843-5-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926193030.5843-1-anders.roxell@linaro.org>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_123108_832422_B7B3F053 
X-CRM114-Status: UNSURE (   9.91  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
CONFIG_CPU_BIG_ENDIAN gets enabled. Which tends not to be what most
people wants.

Rework so that we disable CONFIG_CPU_BIG_ENDIAN in the defcinfig file so
it doesn't get enabled when building allmodconfig kernels. When doing a
'make savedefconfig' CONFIG_CPU_BIG_ENDIAN will be dropped.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 878f379d8d84..c9aa6b9ee996 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -855,3 +855,4 @@ CONFIG_DEBUG_KERNEL=y
 # CONFIG_SCHED_DEBUG is not set
 CONFIG_MEMTEST=y
 # CONFIG_CMDLINE_FORCE is not set
+# CONFIG_CPU_BIG_ENDIAN is not set
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
