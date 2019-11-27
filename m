Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E8810B125
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 15:23:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GW4QWn824SX0mK6SGLjqMKC9vhGACMPab9WH3YjWKY0=; b=EHOiIlKtmqbk40
	CHsa9OmIhYqfHEc53RxH+Tg2tRyXCh2EAOvAmIDudHE6tr83MaQJD1DyEaCG+JgFdwSNsGkRgCKnx
	HPPnmaJxDeP6QHpU1gIP+fqegpSAujUU+kGLLx7hcR8sLBhlexGZAKEg6KABVPC+wikgMA2VX2xkw
	PVzvddzV6Ubg/NZWT4b7WUhk0W4zEBW3rQogBSa2+NleoWu5pi/Fi2h+UkbmY4UfDvJPxFxZWt4eu
	xtaeNQulUlQPnzKEwi0xwXpDQMkvJnQyt54euFiqZlwRJgMF4REszDI7yGeQxh1KkgU9Wj0ye2sP0
	rul9yYz1E+/OYp9Sh8hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZyES-0007V9-8K; Wed, 27 Nov 2019 14:23:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZyDt-0007Dp-1u; Wed, 27 Nov 2019 14:23:18 +0000
X-UUID: 9e0ffb7abcdf4597948b1d497af4b96e-20191127
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=NhBME09v3vIkyV7lPjd2SdpUbwvFpe5cLCJrE0AJDLc=; 
 b=FWsISVEZgeGOrx7RXH9FxrOyHQF+Ac8LeyYh2C13e8uq3ZmAk8eg2FTdbOHaSGG3faatGbkdjQXY4E0IzcsVByRjLJ5A1vZEKir+qrSkexiQ35jDj941Engs3WRrO39yBt78a8CdBfHRSeDHNoXOsIUbASgX7PJoDGuXE828psY=;
X-UUID: 9e0ffb7abcdf4597948b1d497af4b96e-20191127
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1540663985; Wed, 27 Nov 2019 06:23:07 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 06:23:41 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 22:22:59 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 27 Nov 2019 22:23:03 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Wang <sean.wang@kernel.org>
Subject: [PATCH v5 0/3] MediaTek Security random number generator support
Date: Wed, 27 Nov 2019 22:22:55 +0800
Message-ID: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_062317_096417_1954041D 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-crypto@vger.kernel.org, Neal Liu <neal.liu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patch series introduce a generic rng driver for Trustzone
based kernel driver which would like to communicate with ATF
SIP services.

Patch #1 initials SMC fid table for Mediatek SIP interfaces and
adds HWRNG related SMC call.

Patch #2..3 adds mtk-sec-rng kernel driver for Trustzone based SoCs.
For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals like
entropy sources is not accessible from normal world (linux) and
rather accessible from secure world (ATF/TEE) only.
This driver aims to provide a generic interface to ATF rng service.


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


Neal Liu (3):
  soc: mediatek: add SMC fid table for SIP interface
  dt-bindings: rng: add bindings for MediaTek ARMv8 SoCs
  hwrng: add mtk-sec-rng driver

 .../arm/firmware/mediatek,mtk-sec-rng.txt     |  18 +++
 drivers/char/hw_random/Kconfig                |  16 +++
 drivers/char/hw_random/Makefile               |   1 +
 drivers/char/hw_random/mtk-sec-rng.c          | 103 ++++++++++++++++++
 include/linux/soc/mediatek/mtk_sip_svc.h      |  33 ++++++
 5 files changed, 171 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/firmware/mediatek,mtk-sec-rng.txt
 create mode 100644 drivers/char/hw_random/mtk-sec-rng.c
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
