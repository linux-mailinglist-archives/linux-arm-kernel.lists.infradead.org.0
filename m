Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B43CE98A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Zq0rentjXTM91ho65W12+hxgqUdk8pSoIDPd2ZisfDQ=; b=Vk1
	f5ozOdJBnV0iC8YZ6+pmXTBoe34WsIB7/s9haFl0JnryhBNG0G20zpTAaYG5ld14gC3ofmaP2BFCe
	jhw89ZjnNLfNBl4aPv5IukQx++k7MrV4r3E908n3Z3PkXl6RnzQBCGPPRnVeHGjvsqa62vkhlfdWJ
	dDQEFFK3d1kdzP3LQdYyHup0Ejj/bQSEPTHzcZAfD0hGwloLMux37dySet7A5421hy2ffMVofd5E6
	Vv3SiIFdPvDper6bfBTJ3T1J+ECRpjAFx5DNBuAY6T/xXADQHZv8+TubSPbHO3zbAQuGdxsOCl7g5
	gojDf9XDAtDXkqKBN4wX9p1XW5rGAuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjrc-0003cY-VA; Wed, 30 Oct 2019 09:02:00 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjrR-0003bL-6q
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:01:50 +0000
Received: by mail-pg1-x543.google.com with SMTP id c8so1058682pgb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 02:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=kpSRFHljLQ0J6Aa39FyB0oJMuowSc24OXLDuKR7Ck/s=;
 b=A80fnsT/E7nj2Ov92k3bVojidqaYptmKqqmVzQ9eDtAXYzdCIZUun6ojfahw9juGV5
 CLchvGnjYY3XhTcSBYDrHxHiI9GY3ND5l5AlXK6mjtbM4+YIIe1dDnqZ10R38umWZdSe
 Wqx9SLSZI925uZtYX9fv+4af5LzMAylUcUB5nolBnO0w7TbQ4JcugrpS/PZwEkOguN5N
 kGv36A+VJTiE+CS2M+2QZ8633UQ1LeKHeq2I0yM+WXr36WYPECSfVwwA0vKK7IeiLALz
 DCdzmj+/wxKmS/u2iwMy9ui21OXRuYerjN1TJihod0mbqiA8eI+FRy9YuiE1Ddmdd/9u
 Tl1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kpSRFHljLQ0J6Aa39FyB0oJMuowSc24OXLDuKR7Ck/s=;
 b=q7pi1O3VeZ4sLKDjOcoySpLJ71oHni7f+L+ILRJLh01OPWWB5ZYjABhnZeMOVugqkd
 Udn59teC+2o1G/TJ/0iUcL9WPlL1Cb/DfQ4rY+YFM/pJ8ek+1dGj8gBHDfvGiq0aTJYR
 vqv9K7elNEd7HqNPelUGljJYmtiWBNjxOd0SRE+Oikv3N9vcV6ZW5UwcWWRMWAfya3FU
 clM/3pdpbWJATnSZ39VkPoBQ4WcUByFUiDTvjaLNLaOSNykUZkzzNr+4IDoffsgxfqXw
 1uP1va7opnUoqzamq6dmYWN3WOsx/RnwnNZn2PNlBGTgdZWdT93S1m8lBRjNSxdhHJ+U
 FKLQ==
X-Gm-Message-State: APjAAAVISvaz7GM4KfB7c53FypWnS/9nxZbmtf6NHIdVpk0V+gK4FTmI
 /YT165GXk+/Qt5VY7mmUNUz8
X-Google-Smtp-Source: APXvYqxFNDmc/qWrzrj9GwR1BCqms0oXxFmPJfU70XQNMQp+JjQOACLC2ny3hrW0lsC9IOYN91metA==
X-Received: by 2002:a63:fe15:: with SMTP id p21mr31736118pgh.26.1572426108054; 
 Wed, 30 Oct 2019 02:01:48 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
 by smtp.gmail.com with ESMTPSA id g24sm2070351pfi.81.2019.10.30.02.01.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 02:01:47 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH v2 0/4] Add support for Thor96 board
Date: Wed, 30 Oct 2019 14:31:20 +0530
Message-Id: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_020149_247466_3369590F 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Expecting patch 1 to go through LED/Rob's tree, 4 through MTD tree
and 2,3 through Freescale tree.

Thanks,
Mani

Changes in v2:

* Added patch for documenting commonly used LED triggers
* Added Reviewed-by tags for bindings patch
* Changed, fsl,uart-has-rtscts to uart-has-rtscts in dts
* Modified the commit message of MTD patch

Manivannan Sadhasivam (4):
  dt-bindings: leds: Document commonly used LED triggers
  dt-bindings: arm: Add devicetree binding for Thor96 Board
  arm64: dts: freescale: Add devicetree support for Thor96 board
  mtd: spi-nor: Add support for w25q256jw

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/leds/common.txt       |  17 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mq-thor96.dts      | 581 ++++++++++++++++++
 drivers/mtd/spi-nor/spi-nor.c                 |   2 +
 5 files changed, 602 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-thor96.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
