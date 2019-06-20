Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5974CC9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEvIr33DQmFxsAxMYKkEmDttjLbmTddA67aKUKXmCc4=; b=p4PQUZ2scWxKhw
	6pf0jeMNCPMW3X4TqgBscbJBbuFSJ3fNFxN3IzrME65cB6VnNzP+04t1ovKxO6nzguDZGiHYoXuho
	GrCh6JSz9mRpJNyo9JkC1EU8odq6sZ9ldEID8XgPPSPbpGwZhPj31EPsaVHKbW4eKEeYoCP++5+o0
	lW5TgQU8ncJ3a4TNZvPHOWkkGPewI8t0hccZgKmrPg957HCMsZ+giLl6+lt2+TebGgGh6OFg7MOBR
	qFoZM3MH8Of1GoCljypjWdrxHZpsNa4QyfvZzCc4qiIc95+cB051St+NAh0AoLVLXD7kqk4LJGS5c
	Q9lOTXLYUx1UfU/9bh5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hduv0-0004kc-Sg; Thu, 20 Jun 2019 11:07:50 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hduuM-0004Ut-Qj
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:07:12 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5KB78BK114488;
 Thu, 20 Jun 2019 06:07:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561028828;
 bh=WasFJlYSszdeI5CywtJ13vo5iqNXjMFrjojzBf4xmw0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=OIn2/cMkOrL/5OniULoF/pcql70OqgUZAXu5b3EWZjXTYxgg/p5VyXWCHoGXvhipH
 QorxPCiImbxhE2PHIr1HDU//YNxnbW/ESATeP2YUwQp8W1a4oJXx6ipIObaDnrQNm6
 T0Kbayv8RJ/hZhhj5EtnNfe66CSphGrP8JcGyhC8=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5KB780I098438
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Jun 2019 06:07:08 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 20
 Jun 2019 06:07:07 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 20 Jun 2019 06:07:07 -0500
Received: from psplinux063.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5KB74VY116363;
 Thu, 20 Jun 2019 06:07:06 -0500
From: Sekhar Nori <nsekhar@ti.com>
To: ARM-SoC Maintainers <arm@kernel.org>
Subject: [GIT PULL 2/2] DaVinci DT update for v5.3
Date: Thu, 20 Jun 2019 16:37:03 +0530
Message-ID: <20190620110703.18616-2-nsekhar@ti.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20190620110703.18616-1-nsekhar@ti.com>
References: <20190620110703.18616-1-nsekhar@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_040710_906416_DB36A907 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.3/dt

for you to fetch changes up to 3a4b44d5c032f03cee71a8f2ad5c10ce18b3519b:

  ARM: davinci_all_defconfig: Enable CPUFREQ_DT (2019-06-14 18:22:37 +0530)

----------------------------------------------------------------
This pull request adds CPUFreq support for DA850 boards in device-tree
boot using the generic CPUFREQ_DT driver.

----------------------------------------------------------------
Bartosz Golaszewski (1):
      ARM: dts: da850-evm: enable cpufreq

David Lechner (4):
      ARM: dts: da850: add cpu node and operating points to DT
      ARM: dts: da850-lego-ev3: enable cpufreq
      ARM: dts: da850-lcdk: enable cpufreq
      ARM: davinci_all_defconfig: Enable CPUFREQ_DT

 arch/arm/boot/dts/da850-evm.dts        | 13 +++++++++
 arch/arm/boot/dts/da850-lcdk.dts       | 36 ++++++++++++++++++++++++
 arch/arm/boot/dts/da850-lego-ev3.dts   | 30 ++++++++++++++++++++
 arch/arm/boot/dts/da850.dtsi           | 50 ++++++++++++++++++++++++++++++++++
 arch/arm/configs/davinci_all_defconfig |  1 +
 5 files changed, 130 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
