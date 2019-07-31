Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FB17C0D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WldlOAbDIs/Upml8S+WWGrU3t4hGN8kBodWYRQZuHhc=; b=IpM
	km2gs7V+LtgCh1yMpuYiPKek2EhI/StVdyE6A3pLOEf7oY0eMyZjwOxwEkL5TuZqp5pVe+I2NG2Nj
	xx6PARpaa5/k9zSP31VFnnFAeO9v1KyO+tNAvJvWbxH/QahWI6MYR6l87amtSnC9jgyx+JnXhdtSp
	YnzrEndK3/rLviAosa30Xq3yp2oHWv+Al8VrnDQ8fgeqfoV0t/kZxCz6hzVKvMgAjHG3fJMz3U+4o
	ymVkaG51Bckbyh4sC8kG+DbiwfU1T5UeDwOHsS5hhE3uoOCYkd56YDnnEzeX78+tAt+ApuSA2TcQA
	qYSTgrqNG+wIjEQ56Vx7t1VaIUGZ45Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnUx-0005RI-Ic; Wed, 31 Jul 2019 12:14:27 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnUl-0005OF-AY
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:14:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so69426324wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=LjD7zv10OSEEYASmHj/VO2M7lzphFAaxTy5j9pYxJDo=;
 b=wq+OcFSyqHwlGFEmAGphrBhbP+jw2ZeUDJvnr2ryt0UBu4Kc8BRJiGhW6nT4CpumyV
 SKOb8IQMeNonlQPsKhQERiB/vwfGBTE0wB75t/eaDiGV22IphLZrF1IBc1ENghpzhQel
 ZYhMZKVg3ke0P91tgzfMITOJuO4O8bOJTwI3GPQteEg68oqQb8yfK6SSaGQ0qaQazN8x
 8t8ESnrCXgYEnHfjqb7iJQmssQOB0Al/KAIWguYzWba4gqqGSoYAoZAqEzF9AsSUX7Up
 WaZ6pwGSnfOltvm6IF58V/oAvcv+TGqUo0y3gUuOSsOl361ChIoMnUMxB5ahxtY1gEQj
 ooJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LjD7zv10OSEEYASmHj/VO2M7lzphFAaxTy5j9pYxJDo=;
 b=pX+1Pt6O4gCiQ2IBnWWr8n6KrbAu0qDq8fkYuo3eJFxjkmRbDrYXQP6db1s4fdAbo0
 8l2K0oYt/ikgkgHC6omtFcKQ5JBIbDcRJfcI9g3GboixYwENG+RuC3SN4lTsIR4DIsNN
 C0zRRw/xDRqwTZ4aBjoG1Vo2AMW+efJmErxko8zftv40gGKcqc4SSJY++Tk/UIe+7Gxu
 UXhfYZGitHM+o3lvIQvCHWZilTvJ7HAHf88VmF9yX302VIcjE8FiVMSqMbEesuCaE5IE
 U6Ul0up2kcVRKkQygLZ8Tn8ZpIi6lOKmhwlUTEcWis7G3k11ptRtHbZ7Ci+ma+fDlkCT
 rKKg==
X-Gm-Message-State: APjAAAVu6v/Uc00sFfsPik7p79TIJphA9+pYizZjOE4TOs0mHJ8TZXvJ
 7zBjrZwHEgX552Fts2+T1Qmzvg==
X-Google-Smtp-Source: APXvYqxJbSn0OApVvnN6CpKmYBH7g0bhbbP4QJ0hUCNLf17qIH6FUg3NTYWzUkcC4F/NvISPNemGcw==
X-Received: by 2002:adf:db46:: with SMTP id f6mr5645832wrj.212.1564575253424; 
 Wed, 31 Jul 2019 05:14:13 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a64sm3613713wmf.1.2019.07.31.05.14.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 05:14:10 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: daniel.lezcano@linaro.org,
	khilman@baylibre.com
Subject: [PATCH 0/6] Add support of New Amlogic temperature sensor for G12 SoCs
Date: Wed, 31 Jul 2019 14:14:03 +0200
Message-Id: <20190731121409.17285-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_051415_507205_8BC16E4C 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchs series add support of New Amlogic temperature sensor and minimal
thermal zone for SEI510 and ODROID-N2 boards.

First implementation was doing on IIO[1] but after comments i move on thermal framework.
Formulas and calibration values come from amlogic.

Dependencies :
- patch 3: depends on Neil's patchs :
              - missing dwc2 phy-names[1] 
              - rework on G12 DT[2]

[1] https://lore.kernel.org/linux-amlogic/20190604144714.2009-1-glaroque@baylibre.com/
[2] https://lore.kernel.org/linux-amlogic/20190625123647.26117-1-narmstrong@baylibre.com/
[3] https://lore.kernel.org/linux-amlogic/20190729132622.7566-2-narmstrong@baylibre.com/

Guillaume La Roque (6):
  dt-bindings: thermal: Add DT bindings documentation for Amlogic
    Thermal
  thermal: amlogic: Add thermal driver to support G12 SoCs
  arm64: dts: amlogic: g12: add temperature sensor
  arm64: dts: meson: sei510: Add minimal thermal zone
  arm64: dts: amlogic: odroid-n2: add minimal thermal zone
  MAINTAINERS: add entry for Amlogic Thermal driver

 .../bindings/thermal/amlogic,thermal.yaml     |  58 +++
 MAINTAINERS                                   |   9 +
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  22 ++
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  13 +
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |  13 +
 drivers/thermal/Kconfig                       |  12 +-
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/amlogic_thermal.c             | 335 ++++++++++++++++++
 8 files changed, 462 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
 create mode 100644 drivers/thermal/amlogic_thermal.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
