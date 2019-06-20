Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41364DC9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 23:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IZq0hUQzfvGM6veTFbnumVzHxIV6Zsf7dyWdYxYWO7Q=; b=Lx2Bk+PFDlCLQk
	UAth3cnFovu4ZX0RQvlnu9siqyqltEiGdHjX/hlKhXT5TFgkxgeLDBODSBCZP/qYWEsKwuVa6Ra+I
	rI1bTdnr310HDPtqYau/cyQQbqlki+QDLHcPRHh+FBjqhuLKDF2k0dX2kZHdFVuvy+46hGu4sYBgR
	mVXMaOlehk5ObX330daPOUp3olhmmcFYBmLaldnjnyE6oddyvA3nPdlPoApScWTeOcuS7qh7cPLsX
	QiKikhh1fAVSKoqNlRue7ZokezTE8FePWVFKSHHk+u13x6GM1+3efEZyZr2EN6WBMY1kY1wXZjOtC
	mReUdyXRIsMFcFfD2Ucg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4fB-0000iN-9a; Thu, 20 Jun 2019 21:32:09 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4ev-0000a1-G1
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 21:31:55 +0000
Received: by mail-pl1-x636.google.com with SMTP id t7so1891806plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 14:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=LA2byWf25MGtOfC7J6iW/rcMxjse6CVHJ6rWUn1KKNA=;
 b=QXWzh6ab8zvmLfzqY6NgD4pAIgfOuYVmkZiDPIn/0NfdhyQyCc68UBHjd9v+eW5aYx
 UX44OeK8q+2E22O+iDV35zv1kD4LB/9kRqiMMsgWXHzF+CbMD2BK63y4k1u42d+nK0Dp
 91m+fS/tmYGON+A9nQdTehkGJl4UE7ke7QzC8OLU3D+6lsRw+jLnGGoxlGvp7L+qy6Km
 7+2gPYrPUKlTCAMnEmC99masL0Q7GUFt4hF5PeTVfc5rnhAul4lVFjzH/v73EYxvgB4v
 kJu9WB4GG6w52i6xVDOL7IheiZfQLxRZKfb+gTxfzneKOMfJbNYP37GDZF/ZtSptra71
 knOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=LA2byWf25MGtOfC7J6iW/rcMxjse6CVHJ6rWUn1KKNA=;
 b=acj0vC8LiTYNCH6ecRli80Fe8eDOyredJEO2LUS2FdmDiZFTBLeKTIzejoSQYzxWK1
 RPPP+13z27oYuV0+BE/LyHQ+UjbH7RCXAzjXQimrqlSn/vNAZQocbi2+jJenXoFnQC0A
 iCIQEX9qOGfntD4GNm7//TQXBPW4cfDAyU0xkUP3dfbF42rSsGamfotZkGWl0pk3tUdg
 JIoC60Qvn3SGM2Zg79KYTRXPW1PL/YOzebtUOd0LAnhtr0kCtUPaxsyLRH4IkgVpkda5
 1+fGgkvT8nbggKHuYd5NzZkZQfCaRIxZeshT9Sbuv30tPgDtpqhSsDJdt/40jhI2dsRe
 vWPw==
X-Gm-Message-State: APjAAAVsO5x/HXokv8qGvaRxA1Arks55D7RNJl61EbKfcoO23q46M+yG
 /rnjyLqB3F0CrtYfDyCSiURyow==
X-Google-Smtp-Source: APXvYqyv378BHtXcWMIVzB5B7/TmnQ3LgvYsvSOvqHTCZMdAWRk3SnG4MAD/oUAbpC/ua4PG3msihQ==
X-Received: by 2002:a17:902:42a5:: with SMTP id
 h34mr90991811pld.16.1561066312639; 
 Thu, 20 Jun 2019 14:31:52 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id c129sm401469pfa.106.2019.06.20.14.31.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 14:31:52 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: arm@kernel.org
Subject: [GIT PULL] ARM: dts: Amlogic updates for v5.3
Date: Thu, 20 Jun 2019 14:31:51 -0700
Message-ID: <7hd0j8eyew.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143153_546052_6D412DFF 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt

for you to fetch changes up to a2c6e82e5341a283b06b04029f952598e445b159:

  ARM: dts: meson: switch to the generic Ethernet PHY reset bindings (2019-06-20 13:58:11 -0700)

----------------------------------------------------------------
ARM: dts: Amlogic updates for v5.3
- SPDX updates
- switch to generic ethernet PHY reset bindings
- add the canvas module
- mxiii-plus board: add regulators

----------------------------------------------------------------
Martin Blumenstingl (7):
      ARM: dts: meson8: add the canvas module
      ARM: dts: meson8m2: update the offset of the canvas module
      ARM: dts: meson8b: add the canvas module
      ARM: dts: meson8m2: mxiii-plus: rename the DCDC2 regulator
      ARM: dts: meson8m2: mxiii-plus: add the supply for the Mali GPU
      ARM: dts: meson8b: mxq: improve support for the TRONFY MXQ S805
      ARM: dts: meson: switch to the generic Ethernet PHY reset bindings

Neil Armstrong (8):
      ARM: dts: meson: update with SPDX Licence identifier
      ARM: dts: meson6-atv1200: update with SPDX Licence identifier
      ARM: dts: meson6: update with SPDX Licence identifier
      ARM: dts: meson8-minix-neo-x8: update with SPDX Licence identifier
      ARM: dts: meson8: update with SPDX Licence identifier
      ARM: dts: meson8b-mxq: update with SPDX Licence identifier
      ARM: dts: meson8b-odroidc1: update with SPDX Licence identifier
      ARM: dts: meson8b: update with SPDX Licence identifier

 arch/arm/boot/dts/meson.dtsi              |  44 +-------------------------------------------
 arch/arm/boot/dts/meson6-atv1200.dts      |  44 +-------------------------------------------
 arch/arm/boot/dts/meson6.dtsi             |  44 +-------------------------------------------
 arch/arm/boot/dts/meson8-minix-neo-x8.dts |  39 +--------------------------------------
 arch/arm/boot/dts/meson8.dtsi             |  64 +++++++++++++++++++++++----------------------------------------
 arch/arm/boot/dts/meson8b-ec100.dts       |   9 +++++----
 arch/arm/boot/dts/meson8b-mxq.dts         | 182 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------
 arch/arm/boot/dts/meson8b-odroidc1.dts    |  51 ++++++--------------------------------------------
 arch/arm/boot/dts/meson8b.dtsi            |  64 +++++++++++++++++++++++----------------------------------------
 arch/arm/boot/dts/meson8m2-mxiii-plus.dts |  17 +++++++++++------
 arch/arm/boot/dts/meson8m2.dtsi           |  10 ++++++++++
 11 files changed, 223 insertions(+), 345 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
