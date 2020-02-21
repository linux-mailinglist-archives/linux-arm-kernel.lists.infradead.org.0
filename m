Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF85167AD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 11:33:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNudifTx/bFtfSVI1mPMs77wVZPTsUFxDO3TUGKcM/I=; b=Cc3aZzio5SGhv1
	xLNsTeQeD2vY/uOZSWPwMsyymsCXO2y69wCk24CwxivponvH7hUWkvULW9EmUC1w5orvxofdA+Y63
	GpUTuR/OLHp7RCn7otWS+iZDR7/IAQktIjZs1ZrLoaJn/nsdA6XpIdOpuv+SeJqPvZl9ru4FYEjwv
	NELbsvZaEwV839GGUuWft8i3tT9qIq1gDT0zpJTPbb5eZHPu+MTwH5RxfwY+TomAlatQKCbtZpN/N
	W0gmWyvnkkiP+YlHk1Za0shd1oVNqUJzF4bVeknzGGSjgJ3HNaJLps1uM8JtBnU9cZgtfdh6vfj8K
	psKsKj+4daVQe/TvLAIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j55cs-0003cV-Ly; Fri, 21 Feb 2020 10:33:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55cj-0003c4-EB; Fri, 21 Feb 2020 10:33:34 +0000
X-UUID: b25c21c3736e4ecf9c580e5eb5460010-20200221
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=9GF943aZdupXgIlWbr1tM9dp52aP/OtDRXFu16nBKsU=; 
 b=u3AJW8nLcjG4YYRvG+aYOWurkYxWQrMb9Q6bFv2Edoq+9llIMsJn3ZjZP1011vNZw8o8HfizgaiksK29NQHvWSrBXZmQSCiaGDUxvmDf4rt8TseCiGDJ/AwhFqr4hx7pBArZk9p0VLI8Mue2K47ZgRYPcIjcWiACtcBsR/g1h+Q=;
X-UUID: b25c21c3736e4ecf9c580e5eb5460010-20200221
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1675544727; Fri, 21 Feb 2020 02:33:31 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 02:23:58 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 18:22:46 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 21 Feb 2020 18:22:44 +0800
Message-ID: <1582280608.19053.27.camel@mtkswgap22>
Subject: Re: [PATCH v7 0/7] Add basic SoC support for mt6765
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Stephen Boyd <sboyd@kernel.org>
Date: Fri, 21 Feb 2020 18:23:28 +0800
In-Reply-To: <158213769281.184098.14491216159423631295@swboyd.mtv.corp.google.com>
References: <1581067250-12744-1-git-send-email-macpaul.lin@mediatek.com>
 <158155109134.184098.10100489231587620578@swboyd.mtv.corp.google.com>
 <bf5e1a64-1aaa-e1e0-00bf-c0e750dd27ed@gmail.com>
 <1581999138.19053.21.camel@mtkswgap22>
 <2c6728a5-7789-4ca2-a173-67df57fe5f1e@gmail.com>
 <158213769281.184098.14491216159423631295@swboyd.mtv.corp.google.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: FDD232F52A5E189BADF5D5BF6B5B255DDCAC9D3340344A6748231A437ADA98A62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_023333_485220_CEBABCB3 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Loda Chou <loda.chou@mediatek.com>, Fabien
 Parent <fparent@baylibre.com>, Mars Cheng <mars.cheng@mediatek.com>, Will
 Deacon <will@kernel.org>, linux-clk@vger.kernel.org,
 Ryder Lee <Ryder.Lee@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Evan Green <evgreen@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, mtk01761 <wendell.lin@mediatek.com>,
 Owen Chen <owen.chen@mediatek.com>, devicetree@vger.kernel.org,
 Joerg Roedel <jroedel@suse.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Sean Wang <Sean.Wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yong Wu <yong.wu@mediatek.com>, CC Hwang <cc.hwang@mediatek.com>,
 linux-kernel@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Matthias Brugger and Stephen Boyd wrote:
> Quoting Matthias Brugger (2020-02-18 08:45:42)
> > 
> > On 18/02/2020 05:12, Macpaul Lin wrote:
> > > On Sat, 2020-02-15 at 02:47 +0100, Matthias Brugger wrote:
> > > 
> > > Hi Stephen,
> > > 
> > >> Hi Stephen,
> > >>
> > >> On 13/02/2020 00:44, Stephen Boyd wrote:
> > >>> Quoting Macpaul Lin (2020-02-07 01:20:43)
> > >>>> This patch adds basic SoC support for Mediatek's new 8-core SoC,
> > >>>> MT6765, which is mainly for smartphone application.
> > >>>
> > >>> Clock patches look OK to me. Can you resend them without the defconfig
> > >>> and dts patches and address Matthias' question?
> > >>>
> > >>
> > >> I'm not sure if I understand you. Do you prefer to have just the clock parts
> > >> send as an independent version so that you can easier apply the patches to your
> > >> tree?
> > >>
> > >> Patch 2, 5, 6 and 7 should go through my tree.
> > >> So do you want a series with patches 1, 3 and 4?
> > >>
> > >> Regards,
> > >> Matthias
> > > 
> > > Yup, I've got a little bit confused, too.
> > > Should I separate and resend these patches into 2 patch sets?
> > > The 1st patch set includes #1, #3, and #4?
> > > And the other includes #2, #5, #6, and #7?
> > > 
> > 
> > Yes please do so. I think that's what Stephen referred to.
> > 
> 
> If those are the ones that aren't dts or defconfig patches sounds good
> to me.

Here comes the spilt patch sets.
1. [New] Add basic clock support for mt6765.
  https://patchwork.kernel.org/cover/11395997/
2. [PATCH v8] Add basic SoC support for mt6765
  https://patchwork.kernel.org/patch/11396019/
  But it's a little bit strange I cannot find patch v8's cover-letter
  in patchwork. Only records which patches has been taken from v7.
  If resend cover-letter is required please let me know.

Regards,
Macpaul Lin
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
