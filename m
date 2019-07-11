Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E561165096
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 05:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lscqam4zLFdg0n61RZvVcApavKhLjcOt8SivEJXBNXg=; b=em4U/TcPN2dAAA
	xEHpofUNwd1aRH7/dIJLGftT4rjWNwZ9fpIyoYY/VUNSPr2cWLcjw/PsS0J7esOt/tN3F2Xyj9Xd2
	vxcmli1V0vovY5CCB7XT32Oe7xwbjxMVZ85TMuinigMh6cWuHh0q+R4AG8YO8kC82u2FJV/5Dd+Np
	Mb9IBLYS2WUsERooQJ3sTLaZnHN9KtzELx9uxwIQb2u7S+jNUeIs7sn0A44NlzU5w/8zC2u8PIE4A
	xI1h6uvEP5XYMuKpfmoQwvYLe97hv6DCqj40F7uvfH6P6roBYZdqOvf5yETqelMfNg8WTUnok68Ca
	40uofQaI8672JMpUGLKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlPYg-0004ec-CF; Thu, 11 Jul 2019 03:15:46 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlPWf-0002Af-SX
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 03:13:43 +0000
Received: by mail-lj1-x244.google.com with SMTP id t28so4175804lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 20:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Bk1blV5oQEyQV3BicG+2hmfkOduACJXlcdjcBUfd1g=;
 b=c9HpTO2ig6B+SiMO23kHDjqljR4JBbZCFeobLD2jX3lQ25AoPcT5cW/Qdxfj8dY9AC
 BLhc2+GyJmGwP+rJPxnHZnBCwtdwYlABjvo0SJQ2IXa4VKg2Jw6DQ2x5gdUlen033rAO
 tIv5ebyR0k/6U9ZdSHD7OgHgimv4PTPR4rt0Aus4fIW9Xb+SXR9w/dKtD6SfXgI1Ft3X
 3FUw0a4w9VFWwMxzUlpN7vxY0h5M4qggdSAmmt6PjAMetkForHZaq4ZhzXJco01HQTQu
 hiuKVDzAhB/rHWIhU5QgYu3kvjnrQsxZjVDrdgJnsb0UBNvkqzCnFIW8zA9F4Yb2SMt/
 84Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Bk1blV5oQEyQV3BicG+2hmfkOduACJXlcdjcBUfd1g=;
 b=giErHTZcwEye8SLI2NOxpu8GLjInmrgkbdDG8+jY+RPo7zflH2/hM2EhdjmwuyVExz
 k7JW334CUWwTQtjgbi6Sbww4Ycg/4apBehVr2fpvxxfOlxo3Pk6fdo8qg4BPIXCVl10a
 2qzbctteHBBsdXsEbzMmJWdBbzA2G+kmK93q3k70DxxmnaLAc9UVfsBoduW2Zri9KJ4f
 Or13k1vvOTwa2xmoqcyiShLIW2o8gD+z1Yr6CREhV1GCKQ39PsjMJODsTUHLzI3qmUJz
 amgczbdIZuuuyNEuKXgkteLyovYvV0z5++BQ7Qb12hGKyN1VFOyanvqyIemc4rOSyFBe
 /waw==
X-Gm-Message-State: APjAAAW3qlmAtn+9DTLV5xmooc4jfvuwKO/sXLraY/dQTLPebcTWaHIm
 A1HGBAsCxGlhsgH+qDKlDkcDurlp
X-Google-Smtp-Source: APXvYqz1xa5euZ79IKq4iDtYx9Cl2OrfI1H9xAMWaAw4WTe5wxF75jFFc1u3Yr810Lfq079dF9Shew==
X-Received: by 2002:a2e:9045:: with SMTP id n5mr453281ljg.66.1562814820197;
 Wed, 10 Jul 2019 20:13:40 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id h84sm753915ljf.42.2019.07.10.20.13.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 20:13:39 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v2 5/6] ARM: multi_v7_defconfig: Enable Tegra cpuidle driver
Date: Thu, 11 Jul 2019 06:13:11 +0300
Message-Id: <20190711031312.10038-6-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190711031312.10038-1-digetx@gmail.com>
References: <20190711031312.10038-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_201341_943034_923A5A90 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Tegra CPU Idle driver was moved out into driver/cpuidle/ directory and
it is now a proper platform driver.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 6a40bc2ef271..2c0fc7968c42 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -107,6 +107,7 @@ CONFIG_CPU_IDLE=y
 CONFIG_ARM_CPUIDLE=y
 CONFIG_ARM_ZYNQ_CPUIDLE=y
 CONFIG_ARM_EXYNOS_CPUIDLE=y
+CONFIG_ARM_TEGRA_CPUIDLE=y
 CONFIG_KERNEL_MODE_NEON=y
 CONFIG_RASPBERRYPI_FIRMWARE=y
 CONFIG_TRUSTED_FOUNDATIONS=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
