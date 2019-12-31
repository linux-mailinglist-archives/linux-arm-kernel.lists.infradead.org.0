Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E32312D6BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 07:55:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e6l1niIgzLRI/3A7OhOpIrZayl6yoKiAt8GYMZm1gHU=; b=k1ZUzZCLDyK43b
	WGLiGXnGmbuZ6sLsdJefmACCUJQuqgG8/ZAKhIknsyEmf2gTzyfmWnm0xBgis5YJSReOxczwa4NhC
	SsYEn63bQEucQVmCnhS7CHcyfwEwIOOutbzprM4HycTSh3S+HfYT77OfYXi6+3K9LbIF9Udtgwm4I
	cueYCiNmt7LFyPe5Q3cqhH7QrPnuJe9rgR2/BcSJ6m3pnlmyCpq4Y5vv3hFep/jEntKx2eNrIfME3
	sGtHbd62OISTbBvBE0LPkTxpCEPrumiGSCtCXwkiVtsMD802Oc2INyKf16BxUHRbg63dxPvpBQFJ3
	Xhvwf680CE4LjXyqvRrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imBRG-0005tA-No; Tue, 31 Dec 2019 06:55:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imBR9-0005hq-K2
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 06:55:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id x185so19381544pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 22:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uZRHufvw0O7nWhwpHOdeW2xncFsY6V7ai1BYdYAzaho=;
 b=MRsY3AMt4XIJfmKY4DSpuq3wacUrO4K8O24Ybj3SFY11sr0JfZqJ8pnmp+O/tYwFJJ
 SPrLILmpxnbR4mfl1UuV/5n3sqCqRy/rrblgngn95owSbI9h56R049N6zKwQPKCtltso
 gx7wMGtf843iQovlfCE3wLiuESqpbStb9gs+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uZRHufvw0O7nWhwpHOdeW2xncFsY6V7ai1BYdYAzaho=;
 b=tR2hZ+Aj4c/N7uuTuBOc3LvQbuyqrkuSvuzhH0licw4KLkEl/WdRjPYzIsJ67iIw5S
 VfnBCX4In3S3dVVxIKiYYhimjvRO7T1xHEb/Iuh2TnyZU28yTtg1aivR5fmkBE6eqVdA
 EVmC1RQeHbqrgx2sCqmC70Z5lP1nEyqDJj0POdLOUFMEtkxobQm8y6wF9vhpIeK9y0nn
 2SDwEO7IcfXT6eBTIWL3YFjRc/ZT6el/tyWB9o8IjXV9VObOL98sVFXoo5F4cMW5Z9j8
 UdqrfqMmFzxxWrCpf0nOReotQAjlEcLJEa3xFAMCJyrx7eU56iJHwKhAu+zLrthAwlop
 ci8A==
X-Gm-Message-State: APjAAAXxfTmzb7ijpK8XT5Nf2YRzsOch23f1VOdfUXrI4MGP2Nahr9Fi
 nY4ZBz8QmL2hbRqcWwdDzUgqTw==
X-Google-Smtp-Source: APXvYqyAxa6p0EPOabe3OQTYdhkONSPeiBnwM3ILST7SDRL0Lrr0UEJATAwrhqP3AzOpMFQEaFIUYQ==
X-Received: by 2002:a63:1666:: with SMTP id 38mr78918147pgw.325.1577775321566; 
 Mon, 30 Dec 2019 22:55:21 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id c18sm29666552pfr.40.2019.12.30.22.55.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 22:55:20 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: defconfig: Enable DRM_SUN6I_DSI
Date: Tue, 31 Dec 2019 12:25:08 +0530
Message-Id: <20191231065508.12649-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_225527_662726_65E1F12D 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now, Allwiner MIPI-DSI support is available for ARM64
Allwinner SoC like A64. So, let's build it as a module.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c9a867ac32d4..8583bd3ac52c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -534,6 +534,7 @@ CONFIG_ROCKCHIP_DW_MIPI_DSI=y
 CONFIG_ROCKCHIP_INNO_HDMI=y
 CONFIG_DRM_RCAR_DU=m
 CONFIG_DRM_SUN4I=m
+CONFIG_DRM_SUN6I_DSI=m
 CONFIG_DRM_SUN8I_DW_HDMI=m
 CONFIG_DRM_SUN8I_MIXER=m
 CONFIG_DRM_MSM=m
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
