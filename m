Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3091E13CD44
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 20:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1V5ijQOlrHSFX3snnyKUPLzT8PFKYeA+0vUokFxnAeQ=; b=VcZ3DTSbr4s9pq
	wJ+OcWYCeyZ8cAMIDits/ixH8R7mIHLNDErxKn4OD7Dwd9DRbcKvwK0XIctkpRm/snf4bwMQ0Cb2G
	6pNLd7YocDfrzIGoRYUpRjwMlDKPwcMu/786r6TCQQjd7e7hRHHtCYf5NippErZ2s8gsSUkOiStqo
	quOl0rjHt7TgSugSHR7Wa8rlu9Oke6DEsrNtV9mina8VSXExtFz+fA25n9OUAmYtCJ79fI6hcKm0i
	y60RBFvMq/FS814QArf4MKzYFfzxPipRsik4hzvdtvYp9EkpmVN44i/b/As8yWNTdJn95wvwjFoS2
	mFp0ufn82+zDDG2L05xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iroYs-0005pF-Kp; Wed, 15 Jan 2020 19:42:42 +0000
Received: from mailoutvs13.siol.net ([185.57.226.204] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iroYe-0005n1-OW
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 19:42:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id E70415225A4;
 Wed, 15 Jan 2020 20:42:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id quCGKKoRs-as; Wed, 15 Jan 2020 20:42:25 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id A2FFC5228C8;
 Wed, 15 Jan 2020 20:42:25 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 455C75225A4;
 Wed, 15 Jan 2020 20:42:25 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 0/2] arm64: dts: allwinner: h6: Introduce OrangePi 3 eMMC board
Date: Wed, 15 Jan 2020 20:42:14 +0100
Message-Id: <20200115194216.173117-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_114228_953907_17F94241 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.204 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OrangePi 3 board has multiple variants. Two of them come with 8 GiB eMMC
soldered on them.

This series introduces new DT file for OrangePi 3 with eMMC.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (2):
  dt-bindings: arm: sunxi: add OrangePi 3 with eMMC
  arm64: dts: allwinner: h6: Introduce OrangePi 3 eMMC variant

 .../devicetree/bindings/arm/sunxi.yaml        |  5 +++++
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-orangepi-3-emmc.dts   | 22 +++++++++++++++++++
 3 files changed, 28 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3-emmc.dts

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
