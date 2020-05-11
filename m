Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21A71CE709
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 23:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rM3ZdZJLpJrf9tY3tj8Ef30OUH1doEGhVPQvdV5CIQI=; b=qjyopY7GI/+eyjC7138mf3kMss
	TmIzg9XoAXx1CZxGFsPCs2Lyvr/DXl0zntay+FBJ9nrKdTs9Yq3ia6LHNMkxBCAhKWXxfQGQnif8A
	vgT8ZSisXsMODCIsHm47hNhuWK1z/LgjKwGQ6X0CsiN5mdWvUvAsO/KgGQWi+TDjBvRZsbPrsbdQr
	zgq1qTQXAgnZHjgDkWsfSMGnK+uWhOSWMV3fSFWKS3wzQF6W34bUxcKoYEq0aIEYdIoX39BMYeOTt
	nv/+tKM6SsImavI/8HdkoWXCtN+kgK4lCCvBtgQ0Z1WjVP9WvfpJZGgHsv2KSQ1EynlbI3AGOvtBF
	mTaSsoqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFch-0001dZ-Pz; Mon, 11 May 2020 21:06:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFc7-0001MJ-Hu
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 21:05:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id x15so4711015pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 14:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xQD9E0I8T20s+9ER9n57S8jp4cV1BJb7ghQVAxtwwBE=;
 b=JNedmZ7mHmQHZCmuX0dX/jKoXar0R4U3lP1ioI1aL0XQiUyBz/vFdEgBCHHKzyGGaP
 XtGsh4LQXMLTb8t3w9708wl4fswfa1BJWxVj+qcUQtfABSkCrnVX4/lvQ6aoXJzNNf22
 pNDkqkwX18mLrbfguelBH+kZezeEuuxFMP2A1lK/OSdUjaxIZo7DLAOxhUE+2BKwsdZa
 lCRsUS1DdonWgr381cLa6JTnDjfQVoru02lAgeBsl4MlQn18e20pI74BK36bSS9cfPJB
 M2hB8xxvbV5EIotihZCnccVzZgYfq711/Nszi/tkPm1qNfqziewoTT6M+0jXzD1dwIHV
 z+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xQD9E0I8T20s+9ER9n57S8jp4cV1BJb7ghQVAxtwwBE=;
 b=hUxzP/VYRp82PUMsDupJI8n0hqi+1b1yIOHuwuMetZpo3UZXl1t37Rwi1yauW2l8B/
 wyHjcmcWTJ9wA0DQcMNeaMYHWUBydWMUojHpI2rU1O/GMndjdfJzoS1EzxvhfkhgyrVT
 pMunXTRqfBo8cbyACjYPwYv0LEkBANSVbtOhykF6muBm/oxQCITrSuSUVdpdWpPSQW42
 IdDjnMF++ywKoMe1ywU4C8JWlEDANH4S5uLzn/nvoaFu1ofdL6l6QgHUTlcBYYcIQLg5
 SxYPPGeRgqsZTpoo6cAKr4SESWA4lqXS5WIKHYHSPj9IjFAroW6AVnoSCfuzX/d2a2MG
 tjbQ==
X-Gm-Message-State: AGi0PuaNo6om/70zCSz4A+JpF5zvJfEU2vMNvmBtU9Ma3pcBv8mkAK9a
 1e/7Zitfo4KobXbblGGd1EM=
X-Google-Smtp-Source: APiQypItQ5cHL2TagcF3E1X8gJ8H+muxFoYu+9Sqd7pvZTWbIxapY9PNGXNy+NAXID33kgWY0skeOA==
X-Received: by 2002:a63:d909:: with SMTP id r9mr15882497pgg.245.1589231127042; 
 Mon, 11 May 2020 14:05:27 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c2sm10032230pfp.118.2020.05.11.14.05.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:05:26 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 2/4] Broadcom devicetree changes for 5.8
Date: Mon, 11 May 2020 14:05:20 -0700
Message-Id: <20200511210522.28243-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511210522.28243-1-f.fainelli@gmail.com>
References: <20200511210522.28243-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_140527_594947_BEA0E059 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.8/devicetree

for you to fetch changes up to 460227c329e5bd39103b9f7ba01cbad69b14c4c4:

  Merge tag 'tags/bcm2835-dt-next-2020-03-27' into devicetree/next (2020-04-13 15:53:28 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree changes
for v5.8, please pull the following:

- Nicolas updates the Raspberry Pi 4 board DTS to include the GPIO
  controlling power to the SD card, adds support for the vmmc regulator
  for the emmc2 controller and finally updates the power management
  provider for V3D to use the firmware to solve instabilities.

----------------------------------------------------------------
Florian Fainelli (1):
      Merge tag 'tags/bcm2835-dt-next-2020-03-27' into devicetree/next

Nicolas Saenz Julienne (3):
      ARM: dts: bcm2711: Update expgpio's GPIO labels
      ARM: dts: bcm2711: Add vmmc regulator in emmc2
      ARM: dts: bcm283x: Use firmware PM driver for V3D

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts     | 13 ++++++++++++-
 arch/arm/boot/dts/bcm2835-common.dtsi     |  1 -
 arch/arm/boot/dts/bcm2835-rpi-common.dtsi | 12 ++++++++++++
 arch/arm/boot/dts/bcm2835.dtsi            |  1 +
 arch/arm/boot/dts/bcm2836.dtsi            |  1 +
 arch/arm/boot/dts/bcm2837.dtsi            |  1 +
 6 files changed, 27 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm2835-rpi-common.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
