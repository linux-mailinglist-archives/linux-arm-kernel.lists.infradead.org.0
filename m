Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AA31823C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 22:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XgwfZi8B/lOqDochOUqqaA4IlarS90nGvOISzxux/dE=; b=i69XTtJ8/ZV/84fSvfmUoA/L1Q
	7fPkMeVX5ZzIE7wNNs3uxA/vtsGkYSzrEkmwUunOkoxPObVD2GJaH3xMPNUEsEHBwEWxrMN8G0rbf
	dnuiYNfdLtoWlP3iR/35Z00BXeTEYRwB2a5WNddCb/9DPHyzx/iBgQrmAUKR4y1KK6lT0rBG1Iu/8
	nsXv9P1rfK8KdnmIAH+J4rJJg/UyZqWWET+Exdx8wy0TgbGyUVYywOTZv92SbCZId2COacOHNr90e
	uVzdPf6v6wExy+cRxk7SRi9M2chtPxvhVkK8F3yRQfVEVrcOBttTDsRzmuFMBsIptN0KaphS8QxQw
	i89QBYGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC8mY-0006PH-9M; Wed, 11 Mar 2020 21:20:50 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC8m6-0006Gn-Sl
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 21:20:24 +0000
Received: by mail-wm1-x344.google.com with SMTP id g62so3841755wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 14:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IhAaz1kBedZqko9i2HfwVQI2lbL6B+xb0/6qGI2pwkU=;
 b=jTTRhGx90T2zH8++4QJ+tWFYg5PFoSfo3iM/gJ/zaQlCo2wz/oY2hb59lVC5lTpYSB
 Gaul4c+0y+A4Z59N7wjNCCl32/mAjL5xs5+0ktNAwyVTFARd4muXKJleRCabUAcl8cuo
 rfH7Yg1MsCttmDzITyamJIcyW9eRMC2x77txfWr/KSSo/SLIAuigZTouN+ndw0bQ0qxm
 6SjScycNs7aZZFiZ3OkQYbCAjORieEJlVs0cvoTd/kZ02XcjURm5PuAHTT0cGOtG/h3B
 /W2lVbV1z+qguGqRTVbLjXGOuxguMHsY0Tx53MGx6sotl6/pUYa5phn7s2qhrrgdz+SG
 UjNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IhAaz1kBedZqko9i2HfwVQI2lbL6B+xb0/6qGI2pwkU=;
 b=iUzHC+5q8MYsSklkcCj6P/kMJISvpOJsbUSoUdQS3rGu1vaYf9TaWNmg12580RCIZV
 x7PGYpgGWio871a7BZaTAyT4dnFeQlZgIflTJWcsJSAKMZdmHg53cfOxqtQrSUiQkBQh
 q0p4uD76iBvWxpQgtVzwTvzr6HcLzdJ9CZRvBQ0ZCOrzgN8c58E6yFfZO7rdUuUzr+NV
 HwOXyzxLVQQvjkNIOSNlRivo8LvMgpsklb6RtH8tMC2PV6pMGbqjlNzagYRAVh44+j6e
 Rh//TR/+gdPul0LkzmkfugETgn3zUGLVSOt4w/J5XJuiMXt2kSbk2g7sKo2XKrRjtwMH
 CasA==
X-Gm-Message-State: ANhLgQ1i5hhb+pVyVWTnZza/8223mxyH1cJQ1oT1qIdMmvvBO90sYCcu
 6OGcziy7QHjzAF6yLTpW1R26yaSN
X-Google-Smtp-Source: ADFU+vs7ARAHRkfVFjscm5hd8uOG2WGr5BhEI/ZuLiEG6zvroe9KQIb3Vpw7w1e6z6AF2BDCQwgcIA==
X-Received: by 2002:a1c:ed04:: with SMTP id l4mr671184wmh.36.1583961621670;
 Wed, 11 Mar 2020 14:20:21 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p8sm3014032wrw.19.2020.03.11.14.20.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 14:20:21 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 2/4] Broadcom devicetree changes for 5.7
Date: Wed, 11 Mar 2020 14:20:10 -0700
Message-Id: <20200311212012.9418-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311212012.9418-1-f.fainelli@gmail.com>
References: <20200311212012.9418-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_142022_942180_99EB2864 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de,
 Scott Branden <scott.branden@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>, khilman@kernel.org,
 Maxime Ripard <mripard@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, olof@lixom.net,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.7/devicetree

for you to fetch changes up to 14e1eb5a91a96d9e1ce8051f752b7b6645bc8e10:

  dt-bindings: arm: Document Broadcom SoCs 'secondary-boot-reg' (2020-03-10 12:43:15 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree changes
for 5.7, please pull the following:

- Stefan adds GPIO labels to the Raspberry Pi 4 Model B board DTS

- Nicolas moves the eMMC2 controller into its separate node in order for
  platform firmware to perform the necessary "dma-ranges" property
  patching based on the chip revision since the eMMC controller has
  different addressing constraints.

- Florian convers a whole bunch of Broadcom boards bindings from text to
  YAML.

----------------------------------------------------------------
Florian Fainelli (12):
      Merge tag 'tags/bcm2835-dt-next-2020-03-09' into devicetree/next
      dt-bindings: arm: bcm: Convert Cygnus to YAML
      dt-bindings: arm: bcm: Convert Hurricane 2 to YAML
      dt-bindings: arm: bcm: Convert Northstar Plus to YAML
      dt-bindings: arm: bcm: Convert Northstar 2 to YAML
      dt-bindings: arm: bcm: Convert Stingray to YAML
      dt-bindings: arm: bcm: Convert BCM21664 to YAML
      dt-bindings: arm: bcm: Convert BCM23550 to YAML
      dt-bindings: arm: bcm: Convert BCM4708 to YAML
      dt-bindings: arm: bcm: Convert BCM11351 to YAML
      dt-bindings: arm: bcm: Convert Vulcan to YAML
      dt-bindings: arm: Document Broadcom SoCs 'secondary-boot-reg'

Nicolas Saenz Julienne (1):
      ARM: dts: bcm2711: Move emmc2 into its own bus

Stefan Wahren (1):
      ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels

 .../bindings/arm/bcm/brcm,bcm11351-cpu-method.txt  | 36 ---------
 .../devicetree/bindings/arm/bcm/brcm,bcm11351.txt  | 10 ---
 .../devicetree/bindings/arm/bcm/brcm,bcm11351.yaml | 21 ++++++
 .../devicetree/bindings/arm/bcm/brcm,bcm21664.txt  | 15 ----
 .../devicetree/bindings/arm/bcm/brcm,bcm21664.yaml | 21 ++++++
 .../bindings/arm/bcm/brcm,bcm23550-cpu-method.txt  | 36 ---------
 .../devicetree/bindings/arm/bcm/brcm,bcm23550.txt  | 15 ----
 .../devicetree/bindings/arm/bcm/brcm,bcm23550.yaml | 21 ++++++
 .../devicetree/bindings/arm/bcm/brcm,bcm4708.txt   | 15 ----
 .../devicetree/bindings/arm/bcm/brcm,bcm4708.yaml  | 88 ++++++++++++++++++++++
 .../devicetree/bindings/arm/bcm/brcm,cygnus.txt    | 31 --------
 .../devicetree/bindings/arm/bcm/brcm,cygnus.yaml   | 29 +++++++
 .../devicetree/bindings/arm/bcm/brcm,hr2.txt       | 14 ----
 .../devicetree/bindings/arm/bcm/brcm,hr2.yaml      | 28 +++++++
 .../devicetree/bindings/arm/bcm/brcm,ns2.txt       |  9 ---
 .../devicetree/bindings/arm/bcm/brcm,ns2.yaml      | 23 ++++++
 .../bindings/arm/bcm/brcm,nsp-cpu-method.txt       | 39 ----------
 .../devicetree/bindings/arm/bcm/brcm,nsp.txt       | 34 ---------
 .../devicetree/bindings/arm/bcm/brcm,nsp.yaml      | 36 +++++++++
 .../devicetree/bindings/arm/bcm/brcm,stingray.txt  | 12 ---
 .../devicetree/bindings/arm/bcm/brcm,stingray.yaml | 24 ++++++
 .../bindings/arm/bcm/brcm,vulcan-soc.txt           | 10 ---
 .../bindings/arm/bcm/brcm,vulcan-soc.yaml          | 22 ++++++
 Documentation/devicetree/bindings/arm/cpus.yaml    | 33 ++++++++
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 74 ++++++++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi                     | 25 ++++--
 26 files changed, 440 insertions(+), 281 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351-cpu-method.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550-cpu-method.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,ns2.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp-cpu-method.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
