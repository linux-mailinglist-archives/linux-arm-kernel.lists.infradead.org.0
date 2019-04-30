Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 833E3EE4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 03:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RjG9zaSCvEUgbU5FSAi4H03i+9XhZzyOypthtz2gbnk=; b=sw3OZDDmPyPJgI
	SQzjIYeTYj5t0z57eSuINsMFDh0lLvizyMONykAua9cRqVNPET9yHHH9CLV/EtU2vaog3cW5uL/Tn
	fYsgO3eF2efT/9ft1GT9n7a3P2DWSsp7PNltxCXD72txGBn0G1kaj6UvakW+CTNtYsvfPhXTzEwMz
	niQv7gS6CnVnOYxBmo1/77T3WyOJtaDw+40P8vrFVgeYYaC2UjaO5Z/Dw8gaVu+fYF5BB2s3iV8jl
	uqzN/MHfdl47TMF/mWQyfFY/KwMxs4Y6lzcP8qqHY43/YBjFkWbJrlpnTOmvleOXxbJehyUw2ImZO
	AZU9Fa776qZKiXmK2jeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHSO-0002SK-6H; Tue, 30 Apr 2019 01:21:16 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHSH-0002Rx-2k
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 01:21:10 +0000
Received: by mail-ed1-x541.google.com with SMTP id w11so4083387edl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 18:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jWhb1NtFsl18bQJJXP10JJ5pPucZGxaZc8q6h+vS5vc=;
 b=XHlH+b4nwHDmaPuSS9Fp1XmoJpKnqyUKFoNyGPNSDxfKFwQnKp1Y8t1SdLoEu6jdFt
 xsWCnILp8I7hWlihCuif3Lh59LMGg8ag7W3XEY2Y/ifiLLAtHnY//Z60IwooUQzUa0AL
 7FhoQ+p38OswxoOA4aoTfq9y1B1vCTRGVQq7ycoWj619hzkPQfQDl7Tc3BWOtRKoV28N
 lJnebfK1+dd0yFnF5INIg2cyqCymu37MbNPrGMTg4Rnj8IRx7fc4VLGEyaPBO0wpg75i
 m4PNZJUu1HuZITbKLxYCuOjatHd1OrpPRAzUnM7hpxQIipyhTUHtW+ay5SliQ/1MwcPr
 J0Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jWhb1NtFsl18bQJJXP10JJ5pPucZGxaZc8q6h+vS5vc=;
 b=F8gqSxre2TfWZXW2UN2Li5wUJomQbqinsv3dvRWgJ/b7kW+UJ4ocM/77454NsFOR0Z
 Vlx9dldqT5RfZozIk53vNerzb8mfR1kpidZ+5/5mWx8OkFHQ9YBH3QGtMpsBCMlesVyV
 HJBxX/wdBz1A5SB1Xf8bo3JCSfT0DzlsMoE99+DIEoCcho6s3/pr4SPQTAvZzllr2lXq
 ziIegmAoosGORZ4bHqQ7YfT/1JZvVJo2DiPY9tcWkYztjkCrlPQL/UUGTPTSXvb9bTe3
 QFsACT9V/hX5dDa+kdgO+86A7JgUBC9TWDhmnVxX/mFxuPY5PP47ZpH6wVYrK1WjUUeP
 oWuQ==
X-Gm-Message-State: APjAAAVDIrx7p98zhM13ue3M8TEvtEmn9OXg1/oekvSXPcQU9l8b3c3L
 Qu4pjShLNOAPSt4tc2LSJ1wLwe3vNEc=
X-Google-Smtp-Source: APXvYqyPc0j1eNrpYTuSZGHQ0m8GjnDxwmZwm7IequXVEyAtinMqqKPvPevh9o/Ly3ACVpvveH3dsQ==
X-Received: by 2002:a50:86c4:: with SMTP id 4mr18568912edu.172.1556587267325; 
 Mon, 29 Apr 2019 18:21:07 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id x21sm1826716eju.83.2019.04.29.18.21.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 18:21:06 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: imx8: Fix soc-imx8 dependency on SOC_BUS
Date: Tue, 30 Apr 2019 02:21:04 +0100
Message-Id: <20190430012104.1071-1-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_182109_538027_DB7EB192 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Abel Vesa <abel.vesa@nxp.com>, linux-imx@nxp.com,
 Bryan O'Donoghue <pure.logic@nexus-software.ie>,
 Leonard Crestez <leonard.crestez@nxp.com>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit a7e26f356ca1 ("soc: imx: Add generic i.MX8 SoC driver") compiles in
soc-imx8 when ARCH_MXC is true.

Since the soc-imx8 driver depends on soc_device_register() compilation will
fail unless SOC_BUS is also selected.

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Cc: Abel Vesa <abel.vesa@nxp.com>
Cc: Leonard Crestez <leonard.crestez@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 0f4d91824e4b..c86bccbb118a 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -162,6 +162,7 @@ config ARCH_MXC
 	select IMX_GPCV2_PM_DOMAINS
 	select PM
 	select PM_GENERIC_DOMAINS
+	select SOC_BUS
 	help
 	  This enables support for the ARMv8 based SoCs in the
 	  NXP i.MX family.
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
