Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FD4E2E6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYbNk4t6GuPpQlc3N+pd5ImajR7UO8c9JNStBxdIJrM=; b=SuxKiPvZ7i+mI5
	sabqaNqwzgrtN3WMbv09Limt6j4ADwu6Y/3YWudxoY4jqSNP8JQBbSTQ2SMkx1culylEs5Fx60MAy
	VBFzEp1tyCRqe93gqwI6ayj8i3oMTsU9eXOe3S/JtM/8KoftPMxMwaXbMl9y3yOHFErN7y4aKE5JL
	bZVbcOqU5y+bbv1KrvHrnLg96BkuV2S1LAyTTDuLLobTla8qwoQ6b8cZ5VQ1SzDFeaKRxPxgSlqYY
	uFmKnaeFRTkHyIcDHGAld+GVQtJyBCVITbxIRM5qttbnPXw1yE4yAeC+MoURle4t4KOWFdv5uP8o9
	bRkwvDBpZJghXzg6JdjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNa5o-0003uz-C2; Thu, 24 Oct 2019 10:11:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNa5Q-0003jb-Lf; Thu, 24 Oct 2019 10:11:22 +0000
X-UUID: 75b15357a60c4b3184ddcd002971d5a2-20191024
X-UUID: 75b15357a60c4b3184ddcd002971d5a2-20191024
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <luhua.xu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 228353546; Thu, 24 Oct 2019 02:11:09 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 24 Oct 2019 03:11:10 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 24 Oct 2019 18:11:09 +0800
Received: from [10.15.20.246] (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 24 Oct 2019 18:11:08 +0800
Message-ID: <1571911880.4955.11.camel@mbjsdccf07>
Subject: Re: [PATCH 1/1] spi: mediatek: add power control when set_cs
From: luhua xu <luhua.xu@mediatek.com>
To: Mark Brown <broonie@kernel.org>
Date: Thu, 24 Oct 2019 18:11:20 +0800
In-Reply-To: <1571898319.4311.3.camel@mbjsdccf07>
References: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
 <1571834322-1121-2-git-send-email-luhua.xu@mediatek.com>
 <20191023151121.GC5723@sirena.co.uk> <1571898319.4311.3.camel@mbjsdccf07>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_031120_711248_E54FE734 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, luhua.xu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-10-24 at 14:25 +0800, luhua xu wrote:
> On Wed, 2019-10-23 at 16:11 +0100, Mark Brown wrote:
> > On Wed, Oct 23, 2019 at 08:38:42AM -0400, Luhua Xu wrote:
> > > From: "luhua.xu" <luhua.xu@mediatek.com>
> > 
> > > Use runtime PM to power spi when set_cs
> > > As set_cs may be called from interrupt context,
> > > set runtime PM IRQ safe for spi.
> > 
> > Why might we be trying to set the chip select state while the device is
> > runtime idle?  It seems like whatever is trying to set the chip select
> > should be dealing with this, not the chip select operation itself since
> > that's unlikely to be happening in isolation.
> 
> Hi Mark,
> Spi framework provideds  spi_setup() to modify spi settings for spi
> device (maybe spi is runtime idle now), and this will call
> spi_controller->set_cs() accessing registers.
> Other spi_controller callbacks that need to access hardware registers,
> are triggered by spi transfer. Spi framework will get and put runtime
> power in __spi_pump_message().

hi Mark,
      If the spi slaver  who wants to set cs  need to  power spi
itself , this means we need to provide spi power on/off APIs  while spi
controller is runtime PM device.
      And spi slaver  needs to power spi itself when it wants to set cs,
and don't need to do so when do spi data transfer.

      I see  several case of spi driver with power control:
      (1)No clk control  in set_cs,  such as spi-cadence.c
      (2)Enable spi clk  in probe before the first time hitting reg,
and never power down. Such as  spi-sifive.c  spi-armada-3700.c
      (3)Enable spi clk  in  controller->set_cs  callback,  such as
spi-geni-qcom.c.    
      My patch works the same as (3).For mtk platform, without this
patch, if user do spi_setup(), cs setting cannot take effect, and reg
access violation occurs.
                

        


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
