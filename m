Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6D797A4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:07:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2sUcLjJiT72YWASXV1adS7coXwu6LKUzjLiBRxbYxew=; b=lLazkRV81XDLM2
	XefMN2VcZF2pw6kpgq6/u8pr7PzdVeoPizOLmAUO24YDYua+gN8k7EJF5+eOb6tHJrVDOnzAg6ef+
	Dk6osbwlJli5GrIlBfhizTsei+npXK95/zGTX7F02XaHV+yYgdySGOB+XjNilOjXl6068YCR47TQo
	SUWpfExjhOTgOlqjojpZAPMVHFFGnSWGFch8zVvTiUuHp1em1U0KjaZd3iM61PVnEfezPDn4VpycK
	iGFbrInfIrq8Z9e0r8Fg2TMvhqgtgIdDTbnTv3oiMaRxySh0B+Sr1uxRLWXdUHbqWJypcILjKmPgP
	GHKeXaOOcubfBFjOM/Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0QKa-0000Rt-Oy; Wed, 21 Aug 2019 13:07:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0QKK-0000Qp-4D
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 13:07:02 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB8BA22DD3;
 Wed, 21 Aug 2019 13:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566392819;
 bh=t4sdagesTl8eI/FplVlttPAz6pa/0/Zv52KvZADKVvc=;
 h=From:To:Cc:Subject:Date:From;
 b=TfrPw7cU6UddY+1gMqkIU1J+dedALQUjwxGne7BGpISJ1DiuQTlB9ACfEsbMhDcWs
 PunVHG7n6bItBbEHz2lhJga/FeQTKyyI3X0uDyVQXZXfxYug0QVM6DttgevLa98PGr
 Rkb//EZSOWoOq6CJPCaCc+Lg+GZReyh+8brGc8z4=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v2 0/4] ASoC: sun4i-i2s: Number of fixes and TDM Support
Date: Wed, 21 Aug 2019 15:06:52 +0200
Message-Id: <cover.6022d5fe61fb8a11565a71bee24d5280b0259c63.1566392800.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_060700_192199_EE4A3811 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: codekipper@gmail.com, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

Hi,

This series aims at fixing a number of issues in the current i2s driver,
mostly related to the i2s master support and the A83t support. It also uses
that occasion to cleanup a few things and simplify the driver. Finally, it
builds on those fixes and cleanups to introduce TDM and DSP formats support.

Let me know what you think,
Maxime

Changes from v1:
  - Removed patches applied
  - Refactor a bit the call to sun4i_i2s_set_clk_rate
  - Fix build issue
  - Add an extra patch to cleanup sun4i_i2s_hw_params

Maxime Ripard (4):
  ASoC: sun4i-i2s: Use the physical / slot width for the clocks
  ASoC: sun4i-i2s: Use the actual format width instead of an hardcoded one
  ASoC: sun4i-i2s: Replace call to params_width by local variable
  ASoC: sun4i-i2s: Add support for DSP formats

 sound/soc/sunxi/sun4i-i2s.c | 58 ++++++++++++++++++++++++++++----------
 1 file changed, 43 insertions(+), 15 deletions(-)

base-commit: 137befe19f310400a8b20fd8a4ce8c4141aafde0
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
