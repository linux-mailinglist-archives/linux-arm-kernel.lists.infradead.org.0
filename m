Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7B72B59B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:43:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DacljdJ2xS2RITKWjE9p496Uj/eehH8cee4hqq66ycw=; b=i7RsuLY4h0dqAL
	utLSAdw5nA6R2qOKOOVrcczIEaSKvpj456ogS9BJRNWBm2AjtQTyxt5B3bpCxrjZjmDmmySfvTtQi
	euyL2WROG7rPbKe7uXcz4GgD4x19V4I1lsuOF3Oqhs1e5iXK+7DObapWkfBd6eDqbpaTJXlSx1iwZ
	DAqBoFnX3FFHeMxY2bFyP/RkEGYGtP7dyS3TooO9fT6gJrirr+ZPpoONBcDV4oZGqW53fNfRnb1VH
	D3Ds22MbJtJyAB46iC3H0u7pV82j2yXKQBCPOjf5JpryYfiWUlIDHukQUs0OKkprQJpvwoYj9RObd
	EGdNT4DuqGRxRjrpk9Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEyL-0000wr-1h; Mon, 27 May 2019 12:43:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEy8-0000nd-Bl
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:43:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id f204so16040908wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 05:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NKi6i530JJNrkfWp8zdTE/DlNf+AJ6vpEuNiHI586GM=;
 b=F0OuPbcaU47Vw5cIofDI7N8sCg5q5HjGbe75cSt5fxbmgeL/gwFfe0z2Wex7Xk06+v
 KyG3eIWcX65wfRkP5yFfwX2MTmFf4YvIPSZ1sfR1vF1vL5KWjLpfqFxNLMzGW92WyTZ0
 xQHBioJ2CSnMfPDUutyRdQFF8edHOg7JnkFzKVpAXmvHIL4ES9prSLURjwD+JEwbDGxK
 ixEefmZ8lZXsS+0UWbqOEroGQcLF9GJipI2ge/K4pAZ7ZxZs8O4K2GqhChbwBA2HoQIf
 KPQrFoIVhCSob5K6Aky/XPD+3Qw/jM0QmRhk1va3R4IzLIYlAEQiAuh2kDeG0+YVUM8H
 IzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NKi6i530JJNrkfWp8zdTE/DlNf+AJ6vpEuNiHI586GM=;
 b=M4xpwSY6zlUSSyUPDMllyQWz3FNhrmSyPagVvMotGjWvjP1XFqJI/4WUk0V4YoC370
 oBzZiwl9w/L+0uzauQttnzlngdkyolkLmZSvvk1RvsWcLx5fa2qGiIMReRB6wR+9WYJz
 LkuW9aVwqd7Hkj64M7g4ZKoB64iLKlDAfU6mFsFOFQ+s65qY9pI5NMW8cEHiAUjRWwmo
 CBaviRrhFl6yYDzWBqZmWyqomBP1V8+LWpvJuPszzWR8QtxHF3waKJVX4Sm+In0d+iCF
 2UUW4ZGPeXCGiCEIeqf93cYTaGWj5hROVoklke9bgCnTo1NehDsHazSqiiDFbBGnTIA1
 mmBA==
X-Gm-Message-State: APjAAAWWyd3ajwrD22fj8b+niuzzogVF1DrskLMq6NFNxRDfYlIvSus0
 +BjxFi9uNj1YF7AUd+9x3blV3oTBmfFWmA==
X-Google-Smtp-Source: APXvYqwLlj5CMrnZHpa7NOKgj27nP4BBbZEUNpyia+Gjsf8jHnw5YAJDwN7ERYC5zPTVIVnhO1qS3g==
X-Received: by 2002:a1c:c706:: with SMTP id x6mr9242682wmf.35.1558960990603;
 Mon, 27 May 2019 05:43:10 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c14sm11494930wrt.45.2019.05.27.05.43.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 05:43:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: ulf.hansson@linaro.org,
	khilman@baylibre.com
Subject: [PATCH v2 0/3] mmc: meson-gx: add dram-access-quirk support
Date: Mon, 27 May 2019 14:43:04 +0200
Message-Id: <20190527124307.32075-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_054312_728712_A2E51B99 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Amlogic G12A SoC family, (only) the SDIO controller fails to access
the data from DRAM, leading to a broken controller.

Add the amlogic,ddr-access-quirk property so signal this particular
controller has this bug and needs a quirk to work properly.

But each MMC controller has 1,5KiB of SRAM after the registers, that can
be used as bounce buffer to avoid direct DDR access from the integrated
DMAs (this SRAM may be used by the boot ROM when DRAM is not yet initialized).

The quirk is to disable the chained descriptor for this controller, and
use this SRAM memory zone as buffer for the bounce buffer fallback mode.

The performance hit hasn't been evaluated, but the fix has been tested
using a WiFi AP6398S SDIO module, and the iperf3 Bandwidth measurement gave
55.2 Mbits/sec over a 63 Hours long test, with the SDIO ios set as High-Speed
at 50MHz clock. It gave around 170 Mbits/sec as SDR104 and 200MHz clock.

Changes since v1:
* use DRAM instead of DDR, added details in bindings on internal DMA controller
* fix probe() to not try to unallocate bounce buffer on error
* replace DT patch adding SDIO property to patch adding SDIO controller

Jerome Brunet (1):
  arm64: dts: meson: g12a: add SDIO controller

Neil Armstrong (2):
  dt-bindings: mmc: meson-gx: add dram-access-quirk property
  mmc: meson-gx: add dram-access-quirk

 .../bindings/mmc/amlogic,meson-gx.txt         |  4 ++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   | 37 ++++++++++
 drivers/mmc/host/meson-gx-mmc.c               | 70 +++++++++++++++----
 3 files changed, 96 insertions(+), 15 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
