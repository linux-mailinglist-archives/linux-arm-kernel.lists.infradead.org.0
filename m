Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3913C25342
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BOsGj2ccZ3okNy4iCSZUkSDyL2GbzUKU3o6N3gDQh/Q=; b=F0ecMODYHSyH9U
	roDGmo3CVGGFLFN6HtlMIiytr83Sp/z2o/LBXZKUAta97d3q8MJA0IjyzjCFDSW5sGwaZ1Ub+PFsl
	Wlph2LybuIomjOn6TqvDkrdIhsrh6ROs+ySn5q0UVgOfS92FtFHPgTQ4VULdlsJNKEp4jwYwkMwp8
	ZpuMH52wjlSowKB89EmtxAzAgkPK5XVXxuy/XSb42feCRItanDDHUb/XagrX72/tWzCZNDxrhszXk
	9LvTgYdtxf/pB/EpmSb2ViMLc/5v9ZRrLD2PmzWEv0pzX2Tf8SLv//n+nU4f+pm1iFGZMR3t2nVDd
	sYAKoLJsz0avZE6MMySw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6Gv-00070U-6b; Tue, 21 May 2019 15:01:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6Gm-0006xy-63
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:01:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id e15so19030250wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 08:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BF2CDs8GJndud+tJOwAui4kXWvWdLcOJYF5JUOigmaI=;
 b=j+UCJZlmQX3NC+lUmPI+K/5t1BBpvYyat/5tw8TlJITObCeJXzQv5JA3sYpUsJjKi5
 w7QG2E6DoLMRMlQR9I1PQ+FTWxIK4jC9vRYueXaSWq2I+tzmzCGUWS+KHHWDCa3QJuEr
 OGurZvGKMb4DkUlJExtPXFAlxEgUCSFf37sanZKDY6pp47RMTBQTa6i1EAFzad8uboxa
 NqVMRVjvthtOrN0UM2vSPys/bdXWr3CBldD6JiBNPPcMxZJg75gRQ23oyuNUXCBjoT3g
 yJu7UO3DoOrpup1u8QmDD/elHa4U80tLW3pb4wT+Y4TwQk2MFMrUUKBOt82qR840O2dK
 ipyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BF2CDs8GJndud+tJOwAui4kXWvWdLcOJYF5JUOigmaI=;
 b=gsw4ziti4XPLyFyzOAmCKXIT4AvmV3Bo9Y8l+SyEnpVEM34TDFigSN/ZwyOczvsKYe
 kiFLGX2Ci9FhiDS/AZSoRRW0Ryr6pa9wvsKkodBfkY+680/RIsz5riAF1LUMhblXYK8i
 HyyrhpgaIBW0zmRURehT6WAYRW0uqfrLBbLAT4tmQk6r3dOPeq7Onyx4TFKWgol2WTfj
 dpTWq1NWesPCauZ+jW09Am6/0pZQ/RT8p3gf+xbkPvYZylGJQtMcZAKTUbpbmyT8loGM
 Nv7Q6rLQZ/nZotn0UcY/Q6USrS5zXZgTMGneLAeMeam8wZNIb/SQuI0y1AYbIc2QI2GC
 ra9g==
X-Gm-Message-State: APjAAAXAQugpd2jVK2uADAlq6bWsiiyexaYzdgSjXQuaF43YtiqV6nJh
 yckkVgnu/U1qI6Lo5BqdB082BKL31SFSgw==
X-Google-Smtp-Source: APXvYqzc/ULB/4zVvRVJIncLQNslSLkrcgQiE0igOHAgUp0J6NZfXBnW15l5WJWrBOBUyVM9G9e7Sg==
X-Received: by 2002:adf:cc8e:: with SMTP id p14mr35315046wrj.82.1558450893970; 
 Tue, 21 May 2019 08:01:33 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b194sm3407505wmb.23.2019.05.21.08.01.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 08:01:32 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 0/3] clk: meson: add support for Amlogic G12A
Date: Tue, 21 May 2019 17:01:27 +0200
Message-Id: <20190521150130.31684-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_080136_278003_5F2D5D35 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic G12B SoC is very similar with the G12A SoC, sharing
most of the features and architecture.
G12B clock tree is very close, the main differences are :
- SYS_PLL is used for the second cluster (otherwise used fir the first on G12a)
- SYS_PLL1 is used for the first cluster (instead of SYS_PLL on G12a)
- A duplicate CPU tree is added for the second cluster
- G12A has additional clocks like for CSI an other components, not handled yet

Dependencies :
- Patch 1, 3 : None
- Patch 2 : Depends on Guillaume's Temperature sensor Clock patches at [1]

This patchset is a spinoff of the v2 Odroid-N2 megapatchset at [2]

Changes since original pathset :
- Added missing sys1_pll div16, cpub div16 and cpub atb/axi/ahb/trace clocks
- Rewrote "This patch .." in commit messages

[1] https://lkml.kernel.org/r/20190412100221.26740-1-glaroque@baylibre.com
[2] https://lkml.kernel.org/r/20190423091503.10847-1-narmstrong@baylibre.com

Neil Armstrong (3):
  dt-bindings: clk: meson: add g12b periph clock controller bindings
  clk: meson: g12a: Add support for G12B CPUB clocks
  clk: meson: g12a: mark fclk_div3 as critical

 .../bindings/clock/amlogic,gxbb-clkc.txt      |   1 +
 drivers/clk/meson/g12a.c                      | 659 ++++++++++++++++++
 drivers/clk/meson/g12a.h                      |  33 +-
 3 files changed, 692 insertions(+), 1 deletion(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
