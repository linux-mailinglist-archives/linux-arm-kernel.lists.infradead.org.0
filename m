Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448711B7A62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:45:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzPOFHKX/px7OhLIjNcjD1BU9Euqdg5lGapCiuQwoBM=; b=nBuyqVvmIMjwzy
	Z42trJL66vh0EmkgvgLYw4O7FX97MHJrmUSRQiCzh2b+QUT7ti68xHKpl7HUGccXiPh87tQTpIHgR
	BAKzOfhKXoczMUUkBvNROveBVt4I9uCiDDrxyNaTpVeRFu6mYO+o0GHJ7pYZyEidNaqFSkl7umwqg
	BGf81SK5+RvJifR/O7jKa3a+NJNis0x+BGct7zNE0KJtl8T2kHKSNiOqTeY3hgkSS3VcGDucrhuxA
	Q0wMeWyBDHN3l3ybL0JFPO0HPHvlPwAtCtI3JbErCq5+NWPz4vmAPDijHrfseSoXeMWnxdsoEt6Ew
	IfUISmktjVYCdlUe5FVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0VZ-0008CJ-L9; Fri, 24 Apr 2020 15:44:53 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Ms-0007kF-5R; Fri, 24 Apr 2020 15:35:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 851B6FE1;
 Fri, 24 Apr 2020 11:35:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=sQLhLPINZs04X
 F9JJfpvEB9DM84Run2R01mEi+9gmm0=; b=Canz5GlqEd2kFfwLb+7lU1k+8YRAr
 IsfYQ/o2XLFzhdSgvPgLaRzXD5Ip1ajSXNZKhTB4rKGiYgqrNPnK+0llYQi3/kDh
 pnGTQ8KakyoybY8zFkkaZS0IVYpZxcbl4cj53Oo42eZf2wIWXkJ4YMm/+CPpqXxT
 jHXnIpoE5ICr9i6vTQBF5N0PhWiJwTu40kfH2GNA85/dZ2p6EetWczKbo4HTEoBd
 xUlTYVyIaZiVjT0RVqSPBClXWS9GZcKoQ3/zSjFKIs5m56jGqdai7vxTgMKG5ujh
 J94SVCCl1CLEF1SMJmr9Q3nzsmgg5d3tH3gMnI5DSB2U/0fRQXrw/QbqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=sQLhLPINZs04XF9JJfpvEB9DM84Run2R01mEi+9gmm0=; b=dW0kAoVo
 +yLAtFWLZSEf9Q2mUirhKXoJ6zKMc1fAzMiL8HxlLBGVfnTm0V3i9aPRVaP6t29b
 xbD/dB5fD/vHsEp1x+DWZ9P9h/hX06hhcqNchlov6nmsjMpp32W754hEHsy/AprF
 xDFmqGgACApQHBtEkKFZ2Zs2GmOgS+3iQlOqLq3j+DMOzTHcARSNfMv45hYzpK11
 pLuRARed+jO5Wh6sdCafxUNPXlm4E7+2dWpiya7fwDVTCDbs7lUQc2E3S0kexaww
 ocz5bd1UwJ/ZlLfgyzDAnlUvFkJaDlyeO2dLyUo5w27LingQW4Ub9o8Ic/0K6+2S
 sMz8QWerp9lFtg==
X-ME-Sender: <xms:WAejXqK2vVrRyu7CAUE-VvHEctaaMqyxMXsiy2ZNfPhUPD4ulfr3ow>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduleenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:WAejXmZEWY9zCJfOxKsPeI8Q0bivnRq0yQSTDwYVWBFpy-7J7SII5Q>
 <xmx:WAejXluwKIBs2O0H4OjTXNWE6rVIGJBHjZfaVN1BrKOqB-PKvhB7Wg>
 <xmx:WAejXjvip6wvCV4nwV9-zpNwRBErGyrrJhA3erIc7yLY7ktiLQjk6w>
 <xmx:WAejXtVOliirI5Ee6Vo0-MQbDTODg-TC3_KxNysd3m0kLxivb7cf_ajleWM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BB5053065DA6;
 Fri, 24 Apr 2020 11:35:51 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 21/91] ARM: dts: bcm2711: Add firmware clocks node
Date: Fri, 24 Apr 2020 17:34:02 +0200
Message-Id: <41fbb75713ebfe81240156c959bb8f1352a4ca86.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083554_281577_BB94E738 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have a clock driver for the clocks exposed by the firmware,
let's add the device tree nodes for it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index e26ea9006378..3205d2dfa898 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -59,6 +59,11 @@
 };
 
 &firmware {
+	firmware_clocks: clocks {
+		compatible = "raspberrypi,firmware-clocks";
+		#clock-cells = <1>;
+	};
+
 	expgpio: gpio {
 		compatible = "raspberrypi,firmware-gpio";
 		gpio-controller;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
