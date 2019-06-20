Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C35B4CC9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/rSCSIEMsszv20PiIpGka8yAzsOowL+9mNpcu+ELCDU=; b=dMv4E+zdxlqHwo
	4cQlqlcjWCHGsal6Ixmb2ux4KJFnLlWZ2HAS76lrqma5YlFw0wErHns9MoF2QJ1ziuWZaFs1us5Kq
	iZrSGXchbxwe2GezOoViHXQEg2ZihbEwuqWU/LcGZ7HmAYK1myDizoXTcisDvKa1hCez5wCCU7aPV
	sVF0DQjkOCFP1yQp38MIEUMrnkR2BQM6+MVobUKmqCbTcMkzgHMRvwDBNkVJEIsHYzOY2Ixz/L5ej
	4iD3XpS1A26LN2cYeL0FK+9d48q2B3vWrUwjE1+9jw+ehxv697BA3XAw4dWHeaITxPS5qkKvkK9OL
	MhWVYNuQ2TeH/Wb2UG4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hduuc-0004VF-7f; Thu, 20 Jun 2019 11:07:26 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hduuK-0004Uh-PW
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:07:10 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5KB76Dg014875;
 Thu, 20 Jun 2019 06:07:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561028826;
 bh=Dr1BICzE7k3+gZ6D6blP4eppjPy0KKFQz+rv/hKB5So=;
 h=From:To:CC:Subject:Date;
 b=bBcKZICV0Cslbf2OqzP7TJh3yllLWJeGJgWeFe5gJX6hgkcL266nXzW0BjnQnHbZU
 Kydg9XubHz9F+j/L4D9OgnDK+fW/7kbHqHlzHaLyTtEZpzOx/PyUrgK63WTSCMkd7H
 hD/unzueIJwdiMQi8spTRi0nXqJm0d2bdQwuI1Cc=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5KB760J098331
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Jun 2019 06:07:06 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 20
 Jun 2019 06:07:06 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 20 Jun 2019 06:07:05 -0500
Received: from psplinux063.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5KB74VX116363;
 Thu, 20 Jun 2019 06:07:04 -0500
From: Sekhar Nori <nsekhar@ti.com>
To: ARM-SoC Maintainers <arm@kernel.org>
Subject: [GIT PULL 1/2] DaVinci Soc updates for v5.3
Date: Thu, 20 Jun 2019 16:37:02 +0530
Message-ID: <20190620110703.18616-1-nsekhar@ti.com>
X-Mailer: git-send-email 2.16.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_040708_936994_26F4DDF2 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.3/soc

for you to fetch changes up to 1f8e44b622dc9d47af1815ac59169b1adaa1195d:

  ARM: davinci: Use GPIO lookup table for DA850 LEDs (2019-06-20 14:36:15 +0530)

----------------------------------------------------------------
This pull request has a patch to switch DA850 EVM GPIO LED support to use
GPIO lookup table

----------------------------------------------------------------
Linus Walleij (1):
      ARM: davinci: Use GPIO lookup table for DA850 LEDs

 arch/arm/mach-davinci/board-da850-evm.c | 43 +++++++++++++++++----------------
 1 file changed, 22 insertions(+), 21 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
