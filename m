Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEED4176F43
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6Zbn8FUp7eL6z0DSfwx72l1BorDe6Rj7dWH/ETF5IDw=; b=ZD+
	ljMXbKJzzgMm7FpJvwFURoVLuo5D09GXNXiRDxlyupSu1MhdHTrUvVGTSiQr+G64MYUbYzo5a+pm+
	tB+LHC0VxOiK0KyNYUN2EsPdEurtkdF9FV18j4BDtzuCtLNL8Fw3JysMEk49NvzvCx+WvlAM8Ofi3
	ieTh7Zk17aY5s+pqhDhMAVjzuG4HvtCSyRSAnbvcoLZxkPp0Xg4rjn1mmhk9fHLS9KkVeZlKZITjc
	Xq3owbgZSrwYLVVHazjt8JYLr60Axb1Q3fVr84srnM9pbTSXPYfaJKrooVQebVi0aNLaT4Ydy6P9Q
	Bct9CI4TTMCcTGti9/4xIvT2HUq9NmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90yE-00016u-Nj; Tue, 03 Mar 2020 06:23:58 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90y3-00013T-7S
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:23:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id nm6so473161pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 22:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6UPltCTph8JATwkMOr1U3Yp5FDDP+y4EAKaRm5ThBwE=;
 b=Kc6n75EjJhEh37Mawk55/f0mK1B/wLSfInD/iqmAB9GjGvp7CcQnF4DXEkCoxp55Ig
 KrLPGwAArvdTmZFYkk5iVpqzRLPpS96ZfzN1rSIqHWXCm2y0oNRUzUQJOr5oGEypb3UG
 40jhd6lOd5DEopyFqpQvqkUDCYkvqAW5NuXkzHMDh7DUsZSNrmxIO0U8AFigqmr95pe6
 je8schRmyv8m0fMmf+MclOWJN/Z8DQWTqK+pmtjfX+bYABPd4pIp4A5pXghYZQko9lBv
 54WZidUTxOvI/mGKRMYrTLUt+/tMFWQDQD1O5KCFRxGy586WB9e1v+RDNyfqDZuT9X9X
 EXDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6UPltCTph8JATwkMOr1U3Yp5FDDP+y4EAKaRm5ThBwE=;
 b=TrBwFlC3xp4NKv6OROKUM4X2cyLDRtYLNq+HD6GkVwXGQHpeMfIDHf9OkmmAyE7oF7
 0bLB9i+cOcIQoqBeIDRdFM70ed2NyQdrYGH3h9WCBzmyA2VHzF/hyZFXUcMV6p+MlTl6
 hCKfbfwIjM5twAsYtyEbdVUmmkbeUHfms10sqvZvxqSGD23H5CrhTjPekY19hAdB6q9I
 6FnaAHidhqBINPJA83xFEBMNEpx3Am/p4pwmiEzjVhDuS7/vNTKlLG+U5MsH1vq2nyJb
 Z9hUgsrve0f+xBcqna9XoDzCQR2YHmAluzKy4ZkkgSFTmjLV/CiQjLE4PPxx8noZ2Uj5
 ORlQ==
X-Gm-Message-State: ANhLgQ0oh+QKZYCu2iR74pVYPXupwv9qjKzp0S6a2U7bzqCfSKbcUda+
 x1d04icNKL6mnj1Pr0s3GRw=
X-Google-Smtp-Source: ADFU+vuvnRBHKecc4wMxbN//ecC5JbcdApulYoDZF/PxrhdgfqOSTO1/rFV2BRvLmaCdLXOUQIXFFQ==
X-Received: by 2002:a17:902:b611:: with SMTP id
 b17mr2783485pls.23.1583216626144; 
 Mon, 02 Mar 2020 22:23:46 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id k5sm7453526pfp.66.2020.03.02.22.23.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 22:23:45 -0800 (PST)
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
Subject: [PATCH v7 0/7] aspeed-g6: enable usb support
Date: Mon,  2 Mar 2020 22:23:29 -0800
Message-Id: <20200303062336.7361-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_222347_295305_3CFF29DF 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

 .../bindings/usb/aspeed,usb-vhub.yaml         | 77 +++++++++++++++++++
 arch/arm/boot/dts/aspeed-g4.dtsi              |  2 +
 arch/arm/boot/dts/aspeed-g5.dtsi              |  2 +
 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi      | 25 ++++++
 arch/arm/boot/dts/aspeed-g6.dtsi              | 45 +++++++++++
 drivers/usb/gadget/udc/aspeed-vhub/Kconfig    |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/core.c     | 71 ++++++++++-------
 drivers/usb/gadget/udc/aspeed-vhub/dev.c      | 30 ++++++--
 drivers/usb/gadget/udc/aspeed-vhub/epn.c      |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c      | 58 +++++++++-----
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h     | 43 +++++++----
 11 files changed, 290 insertions(+), 71 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
