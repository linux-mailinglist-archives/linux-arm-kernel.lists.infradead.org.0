Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B0D1E0579
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i7TTMLRfbBYEM6AbcUrSTztJsIkUpNl37e88utGSYBw=; b=UlAr7QzgV5TsX1su1Oax5zla+X
	cvwLIizAFD1hPr8c1xcDDAg4KmTWCzt47wL8U1WN873O8GCT+jLt8DDiSp6/J6kz0HjSun8KFg3go
	bsc6yXE+oIn9e5y4BFI0ECevXdd2FukQ4s9LwWPy+ijiX9bJ+Af15Y+MTpIPnJhXqU0RfjY22f6fn
	c7BonDEDpeOCLOPLZysLEaaVRUKByLfgIbk31B4f9dhlDM21x19BCOzJ0DULbzs8lpvB2n3AH7qWR
	2dTz8WUCJ+TXOTSb4js6jDJ6BhvGPDnUeRcCRgIc1YtqFeeeyqeBtqlUv0+TzmlA39ensmIQglfWt
	36UR5Prg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd44T-0007jE-PC; Mon, 25 May 2020 03:46:37 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd43p-0007XO-9Z
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:45:58 +0000
Received: by mail-pj1-x1043.google.com with SMTP id 5so7979875pjd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=STuSyGO/SfkcGFSauy0QHw5IqCNUH9D9huZMTiB2y2k=;
 b=L1v+SFIcuOBtC5uNb1/F9JwnI/MV2Y6r7KptSWJmyzbRBYesYs+bXxJUS4ItcP+FPT
 k2IVwpaEgQcZpIgX2E0nirnEIobOUQ4e/qQdA0x4hwmSnzKtTyzAZi8p0oTy3OOlJuRw
 9I5G0UpR1rGvA3BHzYOtSr5wiFI1hzoOIVYgloKziD7+HX2iVNwO1P4IAzl+gUmomQOl
 T7vo1xrCFWwOXCzPsh0LyH9KcnrN8yPtbib1XiSgVcErdtxLZl2AETvmALganitVM3N0
 ePpnyIyaNXbuk7rdgWBPzbsC9fzXx6cZVtiDu0SPRxJL32R/xBFQ/NM8l97RIbYBBFgA
 xiGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=STuSyGO/SfkcGFSauy0QHw5IqCNUH9D9huZMTiB2y2k=;
 b=rzgvlQ8vjMm7sRP27C8KbWnfc4Hg9XcenVwNcHQakLDITkPrxM7fVzZnGzfBBk9aZE
 82j7h8a2mUMVPuTLfArGKrN99+sKmOrX97y4dkMqju43+eMM68OzLqk9WP4anG8i+0JB
 bAruM+rdRj8h+8NxhSyclibuG6m571+pFw4nAXp4a+PJdBbj4NijIvpiBMwWyvSHvjin
 W4wGHpcHog3NMpq3VXTKQq9Tc+J3S3cJ9xALpsOqhwgb6WzYODBi1fa4L8NYToVUps+m
 aLbf+5TeZk6szlXPA4IL1kZ9FrnAg9W0tbUGQpU/VFKgNpOcVSDmkS3S3JxVk5v1JIrL
 jpew==
X-Gm-Message-State: AOAM533xGMWl/R32MvTvhkDYVre1VOZKiqRGeOUoLKX/r5DfjfXQJnMR
 btpKPPqndLMRgV/dkaDeCG4=
X-Google-Smtp-Source: ABdhPJwkmS1ZHDjTueCXUPGhysWGmBYPKk9BaU4KH5QdoOaLDJ+q+4xaTLSo+sj1pCIJ1ykv9lAZig==
X-Received: by 2002:a17:90a:a013:: with SMTP id
 q19mr18863765pjp.120.1590378356618; 
 Sun, 24 May 2020 20:45:56 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id i98sm12152831pje.37.2020.05.24.20.45.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 20:45:56 -0700 (PDT)
From: dillon.minfei@gmail.com
To: linus.walleij@linaro.org,
	broonie@kernel.org
Subject: [PATCH v5 1/8] ARM: dts: stm32: Add dma config for spi5
Date: Mon, 25 May 2020 11:45:41 +0800
Message-Id: <1590378348-8115-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_204557_349928_5561B8D9 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Enable spi5's dma configuration. for graphics data output to
ilitek ili9341 panel via mipi dbi interface

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index d777069..5820b11 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -660,6 +660,9 @@
 			reg = <0x40015000 0x400>;
 			interrupts = <85>;
 			clocks = <&rcc 0 STM32F4_APB2_CLOCK(SPI5)>;
+			dmas = <&dma2 3 2 0x400 0x0>,
+				<&dma2 4 2 0x400 0x0>;
+			dma-names = "rx", "tx";
 			status = "disabled";
 		};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
