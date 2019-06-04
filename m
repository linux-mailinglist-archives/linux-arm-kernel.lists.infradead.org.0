Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B10C34157
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=D2QSoWCHHAHmEzhytEVeDxK3INTajp8U0vM1xpgXmYo=; b=j8k
	ohZRpGvLoBXDokDSphzT/xjIvV3xPELyd1H/mnHK76yw4Q2MG99VZLva6GbzHYFM3qJgaNzKcms4x
	NCGwD0Ek0HzPH/uAZVldqXKrhbEiuHLckbp1QS3Y9BfA+7b3KiVm1j+S5oP3cfwbDDZj/iHK/ddfR
	SMCytwI7cyePf04EQy6vvkOabQSFxCV33oC6Nv8YnEWrRR/5qk5c9+UpEPY8cPy6jKQcw1nfQvcFs
	QSFPV7mkN5Xji75kIPh7bictubYeZPCQDy5qoVxZ+48gMuPQQ8sx6xj1eXWB4DzqLuUmQTVa8Ae61
	C5RUhToRLX/s9l6SOli7RQ9kbcM/nkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4au-0000Dg-3G; Tue, 04 Jun 2019 08:14:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4am-0000DK-Rz
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:14:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id y11so12189182pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=jV8VCHbj6Lro7TEgyHmuW7nfZ6KFGO5pn05b2o6Dgbc=;
 b=pA4q1aPO8wMBceIMuXHnOPs76k27i1v3HVZe3OwTff0Uk2bwwhPFnu0KC3WuR8DbH/
 9w//GwDJeRxrS0rTh0SXzdvWeGVZ1VhgS2slFROTSH00X4uM9SQN0HX366tQlowjAHVC
 A0/bdTjSJnoKpFyEiixiNEVytwUWAO5WtmcOr9iUdqUMzKxZZQ42fSyB43Xp8mpZSa6C
 nbV9mcCGlv33QQrUS6I+IgCne11HKrnL+QzlMsefZlb++xKAZPYQvXfuAT71o6UbZiaA
 uE6c0QB8KkiK/pL4WV6phIA1mdodo8jgXn3ay2M5KnKla72LPKtnAXWsI5zVjRH3syqk
 645g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jV8VCHbj6Lro7TEgyHmuW7nfZ6KFGO5pn05b2o6Dgbc=;
 b=Aft1FubhRMFiAp0dtAUeRvz+wfmMqt/JMqeAmhs7PeXyw4NfSlEREZM2zoss2RyXNT
 0jU0lWO/qVZvTC1pubmuGJmZd64WrRtE9oFoS6QXjRXTDqd+RKJfMyD3r+HHIrE//0O8
 /bcOvKlB4JW3ifJst+2wa7WAmAWjmFAZztpsMrrcP4AnIqxGPZaq2B+DqBvCL8NyMp3J
 cAtolh1pq6tStZIWXiRFH3L9DqnzH6NxrqEXAw6RcvoW6u2x/3RuG2otsViuiKwueG+7
 6nKzq6epViYIIXNAtoaB6AM0xTe+eXOWq1IvMTem/kOCGkjBw6WXGd51Kufk04o2aIPl
 XOzA==
X-Gm-Message-State: APjAAAWEV6nhMGcoLt6KGP52mxg2fHhuO/da/VXTIx5Q9dBX6toXfH4m
 zUJkuQDvt3YxiDyLw3ZoYQ2X9Q==
X-Google-Smtp-Source: APXvYqyBT1jr5sCtI1Qrr8XvCjo0MKf4W3aMfwPavowCyU4VjHK9RS0I0j58WrwdIf8NNGx3+0mwsw==
X-Received: by 2002:a62:e303:: with SMTP id g3mr35873984pfh.220.1559636088227; 
 Tue, 04 Jun 2019 01:14:48 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.14.43
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 04 Jun 2019 01:14:47 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH v2 0/9] Add SD host controller support for SC9860 platform
Date: Tue,  4 Jun 2019 16:14:20 +0800
Message-Id: <cover.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_011448_934400_8EA0D938 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, baolin.wang@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds optional clock support, HS400 enhanced strobe mode support,
PHY DLL configuration and other optimization to make the SD host controller
can work well on the Spreadtrum SC9860 platform.

Changes from v1:
 - Add acked-tags from Adrian.
 - Fix one mistake by changing MMC_TIMING_MMC_HS to MMC_TIMING_SD_HS in patch 8.

Baolin Wang (9):
  mmc: sdhci-sprd: Check the enable clock's return value correctly
  dt-bindings: mmc: sprd: Add another optional clock documentation
  mmc: sdhci-sprd: Add optional gate clock support
  mmc: sdhci-sprd: Implement the get_max_timeout_count() interface
  mmc: sdhci-sprd: Add HS400 enhanced strobe mode
  mmc: sdhci-sprd: Enable PHY DLL to make clock stable
  dt-bindings: mmc: sprd: Add PHY DLL delay documentation
  mmc: sdhci-sprd: Add PHY DLL delay configuration
  arm64: dts: sprd: Add Spreadtrum SD host controller support

 .../devicetree/bindings/mmc/sdhci-sprd.txt         |   19 +++
 arch/arm64/boot/dts/sprd/whale2.dtsi               |   35 ++++
 drivers/mmc/host/sdhci-sprd.c                      |  171 +++++++++++++++++++-
 3 files changed, 217 insertions(+), 8 deletions(-)

-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
