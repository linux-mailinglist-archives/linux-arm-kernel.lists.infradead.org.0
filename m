Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5514172E8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 03:08:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ug7CDDt9X8iQUU11c89zlEf7D5f94ouvVz+Fo3bA/fM=; b=eBm
	EIy1qsVSXZqNNr2qVPqcw/5IRObY4ybNyVJlbDp8irnrYMmIEqUGUrFMtUeaeLQo4kiZVVcT9qhGD
	A51HtWdzEuM2ybLude8Ie7yZgWLXCea2+COFYcB/qW2U8J0WBYN02Ea9Zw/htMAMXvGMo6+awhPDl
	xLv+lZdqzqjihQYXEQCPauM3YUPsqJq+6vY0zl7AAHhpYqTUx7qR970Lg90aj1NaAIZUXsLGLxdki
	xFVMpU2N89Vdcal62u020m9KXK4glcAK4jGoPa/2BNy2HC13bwg6n8+KKKKrooGc+LVE0FKdGnfVv
	+LFasitFwcoqxB0/5Oi4QFyYxXtSDBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7V4i-0003d2-3L; Fri, 28 Feb 2020 02:08:24 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7V4V-0003bI-BQ
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 02:08:12 +0000
Received: by mail-pg1-x541.google.com with SMTP id t24so659855pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 18:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Z5AIbk2nbOcHqpTmcvhMG9mF23rIvUFPSLJXXgXhGns=;
 b=WxZo9JuHxs2vb8rzf2HkXGaALenOiLW17gU9FV7NRZnQX/R4Snkc7mWGvmDU4MAO7t
 8jVaLqfz7cr3WemoDQyHzihCUa74B7tA2upzRpq3DhB56XOkNZEUAP+diQ8F5pr1mYYy
 /eINOAoaeDTbtQSjkQ7q78GZrG18X6ofyEIevln/VnS7x9LMTG0vZCQ7fdSQAuOm/YSX
 LPE2FMrcSLV42KJJN0Al145sJ40ccNpQSxso2CPCXZfPBYXsZdmZXydPm6TGRv8sxS8X
 IO+MQfO38hqOcgEArnArXh/Imkv8+osKKLguQ/jJgaRUiT+PKDryfxsvWMW27f74d2WQ
 +KMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Z5AIbk2nbOcHqpTmcvhMG9mF23rIvUFPSLJXXgXhGns=;
 b=FYL1jkAnY3kWigZR02ePsBZJ4JC3bwD2oj7ll14vbClu7XXT4V9Fl3ddqzavB3wt1Y
 SeSKSLR77ZmeSezC0wYHZpmXvLaccHoYl3npXmMdCcVOEnwZ9sDlAMDJNL2Cs51DwmOn
 Ua8+dyq50LH2fw1LbKWVwW/6zkSYTHo/lIC4aEBQA7eljk2iqQu5PgfDhvHUzc2HoK4o
 qzPwD/E90WOcs05h8iGAunD0MyNZg/0D+tLoSquxf2CTBo6jbAeG6ksj4iHBgHx7pAwN
 XfDgcx/WKOg/6nMDqpAc2mJ1M0TAUZ92u+6syxlO8/DCoToivvclz0vyRNVwlZgjehMP
 MZRA==
X-Gm-Message-State: APjAAAUU7xoxg+ETLRB3g8C/YkNbxpF4yEDm+tOCOz8nVi4HljFM2fqz
 jgL1CkcPKCa+ithCIfcFhn0=
X-Google-Smtp-Source: APXvYqzwfsLxTTqt4X5L8xIjUVbm8bxdacPFLrNAwoD4cD1bY8Ry1LYaaB9nFvV5Fr/sOrt1DhrKRA==
X-Received: by 2002:a63:42c2:: with SMTP id p185mr2358809pga.268.1582855687383; 
 Thu, 27 Feb 2020 18:08:07 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id k24sm4931972pgm.61.2020.02.27.18.08.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 18:08:06 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v6 0/7] aspeed-g6: enable usb support
Date: Thu, 27 Feb 2020 18:07:50 -0800
Message-Id: <20200228020757.10513-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_180811_387548_3584C4CA 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

The patch series aims at enabling USB Host and Gadget support on AST2600
platforms.

Patch #1 includes vhub's usb descriptors in struct "ast_vhub": all usb
descriptor changes will go to the per-vhub instance instead of touching
the global default descriptors.

Patch #2 replaces hardcoded vhub port/endpoint number with device tree
properties, so that it's more convenient to add support for ast2600-vhub
which provides more downstream ports and endpoints.

Patch #3 enables ast2600 support in aspeed-vhub usb gadget driver.

Patch #4 adds USB devices and according pin groups in aspeed-g6 dtsi.

Patch #5 and #6 add vhub port/endpoint properties into aspeed-g4 and
aspeed-g5 dtsi.

Patch #7 adds device tree binding document for aspeed usb-vhub driver.

Tao Ren (7):
  usb: gadget: aspeed: support per-vhub usb descriptors
  usb: gadget: aspeed: read vhub properties from device tree
  usb: gadget: aspeed: add ast2600 vhub support
  ARM: dts: aspeed-g6: add usb functions
  ARM: dts: aspeed-g5: add vhub port and endpoint properties
  ARM: dts: aspeed-g4: add vhub port and endpoint properties
  dt-bindings: usb: add documentation for aspeed usb-vhub

 .../bindings/usb/aspeed,usb-vhub.yaml         | 73 +++++++++++++++++++
 arch/arm/boot/dts/aspeed-g4.dtsi              |  2 +
 arch/arm/boot/dts/aspeed-g5.dtsi              |  2 +
 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi      | 25 +++++++
 arch/arm/boot/dts/aspeed-g6.dtsi              | 45 ++++++++++++
 drivers/usb/gadget/udc/aspeed-vhub/Kconfig    |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/core.c     | 71 +++++++++++-------
 drivers/usb/gadget/udc/aspeed-vhub/dev.c      | 30 ++++++--
 drivers/usb/gadget/udc/aspeed-vhub/epn.c      |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c      | 58 ++++++++++-----
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h     | 43 +++++++----
 11 files changed, 286 insertions(+), 71 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
