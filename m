Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733C34F9A3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 05:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F844A4g7aZfvtXwY6mgYLCZUT3RBJrjlalhw5C3aFWE=; b=e8MYXpMRToBZZI
	RIZW0VB0+67CXRRqbV9wUKX7sfNKo6IGwsbybHyIXBfDWZke3Zu2oKSkqH5OixBr3RC0ZaxpvBfUP
	srIFKRzfk1E6kdtiTwoitFdqBLGJ1V0zpXvyDjMHypf5qIwq4lsU+2zk2l/f8qircd9NfYonR9ae8
	P5GDXDe1soc8uCNfpkR1b9KeqfotZquX924HqgJAWesqTGmz1Y2Soa8CkYgNgeBZri9dUShriKNb/
	sQawfY3HVj9qkmIx464V5e6RFnSJ26GBFi/NFcmt9UW5nNvJ6VRnC7tYZ8JzuxxJp7LotX22kLNVr
	MRumX9ivp9EyRDL3jSYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hetCB-0002lM-Ca; Sun, 23 Jun 2019 03:29:35 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hetBx-0002kl-0b
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 03:29:22 +0000
Received: by mail-oi1-x243.google.com with SMTP id s184so7335613oie.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Jun 2019 20:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nfmmPSBWr6taLWuCq2GKOFSFC8VWzUEm8A+pbwy0S/I=;
 b=TIZ4cuKDB4XP2xtG7+xI/j0sMAU9Zwd2904OBRyN4AfsqkU1XKi9Masy9CH9mI9DCZ
 sCwL75iNUVduWDYAdsnChypklpnyzcqay8FGCuALkHP1AAWqxDYnxdBw4u5jPwFmDJ/M
 I4RNNDoZWco8fAnV/rjI6a2d4sQxAbMmmSrIz0Frke9f+zLsvlAbCAJAqdNiaaB6toPl
 FUMWTtmpEOBdCZKrKuWTwYWOzW5cHZVvcYqvdAZM9Cb2zcDLd2fruuLxRoskcyNB8NqM
 LBaeAjX2hzVdJPy1aQ4U5MQ0cVcXeN5dsd3RdfQw2entMbU/UotBThNU/InFKaIjwxGF
 ASXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nfmmPSBWr6taLWuCq2GKOFSFC8VWzUEm8A+pbwy0S/I=;
 b=Wl439OtmdoRJa+0hLnXA24yAWtRbb8qie2gIOCntX+R8xUQ4h/ddnrsYsNxvusnkru
 2ZwYAQ3b5d/u2cpVhxn+KSol3NUt2642GM/W74GmwNoDnEGfrHJrywyxoClFEfpOd0YS
 +Noa2QuwXRbMh8dh9QtM4kyluMiCUEoUBrn71ExyveCFCGBNH2HNdnyFWShT8o2XWG/v
 t5qUmnou+GcBqmzVFmWtKOkWX/nHaWSitSol51szhjjGSDZSPeTM4qkgssAWnvmVeGea
 bEn+suKWDWjiH3gPh4wOAMLxxD0GSRdHNQCvk7zmbjFG1AcBXhZ3rscG8Yz4/HPjjie8
 FzLQ==
X-Gm-Message-State: APjAAAUtcvNNpU6GG0kfyiH/3LheMgbRzVVG/yfD0Ne2KmpeF+E1Krt0
 vA/uSEFxoDeyHLDChz8r0CE=
X-Google-Smtp-Source: APXvYqzykxule26QA6aofqadb47/JeG4dMLPFs4DBqKSc50VaMSN0j+vo/Cvn8+5r9/hjfJ80TfOLw==
X-Received: by 2002:aca:588a:: with SMTP id m132mr7257574oib.106.1561260559251; 
 Sat, 22 Jun 2019 20:29:19 -0700 (PDT)
Received: from localhost.localdomain (ip68-101-123-102.oc.oc.cox.net.
 [68.101.123.102])
 by smtp.gmail.com with ESMTPSA id 103sm2655699otu.33.2019.06.22.20.29.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 22 Jun 2019 20:29:18 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 1/6 v2] Broadcom devicetree changes for 5.2
Date: Sat, 22 Jun 2019 20:29:09 -0700
Message-Id: <20190623032909.16375-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190612025028.13118-1-f.fainelli@gmail.com>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_202921_087495_623654C6 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Eric Anholt <eric@anholt.net>, Lukas Wunner <lukas@wunner.de>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 olof@lixom.net, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e8bd76dccd792b371a934336c3e7d8c389755d9f:

  ARM: dts: bcm: Add missing device_type = "memory" property (2019-05-20 09:29:47 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/devicetree-v2

for you to fetch changes up to dfa84bb99285b4335e5b2a23b772991362e47ee6:

  ARM: dts: BCM5301X: Fix most DTC W=1 warnings (2019-06-22 19:28:41 -0700)

----------------------------------------------------------------
This pull request contain Broadcom ARM-based SoCs Device Tree changes
for 5.3 please pull the following:

- Lukas enables DMA support for the BCM2835 (Raspberry Pi) SPI
  controller

- Florian fixes a number of dtc W=1 warnings in the Broadcom DTS files
  and provides a fix for devices failing to boot after the removal of
  skelton.dtsi (that commit has been submitted as a separate fix)

----------------------------------------------------------------
Florian Fainelli (8):
      Merge tag 'tags/bcm2835-dt-next-2019-06-01' into devicetree/next
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
 arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts        |  4 +---
 arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts        |  4 +---
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts  |  4 +---
 arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts    |  4 +---
 arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts    |  4 +---
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts       |  4 +---
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts       |  4 +---
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts        |  2 --
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
 56 files changed, 84 insertions(+), 152 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
