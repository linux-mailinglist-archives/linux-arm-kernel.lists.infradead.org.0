Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0611118432E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pcaBjIqBqmFk1uXy9Z31hXXALWR9Q3VmVJx/NOPiJZU=; b=fH1zkbWY3JrE/U
	9ULsgi5HNqiMT30KdtTMzZIig0aRvAcU2mHSFe/9WB1fv/ISWSJ62ODxEQg17SuJetJkkUhzysgeW
	EBWxPdnp5dSNGphKYxUXR/kpZaSzqOh0vRSRZPqu53NbbBTqAFYiJgDBmNYUNhsloh6p3HvpRmORp
	c33+oI7Q6bmh3Xi+c5WP9s2O3EYm3PtuMqxwuKoPXkWiENgc+dKMEQfz5vk6b/P5lMZ0XlAElAICA
	mMXMX9tFb91z8Weq714GT77E2OPiq7fQ9jZdM90DQx4Cac+oLKOf4BnD2oZXojOa33if6o3RNcHR/
	/h3pZl2TwaRyTW9NSvTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgE6-0000CD-1g; Fri, 13 Mar 2020 09:03:30 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgCw-0007b5-Io
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:02:20 +0000
Received: by mail-lf1-x142.google.com with SMTP id t21so7197868lfe.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 02:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2/V1i4EZlfOpib3pYF1wNtRXeAG+Mti/pQbSyE4GyGI=;
 b=Fdc69EP5eTsus8t1AEhftl0F1Wf61ni0ijpgo+1CXd6ls+FxxlW7gTsZM1vI0mHKf5
 zQnFRvQp1y9ah48BMVJRJQxAFVcT+pOm9+Yvm76IdXyKc4hGn90ayjnWU9zTyXuMlgR1
 AQ3hd9xUb22dRp04SRyqJKTdI1axP4EPUr6l4jz1f2rjtw5eXy+H5ZhtFz9fRL6VH34e
 SOqBeFgiTjPGfeVAcBxQIqkiz1TSIGoZESqIafwvF7AcrfdmD2hdkbUKDmGHEMyPxSMj
 xZlIhB6u2FLY4HoXdVQ06K8Tpzt4LPlsh1yZ/OUbNFTlyx/oaRac5dVC4iMFAnhUF/GU
 BeXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2/V1i4EZlfOpib3pYF1wNtRXeAG+Mti/pQbSyE4GyGI=;
 b=q9y5luZ7E2xaqbLb4UWFOjQOZIKVAejEs4bL51bKkrH7+uDKCbni8PFKHNYKFgeNDl
 4dIABCYmJqUtV4WFxO98KwtOfH2H/SI6AsZ2S+WznGqOqsz2KmnBVhQnSDEE1EtK6Pg9
 bu9wWl8PhzEVdS18wVti8agYG/0XIvKks0MSEgrgNrE9056YKaYwghCPk2zsTE2s1S3j
 Oi/HJlL02o1WOJw1Z5rNACGCXxJf3bO1uU4sMgBooZfJ3kWWyTb8Rr4zsppGmV1wJ1zy
 T/lGLjuUReMFSLoccbY+iPvO5ExxorBVeO6WAGDB6kjK+wcKT5DFi4W3b2/hoLN/vyTr
 U8QQ==
X-Gm-Message-State: ANhLgQ0StWtj6XRnTNkx4Maa1bXRRFpTRAUvy4qVXTrUN/evurs1tfbv
 x5K2X8A1PFfd9dlo9RcR5FQ=
X-Google-Smtp-Source: ADFU+vtvBOin7KFACK1EEFDITxLveKP1XYFQ1v4f43VtNskrTQVQTKO3Nb55KNc2sp+RdhDKAGvPIw==
X-Received: by 2002:ac2:4897:: with SMTP id x23mr5136884lfc.155.1584090135979; 
 Fri, 13 Mar 2020 02:02:15 -0700 (PDT)
Received: from localhost.localdomain (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.gmail.com with ESMTPSA id k23sm6202305ljk.40.2020.03.13.02.02.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 02:02:15 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Nicolas Chauvet <kwizart@gmail.com>
Subject: [PATCH v1] ARM: tegra: Correct PL310 Auxiliary Control Register
 initialization
Date: Fri, 13 Mar 2020 12:01:04 +0300
Message-Id: <20200313090104.20750-1-digetx@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020218_655246_69C97ACE 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PL310 Auxiliary Control Register shouldn't have the "Full line of
zero" optimization bit being set before L2 cache is enabled. The L2X0
driver takes care of enabling the optimization by itself.

This patch fixes a noisy error message on Tegra20 and Tegra30 telling
that cache optimization is erroneously enabled without enabling it for
the CPU:

	L2C-310: enabling full line of zeros but not enabled in Cortex-A9

Cc: <stable@vger.kernel.org>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/mach-tegra/tegra.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-tegra/tegra.c b/arch/arm/mach-tegra/tegra.c
index f1ce2857a251..b620b0651157 100644
--- a/arch/arm/mach-tegra/tegra.c
+++ b/arch/arm/mach-tegra/tegra.c
@@ -107,8 +107,8 @@ static const char * const tegra_dt_board_compat[] = {
 };
 
 DT_MACHINE_START(TEGRA_DT, "NVIDIA Tegra SoC (Flattened Device Tree)")
-	.l2c_aux_val	= 0x3c400001,
-	.l2c_aux_mask	= 0xc20fc3fe,
+	.l2c_aux_val	= 0x3c400000,
+	.l2c_aux_mask	= 0xc20fc3ff,
 	.smp		= smp_ops(tegra_smp_ops),
 	.map_io		= tegra_map_common_io,
 	.init_early	= tegra_init_early,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
