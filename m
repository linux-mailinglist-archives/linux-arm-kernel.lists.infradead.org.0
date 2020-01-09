Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79157136078
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 19:49:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=alA63x/baJ9WpODtj6ODLpFqo3wvnY7Ng7izSJqn3oA=; b=kDgwpNvlGwJbmH
	Upgo8XNn+KTdaLeNEIGYf2FZVteWs9HQPbSeG09kknor4NQU3DHalJIJ/CWuFkXOvxgbI0QkeLbrP
	rBHGdLpHxlFXkdisERtjfU7dslt7I0FVRATgK48uAGdq6rdxNVoOKW9ZtlnRrxv43exbhtIvMtb9p
	1tzSt1S9Nud/AR/Q5Z3PyjeKCVO8au5Q0Ni015osaH7+AbSCMqzhNds5iDUg+EwAo2HgUl9qMSaO5
	DRwQvw1XC+yOS53t2O0rjV8XxT3xaXNKWKlnZXHbYr6G0gUNzJc2qSB7uXkTXTiK9Q2XIHZJskGke
	otH0Bz/OFmTkd4qxAC5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcs9-0003aN-Qq; Thu, 09 Jan 2020 18:49:33 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcrv-0003YX-8A
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 18:49:22 +0000
Received: by mail-pg1-x541.google.com with SMTP id q127so3635716pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 10:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=84EWLoF71yXkr+mW7/HZBjbWLb+AgGQGa+EUFEp055s=;
 b=tuzZ+q5KUpldnncxhnQ4zBiEBjzSSn0bF7AoWY2MKvGf2/jEfa1g9OhjSmRaFMv1CF
 IZ6lweALNoKOelKkUZZrkUAa8d5B4zQ9t6zBKpYp8VqeT66IXzauxyqxiaivk0higHdV
 heXR5kvlFAVkiWVVOhf01wIcw/9BPW9/qb3MSDUW3ldVNXSZnAl6Vgv5RtHcQY/Jb6uZ
 rWUMeCF9kcWegfcfF/KVSfa90WR/Z0fEOlcEuGRy0DNQJreRhDRwJno61u6qFWIAxGlX
 wFB6KupzN4RBnPZQ59d/ON5/XPDmxsx0QO2Cz4Sltv6veITZfwXpDJZjlNB5283qVTL1
 Axiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=84EWLoF71yXkr+mW7/HZBjbWLb+AgGQGa+EUFEp055s=;
 b=DZL/dIt3HvOBKEaFHrCGJ8jxCeNh7b6bA/5FijLLrsm+mFPj3tZja15OEaHGgdBStL
 ArXKbHzGcf3i9Dqy9fQ8cRivXahtVX+Z0HBtKvPPZBqCKhglai0H8ZMpBMbdUtzTHUA0
 /fkpe1pSDf6s04JMZWhqZkqA/Xfrho/BwgCTMrRT2QCZrF37gZk0KBtXHsVw+FpClQrK
 ijrzn6S3pjKDnJ08NejR5YxW/opoR1SSE84NzkoR8r1avAzoJyz+Bqmui4/St3TDEbpA
 IoBSZbaMwC3Mhyx4u7PXCTsW+j+bZhs4HccUjI82ZUoSNc32ekydyqj8x/5/FmBkjMgw
 Df1A==
X-Gm-Message-State: APjAAAVIBLXzspNaTCSFhCEOiBpl2SgDWWeCNVWOIm4kl1GhZnViF9AK
 4AS2uUz0KDJV/WX6Xs8GJd0S2A==
X-Google-Smtp-Source: APXvYqzpUMUZHn7sUHjJZmZVU+SDc2SqKpLJIv4uwWmmEA18OGIuUxR/+Z9SlWswcSYskDF/XydfGA==
X-Received: by 2002:a63:d543:: with SMTP id v3mr12530255pgi.285.1578595758789; 
 Thu, 09 Jan 2020 10:49:18 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id a2sm8367089pgv.64.2020.01.09.10.49.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 10:49:18 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org
Subject: [GIT PULL] Amlogic fixes for v5.6
Date: Thu, 09 Jan 2020 10:49:17 -0800
Message-ID: <7hblrcea8i.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104921_032690_E300CC37 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ sorry for the duplicate, this one has the right subject, and fixes the
  LAKML address ]

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-fixes

for you to fetch changes up to 30388cc075720aa0af4f2cb5933afa1f8f39d313:

  arm64: dts: meson-sm1-sei610: add gpio bluetooth interrupt (2019-12-09 15:21:21 -0800)

----------------------------------------------------------------
arm-soc: Amlogic fixes for v5.5-rc

----------------------------------------------------------------
Guillaume La Roque (1):
      arm64: dts: meson-sm1-sei610: add gpio bluetooth interrupt

Kevin Hilman (1):
      arm64: dts: meson-sm1-sei610: gpio-keys: switch to IRQs

Martin Blumenstingl (4):
      ARM: dts: meson8: fix the size of the PMU registers
      soc: amlogic: meson-ee-pwrc: propagate PD provider registration errors
      soc: amlogic: meson-ee-pwrc: propagate errors from pm_genpd_init()
      dt-bindings: reset: meson8b: fix duplicate reset IDs

 arch/arm/boot/dts/meson8.dtsi                     |  2 +-
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts  | 28 ++++++++++++++++++++++++++--
 drivers/soc/amlogic/meson-ee-pwrc.c               | 24 +++++++++++++++---------
 include/dt-bindings/reset/amlogic,meson8b-reset.h |  6 +++---
 4 files changed, 45 insertions(+), 15 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
