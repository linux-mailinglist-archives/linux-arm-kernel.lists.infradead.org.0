Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 305F2138DFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tn1nqnw1zUSHzBkO6wVqh3YMdkJzT8010OOUJvqDJEs=; b=tRtn15bAF05gW8
	x1GN8sib6p1X6EY6ivVhb1H7CHa54jLVrH987bdYR/NKBF11rA3di32XFK7ssc5wIeTFf3/U5qTEX
	rNllszF3e+BAuwaR1yzVedFnvKujxY5jhZuxjggmgW7vS9iRw1+KR/mBACPAcRsoa75XKYL2mbXcr
	ZMgy9xC1K3G7qM4ULkIqJbvtpGzxRGhuuaMeVdphKZPCf2jq4eO2HYZJ+LCIkAIpJH9KHJx9AV0H1
	mbqY5d05xvESNFXdKzK1QOHhdaTqFeVVnq7MO2sV5HudMlVNXWPBsqKHldd2G2Di8h5YObPiaaxXK
	oMv1TMuSDYTQPcHeCksw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwEZ-0007ke-MB; Mon, 13 Jan 2020 09:42:07 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwEN-0007k2-T2; Mon, 13 Jan 2020 09:41:57 +0000
X-UUID: 99f725488d314470a0ed94b774719282-20200113
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=S0IU+IlcBs9/Y/kx+XkqovfN2BvG7GbCFGZg+SIoQY8=; 
 b=GoFdUuDxf6ZePGlRa9Ume0doVpfMw1s5gYrZHzoqWXjEa/xWS6BxUH/FkNeRWGWqfNWlKpQQV+XTozXD/GopKX2ihcpuEABYJ48eNEr5YB9AjHyDfdMiZy0jiPSXJx2u3fMFxpW1gbwTfQoTnfMReUHrisFwCmZtqG8do4XrVak=;
X-UUID: 99f725488d314470a0ed94b774719282-20200113
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1421079059; Mon, 13 Jan 2020 01:41:53 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 Jan 2020 01:42:38 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 13 Jan 2020 17:40:36 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 13 Jan 2020 17:41:10 +0800
Message-ID: <1578908504.20923.25.camel@mhfsdcap03>
Subject: Re: [PATCH v3 1/2] amr64: dts: modify mt8183.dtsi
From: Yong Liang <yong.liang@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 17:41:44 +0800
In-Reply-To: <CANMq1KCLGx2K5qSVJLFkFqYjghVk40HaZcBeUmSxpBSJQAMOzg@mail.gmail.com>
References: <20191227141405.3396-1-yong.liang@mediatek.com>
 <20191227141405.3396-2-yong.liang@mediatek.com>
 <CANMq1KD=jAPn4Y7zQZrsg9FB7Cq6tNX0R8OF4qX21Sjy2=0Naw@mail.gmail.com>
 <CANMq1KB4PzAUdp03go0Ur_khi2bM3+oNUhHtMK=--V6DmGXiDA@mail.gmail.com>
 <2bbd8f47-fe68-574c-cbe9-bcc680dd4c84@gmail.com>
 <CANMq1KCXMUP=5ijqLsZ67MvO2ROFkG0vSX64KqmWtYKm7w8f2g@mail.gmail.com>
 <CANMq1KCLGx2K5qSVJLFkFqYjghVk40HaZcBeUmSxpBSJQAMOzg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8790C72DB21B4EEB78AB1FFA7DCBD2718DE0EE4272E3427235AA391B91F06AFE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_014155_943341_3081FEBF 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 lkml <linux-kernel@vger.kernel.org>,
 Jiaxin Yu =?UTF-8?Q?=28=E4=BF=9E=E5=AE=B6=E9=91=AB=29?=
 <Jiaxin.Yu@mediatek.com>, Sj
 Huang =?UTF-8?Q?=28=E9=BB=83=E4=BF=A1=E7=92=8B=29?= <sj.huang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-01-13 at 14:27 +0800, Nicolas Boichat wrote:
> +Jiaxin +Sj Huang
> 
> On Mon, Jan 13, 2020 at 12:44 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > On Fri, Jan 10, 2020 at 6:09 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> > > [snip]
> > > That's all a bit confusing, I thought we are fine to add the reset cells to
> > > infracfg as we have the resets defined in
> > > 64ebb57a3df6 ("clk: reset: Modify reset-controller driver")
> >
> > You're right, we're fine. But at least in theory, we should still have
> > the binding documentation that I linked above.
> >
> > I will try to pick up all the required patches, split them across
> > 8183/2712 and resend as one series.
> 
> Okay, summary of the patches, there are 2 series:
> 
> https://patchwork.kernel.org/patch/11311237/
> [1.1] [v3,1/2] amr64: dts: modify mt8183.dtsi
>   => Partially applied to Matthias' v5.5-next/dts64
>   => Other part depend on [1.2], needs to be applied
> https://patchwork.kernel.org/patch/11311241/
> [1.2] [v3,2/2] dt-bindings: mt8183: Add watchdog dt-binding
>   => Pending Guenter/Wim
> 
> https://patchwork.kernel.org/cover/11326757/
> [2.0] [PATCH v11 0/3] ASoC: mt8183: fix audio playback slowly after playback
> [2.1] [PATCH v11 1/3] dt-bindings: mediatek: mt8183: Add #reset-cells
>   => IMHO adding mt2712 compatible should be another patch
>   => Depends on [1.2]
>   => Tags should be all dropped
> [2.2] [PATCH v11 2/3] watchdog: mtk_wdt: mt8183: Add reset controller
>   => Issues about tags
> [2.3] [PATCH v11 3/3] watchdog: mtk_wdt: mt2712: Add reset controller
>   => Issues about tags
> 
> Jiaxin/Yong Liang/Matthias: Please let me know, I'm happy to pick up
> the patches, clean them up and resend them, if you think that helps.
> 
  [1.2] [v3,2/2] dt-bindings: mt8183: Add watchdog dt-binding
  -> It is no use, I will send 8183 in jiaxin's patch
     We want to send jiaxin's patch prioritily. So you can merge
jiaxin's patch firstly.
> 
> > > That's why I took this part from:
> > > https://lore.kernel.org/linux-mediatek/20191226093930.22413-1-yong.liang@mediatek.com/
> > >
> > > Please let me know if I'm wrong and I'll drop it.
> > >
> > > Regards,
> > > Matthias
> > >
> > > >>> 2. Add watchdog device node
> > > >
> > > > Can we have a patch with just this change instead, since you're
> > > > sending the binding with it.
> > > >
> > > >>>
> > > >>> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > > >>
> > > >> Tested-by: Nicolas Boichat <drinkcat@chromium.org>
> > > >>
> > > >>> ---
> > > >>>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 8 ++++++++
> > > >>>  1 file changed, 8 insertions(+)
> > > >>> [snip]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
