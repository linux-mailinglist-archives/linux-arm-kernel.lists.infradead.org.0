Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF89B11E7BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:07:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3mULdaxXXSjaCg9MKGAsAIRnqyxDHrjOKjJnKnJAoAg=; b=rPL8b5a7JCyYi0
	3a4Uo6oVmdyMGgB4lepiTdzLOfKTQ48aUTAWSZPOtTng8mCAQ/tRHQrTOQ5nxzL+VXAcEMyc/GGex
	o1P9z42zPh6j5p6joqqw2Gs/Xu0G3S02Tp71Vv0F3u6pP1StMNIrK9sG2L8tGqf5ju8jXSwm3pciI
	sv/dZNKN2L2+y0eLtNI8QuXYOSz5UiptaGoPFAMXGiG+sS8cSEOU34w7rQhWdZ++AzkB0lUqU42Ta
	Erjyu/n+3XnG+61qLLU70+h6DCj0xnjLHab83bV3QoifCZDt1nacBu5pRWPfOcPe7P+XlqdO3iIxf
	WKC+OwMBxadV/yhF/gRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnSs-0004Hj-UB; Fri, 13 Dec 2019 16:06:50 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnRv-0003eE-Kr
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:05:53 +0000
Received: by mail-yw1-xc43.google.com with SMTP id b186so57710ywc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XEqMHcTdDOYOvlqXuxrY0ZDmTfpLPgj3LFItvyhrGW8=;
 b=NKVRcrFQi760LHcc2CA3mSfP216r5ge0bRp8GoTBxQzDEoVuCBqhn0AnB12G/DmyIN
 7Zi15rAWKE+6u8EKYPiy3nu7oTaK5y4xGj5v1FFU9OeZdev3wLePzS27Rkg9I+xGub9I
 BjVjua+vP5CtwTTtDm0Erd2lv6gGzHFiO+eHL3CS+WnWEJavdNg4ge7f1YNh8qPoTOvJ
 oLeb8/YH+bUQBRJK+1ii49WoOVdX9FMfzWXw+QClPLnUwhLIqprDDRsL2pU6LRXvQd85
 JKxf1xFOMXICKrzwC0pUKzTXHqKJHui89SGkOKuS83pvy6UfKsVaILzw1wcnRL9L9mEa
 Nbhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XEqMHcTdDOYOvlqXuxrY0ZDmTfpLPgj3LFItvyhrGW8=;
 b=Ik+ZQ4uaOENFyJ83ZZYBEm2ETUr2/KZ0UvihlBNbwgSm3Nc9bh2trPelphFyxXDUK6
 hC8ZO0/I0A+RAkVDi4faROtyvtPko0OZrFyDVylyXzKP2picLnqCBg8qucfG6RXwtbHw
 PmuGsAxMod3XGmMmEuwzm39Gy0n+PDjA6EYxM6IIFAnSNM3lEgQax/Qiaiu7Dn+10jKp
 q36ny6g5QUSl4cRCLlDPgA1PDLvCzu1RI5g3KkP5Pip43Olkg9CMtP1uPTyhaQl6Xvaz
 xa0CiQJG/PdVbOnkvmdi9TTT6AlftG1FBZnXin4SkK7KBIscrWvpqAExE3j7vKDn5W2R
 qCIQ==
X-Gm-Message-State: APjAAAVtSKZvXaYwAMlFz0hW6rmPBEQbYVWinYadp93lYaNIepcZdfl0
 JS/AdNMYaP9L1PkJ7I0tx5CfG6s4
X-Google-Smtp-Source: APXvYqys0XoQhk+58M8smG2N+QHVvjzqTiqDCi74zIQgQS1eYZb6PW/ZmzSN70o7vzlpSbz5S4WEFw==
X-Received: by 2002:a0d:c041:: with SMTP id b62mr9089386ywd.488.1576253149508; 
 Fri, 13 Dec 2019 08:05:49 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id v38sm3984694ywh.63.2019.12.13.08.05.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:05:48 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 0/7] soc: imx: Enable additional functionality of i.MX8M
 Mini
Date: Fri, 13 Dec 2019 10:05:35 -0600
Message-Id: <20191213160542.15757-1-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080551_786731_B4906736 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peng.fan@nxp.com, Fabio Estevam <festevam@gmail.com>, ping.bai@nxp.com,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GPCv2 controller on the i.MX8M Mini is compatible with the driver
used for the i.MX8MQ except for the register locations and names.
The GPCv2 controller is used to enable additional periperals currently
unavailable on the i.MX8M Mini.  In order to make them function,
the GPCv2 needs to be adapted so the drivers can associate their
power domain to the GPCv2 to enable them.

This series makes one include file slightly more generic,
adds the iMX8M Mini entries, updates the bindings, adds them
to the device tree, then associates the new power domain to
both the OTG and PCIe controllers.

Some peripherals may need additional power domain drivers in the future
due to limitations of the GPC driver, but the drivers for VPU and others are
not available yet.

Adam Ford (7):
  soc: imx: gpcv2: Rename imx8mq-power.h to imx8m-power.h
  soc: imx: gpcv2: Update imx8m-power.h to include iMX8M Mini
  soc: imx: gpcv2: add support for i.MX8M Mini SoC
  dt-bindings: imx-gpcv2: Update bindings to support i.MX8M Mini
  arm64: dts: imx8mm: add GPC power domains
  ARM64: dts: imx8mm: Fix clocks and power domain for USB OTG
  arm64: dts: imx8mm: Add PCIe support

 .../bindings/power/fsl,imx-gpcv2.txt          |   6 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 127 ++++++++-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +-
 drivers/soc/imx/gpcv2.c                       | 246 +++++++++++++++++-
 .../power/{imx8mq-power.h => imx8m-power.h}   |  14 +
 5 files changed, 387 insertions(+), 8 deletions(-)
 rename include/dt-bindings/power/{imx8mq-power.h => imx8m-power.h} (57%)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
