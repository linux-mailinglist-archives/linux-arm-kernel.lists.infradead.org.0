Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F473C24BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bu1Qn9tJBckjFHvG7AoVJnCJc9yE9xeQ71SPWdbKumM=; b=jwAqoSrKHYmxFj
	B0yEfyiHteZHpg+eWrMoiwBFOT2dJTHbpJj6q55BA9qBKh0JtK807B40vawwUNH2yu7E6hr1vlaTZ
	bx16I3beOTrEKdy+PmZpIlOUXHfOK66OVYwck0CQOHsgHCNOj3dbMS9hLzVFEqYwgw/CfHxFVnKZN
	gcDrqpnRr5EDvKYgp2DTZ8VeCUYB+TNJWpS29MAGLRdtsQphZIBR4pD82fZu43g2P3hKbQg0uEqRR
	1UYI3OHdoOhCbTYYpUro/nyE5kypjQIWCZx+cZHdbbJQgAxYNCn/+Wx+mMqb2kpL9/HM5ieNJwIgl
	gHSc0Wuk5J/x82BzMqsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEy4P-0000y5-8g; Mon, 30 Sep 2019 15:58:41 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEy4G-0000wU-9Y
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:58:33 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 46hn7s5yWPz2J;
 Mon, 30 Sep 2019 17:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1569858988; bh=SM910taOzVBeIz8sDiWoqtsSpZFNnnEfHCLXVlJL+OE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W5XI/oK4TO+8usSOpDLLwIUD8EOfNsMD0XE8ds9ESj4IQs+D9zTxF9VT7DVuPZHVl
 9/AEZ4r7OVtdbseLYth+b7RMiIuY4oF0124m2klhObq/VnGS+5a7s4aYffBd2yL0Vb
 kdRZbmtDylWd8qGQpAsWP3LHRweacre6kmH+RX5Pt6+N3noLu+Vxv5Ti+Z0vPoKllq
 SB3g/Dlvj0Hm1X5luO32G8DQcoAGN+pkecnMYSBCY/vEpq+Z/YL7COPcPcBE5+nLW0
 z5Ljz3xu91ZoG3GdWQHa1K5LIdHE9xNwaqmAImLvdCdKAu08yv516uMZdQJxmh2vzb
 sBzrIyWPZ1LmA==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at mail
Date: Mon, 30 Sep 2019 17:58:19 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] ASoC: atmel: Fix build error
Message-ID: <20190930155818.GA32237@qmqm.qmqm.pl>
References: <20190928081641.44232-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190928081641.44232-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_085832_502010_610E786D 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, tiwai@suse.com,
 broonie@kernel.org, codrin.ciubotariu@microchip.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 04:16:41PM +0800, YueHaibing wrote:
> when do randbuilding, I got this error:
> 
> sound/soc/atmel/atmel_ssc_dai.o: In function `atmel_ssc_set_audio':
> (.text+0x12f6): undefined reference to `atmel_pcm_pdc_platform_register'
> 
> This is because SND_ATMEL_SOC_SSC_DMA=y, SND_ATMEL_SOC_SSC=y,
> but SND_ATMEL_SOC_SSC_PDC=m. Fix it bt reintroducing the default Kconfig.

Defaults won't forbid the invalid configuration. Can you try following:

diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
index f118c229ed82..461f023c5635 100644
--- a/sound/soc/atmel/Kconfig
+++ b/sound/soc/atmel/Kconfig
@@ -12,10 +12,12 @@ if SND_ATMEL_SOC
 config SND_ATMEL_SOC_PDC
 	tristate
 	depends on HAS_DMA
+	select SND_ATMEL_SOC_SSC
 
 config SND_ATMEL_SOC_DMA
 	tristate
 	select SND_SOC_GENERIC_DMAENGINE_PCM
+	select SND_ATMEL_SOC_SSC
 
 config SND_ATMEL_SOC_SSC
 	tristate
@@ -24,7 +26,6 @@ config SND_ATMEL_SOC_SSC_PDC
 	tristate "SoC PCM DAI support for AT91 SSC controller using PDC"
 	depends on ATMEL_SSC
 	select SND_ATMEL_SOC_PDC
-	select SND_ATMEL_SOC_SSC
 	help
 	  Say Y or M if you want to add support for Atmel SSC interface
 	  in PDC mode configured using audio-graph-card in device-tree.
@@ -33,7 +34,6 @@ config SND_ATMEL_SOC_SSC_DMA
 	tristate "SoC PCM DAI support for AT91 SSC controller using DMA"
 	depends on ATMEL_SSC
 	select SND_ATMEL_SOC_DMA
-	select SND_ATMEL_SOC_SSC
 	help
 	  Say Y or M if you want to add support for Atmel SSC interface
 	  in DMA mode configured using audio-graph-card in device-tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
