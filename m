Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E23EBBAC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 02:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwnU2KvsPwGBqul0wdfWQf5DWAYsFRSZqkigbGaHOwg=; b=lg6m1/Z29gmzqV
	KBrXXg6WU5GkNrvHlsOzrzd7i8X8ZOOsVULzCY4Zo4xRUfls5t+er53wzpFxRlQfOmBHnIxxPtnFt
	lT66L+c5932VYFPF48V4ajr+Q0hvA7oWYPG52+u2etKQUiq8xiog7kLTduFaSgbko8RisCgA9OxX4
	BvvdKRekSxym9nbdjGgGBqphuw32DIE0eBhf/RRwWmaRNP/pcb2QfnwH1tWh6yhDRcuKJJCL/zmds
	bir8REF8Qw83GEfeAdUHPszZxWx7WtrDR8wjWJbbEJWzZoz3eygDDI3XPXn1/ZZa4POIzP/MoCgyW
	KbmcnqJnnzEwDAiYrGQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQLdK-0002Uj-51; Fri, 01 Nov 2019 01:21:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQLd3-0002Tb-Vf; Fri, 01 Nov 2019 01:21:31 +0000
X-UUID: 092f96ee36f7453ead418216a13965f7-20191031
X-UUID: 092f96ee36f7453ead418216a13965f7-20191031
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2051904151; Thu, 31 Oct 2019 17:20:52 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 31 Oct 2019 18:21:18 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32N2.mediatek.inc
 (172.27.4.72) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 1 Nov 2019 09:21:15 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 1 Nov 2019 09:21:15 +0800
Message-ID: <1572571279.18464.39.camel@mhfsdcap03>
Subject: Re: [PATCH v2 04/11] dt-bindings: phy-mtk-tphy: add a new reference
 clock
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh@kernel.org>
Date: Fri, 1 Nov 2019 09:21:19 +0800
In-Reply-To: <32bc288e-dbbb-8930-4750-826e9e17d58c@ti.com>
References: <1567149298-29366-1-git-send-email-chunfeng.yun@mediatek.com>
 <1567149298-29366-4-git-send-email-chunfeng.yun@mediatek.com>
 <20190917202805.GA13405@bogus>
 <32bc288e-dbbb-8930-4750-826e9e17d58c@ti.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B5B93674122E8E6B22D53ED9A4AF45EE5591A27E1563D74407986ECF551E27B62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_182130_027011_C9CDFAC5 
X-CRM114-Status: GOOD (  16.29  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Rob,

On Wed, 2019-10-23 at 11:10 +0530, Kishon Vijay Abraham I wrote:
> Hi Rob,
> 
> On 18/09/19 1:58 AM, Rob Herring wrote:
> > On Fri, 30 Aug 2019 15:14:51 +0800, Chunfeng Yun wrote:
> >> Usually the digital and analog phys use the same reference clock,
> >> but on some platforms, they are separated, so add another optional
> >> clock to support it.
> >> In order to keep the clock names consistent with PHY IP's, use
> >> the da_ref for analog phy and ref clock for digital phy.
> >>
> >> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> >> ---
> >> v2: fix typo of analog and needed
> >> ---
> >>  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 7 +++++--
> >>  1 file changed, 5 insertions(+), 2 deletions(-)
> >>
> > 
> > Acked-by: Rob Herring <robh@kernel.org>
> 
> I see you've acked a couple of patches in the series. However the other
> dt-binding patch neither has an Ack or NAK. Is there a specific reason or can I
> merge the series?

Ping?

> 
> Thanks
> Kishon




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
