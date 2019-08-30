Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71818A2EE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 07:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwOzmet0/081NsPqhEyx3Jx0EcVUbDYLzKtD6gxT4Xo=; b=YWoS3src+Byt+J
	wFqpL1UaZVz7zZyw8lJz5nwlbeAcfgYVYB2SFbHY1zIpKgMuCV8ofPhJArWEEC5x1iE6r3EgkVPl/
	55XE9dfrcDS47B9bLz9xY4M3W/kgBmQ7/nUEc1vMwtMcqTdrl1h2OOYON7gO691OCXxivbEVzEv64
	2yt6wzll7iVQufueNFdGjLWuIEpEWG+6WNoUtO3xEKKjb2b/I58lr94zU2zyFW+BVq+kT7A0vBh+s
	jKwEdHqGMZx/FSE5vZtHwaZq25fBH8MCRyqLCZv854BiPcqm3aSN7bm6Wopu8v1nEJwmz+w8pheEn
	DxLi6T5ftAZP9JTf2awg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ZRR-0003Oc-RR; Fri, 30 Aug 2019 05:27:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ZR0-0003NA-Pa; Fri, 30 Aug 2019 05:26:56 +0000
X-UUID: 50e52383f56c4dddacf80631ebcebc43-20190829
X-UUID: 50e52383f56c4dddacf80631ebcebc43-20190829
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 383397153; Thu, 29 Aug 2019 21:26:53 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 22:26:52 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 13:26:44 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 13:26:43 +0800
Message-ID: <1567142798.5542.5.camel@mtksdaap41>
Subject: Re: [PATCH V3 01/10] dt-bindings: soc: Add dvfsrc driver bindings
From: Henry Chen <henryc.chen@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Fri, 30 Aug 2019 13:26:38 +0800
In-Reply-To: <20190829191631.GA15714@bogus>
References: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
 <1566995328-15158-2-git-send-email-henryc.chen@mediatek.com>
 <20190829191631.GA15714@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 30CB98CD34478001F8402BCE6BD99F74EF5527939DA772222DD4EF0D575D9DE82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_222654_974230_6AF48AA2 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh
 Kumar <vireshk@kernel.org>, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Ryan Case <ryandcase@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-29 at 14:16 -0500, Rob Herring wrote:
> On Wed, 28 Aug 2019 20:28:39 +0800, Henry Chen wrote:
> > Document the binding for enabling dvfsrc on MediaTek SoC.
> > 
> > Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> > ---
> >  .../devicetree/bindings/soc/mediatek/dvfsrc.txt    | 23 ++++++++++++++++++++++
> >  include/dt-bindings/soc/mtk,dvfsrc.h               | 14 +++++++++++++
> >  2 files changed, 37 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
> >  create mode 100644 include/dt-bindings/soc/mtk,dvfsrc.h
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

Hi Rob,

I'm sorry for the mistake. I stand corrected, and will add tags on next
version.

Henry



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
