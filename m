Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D444941A81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 04:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QyEABBmmdDoPEiuAJicmHQeY9XtKYeECEYSlYTQYDE0=; b=spR
	Emfko8Z01XtNAaq/u8ikAP3HKwesWi/lXXGzSpr36y75s/TYiHq2to8cwMR+4uWWSPry7TMXPkk0g
	35Kgpq72NWY1YPOdDAwFxLQ0mYoFQAcM5iS9GtDGFFgvGr7Axg5uW3H1VwwXgsq+aIyH0L/wpCREv
	9kgDNH/fAYSdjsrA/Iw0kK3w68G/+AP1P3YUqSavXhpC2ap6U/Vr86eNcEu5Zd6LuhvhLLosbgWeH
	7xMo7SSV2heXIu3W3T+EqKzuxFJ53ur/0uenQnRhoP+Km72UmXIHRed5cx5vRKGBi9HjHGDST2Kj5
	+IVDazIlUk7prAYzwFS/FQ0qdfuyHrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hatLp-00032c-CZ; Wed, 12 Jun 2019 02:51:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hatLb-00031w-TU
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 02:50:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id m3so15158134wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 19:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Dz7XBBqSD1iuax7EFnxzMisXu1uKsAAzj2nV1w5NOgg=;
 b=D0NbOqZBx006MunIzP2Ziv1AfPkWZzY+X46ZMr70XtXs1/3fn4bfNfN4otSRzDNfH0
 ZAw+M0mX4zvPTH5QwClsADPMnEDU0g78wkl62V34PerLfimSDseL+B/5eao0efD5T4x8
 ISGeIHLojPGkRDV1O1b+vUg8CgpZ+fKR2cka5PamFGWy39y+rc5vxtac9ZeqoU6Q5TUR
 p0mM1fidgfMqxygzBEzyCcDIHr/aSJ9+VUAlQw3kGSFzs6rjFNWK6R3qYRpQXUgDdG5+
 oi8mkkEMLB5se/JBcIe/19UQ+s/wS+wCJ6c/YXggbcXudcDLwYIPoO9Fm7rMGJPFx2xQ
 TffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Dz7XBBqSD1iuax7EFnxzMisXu1uKsAAzj2nV1w5NOgg=;
 b=RW4tH7noF+KzBLpd13r35uy4N4Y7r1Sst1AZ4mBG3JjGWCrmqjqlenX8X28hTG4bqy
 Nb2/cwf6/kLRugPIdJ2R8x8Pw4HtNKNTCu0GZYx0uhbWxqQBpjxD7qA59EpNfKaP3A7Z
 aMsiVqc4Izt6PriWiwBb8ftmiA3JfeuW1EjkNneBMfHxmkojOMDfKkwU79dul0F/035Z
 JtEIrHmxuWFjdo0026fhEYj1Q0/XT6YfkqyXpKa89d3i2nJYxPuKqfqdIsbWk4GDXKiY
 GHSO4uMMQuaK6s3wBo7EcQQ8g/rjAhT5how15ZEBVcVKXVv7Q8ZbWa1lg/8csv8KztkH
 UONA==
X-Gm-Message-State: APjAAAXySc9gBLHUuSAE+DtAGj5CC0qBFUxldBeRRjassB0mFybjdpFX
 KIudDjPWOcAX04lJT+Juq7Y=
X-Google-Smtp-Source: APXvYqyc0NHTJQygXCGweqekJ/904x48rMDLFlXq02oU0HT7hIwDzcUt6lgt5K2QE9UKthRJ1OABSQ==
X-Received: by 2002:a05:6000:1285:: with SMTP id
 f5mr11760438wrx.85.1560307844069; 
 Tue, 11 Jun 2019 19:50:44 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s10sm4374100wmf.8.2019.06.11.19.50.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 19:50:43 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 1/6] Broadcom devicetree changes for 5.3
Date: Tue, 11 Jun 2019 19:50:23 -0700
Message-Id: <20190612025028.13118-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_195047_957425_6F9CFA51 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de,
 Kevin Hilman <khilman@kernel.org>, Eric Anholt <eric@anholt.net>,
 Lukas Wunner <lukas@wunner.de>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, olof@lixom.net,
 Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/devicetree

for you to fetch changes up to 34b1441452e550169b4d3647a4f851d9332d4b76:

  ARM: dts: BCM5301X: Fix most DTC W=1 warnings (2019-06-11 15:07:56 -0700)

----------------------------------------------------------------
This pull request contain Broadcom ARM-based SoCs Device Tree changes
for 5.3 please pull the following:

- Lukas enables DMA support for the BCM2835 (Raspberry Pi) SPI
  controller

- Florian fixes a number of dtc W=1 warnings in the Broadcom DTS files
  and provides a fix for devices failing to boot after the removal of
  skelton.dtsi (that commit has been submitted as a separate fix)

----------------------------------------------------------------
Florian Fainelli (9):
      Merge tag 'tags/bcm2835-dt-next-2019-06-01' into devicetree/next
      ARM: dts: bcm: Add missing device_type = "memory" property
      ARM: dts: Fix BCM7445 DTC warnings
      ARM: dts: Cygnus: Fix most DTC W=1 warnings
      ARM: dts: bcm-mobile: Fix most DTC W=1 warnings
      ARM: dts: BCM53573: Fix DTC W=1 warnings
      ARM: dts: BCM63xx: Fix DTC W=1 warnings
      ARM: dts: NSP: Fix the bulk of W=1 DTC warnings
      ARM: dts: BCM5301X: Fix most DTC W=1 warnings

Lukas Wunner (1):
      ARM: bcm283x: Enable DMA support for SPI controller

 arch/arm/boot/dts/bcm-cygnus-clock.dtsi            | 12 ++++++------
 arch/arm/boot/dts/bcm-cygnus.dtsi                  |  6 +++---
 arch/arm/boot/dts/bcm-nsp.dtsi                     |  9 +++------
 arch/arm/boot/dts/bcm11351.dtsi                    | 12 ++++++------
 arch/arm/boot/dts/bcm21664-garnet.dts              |  2 +-
 arch/arm/boot/dts/bcm21664.dtsi                    | 10 +++++-----
 arch/arm/boot/dts/bcm23550-sparrow.dts             |  2 +-
 arch/arm/boot/dts/bcm23550.dtsi                    |  8 ++++----
 arch/arm/boot/dts/bcm28155-ap.dts                  |  2 +-
 arch/arm/boot/dts/bcm283x.dtsi                     |  2 ++
 arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts        |  5 ++---
 arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts        |  5 ++---
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts  |  5 ++---
 arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts    |  5 ++---
 arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts    |  5 ++---
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts       |  5 ++---
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts       |  5 ++---
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts        |  3 +--
 arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts     |  5 ++---
 arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts      |  5 ++---
 arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts        |  4 +---
 arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts |  4 +---
 arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts  |  4 +---
 arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts      |  4 +---
 arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts      |  4 +---
 arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts |  4 +---
 arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts        |  1 +
 arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts  |  1 +
 arch/arm/boot/dts/bcm4709-linksys-ea9200.dts       |  1 +
 arch/arm/boot/dts/bcm4709-netgear-r7000.dts        |  1 +
 arch/arm/boot/dts/bcm4709-netgear-r8000.dts        |  1 +
 arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts  |  1 +
 arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts    |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts   |  4 +---
 arch/arm/boot/dts/bcm47094-netgear-r8500.dts       |  4 +---
 arch/arm/boot/dts/bcm47094-phicomm-k3.dts          |  5 ++---
 arch/arm/boot/dts/bcm47189-luxul-xap-1440.dts      |  4 +---
 arch/arm/boot/dts/bcm47189-luxul-xap-810.dts       |  4 +---
 arch/arm/boot/dts/bcm47189-tenda-ac9.dts           |  4 +---
 arch/arm/boot/dts/bcm5301x.dtsi                    | 10 ++++------
 arch/arm/boot/dts/bcm53573.dtsi                    |  2 +-
 arch/arm/boot/dts/bcm63138.dtsi                    |  9 +++------
 arch/arm/boot/dts/bcm7445-bcm97445svmb.dts         |  2 +-
 arch/arm/boot/dts/bcm7445.dtsi                     |  8 ++++----
 arch/arm/boot/dts/bcm911360_entphn.dts             |  2 --
 arch/arm/boot/dts/bcm94708.dts                     |  1 +
 arch/arm/boot/dts/bcm94709.dts                     |  1 +
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
 arch/arm/boot/dts/bcm963138dvt.dts                 |  3 ++-
 arch/arm/boot/dts/bcm988312hr.dts                  |  2 +-
 64 files changed, 104 insertions(+), 152 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
