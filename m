Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C77DF6BF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 01:35:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g5nD8ICebWF8x07KHrBlCeoxgQavOoXWtf5sdREmpxM=; b=Zf+sYjzhBd573g
	88KwcN+XlWUYAWl2xIAgmOA8D7f1i1/U62it1GdK7Vo7MK3C/ym9IxZlZb/CMX6h54T6feZ6kr4PQ
	iakfk0GWt/D4jfppEtZWX6dmcK6YjXz2KmwhX+a/AeojabMN3aMbqCTKupdDePS9TK+U+q0tPPxog
	+J5CZbVwuR0EbhLI74+U8hZygE+j3bm5TwKnwciv4m/BKsNeFZ92mfSBeY9ghGuqzSDZGTiFi49re
	NJj3kOuSElcXHYjSevHBTL80fsewckWFP4ek4k/ilZDruOgRfJx0QVN3pwgi/kaaNB0rCGDbRhXOc
	du8QbR4PklHlD8u7sIZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTxfx-0005dE-LE; Mon, 11 Nov 2019 00:35:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTxfn-0005cT-19
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 00:35:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id z4so9407002pfn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 16:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=MAQjdlepd8UIKchdOYWIna5btP7Z4rHfZh8LcCkk8Gc=;
 b=RXfSp74JRF+Q9oswISr1qzBeEsMI2+g7x2mF+E5M6hBHrbB/8AueTFM+XFzVgc2LEO
 KIf9rcmtyLer3qJ9LULtPE1yPEk5lH5N7xapkm3AXZGR3ciNmxBHWhskJZTIu6PYVMRL
 GYOHJ7kPmYSCuH0Oj6Nbowl7PxmIGIJ/bzs4rkM9aDEftsUms8ktdaBtF8h/sdyoaAyz
 SgTJ9vqFjNOPUj//aIS40Wdt38Xf2HIOSHPzRvDoZDUbyyU8noj4x5XxpH6/Gjpmjv5D
 6Z0b1k2dkYQtFTq/koe0t+IHylaplOVSWNs1/DT40CmKIT2f1AGmM66uuiOYci47IpsJ
 iHng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=MAQjdlepd8UIKchdOYWIna5btP7Z4rHfZh8LcCkk8Gc=;
 b=rGhHKtQXi1iU2xjeqEah/y+5yOG/5zB64eh7laBK7LK/eu4vvKfu3oPdXypPgq+A69
 aW0MpyaaBfCRrrsCTBLS99a2rCQ+Ch0P1EzJSFeDzvWUBfBfq+I7CJhAh0KtxXM9iM5J
 Co2/5/vwWoso26iZOP1MVa7mweyfdjrVd4LSIEuOTBGi3ej3HpEmQYyrkSnaFvj/u10o
 DuqsHNqgL/T60sqoNLzVyPWMwyRNGCLTJvofd8d9IQ883C6MdB4wIGkx54BE9f/1qKEW
 pSWeIWOhxtPbRnueO+QBiCa7+TI+VquGXwqg9RSHn7hKHPh6o/YG6QyHff/M/DuzzLNa
 ZvEg==
X-Gm-Message-State: APjAAAWJs8vWIhGsaGVNrwcimR5pzWm94OouuNi3xZ4vvLzbw/q4mDeQ
 74xbQrTmrw3bCx60GoOSn34gBw==
X-Google-Smtp-Source: APXvYqzphW5yoF8c9ArzqIBLhXJz8xl7kLt2GySGU5GViL8HOQ9POZ83Zzl9WPmPuFdongVoUPEOKQ==
X-Received: by 2002:a62:770d:: with SMTP id s13mr26871073pfc.239.1573432511177; 
 Sun, 10 Nov 2019 16:35:11 -0800 (PST)
Received: from localhost ([2601:602:9200:a1a5:7c60:912:1380:6df8])
 by smtp.gmail.com with ESMTPSA id l24sm11946947pff.151.2019.11.10.16.35.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 10 Nov 2019 16:35:10 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org
Subject: [GIT PULL] soc: amlogic: updates for v5.5
Date: Mon, 11 Nov 2019 01:35:08 +0100
Message-ID: <7hftivs11f.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_163515_070070_21334709 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-drivers

for you to fetch changes up to fdfc6997bd083acd066db99792694fa8a31a6cac:

  soc: amlogic: meson-gx-socinfo: Fix S905D3 ID for VIM3L (2019-11-06 11:12:58 -0800)

----------------------------------------------------------------
soc: amlogic: updates for v5.5

Highlights
- socinfo: more SoC IDs
- firmware: misc secure-monitor cleanups

----------------------------------------------------------------
Andy Shevchenko (1):
      firmware: meson_sm: use %*ph to print small buffer

Carlo Caione (3):
      firmware: meson_sm: Mark chip struct as static const
      nvmem: meson-efuse: bindings: Add secure-monitor phandle
      firmware: meson_sm: Rework driver as a proper platform driver

Christian Hewitt (2):
      soc: amlogic: meson-gx-socinfo: Add S905X3 ID for VIM3L
      soc: amlogic: meson-gx-socinfo: Fix S905D3 ID for VIM3L

Jianxin Pan (1):
      soc: amlogic: meson-gx-socinfo: Add A1 and A113L IDs

 Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt |   6 +++++
 drivers/firmware/meson/meson_sm.c                         | 110 +++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------
 drivers/nvmem/meson-efuse.c                               |  24 +++++++++++++++++---
 drivers/soc/amlogic/meson-gx-socinfo.c                    |   3 +++
 include/linux/firmware/meson/meson_sm.h                   |  15 ++++++++-----
 5 files changed, 105 insertions(+), 53 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
