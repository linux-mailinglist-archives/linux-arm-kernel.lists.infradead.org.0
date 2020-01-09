Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EDC13521A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 05:01:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Xj5wCbhXVqfQIWb+k/JF+k7MsHINvUt+8PKI1gjJmM=; b=sK9g4GWhZ+hPV1
	U63Evipsw9Fm22ZlFuv8Jw9tw+81i0ikw/6jNDl0dzV10Tx002XyQ8MchmsS3+LclqEHXRtbnBbjU
	t+lAlYyoaGW9+ohuB3y1h6N7QW8mi7r08UZN0Zk2AVhdf2rR1ek79WbPJH+S4O6APnwzCPN3RuS3d
	OMc8k+pRbsqfeuAlTS6lI3XHS6CHkAVruk7QBIjBZq6F6iwjJZkFlo0NSJaQ0+pr8E3h+YLW+Al2+
	taT6vaWf/CFuDg34/iIIFCDVfI9Qr6OsZf911D+F+qyCytyLeUtIbfouOTcH6JCn0UPumMxdssqkx
	z2a2w4ifcDp4Bm7pLV9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipP0p-0005PM-M1; Thu, 09 Jan 2020 04:01:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipP0g-0005OB-HH; Thu, 09 Jan 2020 04:01:28 +0000
X-UUID: 27c0d400ae1b419b9b7168aae1470d22-20200108
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=KCps6BgWrvdtsekJVTQpLbQ7cnpqG3IPNr8iggRA7dM=; 
 b=ho+sL122t//pXEShp7xu2qqXD4Jfem52dZMrA54A+CSHK9bzs7t7EzmRvsCTlml02icv1dXggfeysvFkwekJS7wbAPuk72kVutgjrx7bNSIdfvHQkJf7NMeSq2GwAVhOhQk4zhZb7l/E3XgRW1lLIfFsEN7Ern/85328KKXL6+4=;
X-UUID: 27c0d400ae1b419b9b7168aae1470d22-20200108
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2033126045; Wed, 08 Jan 2020 20:01:23 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 19:59:32 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 9 Jan 2020 11:58:19 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 9 Jan 2020 11:59:40 +0800
Message-ID: <1578542359.20923.16.camel@mhfsdcap03>
Subject: Re: [PATCH v3 1/2] amr64: dts: modify mt8183.dtsi
From: Yong Liang <yong.liang@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 9 Jan 2020 11:59:19 +0800
In-Reply-To: <CANMq1KB4PzAUdp03go0Ur_khi2bM3+oNUhHtMK=--V6DmGXiDA@mail.gmail.com>
References: <20191227141405.3396-1-yong.liang@mediatek.com>
 <20191227141405.3396-2-yong.liang@mediatek.com>
 <CANMq1KD=jAPn4Y7zQZrsg9FB7Cq6tNX0R8OF4qX21Sjy2=0Naw@mail.gmail.com>
 <CANMq1KB4PzAUdp03go0Ur_khi2bM3+oNUhHtMK=--V6DmGXiDA@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 54C315E0B98D2A87DB338729E419450348F525FF59E3EDFD3BC0ECB9CBA3B6422000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_200126_580906_889D68F2 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Devicetree List <devicetree@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-01-08 at 17:14 +0800, Nicolas Boichat wrote:
> On Wed, Jan 8, 2020 at 4:56 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > minor nit, s/amr64/arm64/ in the commit title.
> >
> > On Fri, Dec 27, 2019 at 10:15 PM Yong Liang <yong.liang@mediatek.com> wrote:
> > >
> > > From: "yong.liang" <yong.liang@mediatek.com>
> > >
> > > 1. Include mt8183-reset.h and add reset-cells in infracfg
> > > in dtsi file
> 
> Err, wait, doesn't this depend on
> http://lists.infradead.org/pipermail/linux-mediatek/2020-January/026170.html
> ?
> 
  Yes, but this patch can be delay a while, We will ensure jiaxin's
patch be send out prioritly.

  Yong.Liang

> > > 2. Add watchdog device node
> 
> Can we have a patch with just this change instead, since you're
> sending the binding with it.

  I will remove binding txt file from this patch.
  And we will ensure jiaxin's patch be send out prioritly.

> 
> > >
> > > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> >
> > Tested-by: Nicolas Boichat <drinkcat@chromium.org>
> >
> > > ---
> > >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > > [snip]
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
