Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623E360710
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLKWHddHjUGm4ezUhtjKrcfohaFL4I4I4TyZRU0SUkI=; b=QNtdc4yg5eWiyc
	j6On5REdJq/wxb4fie0oNwc+yQb6s4/PWIIRT5E2KAsJciBcW3JdmEWMs+8zVtXCfu3LqSSYDi5qh
	HpUsQ7FJ8dkhkfR0ps6Qyu8m82PRINxfBIMqVdVSHxiC2s8jTHqQAW6uOPvhbUDuE+WRN9y1Cj8Ku
	1yGcUKAUXLSfXJz1uMCYLCIYwpjJ5H+d3uh6s8y/Emwihxd3Ur759zaugCoHG+VIlACSSyPJPcDoB
	ATHR40XpIOAsgG0bQFnTstPcplEwMlr2j44rvp0qNBxApA4ZYKjJ+VVnhDFegJobR0N/pvfxXyfaE
	KYRdTFhtc2dxF+EpvKbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOlo-0004tb-A4; Fri, 05 Jul 2019 14:01:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfX-0004pF-TZ
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 13:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8UXki+BGW0EGKLauIq9G4YH7VjmEUNy+rZBQlchQV0U=; b=MgK1zHYpIAH0uYTER4xSY6esZH
 RFEwsVTTjuFxqDjE/0mzdzEiNU+/2qngGbr2h8qtVFPQ+LoofrtNS5DS1oqEte1naqsj3xrI8r0+R
 F419zF+TmBrj3Uh8RKh2/mkpCUEeccALxMgH/ztW1qK9VvD1/FxBboM1tS/Xak+pwMpXWUIXyszmu
 bake8QnbC4hKTGaovS9VFk6kXHkr6k05vJCCQ9pIUhRSkZgN/t5PL8T4HB6AZAy4fraCZcEzBregm
 yGnv7zqJdLBEXQ4Qds4jOyyOPq1WcHLAyAbmGSCsSI+zXedz1K74nzNeAg9J2TwZNOn1tr0gwTqFo
 uoId0x0Q==;
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL1m-0001PZ-OS
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:03:16 +0000
Received: by mail-lf1-x143.google.com with SMTP id r15so5928062lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 03:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8UXki+BGW0EGKLauIq9G4YH7VjmEUNy+rZBQlchQV0U=;
 b=lnJtEzXEZe0doduKlbk4FsWysXDk5x3ZaYdVRE2m2HdMgKmN+9pMmfeZ74dUL40Bqx
 GKroKrKPXbNqogYNyCfbD0qnrR38ZXrNqRIWwfOBTpaMh+5sap1mG+e4Js8+KmcTU+Jr
 IteVA8mle8jUFaUKZtYM64SPwDKAsywcgGzkwMkVzXtqHijduZpYbjSBERVDhYgbiWeN
 xIOzFcbs+n4yqEK0zHbZm67WI3TbCR4D/0cH/5AnacG8eXnU7jtGYwAdR2vvs1opAy6k
 Vhmiw6Fwp+w2lZt0YGY6O3U/TwsU4v6QOsx+K6Zg2FLoja6Bwd6ejEzzKu40KOFYkgoE
 qZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8UXki+BGW0EGKLauIq9G4YH7VjmEUNy+rZBQlchQV0U=;
 b=DwZMFdR321KrkZRMw8htlQCuRHoXFEVLCd8bCQ6wPX8GY96lZ1C8t2xIDK0zJbXzZK
 Ia8MoisZF/c0VS7WpAuHY917/2JQFttRvVyMor8YnUSWJqtI04MB2gUSzlMO+j/jx771
 3NtTYHeyYU0BNSpZYlYPqp20fmF51UtvJQPNNS7ldudHZ11Ri/5SdXoBkj413j4Op06M
 6UegcvRb9CHZGUl/6ceyzjHZpVeGAWruFsmBu/d6WCCoIAnI1HV7k9Kizl65DEb5+Bcb
 tSWX+kjNj9CbyFBUX5GdyJe3yRQEuFTKndOoxRL0y1rNhyPfHXymua6jXCiKsm61y5kZ
 PzSw==
X-Gm-Message-State: APjAAAXFt7XCyIZpsolNHXSBVlZgELEfFyWDTg7E6U5+/JMfOoFWXP1r
 Eshj+gy/YFpL92jJ2OfPP/0/nQ==
X-Google-Smtp-Source: APXvYqx6rO1fNB5391rPvpkrYN/KMXGjcLhiY8z8sZn5pk4g2lfDFIX7Ayg+RCvVMaFMn8GxNlkjgA==
X-Received: by 2002:ac2:546a:: with SMTP id e10mr1587427lfn.75.1562320748340; 
 Fri, 05 Jul 2019 02:59:08 -0700 (PDT)
Received: from localhost.localdomain (ua-83-226-34-119.bbcust.telenor.se.
 [83.226.34.119])
 by smtp.gmail.com with ESMTPSA id 199sm1697601ljf.44.2019.07.05.02.59.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 02:59:07 -0700 (PDT)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 13/13] arm64: defconfig: enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM
Date: Fri,  5 Jul 2019 11:57:24 +0200
Message-Id: <20190705095726.21433-14-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190705095726.21433-1-niklas.cassel@linaro.org>
References: <20190705095726.21433-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_110315_052269_D44011A8 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: ulf.hansson@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 sboyd@kernel.org, linux-arm-msm@vger.kernel.org, bjorn.andersson@linaro.org,
 vireshk@kernel.org, Niklas Cassel <niklas.cassel@linaro.org>,
 jorge.ramirez-ortiz@linaro.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM.

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d1e8ad5d3079..ae458572d9be 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -84,6 +84,7 @@ CONFIG_ACPI_CPPC_CPUFREQ=m
 CONFIG_ARM_ARMADA_37XX_CPUFREQ=y
 CONFIG_ARM_SCPI_CPUFREQ=y
 CONFIG_ARM_IMX_CPUFREQ_DT=m
+CONFIG_ARM_QCOM_CPUFREQ_NVMEM=y
 CONFIG_ARM_TEGRA186_CPUFREQ=y
 CONFIG_ARM_SCPI_PROTOCOL=y
 CONFIG_RASPBERRYPI_FIRMWARE=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
