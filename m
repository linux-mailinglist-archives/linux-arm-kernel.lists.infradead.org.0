Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69316A0609
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LG+gKneZuiYcrf9xwwcMoxgrkYPeeXhSZA2x3tVo4PQ=; b=dxSQUyBKu9OE6R
	VPxjW/Iy3xxQXWa9yf/zO6V9scgGMR3I4yeSYdFK9dS3djHydkrHtMsgejpEFE0g4uFLYnC9xl2//
	iZOs9QifDkPl2tXCrukrdUHew87CEjTSZOOVnAzUXAzMmL5TV6SBKOpRjgmLAuPLe9sRZ0FCm+Fhr
	2OHHsTFSgWlDZ1FgtPlnm8ygw2apP1tVyWTemF9cXWUauLy78/BBMISUy+VIlWrYt/0timBdfUhIu
	tjOC74S7WwNhXXGm6ly6HBgjB/VuPxIxuf0pVtAvelDcs6WiMOZCDw2tTJdmmXb/gTW+GPHcCQ0v+
	3Rx527MNkw7sbeHL9x9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zjN-0001u9-D4; Wed, 28 Aug 2019 15:19:29 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zi2-000181-UG
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:18:08 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7SFI3bC116483;
 Wed, 28 Aug 2019 10:18:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567005483;
 bh=LB8+aAh4HvwovTMJpTEj94/PkvyzBSqvmkoWhS1kAXY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ntPpmuWpi+B86k3kCLl76fwtDRCBzn+A2bwjaMIkoDaruTdis0C4/olmtXkWf2l07
 0Nqq7UTDxO6hwDmnWMk27L7dTIt1zCooMuEqKQUnfDNHVNL/8biO3fPoKrp+t9EzXc
 sQQgpRNwhU2NUZvuhClhcbofemZ+zU1NTnUObOVc=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7SFI37n030774
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 10:18:03 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 10:18:03 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 10:18:03 -0500
Received: from psplinux063.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7SFHstF040838;
 Wed, 28 Aug 2019 10:18:01 -0500
From: Sekhar Nori <nsekhar@ti.com>
To: ARM-SoC Maintainers <arm@kernel.org>
Subject: [GIT PULL 4/4] DaVinci DT updates for v5.4
Date: Wed, 28 Aug 2019 20:47:54 +0530
Message-ID: <20190828151754.21023-4-nsekhar@ti.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20190828151754.21023-1-nsekhar@ti.com>
References: <20190828151754.21023-1-nsekhar@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_081807_035980_2AD1CB39 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.4/dt

for you to fetch changes up to 01cc0596ef0e483543abd1f4887eff7e54797c36:

  ARM: dts: da850-evm: Use generic jedec, spi-nor for flash (2019-08-26 17:50:30 +0530)

----------------------------------------------------------------
Contains a patch to switch to more generic compatible for SPI NOR.
This helps SPI NOR to work on newer board variants.

----------------------------------------------------------------
Adam Ford (1):
      ARM: dts: da850-evm: Use generic jedec, spi-nor for flash

 arch/arm/boot/dts/da850-evm.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
