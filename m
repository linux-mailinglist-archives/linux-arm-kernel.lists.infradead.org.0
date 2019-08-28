Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F7FA0605
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltmQKM3aVZyPiwh0BYZ+b7asE33eM2bK6j/oKhT7QRs=; b=P2uZwWBagpLY/g
	x749tujlNeAqmcfZINJ95VIRwoGe+NI6it9ZoooZ1G/dmY2RgVWawqLcGPgMUsQR8QCyeoP0b+I8R
	sZ7YPzzJSk+cPmVfAjk9/odOs+QJgVlPl9MFMFoG+Z4+17oFgeWgs/HzaSBuyDe8eUWgEisay+aR8
	QM6SkS0TL/UX9EMsYYoGZt4njql3xeBBBYhhd6PNciyCPivxeklWfSEpF5ZxUz6ETbgYH3bw1KuZZ
	HprKUtedE6RJm18Kvp6UYBOTnEEkSZUie6dojZ3oiZVD04mx5q9YEgoP1ze4bg5oVAeG30z7cfDdI
	IBkjbSg+X3dwkJa7fKhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ziW-0001Ie-PL; Wed, 28 Aug 2019 15:18:37 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zhx-00014q-Ns
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:18:02 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7SFHxLt006262;
 Wed, 28 Aug 2019 10:17:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567005479;
 bh=wf3qSmV3TZFDg2yGTBr/RfNh/wiuzDTyrIIezJOAuZs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=BBQaBcqhKHSak+Y8nzGdzvu1sw3vDkMxbbnQPLuoBC6e0sUMQl5F5zeXTsZYRAaBj
 t9EvPizHPUehh1GhWu8MwRo3PH/Iitbp8G9SfXuSqcHI3C3DvFJkwv9/iDTJIHtWUa
 C82oepOCrHGE64qfAFdd0jJDZP0VjwmoZ7IuLsW0=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7SFHxbX030598
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 10:17:59 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 10:17:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 10:17:59 -0500
Received: from psplinux063.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7SFHstD040838;
 Wed, 28 Aug 2019 10:17:57 -0500
From: Sekhar Nori <nsekhar@ti.com>
To: ARM-SoC Maintainers <arm@kernel.org>
Subject: [GIT PULL 2/4] DaVinci defconfig updates for v5.4
Date: Wed, 28 Aug 2019 20:47:52 +0530
Message-ID: <20190828151754.21023-2-nsekhar@ti.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20190828151754.21023-1-nsekhar@ti.com>
References: <20190828151754.21023-1-nsekhar@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_081801_817791_657F07B0 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>, nsekhar@ti.com,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.4/defconfig

for you to fetch changes up to e869e44f2d82b9b4d35d58ceaeeadb0242bc634c:

  ARM: davinci_all_defconfig: enable GPIO backlight (2019-08-08 14:33:45 +0530)

----------------------------------------------------------------
Contains davinci_all_defconfig refresh using savedefconfig and a
patch to enable GPIO backlight.

----------------------------------------------------------------
Bartosz Golaszewski (2):
      ARM: davinci: refresh davinci_all_defconfig
      ARM: davinci_all_defconfig: enable GPIO backlight

 arch/arm/configs/davinci_all_defconfig | 27 ++++++++++-----------------
 1 file changed, 10 insertions(+), 17 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
