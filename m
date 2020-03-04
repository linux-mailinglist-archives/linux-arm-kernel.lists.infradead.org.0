Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAEC1790BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 14:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNR7j7oUxLnfr2IF/Hz/r+1yVt09sxZJ158BxKTfToY=; b=p8eZ4kRGTpSSzb
	IpcKsr/FMHjvK975f6/ErxOBMOMXD50ut5U507yLlK2ToK1oTqiM1WF+2qSx4j1H4jUSoMy7B2/ku
	w7xe+EGEwgZkKaxlxOXEgBrVO2fXqfGHuohDGwPEtnffo5fRNn4+icqeTgDSk0mhKhUKWhitfANZn
	INi9Sy9kR8xWxtFRvB69jhM3YpRUCdrrYsub+IrOdyQsdnQ2Q6MGgIcVZrfPNEaXrEpdVWnYuQtXg
	N50Uf98EBYmSdcQmULtbxxQjxlWzQrCaYs8EUuQ1T9FxyfmB32vvxzd2kF7nfznEGd6r8efkBWdk4
	W4VfmqPjaBRkfJXrxwgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9TdI-0005Fi-LN; Wed, 04 Mar 2020 13:00:16 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9TdB-0004me-61
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 13:00:11 +0000
Received: by mail-qv1-xf41.google.com with SMTP id o18so721570qvf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 05:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Beu3qvFTUH06Rlm0/R7E/eA87SF87SDv5KPlGbUEFUY=;
 b=SjfdFlS3wO55dVhIbilav3RQtVBWgW91Cnb/+8n7jkIY3LxEaXZNW4wSRZ1w0P+Y2Z
 m2wcVG3v4ccrUcE2gOaZ9eeheXa1jOFC15/2rUmkBSsjvSz5A70/65MZ8+07ABoV8gmL
 lUJOwfGxVQgX8ZwatFqrgLAj0QQ4QVNzVsKWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Beu3qvFTUH06Rlm0/R7E/eA87SF87SDv5KPlGbUEFUY=;
 b=ipotPO8In0rJ6bY+UlucxAU5LDA7/iwHchLy1/3UwUnM1UmZ2XTtmC33OspdJAJzwK
 OQe7NeBDGCfo4fWHptiSA+hbkqW8htX1uhaXTURwrsAcDpYoaZNboLmXMdFQ/Px7OZjW
 CwvviH9KpRi0jnysCfhM+PKua81ZCpxOvO6SBtYpBXeCYfTYRRcHaTYip610ZPxdq0lu
 Cwh4pzYOem6PUwZiocMgyxsZ33e/DeGWP39TN6YQUZTnkn2uHJP99T4PE/FVIHM/xpF+
 MRuXhlSMNcKaas0IEQluWSNrC//Rw2+mPAyRaeouxkvZ+zmAuhRGSTygAkYCdxVt8qLj
 XjUg==
X-Gm-Message-State: ANhLgQ3Qtgo5bHnq19X2vzYicUEjqZw3O0mLDRbaZQ/axZJJhI7n5PGM
 cVCWVkcpx+mUWx64t5gTFfeGAqr7mLpDnesmgoE/5w==
X-Google-Smtp-Source: ADFU+vvAPd9eUBLgxOcz8KO1mdbkjC+PQUvSPfxQ3LEaj+3mlGdcvGhxsv7PsukxnD5IbwUM3xFfAimQpPOT+wKAGoo=
X-Received: by 2002:a05:6214:1750:: with SMTP id
 dc16mr1985308qvb.47.1583326806377; 
 Wed, 04 Mar 2020 05:00:06 -0800 (PST)
MIME-Version: 1.0
References: <1580730044-30501-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1580730044-30501-5-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1580748607.31376.3.camel@mtksdaap41> <1581911502.20099.13.camel@mhfsdcap03>
In-Reply-To: <1581911502.20099.13.camel@mhfsdcap03>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 4 Mar 2020 20:59:55 +0800
Message-ID: <CANMq1KDTHcFV8Gue1PuOWkWXL20z_-j58u8JpwbBm_wUvLeqSg@mail.gmail.com>
Subject: Re: [PATCH v8 4/5] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
To: Ran Bi <ran.bi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_050009_275263_A1B2116B 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Josef Friedl <josef.friedl@speed.at>,
 lkml <linux-kernel@vger.kernel.org>, Richard Fontana <rfontana@redhat.com>,
 Devicetree List <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Feb 17, 2020 at 11:52 AM Ran Bi <ran.bi@mediatek.com> wrote:
>
> On Tue, 2020-02-04 at 00:50 +0800, Yingjoe Chen wrote:
> > > diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
> > > index f84b916..fffe34a 100644
> > > --- a/include/linux/mfd/mt6397/rtc.h
> > > +++ b/include/linux/mfd/mt6397/rtc.h
> > > @@ -18,7 +18,8 @@
> > >  #define RTC_BBPU_CBUSY         BIT(6)
> > >  #define RTC_BBPU_KEY            (0x43 << 8)
> > >
> > > -#define RTC_WRTGR              0x003c
> > > +#define RTC_WRTGR_MT6358       0x3a
> > > +#define RTC_WRTGR_MT6397       0x3c
> > >
> > >  #define RTC_IRQ_STA            0x0002
> > >  #define RTC_IRQ_STA_AL         BIT(0)
> > > @@ -57,6 +58,10 @@
> > >  #define MTK_RTC_POLL_DELAY_US  10
> > >  #define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
> > >
> > > +struct mtk_rtc_data {
> > > +   u32                     wrtgr;
> > > +};
> > > +
> > >  struct mt6397_rtc {
> > >     struct device           *dev;
> > >     struct rtc_device       *rtc_dev;
> > > @@ -66,6 +71,15 @@ struct mt6397_rtc {
> > >     struct regmap           *regmap;
> > >     int                     irq;
> > >     u32                     addr_base;
> > > +   const struct mtk_rtc_data *data;
> > > +};
> > > +
> > > +static const struct mtk_rtc_data mt6358_rtc_data = {
> > > +   .wrtgr = RTC_WRTGR_MT6358,
> > > +};
> > > +
> > > +static const struct mtk_rtc_data mt6397_rtc_data = {
> > > +   .wrtgr = RTC_WRTGR_MT6397,
> > >  };
> >
> > Hi,
> >
> > Putting these in header file doesn't looks right to me.
> > Who need this? can you move them back to rtc-mt6397.c?
> > Joe.C
> >
>
> This could also effect kernel/drivers/power/reset/mt6323-poweroff.c
> which using same region of RTC registers.
> There are 2 ways of modification:
> 1. kernel/drivers/rtc/rtc-mt6397.c implement do_pwroff function and
> export to mt6323-poweroff.c
> 2. Just modify mt6323-poweroff.c file to compatible this patch. I mean
> using RTC_WRTGR_MT6397 to replace RTC_WRTGR. Or modify mt6323-poweroff.c
> like rtc-mt6397.c

Oh, I see, so basically both rtc-mt6397.c and mt6323-poweroff.c need
to know at what offset RTC_WRTGR actually is. Correct?

Is there any plan to have mt6323-poweroff.c support any of the other
PMICs (not just MT6323?)?

a. If not, I'd just add:
#define RTC_WRTGR_MT6323 RTC_WRTGR_MT6397
in rtc.h, for added clarity, use that in mt6323-poweroff.c
(s/RTC_WRTGR/RTC_WRTGR_MT6323/), and be done with it.

Actually, even if there's a plan, you can go ahead with this simpler
solution for now, and fix later when the issue comes up.

b. If you ever want to support multiple PMICs with mt6323-poweroff.c,
you'd need that offset for 2 different sub-devices under the same mfd,
so the matching logic belongs in the main mfd device, not in
rtc/poweroff driver.

So I'd move the matching logic in drivers/mfd/mt6397-core.c, and add
rtc_wrtgr offset (or a full _data structure) to `struct mt6397_chip`,
or, probably better, add a IORESOURCE_REG to the matching resources to
specify the offset (that's what drivers/mfd/88pm860x-core.c seems to
be doing, for example).

And then mt6323-poweroff.c should probably be renamed to mt6397-poweroff.c.

(actually, looking at this, I'm even questioning if mt6323-poweroff.c
should even exist, and if you should just fold it into rtc-mt6397.c?
Since they use the same registers?)

Hope this makes sense?

Best,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
