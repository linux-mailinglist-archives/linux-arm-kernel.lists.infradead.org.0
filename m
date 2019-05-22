Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7EE2646A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 15:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l/Yql9Zo5saDeMeTM95xz8RNKk0wcjbBTQkCk7wHGY4=; b=CMP
	cgMi6cTEpRIEpQe/z7HxqmMzL6tdsDMZteGh7AU02j7eIwgtZWUtPX+ud8WCGbvbG2hK7Q6UL0Ogo
	ci/NrBrRGjqA5etig4UD73jXll8RTB454i4fgOxP5e/pbS839y6xfrooStDP5qFfCKmhXzdonp6Vm
	v+DbhAasqMVnzYNR5YquCgkHBLYRKJt4zytdDnpm6sOVQ0/kRnnST5pNxVC6xGvBfpddaieLLkbBg
	cehuBmiG0TleMjZtqB3OAUkgcmK/uItC+LD+A/NmokQdWatRIpV45xP/uHHzWfQZGapsL1AeonJzx
	YLe+heNpaL6JWjP3C3cGrQwH6ZH1kXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTR6V-0003CP-GS; Wed, 22 May 2019 13:16:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTR6N-0003BT-Vc
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 13:16:17 +0000
Received: by mail-pl1-x641.google.com with SMTP id a5so1061865pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 06:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=CDSHlZ4R9H1PhFEC6NVmtI65PCR+1fnOjrUw3HlFSmY=;
 b=MiALhfMLLB3ZUtSYw73WM0Ok//GbWWrp0nbqOMCtuKJQ27dI+r5EonhedPoCt5M2Cj
 hD52ITjt5Jrq43aNFM3WoDws0AeEvgmljbydK0yKHzwrnrAsOE6GmEaqrFsWrbKkUP8R
 pVi7wVyE5NWJxnBVacA7dUKpF6Hgwq5yuz6z6c5ExDhOSMxqU23ocdiKrdl5fBafoMV/
 Vl0h/fgYjiHBYRwzzusSNkCoggfd+Ih7bAaHgjgZk9NoEWk4wrJjvB+RjtF5sbW0XJrn
 73yDzmzOzsN5EU4uXC/89XTe3sY0Go60tV+f7/eum49OJFXX6Li2kYtrEIklt6rP6jFZ
 ohaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CDSHlZ4R9H1PhFEC6NVmtI65PCR+1fnOjrUw3HlFSmY=;
 b=eVV2uai3O7e2eYhkzE5ookXgpjMWOZqLrGvqlh1hUvdM2gHvmEZTn6UBTAhAfs+B3g
 2lylOZuXJPm3Cwl/gCiZ+xAPS2oNO6gmflN30eKoiLKkcxsMe13S9wlUeH1zSLqNY++h
 c/Z3IMqqhknfEwRCbH7Wt4U57Mq0dM1VDScmjCNfqYQKI0OF5Dcqz8jsrAu9LMwawEWu
 17/D/QGOq8XpmOTMn8a2MkFLDiOsaqkNauC2T0Y6v95s8ryi86YbqYhbG6R6u03B9Rba
 fcBKeT+IsrMKk/zHu952DcVSfqknBJTHnnXkRyB6NmCo/kR+Nu+qrtxp4pMNzdk0qSWl
 HGyQ==
X-Gm-Message-State: APjAAAWvUXOjalsav3QuMeisrup8eXlGScITUGho6vgkiIf4U+RUgBQq
 uzNRNA8L/tRwKBt6hNJ2NSgQ
X-Google-Smtp-Source: APXvYqyK18MyeSBgTUuExrOuAFSNAl/gMnvHsGeTTCkCfMwqa4pggff8/j3VsWwJv9AoLKltHBe3mQ==
X-Received: by 2002:a17:902:e104:: with SMTP id
 cc4mr89824069plb.254.1558530974800; 
 Wed, 22 May 2019 06:16:14 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:73c4:1ab0:ac45:9c21:7eb3:888a])
 by smtp.gmail.com with ESMTPSA id b7sm22273565pgq.71.2019.05.22.06.16.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 06:16:13 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 festevam@gmail.com
Subject: [PATCH 0/2] Add 96Boards Meerkat96 board support
Date: Wed, 22 May 2019 18:45:48 +0530
Message-Id: <20190522131550.9034-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_061616_026139_D9F6DE08 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, yossi@novtech.com,
 nazik@novtech.com, pbrobinson@gmail.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds board support for 96Boards Meerkat96 board from
Novtech. This board is one of the Consumer Edition boards of the 96Boards
family based on i.MX7D SoC. Following are the currently supported
features of the board:
 
* uSD
* WiFi/BT
* USB
    
More information about this board can be found in 96Boards product page:
https://www.96boards.org/product/imx7-96/

Thanks,
Mani

Manivannan Sadhasivam (2):
  dt-bindings: arm: Document 96Boards Meerkat96 devicetree binding
  ARM: dts: Add support for 96Boards Meerkat96 board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx7d-meerkat96.dts         | 396 ++++++++++++++++++
 3 files changed, 398 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-meerkat96.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
