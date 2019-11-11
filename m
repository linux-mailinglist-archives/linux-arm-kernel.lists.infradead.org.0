Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA9BF7002
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 10:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rrcNpuZgxbAF/TXtcGddor32ZNwo4GgneZeoy1fHmG4=; b=k5JPOx34YU+R6O
	ECbicZCO01Zvzr6KHWKEfc7aFN6X+Zk4NPthEv6EaJBu6rW5Ov5fw0FxE1LxZZcVKL2iGnU1SYNKu
	bOdOGpRFQEa211Z7OUEYsyHi0q2Zji74T3y3SyusZgY4dfxnBgopQ/QCbg9/pu7WcxscU4ni0ARZG
	/zu3VbUJ+K5txq1xF6SsAgTO1Q1k3rLxXUIh5VtWuvUbh979eXRgyVz7q7qxqfQq5moioP5EIxU1j
	K8W6bZbx4f82nlgF/StO2AHHCk+D19WfU4A51X9FtE9SFy7rlxixPKpR4RkjpdUpNXAvuExzD8HKM
	5vy2sBcHuHlCdbOPynVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU5YT-0008Q7-D1; Mon, 11 Nov 2019 09:00:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU5YL-0007iT-M8
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 09:00:07 +0000
Received: by mail-lj1-x241.google.com with SMTP id e9so12853047ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 01:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6og0lVoCjT8EFtl94DdvmCL57HASZwqoUGY0yeY454E=;
 b=EfHpAExQ0Ws7cVdvaCFhiiBQ/hlsNJTdv/f6PI8HZnlNxH5SHPggqy+vJOUZB4Q2b1
 xp0KzS1WaFvwKMsTwPin0HYR81wM8NhcWZXjT7DvsEt8QlGJcDPtgxaYNBE3wefD7TxH
 1EO3yO9GI1ClTfsRhDgPKoJ4D0rKofvMk6Ut5sZu0qgmIGgkeAYTOiqffX3hlJ0JCLN1
 RSaWKKf1IrqbV0Cz5D/TzCIJhjqBWQAz1n8buIGSGzlwg1z0zZcMM0K8OHk+GijZcvf4
 Ww43+WkbhR1Mk5+/7KIM4EwSu++4hX+2suxdRD/YCB5OyThQYQTT7nJHJZ1Q/rEYj4/E
 Oj4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6og0lVoCjT8EFtl94DdvmCL57HASZwqoUGY0yeY454E=;
 b=FjH9zvx52k5GquACzsmxz6aVWSuky8LUOpbQwX+mnhY1vOrR0Kum9UZIK/tNfeD1GI
 0j9XQRLW3bIIDd+xwCorgToMAwfJ5cN5LByQCaDxsChp0iDsSFrhzJxCvSwiNPGyBUz6
 OteB1Mrx36CVsvkAKryzGW8P/clNWJNIHRUcIiYEnESkrnvfYM91oLOEZhCAR+dM2HqX
 ZDf0qol5mnfCe5rgSIS3CTalEsufPzs8Z8JK92jXuK7DtxbfELJNq2oLU3eSe7OHZ2Cr
 c6fq8ai2CU/4Xb3D88ratWDxPP7PUO2anS+XnzvpOs85e2ZPicVYRSgkQ+jaRapW1HJ7
 4rbw==
X-Gm-Message-State: APjAAAXdvBSydQmGAFzPrqhqyvsKLc6tttw/rXrEJqRgR7qvIaGtO7zO
 NXA0DrTaDdwxhElA/FBPoKuIOQ==
X-Google-Smtp-Source: APXvYqxBkK79S3AKofW4cmxq0Q5rJRhdzHYZ7ix0Zmt/6KPQoLSFLbxn8wPj2dbJAE7KFXCxBiN5DQ==
X-Received: by 2002:a2e:547:: with SMTP id 68mr15405763ljf.150.1573462803454; 
 Mon, 11 Nov 2019 01:00:03 -0800 (PST)
Received: from localhost (c-413e70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.62.65])
 by smtp.gmail.com with ESMTPSA id d26sm6272174ljo.54.2019.11.11.01.00.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 01:00:02 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: catalin.marinas@arm.com
Subject: [PATCH] arm64: Kconfig: make CMDLINE_FORCE depend on CMDLINE
Date: Mon, 11 Nov 2019 09:59:56 +0100
Message-Id: <20191111085956.6158-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_010005_741845_537FE097 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>, john.garry@huawei.com,
 will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
CONFIG_CMDLINE_FORCE gets enabled. Which forces the user to pass the
full cmdline to CONFIG_CMDLINE="...".

Rework so that CONFIG_CMDLINE_FORCE gets set only if CONFIG_CMDLINE is
set to something except an empty string.

Suggested-by: John Garry <john.garry@huawei.com>
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 50df79d4aa3b..64764ca92fca 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1629,6 +1629,7 @@ config CMDLINE
 
 config CMDLINE_FORCE
 	bool "Always use the default kernel command string"
+	depends on CMDLINE != ""
 	help
 	  Always use the default kernel command string, even if the boot
 	  loader passes other arguments to the kernel.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
