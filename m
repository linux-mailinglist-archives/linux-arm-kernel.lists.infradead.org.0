Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A68CF00BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 16:05:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I8ixPM6yf34TXyJZsN76GTzqGHa6YILvL6by6ke7Ezk=; b=LnfzzWFhkJNqDWgsGYvlY7oRb9
	rWGvqejB4dxpDDWNKS5VdhGu5zWxhQkpv3JFkgVFD08Q0HNDQX3/gQSTwL77AL9sH0mUVTLOCctHM
	vPGuDOe8SYOFDS0n4kc1u0cx0O7f+ldBQ/a5oktsNFTWw/8bSPImh7RwdhkkAQ656uJHl5Hn/j43x
	VFpqAJSNJrXyllNlYmm+y8FxAnw0n352ruNYLz/WzLqSioqe2koZx5pBpDPnED+OlDWt3V0YGQdTZ
	/HvnYZLkLQaiVaIQBOhOufG7/kqfONkqunOoI/AgIe1X6C8kdk9wRa9Ty1pHhjzJ8amk6wrX8mybk
	tevuNEsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0Ok-0001ta-9d; Tue, 05 Nov 2019 15:05:34 +0000
Received: from mail-vs1-f67.google.com ([209.85.217.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0NO-00087N-WF
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 15:04:12 +0000
Received: by mail-vs1-f67.google.com with SMTP id y129so13614062vsc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 07:04:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9hCtFjCTL5yYzLUWqFZuzYDYIdNz9Fm39fH+trLdAnE=;
 b=skmcjG7ghW5YNF7MU7HW0c+ddC5KGccrGWvNQVAXBT5l3WCpyNYpZXmgoMtOychqL/
 xVn5JRyczfpeUyuBk8KmP3hQTj0zKh1wLUoZKNhBJCIIrrLXCu1D+/6LUK/W/htRrquK
 9Olb1pTbUBiRsruEa89VwmL984v3ZsB3UeFJp5e+hzZ+UVcwQFncJRDDL8VSUgtQTk2m
 5uGAvAGJmHr9unw5KoTdCeroLfinIDk1P8z2nrhod44rLA/b3eDkTtgcWmTxeP/lltjH
 iVQMttKZ6yUSpykGruxLVpKndsXMAPOE70rc3HHEFxTwlvezeUhQniQZRzg3dJh6MT7Y
 /q+w==
X-Gm-Message-State: APjAAAU1qO1oyjAkVzLtt7jG6nlgF/HoMqY3UR8vkISx5RWc2TFp4BT9
 oqc2v502CmOmVzolO0ei1rCjUg==
X-Google-Smtp-Source: APXvYqzn1TrG6+zOaz35gEmA0jlWYb5wv4YqgpUZx2z+tXWBb0ZM/VWhlCAZfWrdVEAnpTI2SkRv/g==
X-Received: by 2002:a05:6102:355:: with SMTP id
 e21mr15193201vsa.202.1572966249974; 
 Tue, 05 Nov 2019 07:04:09 -0800 (PST)
Received: from localhost (li1038-30.members.linode.com. [45.33.96.30])
 by smtp.gmail.com with ESMTPSA id c126sm224343vsc.32.2019.11.05.07.04.08
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 05 Nov 2019 07:04:09 -0800 (PST)
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 7/7] i.MX defconfig update for 5.5
Date: Tue,  5 Nov 2019 23:03:15 +0800
Message-Id: <20191105150315.15477-7-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191105150315.15477-1-shawnguo@kernel.org>
References: <20191105150315.15477-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_070411_174395_6F5BD2B2 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-defconfig-5.5

for you to fetch changes up to c7cb7c96f312f6afb3ed07f596b9b80d8a2c6441:

  arm64: defconfig: Change CONFIG_AT803X_PHY from m to y (2019-11-04 15:25:55 +0800)

----------------------------------------------------------------
i.MX defconfig update for 5.5:
 - Enable i.MX7ULP watchdog, DA9052 touch and USB configfs support
   in imx_v6_v7_defconfig.
 - Enable newly added S32V234 SoC and its UART driver support in arm64
   defconfig.
 - Built i.MX8QXP SCU key driver as module in arm64 defconfig.
 - Change AT803X Ethernet PHY driver from module to built-in, so that
   we can boot i.MX8MM EVK board with rootfs on NFS.

----------------------------------------------------------------
Anson Huang (2):
      ARM: imx_v6_v7_defconfig: Enable CONFIG_IMX7ULP_WDT by default
      arm64: defconfig: Enable CONFIG_KEYBOARD_IMX_SC_KEY as module

Fabio Estevam (1):
      ARM: imx_v6_v7_defconfig: Enable CONFIG_TOUCHSCREEN_DA9052

Leonard Crestez (1):
      ARM: imx_v6_v7_defconfig: Build USB_CONFIGFS into kernel

Mihaela Martinas (1):
      arm64: defconfig: Enable configs for S32V234

Peng Fan (1):
      arm64: defconfig: Change CONFIG_AT803X_PHY from m to y

 arch/arm/configs/imx_v6_v7_defconfig | 4 +++-
 arch/arm64/configs/defconfig         | 6 +++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
