Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CC21BAC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tTw+HKTFl1cxa/21SHgOfFbHXuXnYKxavoNJvBuh7D0=; b=khCiI3TTHbkVyM
	X0zPI7EM/G25J1dF5jSJCgWVYJhZAFnUfHfN5LIsupueU66hVUgTam7StUxjQAmyIuhaJDRgV0Lr6
	VrSgWqe921jF8oryFOhY8/EdVGCoxN+P9byG7+ks+PvyJjyZJRBQqCtF+8tgy8EhDzxLZeQwQmdyl
	ywsdS4ic4ECf/TZq9sqhRCs6hEuleW5EqgChrkvOFtgYviwvVHsxnVYIEUdFdNefHv+Kff0qSkqW0
	/8KCb/+7HnAiOvU5qP89dV3IGdnU4tFicDYxZmK8OBmHCwRxVbUVhcezlhcvrqKj+MknpEiTT38Cl
	v2tMsA/CHVhMVsoUchLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDYG-0006vZ-Gi; Mon, 13 May 2019 16:11:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDX6-0005kV-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:11:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id v11so15960110wru.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 09:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IBIWbSPpc7j2EgIiZbpjBgwSCzEoaoZA6IHHGeyqm0k=;
 b=aY5uMZeISGZkbAL4GnQfuBHulOyUat3bMlveTgkJEg6ZBvpZ46nBDnlLqd/Jc79Ck2
 8wJtwXrFpWPlcwX3JBvKFk61E77dPYAb0o4ZS6QivcLAxxymoy+SIWueXSvhsWe+Cui0
 5M5/40WeQcT5p+w3fM/dlxqUl/nd2uCkqI1Ch1LT780M9ui4QcYyvBLFwwvG/HkUGw/2
 ius4Ma6d9Ba2ztYKa4i/bA7eWNdcpXplomqgDocIwJ8mhjHxvSOs2EkEPg8k6mP1e5eX
 ivr+bf+9dFvo7pyIFXxda2BQshTin5d1OCk7NFTzfkF9LebTtfxVv5dpxLe/SRxyKnXx
 raDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IBIWbSPpc7j2EgIiZbpjBgwSCzEoaoZA6IHHGeyqm0k=;
 b=GTs5Khk0bBrn1jm2K+MgTxQFOoBathP7FZsLq4YSFcu6wBze1tutEwzzNUO92o4pPL
 1aJu03OOUd1mmbmenpzsEQ/JZLaJTQCrofArEwCEptDbPrw3vcC4Wvj6qAznfpbaLpkE
 Ch3ahbx90Vkh+G8wRfNHwZZed7Nf4U0Bern+07nD5gOIKg3wmK3pN0hBL562OXzRCTCO
 wcG51q8Kq+MWkIEDqCXg+RzsKkleDlkT/a1v8gCazSR6LPc69ClP/j2ZIKX7AVhBY1l1
 fyYYIqr/On6fe+LuRh87g8K7QGejoW+oRBRMjNBClo2dpcaqwfL9Ae8EtDeW0N7tSQm8
 H1pw==
X-Gm-Message-State: APjAAAUpBfJXIgcmP+AR4UcetlANk/pIuha1JupNakxXcW+tzk/nfUBt
 JXFobFY0JBQAlxzpTNEbZ9Tijw==
X-Google-Smtp-Source: APXvYqwl0U7CzCVOL/tmw6kz1N59Lc9fpRVWsN1Me+FPaSVsbwduVRxDq8hd2gYZT9TE28T+W6qLNQ==
X-Received: by 2002:adf:ce07:: with SMTP id p7mr3219226wrn.241.1557763830904; 
 Mon, 13 May 2019 09:10:30 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-11-31.w90-86.abo.wanadoo.fr. [90.86.214.31])
 by smtp.gmail.com with ESMTPSA id n2sm24439089wra.89.2019.05.13.09.10.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 09:10:30 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com,
	matthias.bgg@gmail.com
Subject: [PATCH v2 0/5] mt6392: Add support for MediaTek MT6392 PMIC
Date: Mon, 13 May 2019 18:10:21 +0200
Message-Id: <20190513161026.31308-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_091033_153014_DA61776C 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Fabien Parent <fparent@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series aims at bringing support for the MediaTek MT6392 PMIC. This
PMIC is used on the MT8516 Pumpkin board.

This patch series adds support for the following features:
 * PMIC keys
 * regulator
 * RTC

Fabien Parent (5):
  dt-bindings: regulator: add support for MT6392
  regulator: mt6392: Add support for MT6392 regulator
  dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
  mfd: mt6397: Add support for MT6392 pmic
  arm64: dts: mt6392: Add PMIC mt6392 dtsi

 .../devicetree/bindings/mfd/mt6397.txt        |  12 +-
 .../bindings/regulator/mt6392-regulator.txt   | 220 ++++++++
 arch/arm64/boot/dts/mediatek/mt6392.dtsi      | 208 ++++++++
 drivers/mfd/mt6397-core.c                     |  55 ++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/mt6392-regulator.c          | 490 ++++++++++++++++++
 include/linux/mfd/mt6392/core.h               |  42 ++
 include/linux/mfd/mt6392/registers.h          | 487 +++++++++++++++++
 include/linux/regulator/mt6392-regulator.h    |  40 ++
 10 files changed, 1562 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/mt6392-regulator.txt
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6392.dtsi
 create mode 100644 drivers/regulator/mt6392-regulator.c
 create mode 100644 include/linux/mfd/mt6392/core.h
 create mode 100644 include/linux/mfd/mt6392/registers.h
 create mode 100644 include/linux/regulator/mt6392-regulator.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
