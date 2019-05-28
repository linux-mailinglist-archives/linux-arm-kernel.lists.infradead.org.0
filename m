Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B682D1CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 01:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=I6ZsjdVhSmWw7bkHAxxodVh1YB5lDggiO55ZN9HuWu8=; b=Y5G
	IcXbjmwludv64NQ4/pdXHKsXXR+6I4HB+Bi5iMLZIR/6GwjjO47FOZwpHW1pL1d0mrmcpI+u8OGOb
	qsAwawRudK6JiKduxoXy6El4My+Ztl+48u25DUTMLDkWbL5m+k+MctkH/VIuqmXkTlFQrZjSVA7QI
	flcvHlmp9xeSg8uI67rjfAKOKNVZXOxSktR+Cqx/MEhSEKpj2u1IMvZrLPBNdwM6Hh1kE0eiuPj3h
	OIty+Rsz6Gw+Nhw8czfAcXZVRhiqb5wjlaihQ/TNGfVT/pLNo3PZgCNslTkncXnwxEplxWDtOzbqF
	MB+YbHi3Ohw3hgM7SVi3e0x7qZ6dArA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVl6o-0000e4-2r; Tue, 28 May 2019 23:02:18 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVl6g-0000d8-Dg
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 23:02:11 +0000
Received: by mail-pf1-x42f.google.com with SMTP id u22so261392pfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 16:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Y/VOH6BvU/MWPvpHKCihH6D4NzgFmU0S2a+uGKoSxfM=;
 b=eNmKw5zOX7VdVJiTD0KDJa2omjSljFW6i4sFokUXCH8wI7sLNt0tMSdOBdJRA8viui
 C7+Hp5hJLhBbMCxOip/hGk7I7rdVpbXQfFZVnRcxEfaEyVhMZd5x/0lkYRVRjDSVmcox
 9w5dG2U1HdT1w19sLw0VBhFC2/e6GQMvxj0hzzHkfmremQoeNhcH9SDj4TtiBGaxbuvV
 Uy1GAy4RN6yezwjD93ML2baFzYrvwjJveYM7mfD1S6n1qn/GnVXEZS4IYmPnxmY3f5Ty
 8ozY77T60MEEV1ZBgc+FSadZg8V5O8PPuMc7YbyD7U79k7Fp52mLh+FF9QURK02+gNYu
 HSZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Y/VOH6BvU/MWPvpHKCihH6D4NzgFmU0S2a+uGKoSxfM=;
 b=Dc4sRXfa4Og3dRz07lCWKjV/VxPG7jZfkyBtaO39UvBBSDOHSBAjokRkfdJy26QaEE
 6bsLpnCBYrPGMelDpEXTCdbPaQhn1zEcipeOBulY8nHz5wE4dYh8L6vfYpgrSooaZDKA
 zyJbVHBXqDGVtjQzEIA5EmqmGNrdZrFkGbegFVmweyogBCIoPP8bfOKLmTf/2QBoBDjW
 jM5WKlaCGqdiGWdYb4FNl+g7E9KS1x9+oltgJUMAUXh0xpb8G9l0GrG/q+9M/IP4Giii
 quFeeQF4DdEnCGJ4ZIQbAVF4RgCotn7CXL3tvZbzWdt4PvLHe6owIeDG2YKl2L2aEnYP
 JqKg==
X-Gm-Message-State: APjAAAVJNhA6iGlkl8inKSb5LlMyDsyk8cGEFbSWuaLTKo40Q91LBy/i
 sniXRu4naDHxGbf6h81JyM4unXgN
X-Google-Smtp-Source: APXvYqyONKApZkIGfVf/LX9HEQp9b/iDe48sxTs5HbirhNZWpS4vHTMCWPP7vA0NgN+hnrgi52F81w==
X-Received: by 2002:a63:5607:: with SMTP id k7mr81068244pgb.118.1559084528905; 
 Tue, 28 May 2019 16:02:08 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm14369573pfh.13.2019.05.28.16.02.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 16:02:08 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/7] ARM: dts: Broadcom: Fix W=1 DTC warnings
Date: Tue, 28 May 2019 16:01:27 -0700
Message-Id: <20190528230134.27007-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_160210_488166_D8325B94 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Brian Norris <computersforpeace@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This patch series attempts to fix the most obvious W=1 DTC warnings for
Broadcom SoCs DTS files. Stefan, if you could do the same for all
bcm283* that would be fantastic.

Thank you!

Florian Fainelli (7):
  ARM: dts: Fix BCM7445 DTC warnings
  ARM: dts: Cygnus: Fix most DTC W=1 warnings
  ARM: dts: bcm-mobile: Fix most DTC W=1 warnings
  ARM: dts: BCM53573: Fix DTC W=1 warnings
  ARM: dts: BCM63xx: Fix DTC W=1 warnings
  ARM: dts: BCM5301X: Fix most DTC W=1 warnings
  ARM: dts: NSP: Fix the bulk of W=1 DTC warnings

 arch/arm/boot/dts/bcm-cygnus-clock.dtsi            | 12 ++++++------
 arch/arm/boot/dts/bcm-cygnus.dtsi                  |  6 +++---
 arch/arm/boot/dts/bcm-nsp.dtsi                     |  9 +++------
 arch/arm/boot/dts/bcm11351.dtsi                    | 12 ++++++------
 arch/arm/boot/dts/bcm21664-garnet.dts              |  2 +-
 arch/arm/boot/dts/bcm21664.dtsi                    | 10 +++++-----
 arch/arm/boot/dts/bcm23550-sparrow.dts             |  2 +-
 arch/arm/boot/dts/bcm23550.dtsi                    |  8 ++++----
 arch/arm/boot/dts/bcm28155-ap.dts                  |  2 +-
 arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts        |  4 +---
 arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts        |  4 +---
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts  |  4 +---
 arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts    |  4 +---
 arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts    |  4 +---
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts       |  4 +---
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts       |  4 +---
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts        |  4 +---
 arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts     |  4 +---
 arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts      |  4 +---
 arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts        |  4 +---
 arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts |  4 +---
 arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts  |  4 +---
 arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts      |  4 +---
 arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts      |  4 +---
 arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts |  4 +---
 arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts    |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts   |  4 +---
 arch/arm/boot/dts/bcm47094-netgear-r8500.dts       |  4 +---
 arch/arm/boot/dts/bcm47094-phicomm-k3.dts          |  4 +---
 arch/arm/boot/dts/bcm47189-luxul-xap-1440.dts      |  4 +---
 arch/arm/boot/dts/bcm47189-luxul-xap-810.dts       |  4 +---
 arch/arm/boot/dts/bcm47189-tenda-ac9.dts           |  4 +---
 arch/arm/boot/dts/bcm5301x.dtsi                    | 10 ++++------
 arch/arm/boot/dts/bcm53573.dtsi                    |  2 +-
 arch/arm/boot/dts/bcm63138.dtsi                    |  9 +++------
 arch/arm/boot/dts/bcm7445-bcm97445svmb.dts         |  2 +-
 arch/arm/boot/dts/bcm7445.dtsi                     |  8 ++++----
 arch/arm/boot/dts/bcm911360_entphn.dts             |  2 --
 arch/arm/boot/dts/bcm947189acdbmr.dts              |  4 +---
 arch/arm/boot/dts/bcm953012er.dts                  |  4 +---
 arch/arm/boot/dts/bcm953012k.dts                   |  2 +-
 arch/arm/boot/dts/bcm958522er.dts                  |  2 +-
 arch/arm/boot/dts/bcm958525er.dts                  |  2 +-
 arch/arm/boot/dts/bcm958525xmc.dts                 |  2 +-
 arch/arm/boot/dts/bcm958622hr.dts                  |  2 +-
 arch/arm/boot/dts/bcm958623hr.dts                  |  2 +-
 arch/arm/boot/dts/bcm958625hr.dts                  |  2 +-
 arch/arm/boot/dts/bcm958625k.dts                   |  2 +-
 arch/arm/boot/dts/bcm963138dvt.dts                 |  2 +-
 arch/arm/boot/dts/bcm988312hr.dts                  |  2 +-
 55 files changed, 83 insertions(+), 153 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
