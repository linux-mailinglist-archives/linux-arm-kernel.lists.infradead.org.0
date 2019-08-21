Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E109873A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 00:24:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7mIyqk14Ksmg23g9eL//3n4YwrEN9bcp1rOPpYV6Ux8=; b=nx3
	8G+p11hKYPhlJ5CkYKhZOjd7SoKxkLT5Ld7wlYJNf/eeFZEcLXDCUMvHhm1KpzjLSKpRt91eNneAS
	eBOXy4eRA7/cb0DQWB86ePGfdFDz6ChCK6e17vDv9OmIkxnj25L8eVis5v3AtWdqRbBDfP0oEt37o
	amtSpSlFpbtVeNyfUPOcVkDChemCpblJ6Y3hp2W6bOfUMdh3A69EFmzDwH+0voLIVOh1Ss+okJwIR
	5ktxK5aoJ3PELhg3PgsbKDsTSa/8BH3EweyJOla6I7hAPDZhEfU2Wi11r8Hjx/LLDUcCjwxnaFx0r
	I49KOLQFBlOrq1l63ZAp6/ZPRYI6jPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Z1x-0002Du-Hu; Wed, 21 Aug 2019 22:24:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Z1n-0002A8-Ll
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 22:24:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so3492883wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 15:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=Tu9KiiAh5enRZaMkZDdS91LeJuxWDEGtNB1BXoc97Zg=;
 b=MRkGRrhQlHfQ4yRktSubadPo620IAnB1HEqxZ63PsnGWczv4vMBpyYL+U3jWj8imdN
 TxKxhI1RoA4lSnao8+T628uV9XJ2zMCFbkTmz+x3apzNy2ZZ5lF3UTo/pFbxEJb5QF8b
 ahDlvtEoYZISmIyZ1JuvSWZUKwo9uRlXDEOjDKhevdNOhCrvWIEFNrDlKMGTo81pI/WD
 jUCGVzEJtrl0lPYHRsjzzLSaOD5tbPhuY7JZwOHI08ubbCBjArReNeJnFo5JVshGIjhW
 F+JW8LIam4PDS/wHLtRR0EB0Dq2blhJkUK4BeZzZ8mVNyNyKlQy8Tc9lh10UG6JOx36g
 oQfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Tu9KiiAh5enRZaMkZDdS91LeJuxWDEGtNB1BXoc97Zg=;
 b=EiM7Y1TLhEsxLty2Pvf0x/2IMtl6IjMgXRYil8wqJKvT26jtsj3DXYed0wr/N3ccDE
 26GcaaIjE1wZKOWiHJOE/7re9/p/yD8OgrPQ+xW0hOOyDukykZPfI8cSC7J021R9w0tz
 gQGI0BjqV2+1/YXSIMKIuSkGCVUL1OHJOZjWGD0oNXNgn1kedesHM3vQN3E9mzoM/Bs+
 fUImWfXcD1mOvtMGhKkpybVFtWjFTVSKSj3EstbSXjTtguEh4zt09xIppf11+IvE6PKp
 0xfH9A0eKksJxbPZ2C1L/7s0ko2KLdhftwE6iXooGLzfuUW00dvXdLS1TDm1kSKilrGT
 HHOQ==
X-Gm-Message-State: APjAAAXI7dpwihkB7aTfShfQu87WZQGEuPLOLACFtmWO7lXTloWthMuz
 3+iQtz+UEzv+3kBuj3M/9ocFCw==
X-Google-Smtp-Source: APXvYqwuyBB5WVfIOuZTlZUthOH4h97E4lnN5LJWiB3SBt+5ZWcNYajWVaLszb1NxfgZMOPqseCrRw==
X-Received: by 2002:adf:ea87:: with SMTP id s7mr13201417wrm.256.1566426263630; 
 Wed, 21 Aug 2019 15:24:23 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id f197sm3548549wme.22.2019.08.21.15.24.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 15:24:22 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: rui.zhang@intel.com,
	edubezval@gmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v4 0/6] Add support of New Amlogic temperature sensor for G12
 SoCs
Date: Thu, 22 Aug 2019 00:24:15 +0200
Message-Id: <20190821222421.30242-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_152427_713208_485E877B 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Changes since v3:
  - Add cooling map and trip point for hot type
  - move compatible on g12a instead of g12 to be aligned with others
  - add all reviewer, sorry for this mistake

Changes since v2:
  - fix yaml documention
  - remove unneeded status variable for temperature-sensor node
  - rework driver after Martin review
  - add some information in commit message

Changes since v1:
  - fix enum vs const in documentation
  - fix error with thermal-sensor-cells value set to 1 instead of 0
  - add some dependencies needed to add cooling-maps

Dependencies :
- patch 3,4 & 5: depends on Neil's patch and series :
              - missing dwc2 phy-names[2]
              - patchsets to add DVFS on G12a[3] which have deps on [4] and [5]

[1] https://lore.kernel.org/linux-amlogic/20190604144714.2009-1-glaroque@baylibre.com/
[2] https://lore.kernel.org/linux-amlogic/20190625123647.26117-1-narmstrong@baylibre.com/
[3] https://lore.kernel.org/linux-amlogic/20190729132622.7566-1-narmstrong@baylibre.com/
[4] https://lore.kernel.org/linux-amlogic/20190731084019.8451-5-narmstrong@baylibre.com/
[5] https://lore.kernel.org/linux-amlogic/20190729132622.7566-3-narmstrong@baylibre.com/


Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>

Guillaume La Roque (6):
  dt-bindings: thermal: Add DT bindings documentation for Amlogic
    Thermal
  thermal: amlogic: Add thermal driver to support G12 SoCs
  arm64: dts: amlogic: g12: add temperature sensor
  arm64: dts: meson: sei510: Add minimal thermal zone
  arm64: dts: amlogic: odroid-n2: add minimal thermal zone
  MAINTAINERS: add entry for Amlogic Thermal driver

 .../bindings/thermal/amlogic,thermal.yaml     |  54 +++
 MAINTAINERS                                   |   9 +
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  20 ++
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  70 ++++
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |  76 ++++
 drivers/thermal/Kconfig                       |  11 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/amlogic_thermal.c             | 335 ++++++++++++++++++
 8 files changed, 576 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
 create mode 100644 drivers/thermal/amlogic_thermal.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
