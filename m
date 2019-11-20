Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2541031EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Message-ID:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A91UfSPOAutWIng2IiNWrKG4/mZXZmRk2YMOn/vY/hA=; b=GKH12V/tqpKW54
	hRDS+IR8Gg8Q+66ah1qP0uBPKK3TPv+Esud4VmtcmmXLwvyL6nJoV254LEmaUbXH/OkI1XHiPvj22
	bT/LV/XH/vVxNjgvZdsJGjJ+6mh52zcQQqC4Ft/ikdDvPeUBgWf01hZAYrvO56zyoXF962y1WjaU/
	1RHNzMVfNk28aVAHvc99FizKi1FtnVPGnEbJWRoZ9T26FMM9yFfnSb/QViRGycNJiWR5+NAOzYzGO
	P/0/QxuM71oQar7W1ccXIm4n0Xke7B94eqgIbN+/suw8W6Ov3ErOzoRd5Cj0XVHS4VbBwCK8On1Gy
	mWE2d/YpQHAfAnO+dlrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXGU2-00042D-So; Wed, 20 Nov 2019 03:16:46 +0000
Received: from sender4-of-o58.zoho.com ([136.143.188.58])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXGTv-00041j-Ly; Wed, 20 Nov 2019 03:16:40 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574219789; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=kvodae3voxGK6Uu7IIOwf4k3vzBXUGaLw0ro2sYcCYzMCP686XxxRA0kizxnb+sDTn9qW/Y7tUbG9/DaLbD/4nlMuHj70e8hUOVNFIFIvxHCwIG4DBucJP/Pv5vzNK9OyluTh6D4doviP1ytZes1qKcUDudHjfMyYqSTK+JH2Ko=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574219789;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=MPpuDfBJ/N2KT9uAgt79i/d1NoN4MZ/zhR/qcBRSnjI=; 
 b=MZSkSIM2ovwFFbWRGoc2Vyt7ws8TU102/DL+4zt6ncWEXU2ddgiIBjlloT3fNzAm0frBfc6H6rK1K78jQKsfXgFi24FNqfO0xE2/uYtOVRsraRB/4wcxZoLum6rJtDgryvU6fC4sp3/VHjmutM6UPwL/6T0mHr7EXJMdJE7AhtQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574219789; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=1232; bh=MPpuDfBJ/N2KT9uAgt79i/d1NoN4MZ/zhR/qcBRSnjI=;
 b=ikgbbKBNEeLrK+wDYYpKhrLMfCBww/wp4QLGF1GCV9pCgoMcCBkFUB7kLpOuXdmU
 MoFGqV2y4gyzR78K1xt7IxSyRgQtJerUqcmembkcQjdd52iWeJ28Tpdl+BL/KBvWj6v
 mycinkL+HIuACkofmUso9gJIc9CRTXmtq7U7ZddY=
Received: from localhost (c-98-207-184-40.hsd1.ca.comcast.net [98.207.184.40])
 by mx.zohomail.com with SMTPS id 1574219788314308.2839920954864;
 Tue, 19 Nov 2019 19:16:28 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191120031622.88949-1-stephen@brennan.io>
Subject: [PATCH v3 0/4] Raspberry Pi 4 HWRNG Support
Date: Tue, 19 Nov 2019 19:16:18 -0800
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_191639_809143_25C3F353 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Matt Mackall <mpm@selenic.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series enables support for the HWRNG included on the Raspberry
Pi 4.  It is simply a rebase of Stefan's branch [1]. I went ahead and
tested this out on a Pi 4.  Prior to this patch series, attempting to use
the hwrng gives:

    $ head -c 2 /dev/hwrng
    head: /dev/hwrng: Input/output error

After this series, the same command gives two random bytes.

Changes in v3:
- drop interrupts from bcm2711 rng node
- move bcm283x rng into bcm2835-common.dtsi
- add reviewed-by tag
- separated out patch 3 into two parts

Changes in v2:
- specify the correct size for the region in the dts, refactor bcm283x rng

---

Stefan Wahren (2):
  dt-bindings: rng: add BCM2711 RNG compatible
  hwrng: iproc-rng200: Add support for BCM2711

Stephen Brennan (2):
  ARM: dts: bcm2835: Move rng definition to common location
  ARM: dts: bcm2711: Enable HWRNG support

 .../devicetree/bindings/rng/brcm,iproc-rng200.txt          | 1 +
 arch/arm/boot/dts/bcm2711.dtsi                             | 7 +++----
 arch/arm/boot/dts/bcm2835-common.dtsi                      | 6 ++++++
 arch/arm/boot/dts/bcm283x.dtsi                             | 6 ------
 drivers/char/hw_random/Kconfig                             | 2 +-
 drivers/char/hw_random/iproc-rng200.c                      | 1 +
 6 files changed, 12 insertions(+), 11 deletions(-)

-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
