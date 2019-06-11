Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B083C38D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 07:48:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fw++YBbbm3noJTf1d2WxpzbBp79tSBEbgYXLxJqPges=; b=IowO6jpKwFLq7h
	C1FUoDVZuZSNxVjNrbK/BK42W8xFZifiJ9OjaXiuDuCqkwTDrDHPAV3rZnVTHirOYLitNHAgT01q1
	iGEoHkhSW3dqfl6Njt3ON6tTbtNsZtkCh4RqRIBEVntn01RcCBrpJAThY2kSgK64WxE8GyYTb3ud9
	sMjoxHNwpqL6a6h2+YMcj98O/pSb2ATrWnt4ftCCKtRGZKp2SCZw8YEPb4O2RqzWC8qbJ2C3gEgVl
	klbjTq1e4fEVNh+405iFqR4f3nwzPjXdtVg7ASlu348LZTkNRMqhp2LY+wZ3R5Qf2tAeeGCSQkIcG
	fF2bbBBN8e9oqlR6F13g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZdi-0004zw-KD; Tue, 11 Jun 2019 05:48:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZdV-0004zY-H2; Tue, 11 Jun 2019 05:47:58 +0000
X-UUID: ed9df2f352a9490188f89e4af398ed23-20190610
X-UUID: ed9df2f352a9490188f89e4af398ed23-20190610
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 480250836; Mon, 10 Jun 2019 21:47:51 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 22:47:50 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 11 Jun 2019 13:47:48 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 13:47:46 +0800
Message-ID: <1560232066.8487.119.camel@mhfsdcap03>
Subject: Re: [PATCH v6 09/10] usb: roles: add USB Type-B GPIO connector driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 11 Jun 2019 13:47:46 +0800
In-Reply-To: <CAHp75VeWu+8H2=PRNud_MAoD9zozb2Ugh9b=9TCtYmGLVyCTpQ@mail.gmail.com>
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
 <1559115828-19146-10-git-send-email-chunfeng.yun@mediatek.com>
 <CAHp75VcbZwd0e6r38C2x7HLEHLr4oR7TjwdDXnDxRPRs3anwgA@mail.gmail.com>
 <1559789630.8487.111.camel@mhfsdcap03>
 <CAHp75VeWu+8H2=PRNud_MAoD9zozb2Ugh9b=9TCtYmGLVyCTpQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_224757_568305_FA5DE2F9 
X-CRM114-Status: GOOD (  13.19  )
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
 devicetree <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB <linux-usb@vger.kernel.org>, Yu
 Chen <chenyu56@huawei.com>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan
 Sridharan <badhri@google.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-06-06 at 09:31 +0300, Andy Shevchenko wrote:
> On Thu, Jun 6, 2019 at 5:53 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> >
> > On Wed, 2019-06-05 at 11:45 +0300, Andy Shevchenko wrote:
> > > On Wed, May 29, 2019 at 10:44 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> > > >
> > > > Due to the requirement of usb-connector.txt binding, the old way
> > > > using extcon to support USB Dual-Role switch is now deprecated
> > > > when use Type-B connector.
> > > > This patch introduces a driver of Type-B connector which typically
> > > > uses an input GPIO to detect USB ID pin, and try to replace the
> > > > function provided by extcon-usb-gpio driver
> > >
> > > > +static SIMPLE_DEV_PM_OPS(usb_conn_pm_ops,
> > > > +                        usb_conn_suspend, usb_conn_resume);
> > > > +
> > > > +#define DEV_PMS_OPS (IS_ENABLED(CONFIG_PM_SLEEP) ? &usb_conn_pm_ops : NULL)
> > >
> > > Why this macro is needed?
> > Want to set .pm as NULL when CONFIG_PM_SLEEP is not enabled.
> 
> Doesn't SIMPLE_DEV_PM_OPS do this for you?
Yes, you are right, it provides an empty dev_pm_ops struct, I'll remove
DEV_PMS_OPS, thanks a lot

> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
