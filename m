Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 926F5188857
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 15:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l8nKK2foxQjwU/wi+SI2MmTaoVSkui7GbNODr1w443Y=; b=hbarKczS0/9rd2
	pQqdGnMW4GqpR8BLF6mClWYB9sqUW+po0iLewuFfCqUCB3KWwgs14bFGwuRkaDFXNRGNmrk1ooQtB
	2evHb2C8b0xxM3x+evlWQuhPfjn3yM2vsdV+bk7LdDUvaK0DyXV2JKfn5NIQYHsK9ggptGPQZf21P
	eHoZsVuH9n4D0hsTSMA9nbGvlqm5z+DTf8DLazwqBIzK7PeQ2iQLukyMQTLK55RDfui91dgk1Go+c
	RzSXEsm7wZAtleCgYXRTQAinbjRcoAhyMeQjlc8n93yAkWZtwhK8EX8L3DHENXK1Xk+/3Kb901oBq
	pSKDhQ54Qxk4KjQkTExA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEDcl-0002Ol-DT; Tue, 17 Mar 2020 14:55:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDbz-0001vI-ON
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 14:54:33 +0000
Received: from mail.kernel.org (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3243320738;
 Tue, 17 Mar 2020 14:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584456871;
 bh=wv1oXeNAPji2JqILSy7dsOlUm83jPgRnZSKzsNM/ZJ8=;
 h=From:To:Cc:Subject:Date:From;
 b=jF6VXV0DKDhsOphX476Krqri9CPMtpL7QuS51NlGKZA0DVmzUvhwO3/cUoDkLVDmJ
 XoRoh5cHAImMSv3Hwx/BWDHPdfFiPGVUDa+jQOg8aJNn5px1ZWbMevRVF2uIDn2tgn
 fgA3/ORJqAVd4OK24NQB91k43PHQmCH5xncZM/xA=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jEDbw-000AME-Ae; Tue, 17 Mar 2020 15:54:28 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH 00/17] Address several documentation build warnings
Date: Tue, 17 Mar 2020 15:54:09 +0100
Message-Id: <cover.1584456635.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_075431_829134_F749FBE9 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Lunn <andrew@lunn.ch>, Wolfram Sang <wsa@the-dreams.de>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-ide@vger.kernel.org, linux-i2c@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>, linux1394-devel@lists.sourceforge.net,
 Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Chanwoo Choi <cw00.choi@samsung.com>,
 Doug Ledford <dledford@redhat.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-pci@vger.kernel.org, Darren Hart <dvhart@infradead.org>,
 Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 "Paul E. McKenney" <paulmck@kernel.org>, linux-pm@vger.kernel.org,
 Josh Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org, linux-gpio@vger.kernel.org,
 Mark Brown <broonie@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jakub Kicinski <kuba@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Jens Axboe <axboe@kernel.dk>, netdev@vger.kernel.org,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>, linux-fsdevel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series is against next-20200317. It addresses several warnings on
random places.

It is worth noticing patch 07/17: It changes kernel-doc parser to accept a
very common pattern on kernel-doc markups. This reduces a lot of
warnings all over the tree.

The remaining patches are just random fixes with the hope to address most
warnings that are shown in red when building the documentation.

Mauro Carvalho Chehab (17):
  docs: amu: supress some Sphinx warnings
  docs: arm64: booting.rst: get rid of some warnings
  docs: pci: boot-interrupts.rst: improve html output
  kernel: futex.c: get rid of a docs build warning
  devfreq: devfreq.h: get rid of some doc warnings
  firewire: firewire-cdev.hL get rid of a docs warning
  scripts: kernel-doc: proper handle @foo->bar()
  lib: bitmap.c: get rid of some doc warnings
  rcu: update.c: get rid of some doc warnings
  net: phy: sfp-bus.c: get rid of docs warnings
  net: core: dev.c: fix a documentation warning
  gpio: gpiolib.c: fix a doc warning
  i2c: include/linux/i2c.h: fix a doc warning
  infiniband: pa_vnic_encap.h: get rid of a warning
  ata: libata-core: fix a doc warning
  fs: inode.c: get rid of docs warnings
  regulator: driver.h: fix regulator_map_* function names

 Documentation/PCI/boot-interrupts.rst         | 34 ++++++++++--------
 Documentation/arm64/amu.rst                   |  5 +++
 Documentation/arm64/booting.rst               | 36 +++++++++++--------
 drivers/ata/libata-core.c                     |  2 +-
 drivers/gpio/gpiolib.c                        |  2 +-
 .../infiniband/ulp/opa_vnic/opa_vnic_encap.h  |  2 +-
 drivers/net/phy/sfp-bus.c                     | 32 +++++++++--------
 fs/inode.c                                    |  6 ++--
 include/linux/devfreq.h                       |  6 ++--
 include/linux/i2c.h                           |  4 +--
 include/linux/regulator/driver.h              |  4 +--
 include/uapi/linux/firewire-cdev.h            |  2 +-
 kernel/futex.c                                |  3 +-
 kernel/rcu/update.c                           |  8 ++---
 lib/bitmap.c                                  | 27 +++++++-------
 net/core/dev.c                                |  2 +-
 scripts/kernel-doc                            |  2 ++
 17 files changed, 101 insertions(+), 76 deletions(-)

-- 
2.24.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
