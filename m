Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B27281492
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 10:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H+tIFzkCYpH4/PQ/zxMOWlJa0+JEnkONYEdN9seelLs=; b=ZK4Bcm6yCPRL7X
	n31IgeP6n/IGcYpy16kBLAOTBnxZB1BgRpVuiEZibdSHMFdxa4jAkD/AfjaxrZB9cvzAKhWWXbhv8
	jtHEihsxmLojltxK4LBqk+n2574lKL/zgOHCcjKZkUpfNjH4BeFfPCDtiKnlw5n86xNaBroLDlMX6
	eU0qvOmtstT7lpyQGiX5E4vDqhWgyR4ugoJbjxmNzkPrGc6uPedYSdc0GMIa0fGAtotzSgIpJswiq
	HNehEeSYW2GHzAU+GHczoPzRYigx36UOIBPj8O4FRUjmLJrfLXe7Zo/DSF3J9i+Rh9lxynsOossWe
	aLlPCRAQKBvL9f8pMmyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYpn-0005jt-SF; Mon, 05 Aug 2019 08:59:15 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYpa-0005jQ-Pj
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:59:04 +0000
Received: by mail-lf1-x143.google.com with SMTP id c19so57291421lfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Mpu+9BXQBz6K5v4fBeKDx2nimOndUlvbI5LeRRJJ8w=;
 b=ubWWTLCzqcirJay0D9GAVci3gf5pepENlv2D0l2p4vZJbe4D7/w7hQMQFHkV5J49vS
 qGgBEKsennpq+/NO8pidoUeiWpW7ReJxgmMDRjVohc9DEUL6dR4iPPDMz3D2N45VDJ7k
 suSQNm4VqfuenWOWU/PUhGPf1l0KTr61H4dX+S8Zwy0X0OQcOCj4ga3k92Kb06glM/9/
 RFApqKc2vg44g48T3lkn6gvCIkccgtcJuDGNUpU5lPw0EHDsGOVN0o+se8B/mnE+xdLU
 xeW2SKibS/UKMK58z/crFtP/tjusCExRIKLp2DyUE5VwoTyBmVBdnaskOtZIgADHljd+
 M4pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Mpu+9BXQBz6K5v4fBeKDx2nimOndUlvbI5LeRRJJ8w=;
 b=BnzOHGGfhqo5Ri/5rCT6TOGSMK5zYwdvC+cT1/lE6a966mUk2Q6G00OhwNH1XmL7g+
 LOF79wSmw0+YT/zsNG6c//w723B9O8vbcp0W/GVhrnbqRIPtjzhPDl9npxRmt2uxbg5b
 Kmrjy/DZ0a8jttIXXn1yvopsoXEFidXEMRqnZTUJltYB3BzxnMhFG7NIxCjnhLgs+Ghu
 CkiMrJUKcoP7LTzVxb1M68+yCPWDGZLDw2aYEDGCbjguCPp3uyPvnY7BsFpjPGT/IMrz
 YjRi0hGVixNFA3qPg+SWswiChjfgv7erDza82JalOV+kO9jLqNH7UBrn89Uo2T5MoFEL
 Zrxw==
X-Gm-Message-State: APjAAAVFd1H/ASlYP1H9iyOGLIpwnq3ESV7LySkqkc3SHF7p4MfYCw+P
 viH7DEf4bjdjw3erMwbdaTZ15+yi1uw=
X-Google-Smtp-Source: APXvYqzgQX6QSvc8gNUWxCb0D3TS6ENYK1ZH8OpjA5RX1MHD4c88CWPDVZhINA2GGzpXkZtBVyi6/w==
X-Received: by 2002:a19:f703:: with SMTP id z3mr15398029lfe.171.1564995540090; 
 Mon, 05 Aug 2019 01:59:00 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id b20sm234500lfc.17.2019.08.05.01.58.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 01:58:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Daniel Tang <dt.tangr@gmail.com>,
	Fabian Vogt <fabian@ritter-vogt.de>
Subject: [PATCH 0/4 v2] PL111 DRM conversion of nspire
Date: Mon,  5 Aug 2019 10:58:43 +0200
Message-Id: <20190805085847.25554-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_015902_866120_7BD6AC64 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This now works, I think.

So this is a cold-coded attempt to move the TI nspire over to
using DRM. It is more or less the last user of the old fbdev
driver so it is a noble cause and interesting usecase.

This can be applied on top of a vanilla Torvalds v5.3-rc1
kernel out since sunday.

I do not expect these patches to "just work", I expect them to
need some hacking, so someone who is actually working on the
hardware will need to step in and fix it up.

It does outline the overall idea of how to do this.

I found no defconfig for nspire in the kernel so I used
ARMv4t multi.

Configuring the driver for nspire:

- Disable CONFIG_FB_ARMCLCD
- Enable CONFIG_DRM_PL111, CONFIG_DRM_PANEL_SIMPLE

The ARM patch will be merged separately through ARM SoC.

Linus Walleij (4):
  drm/pl111: Support grayscale
  drm/panel: simple: Add TI nspire panel bindings
  drm/panel: simple: Support TI nspire panels
  ARM: nspire: Move CLCD set-up to device tree

 .../bindings/display/panel/ti,nspire.yaml     |  36 ++++++
 arch/arm/boot/dts/nspire-classic.dtsi         |  19 ++-
 arch/arm/boot/dts/nspire-cx.dts               |  18 ++-
 arch/arm/boot/dts/nspire.dtsi                 |  10 +-
 arch/arm/mach-nspire/Makefile                 |   1 -
 arch/arm/mach-nspire/clcd.c                   | 114 ------------------
 arch/arm/mach-nspire/clcd.h                   |  10 --
 arch/arm/mach-nspire/nspire.c                 |  25 ----
 drivers/gpu/drm/panel/panel-simple.c          |  64 ++++++++++
 drivers/gpu/drm/pl111/pl111_display.c         |  29 ++++-
 include/linux/amba/clcd-regs.h                |   1 +
 11 files changed, 171 insertions(+), 156 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
 delete mode 100644 arch/arm/mach-nspire/clcd.c
 delete mode 100644 arch/arm/mach-nspire/clcd.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
