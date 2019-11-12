Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14106F9551
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:15:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BTA5OPiLpYK0zsypreqnoDTWUMQE3v5RyaTjtdfQ4LU=; b=cGs
	9MZNo9uqbG2AFrtvDjkkCtRM3p0n/1voQJcxxNvEOoJK376m6Zow0PzWDHWKyEmPksTNSo3sj0GOJ
	T8pPCpqp8o3a7DUtC1+CghgTw2TC+oaDku0VP3hPMcPt4JGchDwTVgIJ91fBuNal34s6bIx+l/Z/k
	mmg/IVNwM3JMz9jUtJy0J/gJCnp/HqPAnFuZ4J+ipGk3WGRbLuS2xXwYQx/mschFptU57CSB58cp9
	BUuK6ZysFWYuYMKEK+WqMy/vU1UCeYCUVBlqzRolhFdSktN+wvo//9GO4J0wDhPoO7zLB0slZ/Ztv
	tl/RHJa5s4qP3BSCAT9OUlH3BVgjqiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYpY-0006mZ-CW; Tue, 12 Nov 2019 16:15:48 +0000
Received: from forward106p.mail.yandex.net ([2a02:6b8:0:1472:2741:0:8b7:109])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iUYpH-0006cS-Rv
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 16:15:34 +0000
Received: from mxback17j.mail.yandex.net (mxback17j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::93])
 by forward106p.mail.yandex.net (Yandex) with ESMTP id B9C081C80B74;
 Tue, 12 Nov 2019 19:15:25 +0300 (MSK)
Received: from sas2-b0ca3cd64eaa.qloud-c.yandex.net
 (sas2-b0ca3cd64eaa.qloud-c.yandex.net [2a02:6b8:c14:718c:0:640:b0ca:3cd6])
 by mxback17j.mail.yandex.net (mxback/Yandex) with ESMTP id XWnrc2GOJP-FOuKbAxa;
 Tue, 12 Nov 2019 19:15:25 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1573575325; bh=rtRQozycSUUlCTa8Bg9BnGG8vc/daDegUx3PTAif/aE=;
 h=Subject:To:From:Cc:Date:Message-Id;
 b=m/mq7iI18bmFn3U9QCH2ENxYZDMe40BV4IjHw4VWzLQd3uWYfsQHCv1cZ2WFLfE9Y
 1AGE5hgj5mPauyYwyZsvXcFnGe4bxM6OWHnXbuIrj9Kp4KNTFsOUn2vZpbdRvpF6Dh
 4/TZXQ34f/l/0BAkamHTgMddFQHJLjKtbWUXnn7Y=
Authentication-Results: mxback17j.mail.yandex.net;
 dkim=pass header.i=@emlid.com
Received: by sas2-b0ca3cd64eaa.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id xY2rOY0rn4-FOUCsr3m; Tue, 12 Nov 2019 19:15:24 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client certificate not present)
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH v2 0/3] Neutis N5H3 support
Date: Tue, 12 Nov 2019 19:15:17 +0300
Message-Id: <1573575320-29546-1-git-send-email-georgii.staroselskii@emlid.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_081532_111043_BD89828D 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:6b8:0:1472:2741:0:8b7:109 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Emlid Neutis board has another variant with H3 instead of H5. This patchset
adds support for this board by moving common bits to
sunxi-h3-h5-emlid-neutis.dtsi and then including it in processor-specific DTS.

Changes from V1:

- moved HDMI nodes from DTSI to DTS
- added dt-bindings for Neutis N5H3
- made use of an array of pins in gpio-regulator node

Georgii Staroselskii (3):
  arm: dts: allwinner: Split out non-SoC specific parts of Neutis N5
  arm: dts: sunxi: Add Neutis N5H3 support
  dt-bindings: arm: sunxi: add Neutis N5H3

 Documentation/devicetree/bindings/arm/sunxi.yaml   |   6 +
 arch/arm/boot/dts/Makefile                         |   1 +
 .../dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts    |  72 +++++++++
 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi  |  11 ++
 arch/arm/boot/dts/sunxi-h3-h5-emlid-neutis.dtsi    | 170 +++++++++++++++++++++
 .../sun50i-h5-emlid-neutis-n5-devboard.dts         |  95 +-----------
 .../dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi   |  64 +-------
 7 files changed, 265 insertions(+), 154 deletions(-)
 create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
 create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi
 create mode 100644 arch/arm/boot/dts/sunxi-h3-h5-emlid-neutis.dtsi

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
