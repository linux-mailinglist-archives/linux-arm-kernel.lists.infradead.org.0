Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841BAF17DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SowoEZH4JK61bolCOzu71r1UXr+eBz0UkP6xLIFLjNI=; b=p1B
	23w4wL42oJ7PisaXzPcHAQZKWRqL/13gV0zVIC7IvLozNBrJe5XoWzKyqCp6fRcZsitJNejVj8oms
	BlpzzCyzUuHPnb5WSqm77pEgRyw9B2f89YHvspkTWymSaZqpyYPeppkY84DxWSRhy+Q66WOFvxWp3
	mfP6OZD6wLwS6nuzjkCeOs/64WdeXo0fju9ZnDMcyHmXSoYdTkRuQIjerGaVj5FNd2kKnvzUzNb+S
	L3oNouiMBBQM/qli98p/O1DLF2i5c/fs2iN/FGzjLyKv2Zb7hppKxMLGf17Agj1cizLuYFc4/M04Z
	UncCsKlV/aOXeV6ccFlKuuO/D/D14XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLuX-0002aj-Gm; Wed, 06 Nov 2019 14:03:49 +0000
Received: from forward103o.mail.yandex.net ([37.140.190.177])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLuQ-0002ZQ-3b
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:03:44 +0000
Received: from forward100q.mail.yandex.net (forward100q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:4b:0:640:4012:bb97])
 by forward103o.mail.yandex.net (Yandex) with ESMTP id C6BEB5F80F50;
 Wed,  6 Nov 2019 17:03:25 +0300 (MSK)
Received: from mxback3q.mail.yandex.net (mxback3q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:39:0:640:4545:437c])
 by forward100q.mail.yandex.net (Yandex) with ESMTP id C1F707080002;
 Wed,  6 Nov 2019 17:03:25 +0300 (MSK)
Received: from vla5-9cb0c276d29e.qloud-c.yandex.net
 (vla5-9cb0c276d29e.qloud-c.yandex.net [2a02:6b8:c18:3588:0:640:9cb0:c276])
 by mxback3q.mail.yandex.net (mxback/Yandex) with ESMTP id 8pKhPtX86G-3OVO6BLo; 
 Wed, 06 Nov 2019 17:03:25 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1573049005; bh=hai9sgog1dfk7KHhtOi290Igt8EHHm6/472rOJW8OUc=;
 h=Subject:To:From:Cc:Date:Message-Id;
 b=tx+mCq12Zc5PnLyV3gYwacLWpvU7RpSMXN22Roq1f1ejMQCRkeb/kdEqmH9i7+2Dy
 lBFgzdZGB96007NsuycC2xyjfv485b2Bu+FFSShscT7K7IeSKLCN1aVOY7g7ZBvT+B
 cfy4VDX2z9CdM2CIrRTXRJjJS7A0hudYfpnFgGc8=
Authentication-Results: mxback3q.mail.yandex.net; dkim=pass header.i=@emlid.com
Received: by vla5-9cb0c276d29e.qloud-c.yandex.net (nwsmtp/Yandex) with ESMTPSA
 id S6vUK4L7IT-3N1uYOit; Wed, 06 Nov 2019 17:03:23 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client certificate not present)
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 0/2] Neutis N5H3 support
Date: Wed,  6 Nov 2019 17:03:16 +0300
Message-Id: <1573048998-8913-1-git-send-email-georgii.staroselskii@emlid.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_060342_335380_E4A89886 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [37.140.190.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Georgii Staroselskii (2):
  arm: dts: allwinner: Split out non-SoC specific parts of Neutis N5
  arm: dts: sunxi: Add Neutis N5H3 support

 arch/arm/boot/dts/Makefile                         |   1 +
 .../dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts    |  61 +++++++
 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi  |  11 ++
 arch/arm/boot/dts/sunxi-h3-h5-emlid-neutis.dtsi    | 181 +++++++++++++++++++++
 .../sun50i-h5-emlid-neutis-n5-devboard.dts         |  95 +----------
 .../dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi   |  64 +-------
 6 files changed, 259 insertions(+), 154 deletions(-)
 create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
 create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi
 create mode 100644 arch/arm/boot/dts/sunxi-h3-h5-emlid-neutis.dtsi

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
