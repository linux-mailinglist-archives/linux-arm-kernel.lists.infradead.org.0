Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292E516350C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yhfQaZZQRGwQr/bRFdzX4Y51U6cR2vak+ywyCMWszIA=; b=G+A
	ErSxk8I51eZ7UTuDcnHvaX9vw++o6aJ5jo+a8WX1p8ZQI7RQxBLC56DquNsdtb3+HHEIo3yqvvYAL
	PqDYaGt9XPgWsk9disW5+IMsdIOxkKeoIqSsQ7g5hrVLIgKmjsBhcVLojwClaJPC4L9TwMNPaS+o7
	3SXDE1VNIhY3cPzhaFeIqmT232HaASbOOx+BiVUlRpGQEACSt+4aGCLQpTGqFVaplDUv5tXrrrtTH
	PPZvxQrDUsUzeetkyhp2hSskFhihAaKanqvNwGMHlibtVpXw6AQBxs9kKvNPEwTgChW7AzuumJfNV
	12yW7ORSq5xkU+0m4MBaQw1jYElWa9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ATi-0000aP-S7; Tue, 18 Feb 2020 21:32:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ATZ-0000Ye-90; Tue, 18 Feb 2020 21:32:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DD841FB;
 Tue, 18 Feb 2020 13:32:15 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CA3723F68F;
 Tue, 18 Feb 2020 13:32:13 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	heiko@sntech.de
Subject: [PATCH v2 0/3] Clean up RK3328 audio codec GPIO control
Date: Tue, 18 Feb 2020 21:31:57 +0000
Message-Id: <cover.1581376744.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_133217_362640_EEBB1F04 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Since nobody said anything resembling "that looks like a terrible idea!"
to what I propsed on top of v1, resending as a full v2 per Mark's
request.

Robin.


Robin Murphy (3):
  ASoC: dt-bindings: Make RK3328 codec GPIO explicit
  ASoC: rockchip: Make RK3328 GPIO_MUTE control explicit
  arm64: dts: rockchip: Describe RK3328 GPIO_MUTE users

 .../bindings/sound/rockchip,rk3328-codec.txt  |  7 ++++-
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |  1 +
 .../arm64/boot/dts/rockchip/rk3328-rock64.dts |  1 +
 sound/soc/codecs/rk3328_codec.c               | 31 ++++++++++---------
 4 files changed, 24 insertions(+), 16 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
