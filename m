Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B847D5FF08
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 02:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZBg/P8VGA3tiNanLPvOBdDlRsx9LJDWduiNg9L/L3vM=; b=WhPr8MyXNd8mWW
	B2MzI0nHGD2e0R5Ar5o0sDzXJn5zmiPEO4FszRREHxS9tj4SqFdC8/AS1zzWCk2PcQ6nbzhwe1Glz
	n01NdZpJ945n/mdcVuCrlmHiQkqaala0F3WLFHiHV4sEi6eIs17zT/737+AHM3wB6CAG+fBG6xy8L
	8S6bbjOMkviuL07O1T5hqsnUScWu8C0CPqUd1zCIFAXY/RL0CcgictEDHAyjuzkdoe9HWShHey5QZ
	Jl0AgJkqP158FXrUdKThU7l/LMPYWbb7d/IAXk7MdGQBZNkLXzpxFcXXDRo2U4tARc5SK/GnxYeAn
	bmeQjlwtaNxBMieMxCbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjC0h-0003ag-Mb; Fri, 05 Jul 2019 00:23:31 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjC0T-0003ZS-Ag
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 00:23:18 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so7517567ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 17:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=VPPNIsnCiYOFrVJf9Rqzbk9YAn/UwDR10urmS5284ZY=;
 b=1qFgGu8AKCcvVfLCHgMxX/ZFFDd8+NUM/DwcbP/GylIhipUGuKT5FYzOIZkpQoI9vb
 BspnDK3L6vNZpKBwYYPyc54XypHIfeBB+Otecd30Q7X5295sJnP06z+VV39EZI+MjvTI
 mCpx2V1HM1gEbmvVkNSF/QKWaivdjFmklyBJa/jOgp2IJDKfCWFt4p9pA074SFKcXvWH
 2bebRQQcvGtQQeSy8sJeHH9UJLaXEyBFiTydiMcVpUqwqSUaQJdVVn2ZM1yaFBfPgc1q
 KRZt/HiXF+rygfbMj3EBjyUmlfzCnOljHvLGpy/ZfWSQoUeOcHtiDmWPrs6xENcSelvb
 LhJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=VPPNIsnCiYOFrVJf9Rqzbk9YAn/UwDR10urmS5284ZY=;
 b=LGVLCTlpgO7VD4ogl+ucPghQ/LxrQNiVMukApR0MaVogYbZ38MAuUWEoyeJDtIHqZ7
 g87HWhxQRUQwntm5MrREBkx7zkSztRtOUBOFAWF//NbHHEhD1ZtNlYVSLW8msibow7Fu
 94OQqzgjLTqUh/HIPquf4hkej61Yp5Hmtqr85wHrusaUgt2t5/Jlg9ypi+eby36VSKQ6
 Buqa4WoCZlGV6Nhjo8Tq4EHoMEHYywKBpN1H0wzqN2QycrJZ6O33B6HEqB+vdJCcqY0A
 WP4gVSjwQ61yyD8LJ+qK2Gtvo5OVbz4+sg5l5YMDBiwNFVOO94p/Y+vi5Fac/WbhqBuR
 o0Aw==
X-Gm-Message-State: APjAAAXiRL0QzxiftaCOB6pTZ1C5pcVCareQCoxVnTStMXBkcjvsXqAp
 G3cORrL3frcZUW7lmRwPnQKRFQ==
X-Google-Smtp-Source: APXvYqwySAztCQHYsMcjSnOPelLhcDoEog685HpVsGNkPE8gp1W66xxF9wsHGUfUfQSvlY9ftkHolQ==
X-Received: by 2002:a2e:9a10:: with SMTP id o16mr415852lji.95.1562286194001;
 Thu, 04 Jul 2019 17:23:14 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 133sm1228902lfi.90.2019.07.04.17.23.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 04 Jul 2019 17:23:12 -0700 (PDT)
Date: Thu, 4 Jul 2019 17:22:23 -0700
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20190705002223.wmc5ge5jszy4z6vc@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_172317_435648_506388A3 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: linux-kernel@vger.kernel.org, greg@linuxfoundation.org, soc@kernel.org,
 arm@kernel.org, olof@lixom.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus, Greg,

The following changes since commit 6fbc7275c7a9ba97877050335f290341a1fd8dbf:

  Linux 5.2-rc7 (2019-06-30 11:25:36 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to 2659dc8d225c956b91d8a8e4ef05d91b2e985c02:

  Merge tag 'davinci-fixes-for-v5.2-part2' of git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci into arm/fixes (2019-07-02 15:13:20 -0700)

----------------------------------------------------------------
ARM: SoC fixes

Likely our final small batch of fixes for 5.2:

 - Some fixes for USB on davinci, regressions were due to the recent
   conversion of the OCHI driver to use GPIO regulators

 - A fixup of kconfig dependencies for a TI irq controller

 - A switch of armada-38x to avoid dropped characters on uart, caused by
   switch of base inherited platform description earlier this year

----------------------------------------------------------------
Arnd Bergmann (1):
      soc: ti: fix irq-ti-sci link error

Bartosz Golaszewski (3):
      ARM: davinci: da830-evm: add missing regulator constraints for OHCI
      ARM: davinci: omapl138-hawk: add missing regulator constraints for OHCI
      ARM: davinci: da830-evm: fix GPIO lookup for OHCI

Joshua Scott (1):
      ARM: dts: armada-xp-98dx3236: Switch to armada-38x-uart serial node

Olof Johansson (2):
      Merge tag 'mvebu-fixes-5.2-2' of git://git.infradead.org/linux-mvebu into arm/fixes
      Merge tag 'davinci-fixes-for-v5.2-part2' of git://git.kernel.org/.../nsekhar/linux-davinci into arm/fixes

 arch/arm/boot/dts/armada-xp-98dx3236.dtsi   | 8 ++++++++
 arch/arm/mach-davinci/board-da830-evm.c     | 5 ++++-
 arch/arm/mach-davinci/board-omapl138-hawk.c | 3 +++
 drivers/soc/Makefile                        | 2 +-
 drivers/soc/ti/Kconfig                      | 4 ++--
 5 files changed, 18 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
