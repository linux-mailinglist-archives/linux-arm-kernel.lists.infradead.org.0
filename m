Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A5315B785
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0hDrcEFbqBmQ9Y3txPnS1YZGNnPyZlanYQwOyVafMs=; b=IMjHr2yi7o98g6
	/gn/SQ+HgHX+sfGGXTScbcgvezrr7x/l5m1/eCvunc+PdATmDj/c/G53+R6P0kArVQ7holJrKCImM
	vIdFU+oXNhiL21/NgtdQWkrdwUFNWtBzWY62y6lxUBJt8k2B3AUcVuiu5qPIZumPxBFfWREu3oVS6
	ukWmDg1BTLbcYqJXQAVNrsjhLYne3J5OUZ+7vU2W1i8xqTrWEvnH9FupzidsNAGW0kpBqhz91AYGF
	JOACucdFL5NVb8kXaADon/cEuraU/CDE/ZlAShF1fC4vq3d5W3CPtLpTuluCpGC6NPIolGFDvyS8f
	VOqpuqvSTdowITtSCk5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24p6-0006ZH-VH; Thu, 13 Feb 2020 03:05:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24ox-0006Y0-Ki; Thu, 13 Feb 2020 03:05:44 +0000
X-UUID: a8d4a218f8f84154a9e14020f5eb9ac7-20200212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=LJDuwYzpSPlqh0Fy0uu3RaMajNEpsKJmu5DTiLeNbr0=; 
 b=WA5Lm5U1jNPhmeVkjrKyWQaVYv86EZF0PhqiBLm5ohDsNEuejIMcH0yeDnmQmfLDpRT5zttmgpWR07MRU9d63FnxDZu23yYNZcidKGPG+KtjeSj13/9uni54/mz9nxc5E/PViHBAtIGQ9QT6b2vlQbTEs9S/Hi9vIaI35EEjky0=;
X-UUID: a8d4a218f8f84154a9e14020f5eb9ac7-20200212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1295600476; Wed, 12 Feb 2020 19:05:36 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 18:55:34 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 10:56:00 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 13 Feb 2020 10:54:23 +0800
Message-ID: <1581562527.19053.18.camel@mtkswgap22>
Subject: Re: [PATCH v7 5/7] soc: mediatek: add MT6765 scpsys and subdomain
 support
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Wendell Lin
 =?UTF-8?Q?=28=E6=9E=97=E7=90=A6=E8=80=80=29?= <Wendell.Lin@mediatek.com>,
 Weiyi Lu <Weiyi.Lu@mediatek.com>, Mars Cheng <mars.cheng@mediatek.com>, "Sean
 Wang" <Sean.Wang@mediatek.com>, Owen Chen <owen.chen@mediatek.com>, ";Ryder
 Lee" <Ryder.Lee@mediatek.com>, Morven-CF Yeh <Morven-CF.Yeh@mediatek.com>,
 Kevin-CW Chen <Kevin-CW.Chen@mediatek.com>, Albert-ZL Huang
 <Albert-ZL.Huang@mediatek.com>
Date: Thu, 13 Feb 2020 10:55:27 +0800
In-Reply-To: <c704bdab-8489-0b54-59de-401bc4ab24e6@gmail.com>
References: <1581067250-12744-1-git-send-email-macpaul.lin@mediatek.com>
 <1581067250-12744-6-git-send-email-macpaul.lin@mediatek.com>
 <c704bdab-8489-0b54-59de-401bc4ab24e6@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_190543_690701_A7CA3F24 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mediatek WSD
 Upstream <wsd_upstream@mediatek.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Loda Chou <loda.chou@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Mars Cheng <mars.cheng@mediatek.com>, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Ryder Lee <Ryder.Lee@mediatek.com>,
 Weiyi Lu <weiyi.lu@mediatek.com>, Evan Green <evgreen@chromium.org>,
 Yong Wu <yong.wu@mediatek.com>, Chunfeng
 Yun <chunfeng.yun@mediatek.com>, mtk01761 <wendell.lin@mediatek.com>,
 Owen Chen <owen.chen@mediatek.com>, devicetree@vger.kernel.org,
 Joerg Roedel <jroedel@suse.de>, Marc Zyngier <marc.zyngier@arm.com>, Sean
 Wang <Sean.Wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 CC Hwang <cc.hwang@mediatek.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2020-02-09 at 22:26 +0100, Matthias Brugger wrote:
>
> On 07/02/2020 10:20, Macpaul Lin wrote:
> > From: Mars Cheng <mars.cheng@mediatek.com>
> > 
> > This adds scpsys support for MT6765
> > Add subdomain support for MT6765:
> > isp, mm, connsys, mfg, and cam.
> > 
> > Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> > Signed-off-by: Owen Chen <owen.chen@mediatek.com>
> > Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-scpsys.c | 130 ++++++++++++++++++++++++++++++
> >  1 file changed, 130 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > index f669d3754627..9940c6d13222 100644
> > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > @@ -15,6 +15,7 @@
> >  
> >  #include <dt-bindings/power/mt2701-power.h>
> >  #include <dt-bindings/power/mt2712-power.h>
> > +#include <dt-bindings/power/mt6765-power.h>
> >  #include <dt-bindings/power/mt6797-power.h>
> >  #include <dt-bindings/power/mt7622-power.h>
> >  #include <dt-bindings/power/mt7623a-power.h>
> > @@ -749,6 +750,120 @@ static const struct scp_subdomain scp_subdomain_mt2712[] = {
> >  	{MT2712_POWER_DOMAIN_MFG_SC2, MT2712_POWER_DOMAIN_MFG_SC3},
> >  };
> >  
> > +/*
> > + * MT6765 power domain support
> > + */
> > +#define SPM_PWR_STATUS_MT6765			0x0180
> > +#define SPM_PWR_STATUS_2ND_MT6765		0x0184
> > +
> 
> The offsets are the same as for MT6797. Could we rename the define to something
> generic and move it up and put it just under SPM_PWR_STATUS_2ND? Probably as a
> separate patch.
> 
> Regards,
> Matthias
> 
Loop more related owners in this mail loop.

After check it with our clock driver owners, there are different
generations of clock IPs. Because different smart phone chips require
different cost-function oriented design, even they use the same
generation of clock IPs, might not have the same offsets. Take MT6765
and MT6797 for example, the listed offsets are just coincidence.

Our clock driver owners will work on this to summarize the common offset
parts for each generations, but at this moment, we suggest just separate
the files for mt6797 and mt6765. Commonly used header should be come
with the next chip which clock IP just the same generation of mt6797 or
mt6765.

Thanks
Macpaul Lin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
