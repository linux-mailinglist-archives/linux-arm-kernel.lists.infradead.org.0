Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5157EE35CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 16:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dQM540vqg6FC4o7k5jcvyKSoFnbiJ5DjGqbFoOOH+dk=; b=TdP
	jvES/Nvdgkyen4zs3cjEdSE7KrWV4cw4zJMFZaWnTjwK3Nh0vAOD7WpDbkfMwacsw/xBCadqaCHox
	51gJ6XQtCtt0C6TR402iAaWmqPoGiSeDuSR8FHfT8JqMOtJ7FNakZICTn6v5f8LL8kO+bXlGiApdV
	6LFHMS3GXM2abSvC9WDwdeMlBIfDdn8nUnkAMsJoWbKny27pFbPDGKTmzquMKAgHbKdpt6Q1+rUOo
	5KjX0WmHBb1+En8fSMTJqXoxcitPKChU0YuBvHKIcqNnR74Bj1VVzwlkc9M6LHPQCgm54KoQ7yfRV
	Rb7/ZNYtTmfSdR7eXqZ59lsnvfj2HLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeKQ-0004nj-Jd; Thu, 24 Oct 2019 14:43:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNeKH-0004mf-2Q
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 14:42:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id a2so15289205pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 07:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=NOOJOsxqHyn9AIr6ypTkEVIyD6HHzZy3a7yfdgUD6yA=;
 b=h6komROc6h8RGeYYNYnFEouCCElzVFdunOny/OFPlTSBbE5B9R5V8n3vP3rMEXKNLh
 HcgLDIcHgnpiHBDdMc49NZVTwIrypxTd91Vbx2VC3XfN5emIFzMByQfhxcXi1CjlHxKI
 gp9XINyTt2x2EhOqnng6aYHiOy1L6GIIUySNMpQzQpujU+WCaZbBz2tEAcblutRs3jfR
 R/YEQWcd6ifqfLES2J7fhvU1g+ShU07BNi6dOyUe0u4wdzNg+p2T2eQQbdAbOi0fwobS
 10oIsmYkgKrqi4mnE33LkzRtAqfOhvSQLmj/aAqHwvoz7yGXbTFTZWyJred3CsaGL5if
 gFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NOOJOsxqHyn9AIr6ypTkEVIyD6HHzZy3a7yfdgUD6yA=;
 b=oZ1Mk27j7BOnFEoialyoI11WL5C6wTDAjn9QtDSdEe+UsKXGLoRX2H/8P4LvNBSP0p
 2/55QrghGpPBxree4r/sPoMAR7E2vN5YV2/fhjMB3PKjcjCb6UYnXWKJruwk76wlvDQe
 6audFH4J8Uw5xT+QkR2RVnO2OofynjQXAxqtyquS8FmI41SN8Ar4SQyF+rJkjqBieqXI
 9gg3ZTZEGa2S4VHdP8/p+AC4hXEsrAzHGG2yU+8wBAQDWDDnADWNuPjAC1oBczYrMxn5
 KxnjFstL+cB09I7BfS142XQUsxvPQJFJbUMl7xvKN8T19mXTCDQXwhFlX+moMLMwSM/i
 4RSg==
X-Gm-Message-State: APjAAAXOYkOkYRJ9EcCpqYGxEbeNohKeIAplGlAL393EUNKKBxtBzPIp
 MVbYcZFWWYk/eOh4XN2q4eVH
X-Google-Smtp-Source: APXvYqz/X3rMwuLvNMllP5jTvRzrOorlDB389gW90QS3BAVNtJFKjwn6dyAElAfQ6shN3bCZKMLEAA==
X-Received: by 2002:a17:90a:c306:: with SMTP id
 g6mr7494628pjt.38.1571928175650; 
 Thu, 24 Oct 2019 07:42:55 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:997:a0de:81a:ea25:468a:5918])
 by smtp.gmail.com with ESMTPSA id
 193sm29059810pfc.59.2019.10.24.07.42.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 07:42:55 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH 0/3] Add support for Thor96 board
Date: Thu, 24 Oct 2019 20:12:32 +0530
Message-Id: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_074257_120197_B05CC5EE 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 darshak.patel@einfochips.com, linux-imx@nxp.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds support for Thor96 board from Einfochips. This board is
one of the 96Boards Consumer Edition platform powered by the NXP i.MX8MQ
SoC.

Following are the features supported currently:

1. uSD
2. WiFi/BT
3. Ethernet
4. EEPROM (M24256)
5. NOR Flash (W25Q256JW)
6. 2xUSB3.0 ports and 1xUSB2.0 port at HS expansion

More information about this board can be found in Arrow website:
https://www.arrow.com/en/products/i.imx8-thor96/arrow-development-tools

Link to 96Boards CE Specification: https://linaro.co/ce-specification

Expecting patch 3 to go through MTD tree and 1,2 to go through freescale
tree.

Thanks,
Mani

Manivannan Sadhasivam (3):
  dt-bindings: arm: Add devicetree binding for Thor96 Board
  arm64: dts: freescale: Add devicetree support for Thor96 board
  mtd: spi-nor: Add support for w25q256jw

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mq-thor96.dts      | 581 ++++++++++++++++++
 drivers/mtd/spi-nor/spi-nor.c                 |   2 +
 4 files changed, 585 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-thor96.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
