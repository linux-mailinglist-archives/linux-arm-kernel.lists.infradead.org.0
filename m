Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E0D1DDEA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 06:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOpkihbyGX24S34bFEqE29QkyAWsLJcIbN3Hpj43pyY=; b=XwvVK6LZjBCsH9
	QcKzVA8BBBZCCasTdWAtfTpu8kATPLKbbV4s+5IrOR/AvAu9pGItjqb1m/b3btsuBs0dU8gFrlTzK
	ow1UcC/JDr8VZM6/I+/g3TTq6Z4QRuc62ciYpFxNKrT0z2rPcM0FEJ5ftAZ3bHE4Xi37UbdcDRvuH
	gXh/O9YeDd91XJfQ266pweyYa7uMT/usVWdCLwkXucWGs9Gjxgej89FqtRpUVVIs3eqNwvVS/ouxD
	YMwqAUmkepWG90ZB/l0Qn3xS5yHob3+BTRNJXc49EI9AKm6V8XcBhBYcD48+GTz6iqnkRwbkIci7q
	5zXGm1KqPDyYDRN0oBAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbz5V-00084y-QE; Fri, 22 May 2020 04:15:13 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbz56-00083w-Tw; Fri, 22 May 2020 04:14:50 +0000
X-UUID: bffa981ddf484da5875e694cfccca6ab-20200521
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=9XJQWMeNbLuOVbhCAds/pojuKuqDmIStgg9SQ2imLs0=; 
 b=lsyu9iSHqhCqTfTLZVYCFHQT4UtdqwGUITHf2PHVkTlEGpYZXANvoGJdt/zXfvpm68LZtaMWmdsUxWfeG0avijUwgOrOLQcJDGomoATbrS2ZIz5XjW6MvjMZaVOTAuPjegthzF5eJs96y3M3gdFJVieTRzHHaO1wNhSngaU6ZL4=;
X-UUID: bffa981ddf484da5875e694cfccca6ab-20200521
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1860508371; Thu, 21 May 2020 20:14:33 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 21:07:39 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 May 2020 12:07:37 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 22 May 2020 12:07:37 +0800
Message-ID: <1590120458.22249.24.camel@mtksdccf07>
Subject: Re: [v4,0/7] Add Mediatek thermal dirver and dtsi
From: Michael Kao <michael.kao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 22 May 2020 12:07:38 +0800
In-Reply-To: <7e205390-c7a7-b8c9-3ba2-344a04dc6696@gmail.com>
References: <20200323121537.22697-1-michael.kao@mediatek.com>
 <7e205390-c7a7-b8c9-3ba2-344a04dc6696@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_211448_973704_BD3AAC30 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-21 at 14:51 +0200, Matthias Brugger wrote:
> Hi Michael,
> 
> On 23/03/2020 13:15, Michael Kao wrote:
> > This patchset supports for MT8183 chip to mtk_thermal.c.
> > Add thermal zone of all the thermal sensor in SoC for
> > another get temperatrue. They don't need to thermal throttle.
> > And we bind coolers for thermal zone nodes of cpu_thermal.
> > 
> > Rebase to kernel-5.6-rc1.
> > 
> > Update content:
> > 
> > [1/7]
> >     - Squash thermal zone settings in the dtsi from [v3,5/8]
> >       arm64: dts: mt8183: Increase polling frequency for CPU thermal zone
> > 
> >     - Remove the property of interrupts and mediatek,hw-reset-temp
> > 
> > [2/7]
> >     - Correct commit message
> > 
> > [4/7]
> >     - Change the target temperature to the 80C and change the commit message
> > 
> > [6/7]
> >     - Adjust newline alignment
> > 
> >     - Fix the judgement on the return value of registering thermal zone
> > 
> > This patch series base on these patches [1].
> > 
> > [v7,3/3] PM / AVS: SVS: Introduce SVS engine (https://patchwork.kernel.org/patch/11439829/)
> > 
> > Matthias Kaehlcke (1):
> >   arm64: dts: mt8183: Configure CPU cooling
> > 
> > Michael Kao (6):
> >   arm64: dts: mt8183: add thermal zone node
> >   arm64: dts: mt8183: add dynamic power coefficients
> >   arm64: dts: mt8183: Add #cooling-cells to CPU nodes
> >   thermal: mediatek: mt8183: fix bank number settings
> 
> Do I understand correctly that we need to fix the bank number before we can add
> the device tree changes. And that the last two patches are enhancements for the
> driver but needed to get a working version?
> 
> Regards,
> Matthias

Hi Matthias,

There is one bank setting of mt8183 config.
If the device tree merged first. I worry that it will crash when the
thermal zone read temperature.
It will access the invalid index of bank.
So please add the patch "fix bank number settings "
first.222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222

> 
> >   thermal: mediatek: add another get_temp ops for thermal sensors
> >   thermal: mediatek: use spinlock to protect PTPCORESEL
> > 
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 156 +++++++++++++++++++++++
> >  drivers/thermal/mtk_thermal.c            |  88 +++++++++++--
> >  2 files changed, 231 insertions(+), 13 deletions(-)
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
