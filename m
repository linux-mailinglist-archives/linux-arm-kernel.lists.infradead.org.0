Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954DA17D82A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 03:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KWSbfLx1fhXLGe6WkzHmxPqcFbgL9n49+syy//lVRQ=; b=gFJ/uvmcuzvbGA
	T3okFuJSG9vPsYrDr+0v8FzZTgzHV87Octj004mKDWIO4BVbUAXo94sT/Gy05uOtFGAkBt0vyc+38
	UnqYTYJ4bz5ClheIMMOzLgnlJ0vpDVkrLu3UetD1Y4sZ5tVsBVhMUrAfEnOhN6ae2h1mhHJfkgCY+
	qImJUAiTOfRQH7C/0/1XmZZDrZzYqqtfxz25keqFoJ0Kjbp9QIz3kGqcDXL6vgp1MeYXGe1WWXIYs
	gYiuiFArFCU0B1wNQYyGquEwEHOUUlqmf3PXIYPRj/8y6qc8JE4DxzXfomr7P9pa8bIMKsi1l04Vg
	jDDoYDYJLJaYzuaOw7Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB8Eo-00060d-Cr; Mon, 09 Mar 2020 02:33:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB8Eb-0005zE-GL; Mon, 09 Mar 2020 02:33:39 +0000
X-UUID: 70422fe94b564a2298d9b4563711b189-20200308
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=dVRMX7HzacB89Rfs5D6p0q4PZANziX89+dXutatF4V0=; 
 b=STFwxFTnAkpf4VQdSYH4HmwkhTAq+Mez0yThP3MFHKgA25ufdUfper2JH0TcH7uX+7Ij2wpjxUFsWDSmlbLdGxtKz+aXXDiKMHS/tiCxYYyscvnUqKpV4cmpQknOu95qTPiatDY2/j/E5wxjVLlfQquYk5O4KKCxqrwL6mNn+Fo=;
X-UUID: 70422fe94b564a2298d9b4563711b189-20200308
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1449962774; Sun, 08 Mar 2020 18:33:32 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Mar 2020 19:33:29 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Mar 2020 10:32:26 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Mar 2020 10:30:47 +0800
Message-ID: <1583721209.28755.29.camel@mtksdaap41>
Subject: Re: [PATCH v8 4/5] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Ran Bi <ran.bi@mediatek.com>
Date: Mon, 9 Mar 2020 10:33:29 +0800
In-Reply-To: <1583393876.8521.15.camel@mhfsdcap03>
References: <1580730044-30501-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1580730044-30501-5-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1580748607.31376.3.camel@mtksdaap41>
 <1581911502.20099.13.camel@mhfsdcap03>
 <CANMq1KDTHcFV8Gue1PuOWkWXL20z_-j58u8JpwbBm_wUvLeqSg@mail.gmail.com>
 <1583393876.8521.15.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_193337_556644_5EA20D52 
X-CRM114-Status: GOOD (  28.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Richard
 Fontana <rfontana@redhat.com>, Lee Jones <lee.jones@linaro.org>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Frank Wunderlich <frank-w@public-files.de>, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-03-05 at 15:37 +0800, Ran Bi wrote:
> Hi,
> 
> On Wed, 2020-03-04 at 20:59 +0800, Nicolas Boichat wrote:
> > Hi,
> > 
> > On Mon, Feb 17, 2020 at 11:52 AM Ran Bi <ran.bi@mediatek.com> wrote:
> > >
> > > On Tue, 2020-02-04 at 00:50 +0800, Yingjoe Chen wrote:

<....>

> > > >
> > > > Putting these in header file doesn't looks right to me.
> > > > Who need this? can you move them back to rtc-mt6397.c?
> > > > Joe.C
> > > >
> > >
> > > This could also effect kernel/drivers/power/reset/mt6323-poweroff.c
> > > which using same region of RTC registers.
> > > There are 2 ways of modification:
> > > 1. kernel/drivers/rtc/rtc-mt6397.c implement do_pwroff function and
> > > export to mt6323-poweroff.c
> > > 2. Just modify mt6323-poweroff.c file to compatible this patch. I mean
> > > using RTC_WRTGR_MT6397 to replace RTC_WRTGR. Or modify mt6323-poweroff.c
> > > like rtc-mt6397.c
> > 
> > Oh, I see, so basically both rtc-mt6397.c and mt6323-poweroff.c need
> > to know at what offset RTC_WRTGR actually is. Correct?
> > 
> 
> Yes, you are right both drivers need to know RTC_WRTGR offset. Offsets
> of other registers are the same.
> 
> > Is there any plan to have mt6323-poweroff.c support any of the other
> > PMICs (not just MT6323?)?
> > 
> 
> Currently, we don't have a plan to let mt6323-poweroff.c support other
> PMICs. Because other PMICs like mt6397 and mt6358 could using
> arm-trust-firmware PSCI power off flow instead. mt6323-poweroff.c was
> prepared for platform without arm-trust-firmware.

This depends on SoC instead of PMIC.
We will need mt6323-poweroff.c for soc with armv7 CPU, because we won't
have ATF on them. I'm not aware of new plan for this.


> > a. If not, I'd just add:
> > #define RTC_WRTGR_MT6323 RTC_WRTGR_MT6397
> > in rtc.h, for added clarity, use that in mt6323-poweroff.c
> > (s/RTC_WRTGR/RTC_WRTGR_MT6323/), and be done with it.
> > 
> 
> I would just change RTC_WRTGR to RTC_WRTGR_MT6397 in mt6323-poweroff.c
> at next patchset.
> 
> > Actually, even if there's a plan, you can go ahead with this simpler
> > solution for now, and fix later when the issue comes up.
> > 
> > b. If you ever want to support multiple PMICs with mt6323-poweroff.c,
> > you'd need that offset for 2 different sub-devices under the same mfd,
> > so the matching logic belongs in the main mfd device, not in
> > rtc/poweroff driver.
> > 
> > So I'd move the matching logic in drivers/mfd/mt6397-core.c, and add
> > rtc_wrtgr offset (or a full _data structure) to `struct mt6397_chip`,
> > or, probably better, add a IORESOURCE_REG to the matching resources to
> > specify the offset (that's what drivers/mfd/88pm860x-core.c seems to
> > be doing, for example).
> > 
> > And then mt6323-poweroff.c should probably be renamed to mt6397-poweroff.c.
> > 
> > (actually, looking at this, I'm even questioning if mt6323-poweroff.c
> > should even exist, and if you should just fold it into rtc-mt6397.c?
> > Since they use the same registers?)
> > 
> 
> mt6323-poweroff.c which hijack pm_power_off pointer is only for platform
> without arm-trust-firmware. This is the reason I am considering
> mt6323-poweroff.c should not be folded into rtc-mt6397.c.


Using/sharing same set of registers from different drivers is not good: 

- WRTGR is a special register to 'commit' previous changes. If 2 drivers
are running at the same time, it is possible to commit incomplete update
and cause unexpected result. It is easier to control this from same
driver.

- It is easy to overlook the register is access by others and lead to
bugs/build fails when doing driver update, eg, this patchset.

- The trigger code is duplicate in mt6323-poweroff.c, can just call
mtk_rtc_write_trigger.


So I agree with Nicolas, mt6323-poweroff should be folded into
rtc-mt6397.c. We should be able to disable pm_power_off hijacking for
platform with armV8 CPU. Maybe we can keep "mediatek,mt6323-pwrc"
compatible in mt6323-poweroff.c for this.

I'm ok with implement a. as suggested by Nicolas for now.

Joe.C

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
