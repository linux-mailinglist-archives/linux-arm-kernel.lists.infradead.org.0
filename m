Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0351DD998
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 23:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:From:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YTtqyPBmbTBns89h3VaosDXDuVuWGzMi3Uattmyyu3Y=; b=b3a
	l1XjIUDxlkhibTKfO8+LtK/RxzcIThn/OwvkcYaTZwDnJWiPVQS+eO3cX3PKpN4xyL7mibSnDgPBx
	t1R1Tw2uPVpyyRC4e/f/peNFwCq1vT84J9Yr6hv8vMvRHllEZ9pxJP//yCBtKLmdgCFyvw+XcP6dS
	MN7U+2EwSeRCFMT55l0MJJqeFYuWMgBaoOMOronnEt3/3obH/Unui0XA+JVSZ55Ou0f6N0xCtMSqr
	1dwU7Cd5SxCo2cn6MZop7hzAfqkTZehg3MS7umtnVFJN8eum0X+954enU8dy9ZTr+JrnTfxr6Feu7
	Y2XOEY512JRrTJhVyi7/CZP9+QcmpLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbsv2-0006DD-6z; Thu, 21 May 2020 21:40:00 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbsur-0006Bs-Vy
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 21:39:51 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ci21so3936392pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 14:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:from:to:cc:subject;
 bh=6vIsXbSZsxZbRoxPgTw+ASt5fGw806KgYiqBAwnTDO8=;
 b=gn4nX4Auw0RDboyvphb5KQzyU70k+lXqW18okdBcYzogfVWkg6MDtsEcDEhnfyGeMV
 4BvsAeyB6t4NBujVpwF9fqF3UNVkHQYaQXajdsjs9h3TxVOd5KqVSoLYdKC1sPe8Mos/
 yYtPOK09HJjzL41mLbzrMlFIJg3SEzMQ94PLrNPgCl8y+KQP1IYS76LXTQenk7CpYu8o
 O4jDg6FiGa9xJTMcFG/wqr5AzCpLuTqFIEWTiLLYWbimPcsD5/Jdcv64KdofSeaTCM6l
 Zdk7qeBRJeWzzk8Ad7hpZffttf4GyYIvH8HcC3VKgvAxF4WQ+8TCHpTA8aRJ7mp7W3WX
 wprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject;
 bh=6vIsXbSZsxZbRoxPgTw+ASt5fGw806KgYiqBAwnTDO8=;
 b=gRnj8D/So5A7yUupwZWmkDvxhB+OOyqS7MYCT+0FS2fXWrWOQyWDvczuDrEUTMEnTl
 nzYGiz5Dym9Kfnvk0KdV2I9BpSdpWYdSBcQKps8pnWmW6WsSW12pkE9/ni/lI/dVO9HH
 q+FUHKUU2cXxTmKeF4n+gAkpCAggFMcVOq5oL7CKN1evMRkfnG+9rvdAiR2GoloBo9HY
 7OShDhe2aefQ6Mz9QXb7Ikj1nPIpTuePoqQHD88/lIsu+idNoQqnIktKCv/uOUlCBY0H
 cLF2/Mlbtkf68y/G50Hmm7HZiMgkzpqhmM8jV9R2PN6ZmlfMvB7slWARuPNzoGor6DDO
 wBfw==
X-Gm-Message-State: AOAM533E7SMDvX1K3DFOJXm4qgrb4/WMbdKbMAuybNav0PZbK+kFmSA0
 eB3LJmp/3Rc+atIdMLI554EV3Q==
X-Google-Smtp-Source: ABdhPJzfjOIzlLCGu9ZeIzRqHxG75hdQywvc9LXo/yIZFvvsxUr/sjqgzViW4N/9xui5NQbqX+4wBg==
X-Received: by 2002:a17:90a:c284:: with SMTP id f4mr664098pjt.68.1590097189203; 
 Thu, 21 May 2020 14:39:49 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id y22sm5403106pfc.132.2020.05.21.14.39.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 14:39:48 -0700 (PDT)
Message-ID: <5ec6f524.1c69fb81.b979a.ae15@mx.google.com>
Date: Thu, 21 May 2020 14:39:48 -0700
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL 2/4] ARM: dts: Amlogic updates for v5.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_143950_029254_B439BCB3 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt

for you to fetch changes up to 005231128e9e97461e81fa32421957a7664317ca:

  ARM: dts: meson: Switch existing boards with RGMII PHY to "rgmii-id" (2020-05-19 16:18:59 -0700)

----------------------------------------------------------------
ARM: dts: Amlogic updates for v5.8
- eth PHY and USB PHY updates

----------------------------------------------------------------
Martin Blumenstingl (4):
      ARM: dts: meson: add the gadget mode properties to the USB0 controller
      ARM: dts: meson8m2: Use the Meson8m2 specific USB2 PHY compatible
      ARM: dts: meson: Add the Ethernet "timing-adjustment" clock
      ARM: dts: meson: Switch existing boards with RGMII PHY to "rgmii-id"

 arch/arm/boot/dts/meson.dtsi              |  3 +++
 arch/arm/boot/dts/meson8b-odroidc1.dts    |  3 +--
 arch/arm/boot/dts/meson8b.dtsi            |  5 +++--
 arch/arm/boot/dts/meson8m2-mxiii-plus.dts |  4 +---
 arch/arm/boot/dts/meson8m2.dtsi           | 13 +++++++++++--
 5 files changed, 19 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
