Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFFA173F3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 19:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BCOhSZkNkMPPjAZkQaTf/GqPG9+V3Ktcz7usdiPVvnw=; b=i0mq1uT8VZuajyer5qtNmiNSL1
	TViROBG2Beus6XXiHZvUiOrbcO+Qe31nxSmfK+Wca79uubQvt/GbRa7+GwVoZIxTQDxH/9woUjTSo
	ntWm2x+fvvJodupo/YJ+pbze9L0AnnTWr9UNjO7YNmTerGjfnUbA6xJxZl2knLGOEVZr5ITRutOnD
	uLH5yih8KVGSTxuBgRGdQHc2sE/jULjY2uJbdYLNUVOwHe+oZUQOOKB5VJcDLDTczpU6urxlG37i7
	WbYofw4tr1Nb3R837qp0Tuc5FARbua9kuhbJqTT6hXONzWiS3qfMZ39Qk+07r5rzIM+L81pwuY4RP
	AsNFRLIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7k7q-0007RE-7E; Fri, 28 Feb 2020 18:12:38 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7k7N-0007Ha-O0
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 18:12:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id t24so1906674pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 10:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=86+073KfeItXhtS3CYFMVIMMT1uWpwdCaXzQZ94IilE=;
 b=t/omE/BXWbB8wRpVfgDIAbwvMNUsp1XLYZS3iWQtB0ouFrb/fCBjL+8boYbNopX6uc
 bo0wjWdtBCBrutZ3CZ+eogn8O97bpFuKcnMXGl2UfsaX4XAWGrP0iHDJQdjdFAuDLtCp
 HSkr5cVxFuRdmsvdZNq9zLrp7JkaqKVvVcaNzBobn6KQBA4em/vALihccvHsE0HiMxoF
 PiHxe7NVPWzQaAEAQ0HULmjJsbHvSc5F6b5tzd2/9uI4zPF39wcdtCS5AjvE4m8uxtZ0
 MfTJNvtI0PhP7U1jr3d12CkOOO5hZwDifYZly5EsF/cN4+pVKKQXER8S27xfYwVlamXO
 V1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=86+073KfeItXhtS3CYFMVIMMT1uWpwdCaXzQZ94IilE=;
 b=K+QogeYMXJYGssrCrazxvAbIQ2EaFGe5xc9QyxsXH4vh7gSivHrSUgjG2rM1mT7rRK
 xFBtdj6BQ73eOzmkkkDOLls6nG1tHbg/6Fh5LDsg1xd/veT/kWmO69HsEOusrxlBCl89
 7w+IeacWS6ojmel5NMkIccvJ7IWHxZbmFKxtlSBsXS0eAF6CtQbJxDVdF2duMzUQ7Atu
 aS9DrfH5oZaD/8tEOgMWysNCVlyhdSKvTNGBVCudSRD9UQbU/fXKTjy37XIXQIEFyfHX
 TWycBWjQXfCBmjtJ8ra3BEwroFFmWyuKkqH1J/YbERK4iQ7Kyjy2TEC8gkCAxx1BVfjy
 Hvog==
X-Gm-Message-State: APjAAAXYnC/eEaTpa/wMTQJS5V+jgpsbWccwF7sk2kwJlciwLL0Frznp
 tEf243VBDuQrg8ARijAPBA4=
X-Google-Smtp-Source: APXvYqxn+BqX7ZorpUtx3Yhn+RBcNx0xYrUcuqaigPabseIjXd+gJFgLpKEArha3jHj2wHhLwVbyXg==
X-Received: by 2002:a65:6147:: with SMTP id o7mr6145907pgv.442.1582913522136; 
 Fri, 28 Feb 2020 10:12:02 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i11sm3149306pjg.0.2020.02.28.10.12.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 10:12:01 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 2/2] Broadcom devicetree fixes for 5.6
Date: Fri, 28 Feb 2020 10:11:44 -0800
Message-Id: <20200228181144.15148-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228181144.15148-1-f.fainelli@gmail.com>
References: <20200228181144.15148-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_101209_777168_784F3651 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Peter Robinson <pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/devicetree-fixes

for you to fetch changes up to 94f18b9b24ee4d812ebd30ff848298a9f413f07a:

  ARM: dts: bcm2711: Add pcie0 alias (2020-02-27 11:29:45 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
5.6, please pull the following:

- Stefan adds missing Device Tree properties for the Raspberry Pi 3B and
  4 LEDs to have proper default configuration

- Nicolas adds an alias for the PCIe root complex node that is looked up
  by the Raspberry Pi firmware for patching in specific properties

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      ARM: dts: bcm2711: Add pcie0 alias

Stefan Wahren (1):
      ARM: dts: bcm283x: Add missing properties to the PWR LED

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts      | 3 +++
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts | 2 ++
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts | 2 ++
 3 files changed, 7 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
