Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72D81EB74B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=759niine+5Lt33KaJVrAf1yv/SfxrYNgkCnEK2gZmUA=; b=O21MPloRKQwS9i
	cYrrYcbetONBdEJuDvMCWxPxJJLKC+9ZwwQd1JGsEVRSn5Y+JOVtMiDTGdzfK5cYc80NKkJjDxvuE
	xabJLYTldFYPV3REoPe33anQQoex1DAQr/h9jehpmokQUemhL3oBMs9nuQj3AeIfHWkv6hVfjtxaD
	/Zo28p8WPCvdNpkd4xbow85pv9PmdYUfs0TWZAEe4/dJjXFm+ju1hddLDtS/atD8wsrlrmzFTOJJL
	6g62qLOCYB2LTExudepSwEezgmuvZyktR8zqd8phRyoC0McOD+jt7WsjzaJhubB/N+PMRlzvniosh
	mQxF6SRw7zO4EwIwGw9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2Eo-00050D-Hv; Tue, 02 Jun 2020 08:25:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2EX-0004yN-Rd; Tue, 02 Jun 2020 08:25:19 +0000
X-UUID: 5a959a0cd4d64fe1ba78d4874ab525f7-20200602
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=KYrBaNtif/3VCFCQAyrN/XFfbiRCsls3LdboJ24kUjg=; 
 b=juOEJE4Qtr7VKR/aVy3s1kn/1VNq/I3Adeoc9nU+V9GAZAh9O0Mss+7phmRlvfDmzs96Ak8Q6VDcjykrdXQMT1UEyFrJ6jvODM3xwlfE6MHVFnirP7Y7iCgdKZ3QkOaQ/7DzVZuoafdK3zcfs6AqwzDKYfiBUcSSAEgRhRVmPJM=;
X-UUID: 5a959a0cd4d64fe1ba78d4874ab525f7-20200602
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1610587597; Tue, 02 Jun 2020 00:25:16 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 2 Jun 2020 01:15:11 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 2 Jun 2020 16:14:58 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 2 Jun 2020 16:14:58 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@kernel.org>, Arnd Bergmann <arnd@arndb.de>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: Security Random Number Generator support
Date: Tue, 2 Jun 2020 16:14:36 +0800
Message-ID: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 94F4E944B9EF29E1123C6BE1784E0CFC99BCFFF856242D1AE2433041B1BDFE682000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_012517_899170_1A2DF627 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 Neal Liu <neal.liu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patch series introduce a security random number generator
which provides a generic interface to get hardware rnd from Secure
state. The Secure state can be Arm Trusted Firmware(ATF), Trusted
Execution Environment(TEE), or even EL2 hypervisor.

Patch #1..2 adds sec-rng kernel driver for Trustzone based SoCs.
For security awareness SoCs on ARMv8 with TrustZone enabled,
peripherals like entropy sources is not accessible from normal world
(linux) and rather accessible from secure world (HYP/ATF/TEE) only.
This driver aims to provide a generic interface to Arm Trusted
Firmware or Hypervisor rng service.


changes since v1:
- rename mt67xx-rng to mtk-sec-rng since all MediaTek ARMv8 SoCs can reuse
  this driver.
  - refine coding style and unnecessary check.

  changes since v2:
  - remove unused comments.
  - remove redundant variable.

  changes since v3:
  - add dt-bindings for MediaTek rng with TrustZone enabled.
  - revise HWRNG SMC call fid.

  changes since v4:
  - move bindings to the arm/firmware directory.
  - revise driver init flow to check more property.

  changes since v5:
  - refactor to more generic security rng driver which
    is not platform specific.

*** BLURB HERE ***

Neal Liu (2):
  dt-bindings: rng: add bindings for sec-rng
  hwrng: add sec-rng driver

 .../devicetree/bindings/rng/sec-rng.yaml      |  53 ++++++
 drivers/char/hw_random/Kconfig                |  13 ++
 drivers/char/hw_random/Makefile               |   1 +
 drivers/char/hw_random/sec-rng.c              | 155 ++++++++++++++++++
 4 files changed, 222 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rng/sec-rng.yaml
 create mode 100644 drivers/char/hw_random/sec-rng.c

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
