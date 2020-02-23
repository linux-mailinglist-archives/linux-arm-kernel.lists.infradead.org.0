Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0983B1698FD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 18:29:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1wQQoqfsYTNfcB0RoYsNj+1oTicpcdk8vdW61XX/Nk4=; b=mIpNxCzFkbBrPU
	9G8mBWx77s7diuyc1ZCiD7EX+XAWIgM91LBvJSJI5tIEMGvU8PQ6E7b3NP9+HrIcxnX6i4pT6K93H
	acuY6u17DRwGI6RkAOeSZI75bB7htTRhEehcGmzfgic5e2uhs+1eehlujzB44939MTgh03BPZldTF
	/eeaYKjnyjNzelQNS6uxF7zMYqT9TrFoZRl0nEgywOexgAWorrxdjkH9PMYsjINlgkdn51t00bhK1
	m8RuV1HUu+017+57bvRFgMB8BW2v6HwIJ0KEqpNMzngA6xKoUXAAucnR2arZghd4PUoRulBbgQE92
	3Rchr17jrcZDqkkUG3YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5v4n-0006eF-FF; Sun, 23 Feb 2020 17:29:57 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5v4L-0006Xb-Ci
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 17:29:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582478965; bh=7OA3oWwjm5heb675PLFXd94nLmDlc4h89uOCL49bwbE=;
 h=From:To:Cc:Subject:Date:From;
 b=do7Ry5KQdS859DmYMjl2iQfQvJErf8fAL4oA6Avl3X2DoA/1JG0G877TeQdtF7MjH
 pmgsmUwo+c+Ue3MLERcZtsdRm6IVip1pQUknf0rc34bOVMJkp0mRzAoaj/iQXLtrIe
 A0H/a/En2wRe7NW0nhu9rahYeaHpBnKm46z2T2aQ=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 0/3] Add support for Pine64 PinePhone Linux Smartphone
Date: Sun, 23 Feb 2020 18:29:13 +0100
Message-Id: <20200223172916.843379-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_092929_776604_2C0E7056 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Samuel Holland <samuel@sholland.org>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>,
 Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 devicetree@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds an initial support for Pine64
PinePhone.

Please take a look.

thank you and regards,
  Ondrej Jirman

Ondrej Jirman (3):
  arm64: dts: sun50i-a64: Add i2c2 pins
  dt-bindings: arm: sunxi: Add PinePhone 1.0 and 1.1 bindings
  arm64: dts: allwinner: Add initial support for Pine64 PinePhone

 .../devicetree/bindings/arm/sunxi.yaml        |  10 +
 arch/arm64/boot/dts/allwinner/Makefile        |   2 +
 .../allwinner/sun50i-a64-pinephone-1.0.dts    |  11 +
 .../allwinner/sun50i-a64-pinephone-1.1.dts    |  11 +
 .../dts/allwinner/sun50i-a64-pinephone.dtsi   | 385 ++++++++++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   5 +
 6 files changed, 424 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
