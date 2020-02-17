Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E367D160A41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XDCXuN1hASe6pLlr1COjHV7qMeVim9oKnU+HIniFQvw=; b=GvhC0V5MWEaeWc
	BJFuW1n4qOX0kPxdqJLF4coahhE8uSP8QBnYIDrkLfWUc8SHleU73Z4qkEuoLzUSEFe1n5GP61jtp
	6su69FiqOR2YgEXBf+5DS7GYvwYHv5hW0TFgjjsp6o/P5VVY4jupbsJH9C+NQCHCyHVUfhz+LUe9H
	Dh2DPhXiI0BPi9LWGEy2s6GK+t8uRXXFnzzgplWH1GtCzPsUoUJdb+zqldPIjlUiMMHhwWCLuD7Cf
	SQajkRT3oZ/KaYaC761fPhhUWtzdnU5h40LWZplvIPSke5LI+DIzTOU03hEqwygW8LkzGJokBo7nq
	WafBdqgjI2U6dYqXkiMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Zat-0005UZ-MM; Mon, 17 Feb 2020 06:09:23 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Zal-0005Tx-6W
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:09:16 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 005A950C;
 Mon, 17 Feb 2020 01:09:11 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:09:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=lzWvnnSAvszDDjSboHP99evSnh
 TQIWH2Dw0zyXVLRx8=; b=kQNDEUGjcAUwdSTl2keQT54cQ1ODJzIGlHSxA/34Cp
 sKNpP+FB/E54+FnwfGuLHKupUyRRcXc7QcSww6/sNbnhBnodgrbuWXbWOaqtoxcx
 IHQCkqQ0mOK25xpc912arh+bcrNMCYsr2Uzp78kUv0OfasrGtWJRDrQvAmMEJq/O
 zAme+b3HAUgoTs4fP3Azlk6kN8GJjxSJ0NzKR5FGBHITdNY7xnHJEvybwY8lppd7
 9JHsGbdAYHCx9GxFCdEL4oLz6plI/fkqQZazSNZVHBWLxIKEls4TO5DwuhCd47F8
 elsEtld9/L936yvL+GqFj2RMSrVGz6kE1z2j0SmxzzUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=lzWvnnSAvszDDjSbo
 HP99evSnhTQIWH2Dw0zyXVLRx8=; b=b+basvKj3oT1MeXlur2bpnXvouWW/abcf
 SfUGqCZQTgsxHZnGOxE7k9V01rxyp0Dx/1ZG+rBuZ87aHiWg7lsFPwY6qA36aW7C
 jaWsXPOqtLE2Ja75WEcZqDyNnea0rIko8TTt3+s2aiIH0L1lwIs1hRAw6gEFpcd/
 aE1Tez5qYX4/0p3e5skv46zo3/yY9hO9suG7cESNNfexTnygsirQN2IO5e+1kqDk
 h9XNKIA9ICfd0fR8M7xamNh6vt2it3cSdRxw2UNt0zHQBXV5Z9fv5cb7JH550kUb
 HiEJBojfemjbI5hAckeyC6vztn/tjGuFmrObLxP1/h8WrFB7ZPrlg==
X-ME-Sender: <xms:BC5KXn5mVWAhFXWLE0c7lv3dRb13JkS2bnHb7Y6XwmRcFz0qsMvINQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdeludcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghlucfj
 ohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtd
 drudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
 mhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:BC5KXkdfzAuz8-iTRIAC09RnaB260csLavkkCDQIdAEekDX1umrgBw>
 <xmx:BC5KXrazGnIiNzrEgXp4rpeIoBSJupk5SGk7Z3QmU5z4YsvHnDRYcA>
 <xmx:BC5KXmHf6K2lzpjyf47M3qMbAqZad8UDrq84XFyQwbCM0qhZs0z8Ww>
 <xmx:By5KXkyTWgMMHDbZ3vAHUR-XdyhYduHZEtZQ30qCKR_3p7ot3NbbLQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id B48E8328005A;
 Mon, 17 Feb 2020 01:09:07 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/sun4i: dsi: Avoid hotplug race with DRM driver bind
Date: Mon, 17 Feb 2020 00:09:06 -0600
Message-Id: <20200217060906.15152-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_220915_481651_6994B149 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to make sure that the DRM driver is fully registered before
allowing the panel to be attached. Otherwise, we may trigger a hotplug
event before sun4i_framebuffer_init() sets up drm->mode_config.funcs,
causing a NULL pointer dereference.

Fixes: 1a2703bd7356 ("drm/sun4i: dsi: Allow binding the host without a panel")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---

This fixes a bug in my previous patch series, that I didn't catch until
it was already merged.

---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 9aa78c73873c..9cc1bb69fcda 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -970,7 +970,7 @@ static int sun6i_dsi_attach(struct mipi_dsi_host *host,
 
 	if (IS_ERR(panel))
 		return PTR_ERR(panel);
-	if (!dsi->drm)
+	if (!dsi->drm || !dsi->drm->registered)
 		return -EPROBE_DEFER;
 
 	dsi->panel = panel;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
