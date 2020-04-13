Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485281A6309
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YGGZCDfVnDICf748dLe8tF5c1PMpFuy/XDhuK4GN+LU=; b=g0PdVBH6N+SZZN
	aTeHs16Vmr4As6zvK2CrxEkApkmb8HvCWIDfPXYoS5LTBTKHEgEG5ijqVTtNN8PEXa2AznTy5qASf
	XaOyLRcf9BfwQwj4OHcU4zzSxmTqMN3j5SNlj/OpaCbRPsZ4KaLOwpvxSvdHwsE6eui4QQNKtWgF1
	dEP2G4fcGcLzGr9ff0XkwxVTzMYWcgS6sguznOiCFMXz8S0wjHSq4oY9KYV88UW/Cde1oDMOUi1R4
	auQajZU7bpVG3P5ntSjAi4GzFnW6xBBM7n+tRNn9aBfifNW7LhRPZ7F+xy852EyZMdfxuPFKWYpf1
	bNoMaz2Ht2F49AkgJpAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNsWz-0000ci-P0; Mon, 13 Apr 2020 06:25:17 +0000
Received: from mailoutvs55.siol.net ([185.57.226.246] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNsWd-0000ah-2c
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:24:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 88F8C522DEC;
 Mon, 13 Apr 2020 08:24:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id I2uoRwcVt52q; Mon, 13 Apr 2020 08:24:48 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 450CE522E37;
 Mon, 13 Apr 2020 08:24:48 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id C9DE0522DEC;
 Mon, 13 Apr 2020 08:24:43 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 0/3] arm64: dts: allwinner: h6: OrangePi Lite2 and One Plus DTs
Date: Mon, 13 Apr 2020 08:24:30 +0200
Message-Id: <20200413062433.1145043-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_232455_271360_F97D59AA 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.246 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds missing nodes for OrangePi Lite2 and One Plus and
fixes USB OTG mode to host because there is no way to toggle VBUS
power supply on/off.

The only remaining board specific functionality not enabled is USB3
on OrangePi Lite2, but for that USB connector power supply support
has to be added to driver first.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (2):
  arm64: dts: allwinner: h6: orangepi: Add gpio power supply
  arm64: dts: allwinner: h6: orangepi: Disable OTG mode

Sebastian Meyer (1):
  arm64: allwinner: h6: orangepi-lite2: Support BT+WIFI combo module

 .../allwinner/sun50i-h6-orangepi-lite2.dts    | 65 +++++++++++++++++++
 .../dts/allwinner/sun50i-h6-orangepi.dtsi     | 17 ++++-
 2 files changed, 81 insertions(+), 1 deletion(-)

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
