Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7235D1E5ABB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 10:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onEeMv8S2eS1WESArLsRmzRcEn/DDy/fkNvECOjGeqY=; b=IEOehhe5kVAlXd
	6ZUAAsZ5Z6QRLI/RxMGERtIfYF2uJpBeO8qqfZceOEY19w+Ce+Yo+m+xuFZEaq+tmKLUe/uRjFEdY
	F1/CBkIGJ1nGiGdbY369hXpHIuyfFP5ZyE6Ca6uriebXBMXACJqsUfPfEtc4osmOvEaipblzjChgA
	gzjXzoefCaw4pE0LsO8lj9OO+/24tlPqRrLID0d0Z5204wwP35V341CX0vSoqCgHNfC8BftDr6c3i
	GXmRywc3A+cdevxTts2e+yNyQNcxIH6nvGNTKZAALEdvM2hk+yNLDdVDwkqJKGLEGW5xAgeTbYAQx
	Kc+GlUQuH1yJoWl3mmKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDrn-0008Q3-Dr; Thu, 28 May 2020 08:26:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDrX-0008OH-1Y; Thu, 28 May 2020 08:26:05 +0000
X-UUID: 22d8ed630fab4638868af72fcd634293-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=uhdAfcZAWfW+nRXgN3wGGFlouEdWIR+NISZcKKtGAks=; 
 b=h2EeOBV8u9OriQH6KN1vhHH8KUM+w8DmaHa9hmxcwQhVUgnLv7AU800d9LKoURRCOmDi5lB3ZBoemF0Sch9yVbiTU0fWcn9gFSK894cHCjmV+8PUpNaHY8c1RQEiznsRb8W+2vkWZa6CSPNNvSHVYVA9Il+p1pp5h8Y3nRepnyY=;
X-UUID: 22d8ed630fab4638868af72fcd634293-20200528
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 540698221; Thu, 28 May 2020 00:26:08 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 01:25:07 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 16:25:01 +0800
Received: from [10.15.20.246] (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 28 May 2020 16:25:00 +0800
Message-ID: <1590654061.15483.5.camel@mbjsdccf07>
Subject: Re: [PATCH v10] Add matrix keypad driver support for Mediatek SoCs
From: fengping.yu <fengping.yu@mediatek.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 28 May 2020 16:21:01 +0800
In-Reply-To: <20200528071916.2zxch46lbimxet2u@pengutronix.de>
References: <20200528053344.25936-1-fengping.yu@mediatek.com>
 <20200528071916.2zxch46lbimxet2u@pengutronix.de>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_012603_101461_8EF865FE 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org, Yingjoe
 Chen <yingjoe.chen@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marco:

I am sorry, I think I misunderstand your suggestion about wakeup member
in patch v9.

Keypad is a wakeup source, so I mis-remove wakeup source setting in the
probe function. 

I will modify this in the next patch.

Thanks.


On Thu, 2020-05-28 at 09:19 +0200, Marco Felsch wrote:
> Hi,
> 
> this version looks nice to me =) One last question.
> 
> On 20-05-28 13:33, Fengping Yu wrote:
> > 
> > Change since v9:
> > - modify KEYBOARD_MTK_KPD config dependent item
> > - remove wakeup member of mtk_keypad struct
> 
> You also removed the device wakeup capability completely, was this
> intended? What I mean is that we don't need that member within the
> driver state struct.
> 
> Regards,
>   Marco
> 
> > - remove default pinctrl state set
> > - modify request irq failed return value
> > - add space of kepad matching table
> > - modify align issue
> > 
> > fengping.yu (3):
> >   dt-bindings: Add keypad devicetree documentation
> >   drivers: input: keyboard: Add mtk keypad driver
> >   configs: defconfig: Add CONFIG_KEYBOARD_MTK_KPD=m
> > 
> >  .../devicetree/bindings/input/mtk-kpd.yaml    |  95 +++++++++
> >  arch/arm64/configs/defconfig                  |   1 +
> >  drivers/input/keyboard/Kconfig                |  11 +
> >  drivers/input/keyboard/Makefile               |   1 +
> >  drivers/input/keyboard/mtk-kpd.c              | 201 ++++++++++++++++++
> >  5 files changed, 309 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.yaml
> >  create mode 100644 drivers/input/keyboard/mtk-kpd.c
> > 
> > -- 
> > 2.18.0
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
