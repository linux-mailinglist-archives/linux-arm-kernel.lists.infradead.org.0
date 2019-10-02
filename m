Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2126C4A94
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 11:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mlI6JRiLLUIrDnfocxdrl2A7wVT0TrAUub/fPFveCak=; b=eLAgSrwq8RREjf
	TJnNpkM5TJHXQxDXAYp0biR/LoqvT9bgWrxJhBiV0fbTVr7CJd1SJhWbgVQY0RvrxxMauVfWybpiA
	OH+lAyvtuB3bxPHTAersq9OaLp6K56TJHzDA4mmRbGiNpYIvRJH9Fs2/vjAWIhFyRQccgOaoM4PXo
	qurK69P/5JCvtKOM6sAfSsO8DFYeC6kJ8+lblkNE0IW9znpk2DH/hCTdnKaOUhY1Md6V7vPoq2UET
	g5+Fw4i6FYsD4e+maqWGNvgAEwZkf9jxBWjsUWwdT170H4wlPDd2wSo11KLofnsLV9wKOoUh3JH4p
	RFXhoQIywR/jeNSeowyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFasB-0001vk-HU; Wed, 02 Oct 2019 09:24:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaos-0000wY-8k; Wed, 02 Oct 2019 09:21:24 +0000
X-UUID: 8b71541347794eb49a7430d11a06fe19-20191002
X-UUID: 8b71541347794eb49a7430d11a06fe19-20191002
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 461107137; Wed, 02 Oct 2019 01:21:01 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 2 Oct 2019 02:21:00 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 2 Oct 2019 17:20:59 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 2 Oct 2019 17:20:58 +0800
Message-ID: <1570008060.13954.12.camel@mtksdccf07>
Subject: Re: [PATCH net 1/2] net: ethernet: mediatek: Fix MT7629 missing
 GMII mode support
From: mtk15127 <Mark-MC.Lee@mediatek.com>
To: Andrew Lunn <andrew@lunn.ch>
Date: Wed, 2 Oct 2019 17:21:00 +0800
In-Reply-To: <20191001124206.GC869@lunn.ch>
References: <20191001123150.23135-1-Mark-MC.Lee@mediatek.com>
 <20191001123150.23135-2-Mark-MC.Lee@mediatek.com>
 <20191001124206.GC869@lunn.ch>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_022115_534439_3067A2F4 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 Felix Fietkau <nbd@openwrt.org>, Nelson Chang <nelson.chang@mediatek.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, MarkLee <Mark-MC.Lee@mediatek.com>,
 Rene van Dorst <opensource@vdorst.com>, Rob
 Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-10-01 at 14:42 +0200, Andrew Lunn wrote:
> On Tue, Oct 01, 2019 at 08:31:49PM +0800, MarkLee wrote:
> > Add missing configuration for mt7629 gmii mode support
> > 
> > Signed-off-by: MarkLee <Mark-MC.Lee@mediatek.com>
> 
> Hi Mark
> 
> Since this is for net, it should have a Fixes: tag.
> 
> Thanks
> 	Andrew
Hi Andrew,
  Thanks for your reminder,will add a Fixes tag in the next patch.

Mark


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
