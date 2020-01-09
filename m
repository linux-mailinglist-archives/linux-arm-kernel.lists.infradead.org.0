Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D35D135AD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pMMfc8pVbGmeDCVZCbK97PlfeoZ2fodXPf0ra/oeBXk=; b=h0LPil0NNsBsPf
	gLVrsbQiYU6fRT+ZQ0qgsTGI4zyj0k5dWiqZ8bd1kAwaJw5+21cG4/lcEF08kpHiL5QQXi7qbSrJQ
	VoaFoGECDc2LC/qwKqLhUAppjmlC1kgKTmy4ZcSkuYnlGfWWP7C3LZzjVP3oOMhp1FnMacAJel5kv
	SxA5/fr8h1LI2DajQc9MjIzUPeuojxhm+Oj08JYtvo3/vvCPo2OZKgN/R3jjxteWHUfS1pkmkdBLt
	Fmvt48xJnHMnJ1eJszW8+M9NlAcahy3wfbdwAggLDFD7om/5+WkCgtC5V5T5lNVc5aDaPqIlNBdcQ
	HLdDFKoo7AFHw8QH3vKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYON-0002DI-7t; Thu, 09 Jan 2020 14:02:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYOH-0002Cs-00
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:02:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id u2so2964482wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 06:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cH3/OtZ3DAvw8IgKFnqPXU8D4jtKtoD9aLE/M0BbcKs=;
 b=Q7PFKTGxpyCSu9tOEMplXNfwBzehjnBpiHUyvo+zkGU7Jnf4Pk73EORE5sthX5quPi
 NZfAq9ONyqTNDWQUy4XkVGDXC/iLmaFl6eHu/m+CGEyOKWB2SRTyN1Uh4M9aYlQyUCgI
 lPGue0manFc74H5onYbbMtUeLfH150STGLEYotHrptrBwpwaQX5908a5KWP/o3UuS/mc
 +Fhsc2Cgc6sI3nRyMiKGzsTlVjMYnosUMQoLRtSO0m4H2tbVrcV566XiPwRaTQYq1XrT
 h7oXEmdZf1tbOffD4LeeZ4Ye5a3GON25kL38+23iJBXg6Y65XEWVSDfxgNTVCq7X/h8o
 YkDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=cH3/OtZ3DAvw8IgKFnqPXU8D4jtKtoD9aLE/M0BbcKs=;
 b=S6AtI8ZmrX2xIvlrOp+A6M5PVlETFaUJNzMenmAzKgYAsc6b6JqqXh6AGPe+DskJk6
 d4rFZztSadcAvnftR7yGhH4sLp0yUu2b3gsWTcxX4FA2XtRSOsSR2h5pUGbSYrUJGEYY
 6+h6EtA9plxsEWcDEqGZqhwTTWhQkWgf+pd/iLQhG+/YzFWyv4hIYnPsy5a5sVn4kk7b
 q3ebt9zlSOq2VKjmZNiYrizSi4sPH322Hgf9GkVDaMi5efCP/j1TNC+zYXBLRbgoTzdM
 n+sv9LB31SNUwWsgDy3FYWjKx/QE0xg3Aic5s47Re5nsodpSSIiIbkwgDe08QmcnXtky
 swfA==
X-Gm-Message-State: APjAAAV4x71ft8otxPosFiyQj3OsOsz0YeJvhJGj8t8ojRWf5ptXP5K/
 HLN+BQVtqDoxlltI0bCnndLG5nFPYYC5eA==
X-Google-Smtp-Source: APXvYqz9WNWkReumkSXQjkJSbEUPQl0vWe2bk7mCzx+9uimnftzUwsh7ehidAGZy+lLpg/8XU0tk6w==
X-Received: by 2002:a1c:7901:: with SMTP id l1mr5038497wme.67.1578578543372;
 Thu, 09 Jan 2020 06:02:23 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id g18sm2851975wmh.48.2020.01.09.06.02.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 06:02:22 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH 0/7] arm64: zynqmp: Enable iio-hwmon based on iio ina226
 driver with labels
Date: Thu,  9 Jan 2020 15:02:14 +0100
Message-Id: <cover.1578578535.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_060225_032135_68513679 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

the patch 2c3d0c9ffd24 ("iio: core: Add optional symbolic label to device attributes")
added support for labelling IIO devices that's why I can enable iio based
ina226 driver with label property.

Thanks,
Michal


Michal Simek (7):
  arm64: zynqmp: Enable iio-hwmon for ina226 on zcu100
  arm64: zynqmp: Enable iio-hwmon for ina226 on zcu111
  arm64: zynqmp: Add label property to all ina226 on zcu111
  arm64: zynqmp: Enable iio-hwmon for ina226 on zcu102
  arm64: zynqmp: Add label property to all ina226 on zcu102
  arm64: zynqmp: Enable iio-hwmon for ina226 on zcu106
  arm64: zynqmp: Add label property to all ina226 on zcu106

 .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    |   8 +-
 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 145 +++++++++++++++---
 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    | 145 +++++++++++++++---
 .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    | 113 ++++++++++++--
 4 files changed, 360 insertions(+), 51 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
