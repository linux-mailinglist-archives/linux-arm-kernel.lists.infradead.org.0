Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86751F3B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 14:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pCne9VwWjACpEz50eYQ8Rh7RmXQo0TbaUBFxj+2eSME=; b=APAQyJHtnAJGQOl7clKwtmxUfh
	tg0saC3Vh4075HwP5w6vUCHiK88LzHH5Dpb2IScoTQyyVf17hj8yhdhvzZnTVwU2XDQSFCAAWUHWt
	l4nHiUNQBElnSMRc0SfaE7K/cSJx5/w9cwtgnB30/GrJeY08JXaPfCWJniQTqsCj0YyWle2g7HIzo
	kHxbjpd6qeoeq8wHJAMldAdqzRACJGl4ZlELym+3Kegt4GKPgiAar8cch9EZA5fq7bNroQMOEOvv8
	00eNTKY87qZ92f5oxZBkAZvZ9i+Zjg5Qjp6k10NZjjFMQLVyAppvDhhyRjQKf7GTLPBQtbRtg2ZCV
	WH5x959g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQsqG-0003KL-CH; Wed, 15 May 2019 12:17:04 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsq9-0003IC-09
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 12:16:58 +0000
X-IronPort-AV: E=Sophos;i="5.60,472,1549897200"; d="scan'208";a="16017651"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie5.idc.renesas.com with ESMTP; 15 May 2019 21:16:52 +0900
Received: from be1yocto.ree.adwin.renesas.com (unknown [172.29.43.62])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id E128A400F797;
 Wed, 15 May 2019 21:16:47 +0900 (JST)
From: Biju Das <biju.das@bp.renesas.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v6 5/7] arm64: defconfig: enable TYPEC_HD3SS3220 config option
Date: Wed, 15 May 2019 13:09:10 +0100
Message-Id: <1557922152-16449-6-git-send-email-biju.das@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557922152-16449-1-git-send-email-biju.das@bp.renesas.com>
References: <1557922152-16449-1-git-send-email-biju.das@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_051657_156577_C0A7EB61 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Heiko Stuebner <heiko@sntech.de>,
 Simon Horman <horms@verge.net.au>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Biju Das <biju.das@bp.renesas.com>, linux-renesas-soc@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Olof Johansson <olof@lixom.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Shawn Guo <shawn.guo@linaro.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable support for the TI HD3SS320 USB Type-C DRP Port controller driver
by turning on CONFIG_TYPEC and CONFIG_TYPEC_HD3SS3220 as modules.

Signed-off-by: Biju Das <biju.das@bp.renesas.com>
---
V5-->V6
  * No change
V4-->V5
  * No change
V3-->V4
  * No change
V2-->V3
  * No change
V1-->V2
  * No change
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8871cf7..9dc71a7 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -576,6 +576,8 @@ CONFIG_USB_ULPI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_RENESAS_USBHS_UDC=m
 CONFIG_USB_RENESAS_USB3=m
+CONFIG_TYPEC=m
+CONFIG_TYPEC_HD3SS3220=m
 CONFIG_MMC=y
 CONFIG_MMC_BLOCK_MINORS=32
 CONFIG_MMC_ARMMMCI=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
