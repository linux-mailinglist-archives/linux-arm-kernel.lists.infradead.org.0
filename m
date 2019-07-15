Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870C5699F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lscqam4zLFdg0n61RZvVcApavKhLjcOt8SivEJXBNXg=; b=Yq/AkeycGZGxTu
	XwQIwfieNCUyPp0FdHef4jNT04d7c+x+BBUD8pZplEllK7jaKWwutaTpWvJbAk4a2ZdzwqMhJNPVV
	aWIpPib1C/AxaibOHQaW0dL/wKJjTIQX/lNM+huqUxM2pS7oQcsueXRw1w0VOhtcTf/rMuwwjJzsC
	KbnoJqT+ZB4LpIYjpTNNme6YEoMqn0uF4IWydmd2GPv6mtV85rcWPoNxDLMmU80Z4sb4P562eKLon
	wHDujjKc4ly9ao7uKVOHd7cUrY+9UcJ25ZJKLkn7Rx7OfprsiyXH5yTrmoSjKL+/rzv0fkA+MwQcT
	1IbuT9hqW7+JfUWwfPog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4r9-0003t6-C6; Mon, 15 Jul 2019 17:33:43 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nV-0008Kv-Tf
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:29:59 +0000
Received: by mail-lj1-x244.google.com with SMTP id v18so17087008ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3Bk1blV5oQEyQV3BicG+2hmfkOduACJXlcdjcBUfd1g=;
 b=sWQFfx6ybwZg4ljFXMWw4o2jX6LNSL0/W1n31kmg0FMtfIyaMU4C1Egzndl25QsslE
 kC/3dUiDm+ZMFR6g/H8EoL6EipSapfRtvuV8gCk9WIG3RUFvtJEAdlQuaWYXrCy7eomA
 MSnivkTYb8lXi7p8Z2RVY1MyxzmINqnX0lAo1RyljM9YlbMJgypup9wD3OAipwJpUdq+
 TfPBT95d+YBoKB+jM/oQ5S3iG/VXGOoplCHa1RprFlwKQsz7rgNDNRe+WrZTae6Rp/x/
 W0ayR8wh5Oliu2WyWRKNDD8PxmF6YsCTjSR8mz5XNRCWP7PmoFkoEhOzLU8Q8dPIINzp
 1ZTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Bk1blV5oQEyQV3BicG+2hmfkOduACJXlcdjcBUfd1g=;
 b=f28YSNsNFaVRiFxYfxD5TyLtaEldXITguiZp2K/nbAFmLWdRW0to56AdVqcvmyGWOP
 KpKPRaOC1NcyDNjnX5gWsy2zV4+zqUIBPd7tWMZooDc0wCxKbKU1ZwQagKAVL5dGvUKx
 UPYRjC718FlEvQJw+3IOaZPTDW3ww5FoX5L0yhAfl09HFNOgQDEXuazIC3O5FndWZI64
 JRV9gwL8khAfS4wk+USeWsgjvE/AD82m8afcoeebO2QjBtokHonyBPWaIHLFZFheLa0A
 0Td7F1NykVbsA+74VaoCGsUd+SDF28CcG4f9iuKn2Zc9pqW5dSj+8e79NZgqpB1Bdw/7
 AW/Q==
X-Gm-Message-State: APjAAAXqUmzEzhQK/wWAw/VUEVGGOj2qm8BYY6iatDhunppUXponyeGq
 z0SbMzZYfiXjIbs+kZ3LIWc=
X-Google-Smtp-Source: APXvYqzOUT6VQLLbYkitbj/O7ZOWVmn9kFOcBjnh1ThsbpBMAGKLhgxuIvnkzQbjKrIzTSTXw2BksA==
X-Received: by 2002:a2e:8e90:: with SMTP id z16mr14783618ljk.4.1563211796650; 
 Mon, 15 Jul 2019 10:29:56 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:56 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 12/13] ARM: multi_v7_defconfig: Enable Tegra cpuidle driver
Date: Mon, 15 Jul 2019 20:26:28 +0300
Message-Id: <20190715172629.4437-13-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715172629.4437-1-digetx@gmail.com>
References: <20190715172629.4437-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102958_000102_C2B14BA6 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
