Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EE465098
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 05:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADosC1L5i/0tTnnnoCfHaSARq3yAFlBX64CrFBGQUX8=; b=gWZbYAVgslziaB
	n6uN9K9LhM0FOAR6fIwfyFwGLmEA4joBdffW4J3RkbCzxGwrFjGaUr8hn/2udfdwCt++MDmby/4yv
	QXNpS5ru7zImpNiGVM6ST59sQlXqQA9h1k+OHpNv/0THmfJr83KrxPOK1D9+8fRtN+ynByPB9WK6Y
	5ap+rCmRw6mP2NbrC0iasvCrnTrWDDKUocPdvveltSPOJqLspqancpMSQ9/ifVdmSWqBa+4niAyKr
	BXSqt9H7sKuVaxwpWqBZpsG5YmSlDsxLkQRoSDHGnmMepDTF/oowbrs/3TminluB8Fr2EgWUFNf/V
	AM7NnQH7iKpJjXhQ25Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlPZ1-0004xX-Do; Thu, 11 Jul 2019 03:16:07 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlPWg-0002Bd-Mm
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 03:13:44 +0000
Received: by mail-lj1-x244.google.com with SMTP id v24so4161508ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 20:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9sbsaF7E0TrDeiv6pReKgq+pMBX4p8SmM9uYJr655g4=;
 b=aGB/SVa7WbWVgBBhBM6vgu7gzzlo+d7rfMzVsbKQmdZWNq/r+dT3/N90zCR2S4c7pr
 vjsI4+fHMkxdw5mw6P6W0BmGQyh6b7CgkqGs/UYiZThpRxq7msqe5cOrzJX0u1bsq7yr
 NQmNBsyB8MGGyvXzDlEcXYRZG4MPg1LBgKxUuBUdwtquUT3e0I7lpRQPCUQ5B2A21Ird
 3hzJQ36qBJryKrjSktP0eCNh01PAUCWbtE4+jysmRLrSkjYPD/BbVV/U0EJ95vfFj4q4
 P0VSYLvafwjnDO395Sy/yiK+OS/EHP8CmGRWj9GYPmVYkRts/2a4Iu4pXjFNtbHJoUTz
 OrtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9sbsaF7E0TrDeiv6pReKgq+pMBX4p8SmM9uYJr655g4=;
 b=Fb2dGcpmZjtdGVXTMUpk4P55ICXY/eHiKZtZ5pkG7xZSryH2wlS9ebodMB00f91x5C
 Le84FfbTt4JAZjSEFVnuhe8ykaZJWKo8prrjfVYRARm6jgbGV9buyTQ1Ggynv1gUe3Co
 n0njPVKdmyMKhdprGfuidMdniGlwP7EJsmxbQ2qqYKSnFWyTbjTNDMb+OuuPjR1Pi7Ne
 q4d22tKpqYlvfR1SLRDjJUgucqVNyfX2Ue/aNl3WtU21A1M4xANVnOO54syNhq1On5VU
 vUKcBJ1cbH8SZHBxr8sT5xal4Oxkb8LPhBDIafngANtNVillvzjc3t/+cf0M3DMJapCL
 fzLQ==
X-Gm-Message-State: APjAAAVlvZ8VWLmQOXB3N9ntwpQ3cc8cJI2pX7jDYzPoqwIW7YEfP1IY
 XZSp87vJlC8Md12EkxR8JgQ=
X-Google-Smtp-Source: APXvYqyMqIcyVX6+e7hHIYbQpeLQ/U8rBaUVrLDaRq102Byqy/BB1OiBE3ibqp6e0uVdyiIN+5Gwsw==
X-Received: by 2002:a2e:b009:: with SMTP id y9mr864326ljk.152.1562814821269;
 Wed, 10 Jul 2019 20:13:41 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id h84sm753915ljf.42.2019.07.10.20.13.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 20:13:40 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v2 6/6] ARM: tegra: Enable Tegra cpuidle driver in
 tegra_defconfig
Date: Thu, 11 Jul 2019 06:13:12 +0300
Message-Id: <20190711031312.10038-7-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190711031312.10038-1-digetx@gmail.com>
References: <20190711031312.10038-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_201342_953222_45FB1620 
X-CRM114-Status: GOOD (  10.46  )
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
 arch/arm/configs/tegra_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/tegra_defconfig b/arch/arm/configs/tegra_defconfig
index 8f5c6a5b444c..9a2f11a780a8 100644
--- a/arch/arm/configs/tegra_defconfig
+++ b/arch/arm/configs/tegra_defconfig
@@ -25,6 +25,7 @@ CONFIG_CPU_FREQ=y
 CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
 CONFIG_CPUFREQ_DT=y
 CONFIG_CPU_IDLE=y
+CONFIG_ARM_TEGRA_CPUIDLE=y
 CONFIG_VFP=y
 CONFIG_NEON=y
 CONFIG_TRUSTED_FOUNDATIONS=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
