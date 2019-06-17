Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBB54802D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D4XYaGxZ8WIMHgadHCRZLtZG2kXHrISCs5DdU4n/k7U=; b=Aj4ImlDtgzIsI8
	qBjmh/bh7weTIWqUsgP1BhQ1B4LWLw27a+SJtNPRaLk4PWakB7vB/mT1PKjJApLjfiT/CHpidp/kg
	pp6BipNiV+66+VkKPz6Pg06WwYcfERJH96y8531dqmg/M/htbcKbJiSXAE0oo+OMLeHoz9g63Xg39
	QNiqlRqlD0cm1nJB9LYTSpqtDAVLBVaPTnetksfVcvtFD82M3WHSk+h7VXF9cpAW6ryvVXVp/c9rB
	v0aNp+ZPx063L8OtkLeQ4HLwQkhSbWdUpSXzO4AoB6rJ/MZuqgsF3EptpIj7cihugRurnq3e6uoRO
	QfVFKR6dfWI78Q0Qd13w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpRZ-00085h-74; Mon, 17 Jun 2019 11:04:57 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpRC-0007tV-4M; Mon, 17 Jun 2019 11:04:35 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mj8eB-1iFAr734RJ-00fBNP; Mon, 17 Jun 2019 13:04:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] ASoC: rockchip: pdm: select CONFIG_RATIONAL
Date: Mon, 17 Jun 2019 13:03:51 +0200
Message-Id: <20190617110415.2084205-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:RQUeaFNGGn1EAUOJ+4Zq3U9Xg93dFdoGITN3ZKm3Mt4YbKTsksr
 /Nb5nKnunoTBlLqFGpZWA9oXu9HPZ4ooTs1PKfIUNNUH5c8OdpM9y5ix03RPi90uP8mhFUV
 9sef2XlRxJsu4Em1+4Jl7xTmRcNS727kWov9tH/9ugCaLfPF+pyKE/2opwfYI1/uTAULabq
 C5OfVG/T7vycW0msxCGig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TgeddKwT1bQ=:+0nAmfdfN0DrHy0szFSDxd
 E97/qsS1VXgSEQ9Kd9UM8LUmS2rDvT8u8ENSePmCM8L5TPoigst9b5PpOt5gQXY4w/6/k2vdi
 GPlMTAQjWQxxHAqcUyyrFwNr0A7jljiNSZ4XPoTUTSHp4P8mYysAR4i4kVQrTuWSqtpcshFAx
 frleG1h6TqhiR3kn/x6UQhrQlpJwKeiXqQSjicC5pldL/n3LULCpGxPuwoGnz9UHMLHA8u8vY
 /K1ftN31dtrN73VQ+S7TsxRcjiD5c1JRn93SdwhuFs0cAF0BS2xmBdzcX+M5Y3QH5t4hau+ug
 RnKA/CzG9cS1KOVvA/sfahClyagQHFGXk9ZKHark+8g/7E0EJ5lQSsbRlUL1np++MmiwP6Z90
 eTezWa9VSrMf1PzATR8+/V7X/OmPlwDjJxbSh4hwYKXbhIKWgAsF2Dx0Himn6AUOdBVaAPTkC
 agTTz1y0ppeyET6Vd5JHfjc9a8SnYJph9o0Y+mLvjyxp6VMvemow0EMxGeIR4C1wdpwI4WC4w
 7ADR9bijyRaq4WT/0OLwqdeFQ7M2uVHMqd3e4J9B9q1E5dH3gHnPV09SAmC++ybSYOjA9MIIL
 tdG8aPKFXJDyEnH9SiUWWzlu1rixOSpRQo8e2fseE6D8GmQVz6CnJJCmJRHnDwE16yfU4dJX7
 JKGaLRDElTyJ/ehi37iXnQAULGay4vAx+KpY2/tvxZH+wixT05wCB93gM6RfdxNk2/+c3sgdC
 ikEUF7R9U1+VpjOcGVmdFJ579sUlQGHYws5bFQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_040434_476101_673A55A4 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Arnd Bergmann <arnd@arndb.de>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Sugar Zhang <sugar.zhang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Without this, we get a link error:

sound/soc/rockchip/rockchip_pdm.o: In function `rockchip_pdm_hw_params':
rockchip_pdm.c:(.text+0x754): undefined reference to `rational_best_approximation'

Fixes: 624e8e00acaf ("ASoC: rockchip: pdm: fixup pdm fractional div")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/rockchip/Kconfig b/sound/soc/rockchip/Kconfig
index 28a80c1cb41d..b43657e6e655 100644
--- a/sound/soc/rockchip/Kconfig
+++ b/sound/soc/rockchip/Kconfig
@@ -20,6 +20,7 @@ config SND_SOC_ROCKCHIP_PDM
 	tristate "Rockchip PDM Controller Driver"
 	depends on CLKDEV_LOOKUP && SND_SOC_ROCKCHIP
 	select SND_SOC_GENERIC_DMAENGINE_PCM
+	select RATIONAL
 	help
 	  Say Y or M if you want to add support for PDM driver for
 	  Rockchip PDM Controller. The Controller supports up to maximum of
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
