Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2A63C3B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 07:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZeQsC/CIRM35X+tPY+VkyHYBwuIPnBoORaBn1ci7v1c=; b=nR02oQz61b9rj0
	0JazavrgXzSw8Fe0gn9u0O4YljDnKZ/HM0YxTyM2ubenSoQMeW2WOauqbrR9Q2I9yxqkce2CYKhgu
	X8A+WTzqsRzzjzGnEj0m3tIYBjDCVQ3he5x7E9QYxhodL5TxeBG5Dz+XHz5za81utfrkawHhql480
	NO2Zm9bIW7vjJWkM4ZWSHO5cZlNgHIjVi4QjdNBUX/qohdLNgO6OmPzteA1kBq4A041YHaMaCuvYD
	3dDjUM+JnGKaem3VVtsurB3/H0ivVACLW/k8hdRt0mUya3mO3cngqgsVLWbeZ6O/FPIFmJ7WgL9Ha
	PHNG/p1dGSeFSATFne9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZp3-0000xC-RT; Tue, 11 Jun 2019 05:59:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZot-0000sK-Vb; Tue, 11 Jun 2019 05:59:45 +0000
X-UUID: 7c4971d5931a492d9074bd8485440c3d-20190610
X-UUID: 7c4971d5931a492d9074bd8485440c3d-20190610
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1163083652; Mon, 10 Jun 2019 21:59:36 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 22:59:34 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 11 Jun 2019 13:59:32 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 13:59:31 +0800
Message-ID: <1560232771.8487.120.camel@mhfsdcap03>
Subject: Re: [PATCH v6 09/10] usb: roles: add USB Type-B GPIO connector driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Nagarjuna Kristam <nkristam@nvidia.com>
Date: Tue, 11 Jun 2019 13:59:31 +0800
In-Reply-To: <9640aa29-bc96-ded1-e757-e885bda354a8@nvidia.com>
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
 <1559115828-19146-10-git-send-email-chunfeng.yun@mediatek.com>
 <9640aa29-bc96-ded1-e757-e885bda354a8@nvidia.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_225944_021555_45CFB7D2 
X-CRM114-Status: GOOD (  14.64  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan
 Sridharan <badhri@google.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-06-10 at 16:03 +0530, Nagarjuna Kristam wrote:
> Tested-by: Nagarjuna Kristam <nkristam@nvidia.com>
> 
Thanks

> On 29-05-2019 13:13, Chunfeng Yun wrote:
> > Due to the requirement of usb-connector.txt binding, the old way
> > using extcon to support USB Dual-Role switch is now deprecated
> > when use Type-B connector.
> > This patch introduces a driver of Type-B connector which typically
> > uses an input GPIO to detect USB ID pin, and try to replace the
> > function provided by extcon-usb-gpio driver
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v6 changes:
> >   1. get usb-role-swtich by usb_role_switch_get()
> > 
> > v5 changes:
> >   1. put usb_role_switch when error happens suggested by Biju
> >   2. don't treat bype-B connector as a virtual device suggested by Rob
> > 
> > v4 changes:
> >   1. remove linux/gpio.h suggested by Linus
> >   2. put node when error happens
> > 
> > v3 changes:
> >   1. treat bype-B connector as a virtual device;
> >   2. change file name again
> > 
> > v2 changes:
> >   1. file name is changed
> >   2. use new compatible
> > ---
> >  drivers/usb/roles/Kconfig           |  11 ++
> >  drivers/usb/roles/Makefile          |   1 +
> >  drivers/usb/roles/typeb-conn-gpio.c | 286 ++++++++++++++++++++++++++++
> >  3 files changed, 298 insertions(+)
> >  create mode 100644 drivers/usb/roles/typeb-conn-gpio.c
> > 
> > diff --git a/drivers/usb/roles/Kconfig b/drivers/usb/roles/Kconfig
> > index f8b31aa67526..d1156e18a81a 100644
> > --- a/drivers/usb/roles/Kconfig
> > +++ b/drivers/usb/roles/Kconfig
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
