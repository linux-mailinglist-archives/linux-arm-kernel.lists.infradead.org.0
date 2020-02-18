Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D6B161F4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 04:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=e/zilZtkfIXIaiz0Y14a/5vsXdySYF7BsS5+weAk5CE=; b=cql
	gYahDTh4cmy1XjVzAcS6ZZhXZzWrMHe6ClG3aLI3RcorOWZlktL9OLeC2kbdVK4FKG0CaK8Q5ey46
	1MTDBLXNoRf7ZKLjey/U01pA6zZHDe21RYXYiDWBzdRTWR6GWTyZ/fhPhMyjLsp/QJcWOfwYRl7d2
	j+xg6z0xm9hbVatQCbk4N1CR/BLhEmHcW46SE6tgpabCrgXvFCXD1zUVzderbWqgCh5ovqa85Zrok
	instAzC+YcJgxwtk0Q/DWTfGeebBwk1UAqYDh+FiuMmcmihM4OEuycO1U/KteL4PaaBHBj/ZMEN75
	mHjINA8CHgnNehHZCE2RfMGJgZZF9+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3tKI-0005BS-CH; Tue, 18 Feb 2020 03:13:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3tKD-0005AO-KG
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 03:13:31 +0000
Received: by mail-pl1-x642.google.com with SMTP id e8so7481275plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 19:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QXKDYwEJ0FxdOMnutv0vajM2YUai+A8MQR7DaSJ50D8=;
 b=K52oErQHhH1VOS2rZN6/4aypLstAfecJCe/0dHwYOQxReOfbBeAgIk5iOrwuR74dut
 +X4DBNOJOcu+bps5CMA+Pe8icIX0UTJdE6qrDS+z0pGqyDPmelDdMDYCF+W+shvYFEz2
 +t+GGcxWW22TPi20RBvTajOpA6i2HyzmN2CoFtrOaTC+AEVrV96UuSnFBNNR2vZ4oPA9
 tvTUVR2QXobydoifr/ioajA2AEwqlDacsKGHnJ99+Xc2pt1rUF20T9ovZYryNlTnvIle
 bFhww5NrHBPB9J6qMFEIL2hFukX5LzQ0Eb3dIr82CPhEKNvWyrGS2ImGVXcVC+zxdu5Q
 pnfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QXKDYwEJ0FxdOMnutv0vajM2YUai+A8MQR7DaSJ50D8=;
 b=F4QzM3ID3BPEhC616kA6ia6j9cJbm9lw+3laTOuMkmUkWQ69ke8rsFW//zum4krnPh
 LnH6tfX15VuBdh6NlgpwnK6wsR7smjtHS4VetS4Ym30Lv7KM8mJDzjWDNT2yYP7QkZGu
 cS79G7WVvuu/ncE8Xdcppjf/wQjXheJUBUpDUcmfjM48bnBETv5k2y0nY2amMWAO3L7f
 IDaoD2UV9VMddfJSZqXQVC8YOwYlHUcbWGWvCHDXggh5m+ElWVOEXq1s7gRzgJdEtzlD
 rrNs0ppLQ7zO6RknijkRR8jmc9ZDMENY84k38UlshwXty719g4jlsle1xkQatHS46ajh
 fa4w==
X-Gm-Message-State: APjAAAWROQsY8mywAQ4e2ejcGwOXkdGzWpujCvWXv+cYz/gk72UrAwV2
 YVHamk0vKd5yQSY1tWHVc70=
X-Google-Smtp-Source: APXvYqzx47gOz8vXOv1dcSyG2JwaSWwuAN6y+jr/G/nNBvxWFvH/XiVUGGsbruxEO9r6tVblvxUqLg==
X-Received: by 2002:a17:902:547:: with SMTP id
 65mr17940779plf.50.1581995605202; 
 Mon, 17 Feb 2020 19:13:25 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:180::6f94])
 by smtp.gmail.com with ESMTPSA id b18sm1812595pfd.63.2020.02.17.19.13.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 19:13:24 -0800 (PST)
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
Subject: [PATCH v3 0/5] aspeed-g6: enable usb support
Date: Mon, 17 Feb 2020 19:13:10 -0800
Message-Id: <20200218031315.562-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_191329_673243_CA92D0FD 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

The patch series aims at enabling USB Host and Gadget support on AST2600
platforms.

Patch #1 replaces hardcoded vhub port/endpoint number with device tree
properties, so that it's more convenient to add support for ast2600-vhub
which provides more downstream ports and endpoints.

Patch #2 enables ast2600 support in aspeed-vhub usb gadget driver.

Patch #3 adds USB devices and according pin groups in aspeed-g6 dtsi.

Patch #4 and #5 add vhub port/endpoint properties into aspeed-g4 and
aspeed-g5 dtsi.

Tao Ren (5):
  usb: gadget: aspeed: read vhub properties from device tree
  usb: gadget: aspeed: add ast2600 vhub support
  ARM: dts: aspeed-g6: add usb functions
  ARM: dts: aspeed-g5: add vhub port and endpoint properties
  ARM: dts: aspeed-g4: add vhub port and endpoint properties

 arch/arm/boot/dts/aspeed-g4.dtsi           |  2 +
 arch/arm/boot/dts/aspeed-g5.dtsi           |  2 +
 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi   | 25 +++++++
 arch/arm/boot/dts/aspeed-g6.dtsi           | 45 ++++++++++++
 drivers/usb/gadget/udc/aspeed-vhub/Kconfig |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/core.c  | 79 +++++++++++++++-------
 drivers/usb/gadget/udc/aspeed-vhub/dev.c   | 30 +++++---
 drivers/usb/gadget/udc/aspeed-vhub/epn.c   |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c   | 26 ++++---
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h  | 23 +++----
 10 files changed, 178 insertions(+), 62 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
