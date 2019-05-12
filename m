Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5661AB2B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 10:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/A8bsHaF+V6fewZ4vr4w3kf045NfLMtMVqOg5keuQ0I=; b=fcg
	/R+2u9vjRkM0CuXI1vR7BDM8N66ov1HBnsAvLUwbRq/Thzcb5FW9KKNBkdMCNxPjzVn8wn0kpqXlm
	IsB2cY0eDnQn5y4jASQZq5g2QKGZJMVF9ctNx7cSLZllOdSBPy9OC9kZLUx7qoNGP9mLweKjvzwpk
	w95LuaNr3aSNhS+sClP+WtcSfg6fGGDyQA3JluTQuwb1kDZL1vYS8f9LrBIbE853y7a+H/HowKcTk
	luQHpuEJUJcmqU94ZLTFOrnbDCVCMvwsOi0likW2/ePBYvtI7WDFUMajWfM/6GVRNIASQZakR2j2C
	rsJVfUix/+tP81BkSZzRwJdtpMvEY+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPjoU-00011C-O8; Sun, 12 May 2019 08:26:30 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPjoK-00010T-My
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 08:26:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id u17so5498307pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 01:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=z7fqRlGKomLBOv7X8ZNXyme9e+4ESlFc2IpZxYNJbQs=;
 b=LivOin7NcHcNmpntbideMsybvPb498BcFq1ByK6j+Uq7qL0e0WJvVSp5vQ4Znq0DcI
 ajxGhn/HbbuGzQLBXHpG6wochn8ootEPLp5sm7Zyd/FSIsQzntX/ux5er9FaJzEiMQBg
 Rhq/rGnR3exp6P0UJa/AbHyPIxIIq0VkqmIS92Nvqt8Ugs/k+VP9SAVZwT/8VZHKsPxY
 xqwpgMmSHatKLFtk75kXaKCMrHbiju+9KA9tBO8tzbVOYn32laQl9jA6UKTeNRTMOid4
 9LO71V6c/jM6NdK38rwp2cU5N5tVX5UnRf600YpeivrxfL4DmzWPfsraXmWE2TzQVWQL
 aWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=z7fqRlGKomLBOv7X8ZNXyme9e+4ESlFc2IpZxYNJbQs=;
 b=tnPgW8o03hiBU7al3ASb4TIsDWpE/XnCFw1w0/vVv2RhovNkwuZWXxlnUL3PlICRPZ
 1pSjLFQSovz773w3aRzxbUOfX2BxfJ2wV6xr9avT5ZL/dxe0Vvls5rkA5eC+lMzU5Wqs
 gxyG9Ta6xCBvxEHTm4aC/0y+EVWNyOVfi3lCyyROE1DfqMQasU21kto96pTBVhxhKYa2
 exDbOOz2XVzan4bEoLwrAQPEbzItNsG52LzkIFQYcayZdxvdskZltjkvcacxQc8i8C/M
 U2tuD44zSC+GU2WKg0eJqL2LNA0gvxy+34Xo3BIip5hUqAx7CUB06CRIBOMcc5/7hSfH
 DrGQ==
X-Gm-Message-State: APjAAAWLi7/vIKk5wE7OhvifApc0HY1PqNtQpcPEs3Wz8ZXVERXmrUxa
 2H0cbjdoqLoEQEFupJgkTsbnCTN0k+0=
X-Google-Smtp-Source: APXvYqx1A1kbLI9y/5pUCwvMoNIIk19yu+EqQtr6gApatuYzdCzGhzmtCXnd5sRlZo9Rzt2csXEEeQ==
X-Received: by 2002:a62:200f:: with SMTP id g15mr26215748pfg.7.1557649579414; 
 Sun, 12 May 2019 01:26:19 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id j9sm30306887pfc.43.2019.05.12.01.26.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 May 2019 01:26:18 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: tiny.windzz@gmail.com, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, catalin.marinas@arm.com,
 will.deacon@arm.com, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com, andy.gross@linaro.org,
 olof@lixom.net, bjorn.andersson@linaro.org, jagan@amarulasolutions.com,
 marc.w.gonzalez@free.fr, stefan.wahren@i2se.com,
 enric.balletbo@collabora.com
Subject: [PATCH 0/3] add thermal driver for h6
Date: Sun, 12 May 2019 04:26:11 -0400
Message-Id: <20190512082614.9045-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_012620_752053_D4ECAC33 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset support thermal driver of allwinner H6.

Yangtao Li (3):
  arm64: defconfig: add allwinner sid support
  thermal: sun50i: add thermal driver for h6
  dt-bindings: thermal: add binding document for h6 thermal controller

 .../bindings/thermal/sun50i-thermal.txt       |  32 ++
 MAINTAINERS                                   |   7 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/thermal/Kconfig                       |  14 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/sun50i_thermal.c              | 357 ++++++++++++++++++
 6 files changed, 412 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
 create mode 100644 drivers/thermal/sun50i_thermal.c

-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
