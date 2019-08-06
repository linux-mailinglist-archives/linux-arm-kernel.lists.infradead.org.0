Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F23B82D20
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 09:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBxr5S2BS/1rhWRu3TRHSGKVj5HVUHprZ1GsUOAoLkw=; b=PVU77o5m/EFoqZ
	KWYaPsFTkM1Ci/jVGngye07hRCgEzzqiWwhIQ138L3HUakJb7fA7QXsM6Q4ydWu0FbFovPKlbuWZb
	bBvInzwLmCNBOaRHkL600QvZnEBxHxSDuBz9akto6HYP0sorCYKI2FkCSHZth67gGR3wCjZwcobmz
	ftNmdlCgSvwxf/d7T0M+PxYn5fwH/Np1/sPdyoquqjwCeN987pNgoMVRLUgSRNuZxJbk5RNfk45Bs
	+COdbYdkftF2YUGzJithXLiZs1O5+t3njM4w+BibwJr8VpczlLBgENi0p59oGzy8AIcPR3Kb8qiPv
	5D5TvPUKTFian/of5P+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huuDL-0004mk-QL; Tue, 06 Aug 2019 07:48:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huuD8-0004lv-EF; Tue, 06 Aug 2019 07:48:47 +0000
X-UUID: c8d2bd2768ef4def8ecdb4bbe95dcd75-20190805
X-UUID: c8d2bd2768ef4def8ecdb4bbe95dcd75-20190805
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 737868651; Mon, 05 Aug 2019 23:48:36 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 00:48:34 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 6 Aug 2019 15:48:31 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 6 Aug 2019 15:48:30 +0800
Message-ID: <1565077710.23705.21.camel@mhfsdcap03>
Subject: Re: [PATCH v8 00/11] add USB GPIO based connection detection driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Aug 2019 15:48:30 +0800
In-Reply-To: <CACRpkdaBT24JPH_VsKtgp6fjWtVuqM50rXkDVYKmLHgR5hdJzA@mail.gmail.com>
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
 <CACRpkdaBT24JPH_VsKtgp6fjWtVuqM50rXkDVYKmLHgR5hdJzA@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5974D75886B44E4363446BA9394912791E53F3E9496FF92EBA64D74B9A80C30C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_004846_483756_8294677A 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy
 Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>, Linux
 ARM <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-08-05 at 12:06 +0200, Linus Walleij wrote:
> On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> 
> > Because the USB Connector is introduced and the requirement of
> > usb-connector.txt binding, the old way using extcon to support
> > USB Dual-Role switch is now deprecated, meanwhile there is no
> > available common driver when use Type-B connector, typically
> > using an input GPIO to detect USB ID pin.
> 
> However while this was going on,
> drivers/extcon/extcon-fsa9480.c was merged and that detects
> not only GPIO on the USB port but multiplexed usecases such
> as UART over the USB micro PHY (and no that UART is not
> a USB UART, but an actual RX/TX over D-/D+).
> 
> That driver also measure a whole slew of funny resistance
> values on the ID pin, that is how it does its job.
I look into the spec of fsa9480, it indeed detect many USB accessories.
But this driver is used for simplest cases that only uses micro
receptacle with id-pin/vbus-pin

> 
> But for just "hey I'm plugged in" we can surely keep this
> ID on GPIO detection in the USB subsystem.
Sorry, you mean provide a common API? could you please describe more
clearer about your suggestion?


Introducing a single driver using usb_role_switch will help to keep
transparent for USB controller driver, no matter it uses type-c or micro

Thanks a lot
> 
> I just get a bit insecure about how we should ideally
> handle these "funny-PHY's".

> 
> Yours,
> Linus Walleij



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
