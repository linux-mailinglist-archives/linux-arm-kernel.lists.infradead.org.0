Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F7F1FD289
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hy6HYL8mVORoHy9prvO2KPoIYmxBRXZdGNh4xrY6/WA=; b=DDOGW3cBVa92G2
	HVKqhKAG24MneMtYrKos3D4QLXMZLrNMcgKDxwbmkg5k1DUYs5l+COtfc9ZUFfK7C3OsDX/umgTQM
	nTVzOqFfRzMxn8fhoJg/ThqDQXVBI7x3AwSOY8hU9SxO2ghfNCOZQqBQkOWZjCqgnK7ZMrDeDSj9a
	m6YsKQGL3COJckuRt2qWbPzT4X+lYRuvcDshsr7NVk5fEKSpWCdOGag2WMHpqbO3TBhhKoKzb+urP
	/L+i0GK38lwMyytx8hirKyL0MfKIlrx0WcW67QR9rb9RsxP7zTp4g1YRA0UOcoDWWfdTPIfGocTRa
	Y6z9oDxvrtESHr7PuEdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbEi-0005hD-Dy; Wed, 17 Jun 2020 16:48:28 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbEX-0005fi-1z; Wed, 17 Jun 2020 16:48:18 +0000
Received: by mail-ej1-x643.google.com with SMTP id gl26so3100674ejb.11;
 Wed, 17 Jun 2020 09:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q34Y2snjopHwNQ74AGxcHnVzaHh2qjmnA2d9PONlV04=;
 b=OPrKSehf0MFx28o+aNEqj4LJJTauxVCv00Q/h3M3OPKl/6AOTvwNWkretELWVKyFTy
 xJlegLy30bt9LQPQHdcfDB3obegYVkw1ta/RQeaceoqjnHYMfw8wSdEafxRdNVGjEMy1
 /Y+8tNNz6TJs02LaKQT62bi8uhBMpC8L5UOJqWPDbnlFDknWvgjO0Ce5nUjtyh/UqYZc
 +kuRvm3Ib1nuy/okhNdCHJbF2ewQoMPQIhybsI1ZdEge1ytuMjzMtI0/sNzZXDy7K7oC
 LjK9VxPxqfzeuJ4x8Iblm9K35UEgiZssSE74C6j8bIoyt7PbufjdxrdZWPwcOI2nt1Io
 nSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q34Y2snjopHwNQ74AGxcHnVzaHh2qjmnA2d9PONlV04=;
 b=VaPGfPHXslZdEhxspKqXxwydYOuwGye/XmSaucpNt7LcEPEDhtodkcAqapw2qgvH2A
 fLGGFB4NVSMED6L5ROCfSSFgYmP9MR/7g7tvdun/MNRyDCN8kqUaljckEqf7DkjGfldm
 M/u28t0en3e2vTNGUyWrh7ypUwcBbtgFlyja0CAnxfLh/Pa7Hw2X2QSRGSVqhKPEkDcD
 /0HtYztDlLHgDPv1nR5Fpp+qkoxpdAdsPvMWiysZVxa0aao4+acrDrS7p/Jysch6i5zf
 T/+6q67/okmSkgJkkPM546y06Ja5Hf2jxg6wlMvVAv1xy47Sv/MY3bKu2YmF83XineHd
 uzLA==
X-Gm-Message-State: AOAM530mS31u7cXita6M/Li6pg7T5DqLYONtEijpOLTVRpsEgKhbqhDF
 8KhIdsqBInrfa4DZ0ENVfXc=
X-Google-Smtp-Source: ABdhPJyZatZxHVj5zHwF4eo7MjFxocOQ44vCToszH8NPTWTtgA4gZ/ivNelY2eQU9Tb/wgMQ+O5gWQ==
X-Received: by 2002:a17:906:f189:: with SMTP id
 gs9mr38790ejb.203.1592412494696; 
 Wed, 17 Jun 2020 09:48:14 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id v3sm127124edj.89.2020.06.17.09.48.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:48:14 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 00/11] Add CMU/RMU/DMA support for Actions Semi S500 SoCs
Date: Wed, 17 Jun 2020 19:48:00 +0300
Message-Id: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_094817_099061_02B0C336 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series improves the existing implementation of the Clock
Management Unit for the Actions Semi S500 SoC, by adding support for
some missing clocks, like DMAC and GPIO.

Additionally, it enables the UART nodes in the common owl-s500 DTS to
use the clock provided by the CMU. That means the S500 based SBCs can
now get rid of their (fake) UART fixed clock and, as a matter of fact,
this has been already done here for RoseapplePi, the new board which
is going to be supported (hopefully) via the following patchset:
https://lore.kernel.org/lkml/cover.1592123160.git.cristian.ciocaltea@gmail.com/

Eventually, the patchset adds support for the Actions Semi S500 SoC's
DMA controller and Reset Management Unit. Please note the already
existing Actions Semi Owl SoCs DMA driver seems to be fully compatible
with S500, even though this is not explicitly mentioned in the source
code. For the moment, I have just enabled the DMA controller node in
owl-s500 DTS using the "actions,s900-dma" compatible string.

In the upcoming patch series I will provide a pinctrl driver and enable
access to MMC and I2C.

Thanks,
Cristi

Cristian Ciocaltea (11):
  clk: actions: Fix h_clk for Actions S500 SoC
  arm: dts: owl-s500: Add Clock Management Unit
  arm: dts: owl-s500: Set UART clock refs from CMU
  arm: dts: owl-s500-roseapplepi: Use UART clock from CMU
  dt-bindings: clock: Add APB, DMAC, GPIO bindings for Actions S500 SoC
  clk: actions: Add APB, DMAC, GPIO clock support for Actions S500 SoC
  arm: dts: owl-s500: Add DMA controller
  dt-bindings: reset: Add binding constants for Actions S500 RMU
  clk: actions: Add Actions S500 SoC Reset Management Unit support
  arm: dts: owl-s500: Add Reset Controller support
  MAINTAINERS: Add reset binding entry for Actions Semi Owl SoCs

 MAINTAINERS                                   |  1 +
 arch/arm/boot/dts/owl-s500-roseapplepi.dts    |  7 --
 arch/arm/boot/dts/owl-s500.dtsi               | 37 ++++++++
 drivers/clk/actions/owl-s500.c                | 91 ++++++++++++++++++-
 include/dt-bindings/clock/actions,s500-cmu.h  | 77 ++++++++--------
 .../dt-bindings/reset/actions,s500-reset.h    | 67 ++++++++++++++
 6 files changed, 235 insertions(+), 45 deletions(-)
 create mode 100644 include/dt-bindings/reset/actions,s500-reset.h

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
