Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D1B14F49C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 23:22:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UviAd1NwIxsTk0OyQgJgU2wBQaxIE84zcIdty5yZQCM=; b=LTw
	wtKAT3uh15XXgkzKnoHGrsj81wRvm5zvU9q7cU1vlBwinlhYCbryCrPy3E2E5pSlTvfLzZAut2pjr
	br8n7jsccAZa8CtrVeo46C3h3Js/Sa0OprOD4LsdziwbXHSNP6mU/+gpPfeV3iRfQ1k110c0y46Oz
	d/Z6924o564tL69AY4S67P2LvZvNoinIHYyVj5YjkAJTOc/rq/vk/PaiiWDmMIg2+pNnW3EW52K5f
	S7e+vhojXI4ozKRVf2UO3jmarZ+28riMUYRZeBRkfAPax4FsJV6wzeZMEReC0NrShNtTskEDwctJb
	CS57YajgkvQrflKjhlsEF4AbTE4y8FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixeg5-0002om-4q; Fri, 31 Jan 2020 22:22:17 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixefx-0002o7-Gp
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 22:22:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id q127so4242332pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 14:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/HFcoQMFwoF5gwXFjCOgMWeMPSstLjSDHZ4Dum+BpLY=;
 b=DatComwmXGtiPYRomdkOy0XFknlTGW4jw8cqnPXUs3c1PayQQ01hJkqNdNRCG8/3as
 pZ/HWMofmFNsf38uGdGoFb3KtxSkVedmPKnu1jwNA2VWD0/4lpfh7rRv7HJc7BHC4AJa
 O02dRGqtmspUgZGqsDhaanNF5EdARykMjcLg8SgyQktv9O3aCgdAdKUh2t+uFNq/6oBb
 9tKZ9w8vkAtdC8LszUYhH4MUge04bpiWX+0BGuCp8I892FKG/uCFih4C0Sz3kVIhKEqk
 IM6KyEzpAP0RXQ1QsP0P5JnzqdRzaJdfvyMe4Y6yG5V9RDGEL7j/Dw0JyZdCWhnGly0V
 pSSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/HFcoQMFwoF5gwXFjCOgMWeMPSstLjSDHZ4Dum+BpLY=;
 b=Tm2/0VmgJ/LiRxibwrkcreZLrG9xGd7BmvtkWbIHit4MgTZrxGfA3D7KzkpaizYjdf
 vOCFydpcMwNgqrIraTnIihV656AW3iUltKrBY1NbKflgVktX555FRqiP394kWyn/GinX
 1Cqpz1o8JFkalAN+D2avtaSILdPdJJc9krlXPyiC+3jjudtAAApf8HMmQLshPTcFa4cC
 6O5vIpzMApKdjRtjpxk2GlCilJ4X4pT3arV+EQ9uWcFTc5WJOedKAzFAC9o7XCuIvL+X
 UTcC9v71llUo3yssafVYIe9ho6P0e//5pfTsJMAvP3i3TbOg9P9zd994WeSNSfz5x1s4
 qcbw==
X-Gm-Message-State: APjAAAVSfwJ9ybL1xlSLQ6GWYJICoyFK7sJONmcdV4AfUqoji16QJROP
 Mlv/77cqI5x9Z5xRTiDwwzc=
X-Google-Smtp-Source: APXvYqx7oLNYYYIoBn05Sgk8HxhcExQrlyg5hCf0aIq/sj8/mwAJ8Vjgu7X4e0+MgzPbAFocAsrZ6Q==
X-Received: by 2002:a62:ddd0:: with SMTP id w199mr12425962pff.1.1580509327790; 
 Fri, 31 Jan 2020 14:22:07 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::1:a521])
 by smtp.gmail.com with ESMTPSA id v8sm11201515pff.151.2020.01.31.14.22.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 14:22:07 -0800 (PST)
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
 openbmc@lists.ozlabs.org
Subject: [PATCH 0/3] aspeed-g6: enable usb support
Date: Fri, 31 Jan 2020 14:21:54 -0800
Message-Id: <20200131222157.20849-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_142209_585660_E19121FF 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

The patch series aims at enabling USB Host and Gadget support on AST2600
platforms.

Patch #1 moves hardcoded vhub attributes (number of downstream ports and
endpoints) to "struct ast_hub_config" which is then attached to "struct
of_device_id". By doing this, it will be easier to enable ast2600 vhub
which supports more ports and endpoints.

Patch #2 enables AST2600 support in aspeed-vhub gadget driver.

Patch #3 adds USB devices and according pin groups in aspeed-g6 dtsi.

Tao Ren (3):
  usb: gadget: aspeed: read vhub config from of_device_id
  usb: gadget: aspeed: add ast2600 vhub support
  ARM: dts: aspeed-g6: add usb functions

 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi   |  25 +++++
 arch/arm/boot/dts/aspeed-g6.dtsi           |  43 ++++++++
 drivers/usb/gadget/udc/aspeed-vhub/Kconfig |   4 +-
 drivers/usb/gadget/udc/aspeed-vhub/core.c  | 109 ++++++++++++++-------
 drivers/usb/gadget/udc/aspeed-vhub/dev.c   |  30 ++++--
 drivers/usb/gadget/udc/aspeed-vhub/epn.c   |   4 +-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c   |  26 +++--
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h  |  23 ++---
 8 files changed, 191 insertions(+), 73 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
