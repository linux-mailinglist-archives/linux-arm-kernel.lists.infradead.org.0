Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357F194D80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m3q0AqC84n+MDXphjwxNJzQhEljeySdZIBQp3+KKdmU=; b=ImtutC7d1yGGdmTY/tboAKPTLB
	DThCQBaahVl7Xg1q3K8gt6ZRGzhNOHDVSX/z2QWTz1eaCSILOIgEN1S6HZnZhEoKAfAml0Bt/64fZ
	Bniv45K6MVbYipr/fM6lnco6Fh7gDZYsBWZnL5Q9pKxJU0600YKrmaMhXgU952+oLu/3WsfEsTuXf
	jfBx1arzw2tjTKUQ/aDZmLVK1v2HfJyE1X74fKCWX4/xDJBoZT/ilfuY6jHdEXQn5dmrrGRE07g1Z
	ERvL4S+Tp4L52qf4E9ymkenSjTn63WyPJaWze6zgrb9Yy8e+MGYRK1z635ZNDbqzBMiAMJiiT50EW
	7E3ZHfag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmzc-0007su-Bi; Mon, 19 Aug 2019 19:07:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmyg-0007Rz-El
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:06:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id q139so1703728pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 12:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+UUa8NyIlJ/gc3sKRGhE9x+wWyI8nj3d6KBm048YK28=;
 b=sPcrgD0lmSnCn53+/yx5z0lRHAjGkGCK5ex7mniytpaHERBAM+zfUu7s6ODIhb1Z9C
 h99AUyiIgjNQK5ZSeNz6pXUG4YCXk/Ou43Y49E8lhHZl1v7UjLM2qxDECpUveH/0erAC
 ckV9TNP7bEmCC1jIfUEKPVOPQQdoQxoHHfPfjapTJJCQ6rGtMxPEBuvVEIqM+CPFHoGh
 VV/5S29qhWsGIXV5TLsNYBk1M2xC6HNLYc9yqOsGH3AVf5oEP7Lgt6gj+7CP7BympY5g
 TSanuqGFtz8mD4G6TZg7ZEQQzXa7tlY5YWQbP3Yc5rFkX00r5NLjJWsICM+rE67jTwDs
 Pc8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+UUa8NyIlJ/gc3sKRGhE9x+wWyI8nj3d6KBm048YK28=;
 b=LXFlzVmD5ug5U7IpGQSh3RpjYoVuU4irW5YPO23zoT4AAbf2HOUNhGjl+Orm/9upAw
 XhdzZ8ffBHcTDf6ic9lPxJC6qNgz7pzGYu2weC4KFzsb/Aq9itLsWxwqSNnVgT/8zOJr
 WciYBwvJt7N0VIq4d9k+YDi246zgWui0GHqx6YfJZFN5GMRn80iF4WfO0tH9Gnc5dDQP
 V+n7ETfM3m+MA7b9XpNbQEBmS+NneQ4NHlTOYQ+eIYMtgbCkENNBB2cUVF3zNA+K2mCt
 C2APeAPi36Ck3JjLB7TbGyQ4CLh+6YHJb4rA14Tiah5ko0WUFhS07dK0hHHSy+2UPtX9
 bGIA==
X-Gm-Message-State: APjAAAXR9rlh37nEb5NfafDI5BV6EZxPf0qQXl9eIuPpldPDPNhCQ/Nh
 QawZdgjx2vAh2XN22QbTX5detcT3
X-Google-Smtp-Source: APXvYqx+zBABDcSQeSlAV8cBV5MTEX2OcsjHuVBFQJLdP5h/yJPWr302Cftp85zCxqo0QU08+VwMiA==
X-Received: by 2002:a63:e948:: with SMTP id q8mr20739430pgj.93.1566241561767; 
 Mon, 19 Aug 2019 12:06:01 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o3sm27879pje.1.2019.08.19.12.06.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 12:06:01 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 3/3] Broadcom devicetree changes for 5.4
Date: Mon, 19 Aug 2019 12:05:52 -0700
Message-Id: <20190819190552.11254-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819190552.11254-1-f.fainelli@gmail.com>
References: <20190819190552.11254-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_120602_493387_338BEB29 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.4/devicetree

for you to fetch changes up to f1bace1efd6fa5d516b045379f34f6d736ec3bf0:

  Merge tag 'tags/bcm2835-dt-next-2019-08-15' into devicetree/next (2019-08-15 11:37:14 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree updates
for 5.4, please pull the following:

- Stefan does a bunch of preparatory work for supporting the Raspberry
  Pi 4in the next merge window correct register ranges (SPI, I2C,
  UART), define memory, HDMI and MMC properties at the board level

----------------------------------------------------------------
Florian Fainelli (1):
      Merge tag 'tags/bcm2835-dt-next-2019-08-15' into devicetree/next

Stefan Wahren (4):
      ARM: bcm283x: Reduce register ranges for UART, SPI and I2C
      ARM: dts: bcm283x: Define MMC interfaces at board level
      ARM: dts: bcm283x: Define memory at board level
      ARM: dts: bcm283x: Enable HDMI at board level

 arch/arm/boot/dts/bcm2835-rpi-a-plus.dts   | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-a.dts        | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts   | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts   | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-b.dts        | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts  |  9 +++++++++
 arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi     |  5 +++++
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts   | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi-zero.dts     | 14 ++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi         | 23 -----------------------
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts      | 10 ++++++++++
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts |  3 +++
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts |  3 +++
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts      |  3 +++
 arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts  |  9 +++++++++
 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi     |  1 +
 arch/arm/boot/dts/bcm283x.dtsi             |  6 +++---
 17 files changed, 144 insertions(+), 26 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
