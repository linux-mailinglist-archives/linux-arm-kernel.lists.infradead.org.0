Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C37135A65
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:41:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0Jho/I0Y6KxDp6YY+/0Q2HQKBqhfPj4Bt7+zzE6u1c=; b=C/9owoH9EyN7cW
	mhCfSVyWl9OPH5xRfOy4hXpaDv3D0l8wW3PXlbHfCBLApsgRBO58XhNGGzZ8xPZKSAm1I9LrS1wNq
	PRQjMLj4wO3fy82MG4X2M5zvJRHlPY3ysEA9Ee789lzLy21Wie+Nni2J01Xif9XDNoP2bphx+HvJG
	9gxdgah8Rm5lRIJUsHbDu3BI4s4sVVYDB9xODukqRCmCNQ6WVh3hjRhaCmSWw9xDN5lSzWr3KqtDO
	XmVfri//mQFL1sElX6vg3thZM0hI1WFj8P9KkhvTjZmHgSaN3DGe3cBBzabO31wZ/3Dl1wls6H+pX
	IRrsg+6MqvxdnJWqICow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipY3T-0006nh-JW; Thu, 09 Jan 2020 13:40:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipY25-0004Wp-49
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:39:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id 20so2868902wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GqLLvQg0ATNSkIqLQkyWCN1a7OI6F+wbBlqHUwVhDqw=;
 b=KZUsxg5zoTR27cOYUpRPW0MMQGUMVqL8dSxF38ru+enYB3/9og7B6YHPMqXzyw5FA0
 YZQdS6H/seiUdrmxrns7fTSM8XQ0jlus1MDonLPscioPzx6kXFzT0CGlpcSXghec2X8w
 RCFLDtpL/n8u6NBe2fHgLItRs/2aPqHNh3O3TXkiEIfd7ZmqWKG0bFmN1Q3KryAB1/R3
 YVINW4DMINnoZymQK+Antr5KLEVLxPn7E0QFwJWS6732bcFfvzl1uY/Xpzq3hftFK3iD
 zefZY/ambvqr10cx8eUB3NukWMWIRr7O6MAx+3BQGYHs4LgJuY/RRB7XDEItQZRe760N
 0ULw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=GqLLvQg0ATNSkIqLQkyWCN1a7OI6F+wbBlqHUwVhDqw=;
 b=Ve8jXXqZYtW1QeXltrPutu2C52+N/OYgSsqCX1B7/xrwIbnGOwghIBlcpssKHekI83
 Nq11m2ZHynvD2ZLHR5zFAPEVPjWVfSTUiE3h2D2aJLEYXDqh1WW/ZcBwtcEajXnOhXkx
 /qzZDpES29VJwJQlScXJ6wIpaJCBbVnEHcbrYVpEepITHxV9VhMWoPe2NLhgXN2YrSAV
 Kqi4JQEl1eQT2ELnJkl1Jto/BJawndLPeL05GPKCAsOaqHWPFWv01A9r5Z9ePSFq/cYy
 3LcDY5gKQbq6DjtVTyQijFMax6Ml+VtdrbV8WjKNn+3eNdWvqbOfEVrawsUD28rfyG9F
 gzEQ==
X-Gm-Message-State: APjAAAVpLRBbBMeDNBNTutIXG3rOHn+NaLNvOD0dONWdllW5PPCcfsqN
 rf0MCAS2exi+YR7wfhswVWJ0oywdo2sqoA==
X-Google-Smtp-Source: APXvYqz8lgccZsUdV6UcoZDn9lP0mGIaJjc7CrvVVs2WxQzH/y/hefKVpUtfJMMVEspmFeMBK37knQ==
X-Received: by 2002:a1c:ddc5:: with SMTP id u188mr4750512wmg.83.1578577166217; 
 Thu, 09 Jan 2020 05:39:26 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id g21sm8673580wrb.48.2020.01.09.05.39.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:39:25 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/6] arm64: zynqmp: Remove broken-cd from zcu100-revC
Date: Thu,  9 Jan 2020 14:39:14 +0100
Message-Id: <0976295a021145b7b1ef1f225b7c6314c91f0daa.1578577147.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577147.git.michal.simek@xilinx.com>
References: <cover.1578577147.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_053929_167524_81481661 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Jan Kiszka <jan.kiszka@siemens.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Card detect bit was broken on revA and it is working fine with revC
board that's why this property can be removed.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index dd60f7d85cc8..2b3757dd74cc 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -226,7 +226,6 @@ &rtc {
 &sdhci0 {
 	status = "okay";
 	no-1-8-v;
-	broken-cd; /* CD has to be enabled by default */
 	disable-wp;
 };
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
