Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C211E7F0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 15:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDVtMZ7ym4FG61JMpRJLFnIlBgHuC7rU74nlcAjAPzs=; b=EqWa5P1Ty3z2XS
	HOXVhWoZjgg2Sla8v9GCXK52sM4jAvbJLcdNHWiMnuV5NFOmmd7X28j64S7nkUhSGax3TraXk4DpZ
	wIpo4u+zlzcUjOMr2Owa1biyauTzoQZZmKx9T0JYbhUTwCEeFuBVW/CNLhrLHcHiCtx4AQU3gwrmi
	68sF1ZIvobiDK6dvx2OKF/7uae3BWAxUfgWKwOUFBUesXU6YtnD/RCJSLxl2PkU0FtjNXsm3fYzIK
	+292ymNRFH7+9VYPvHjIvV1F3JO0mWcarRZ6zFwWpixlEZdzY60j1LSiN+GzkUte3gWC9Dqy5X5G+
	eKjUVLo5isjruFuyJ2sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jefIl-0003Qa-Jv; Fri, 29 May 2020 13:43:59 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jefIW-0003Pm-Qg
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 13:43:46 +0000
Received: by mail-ed1-x535.google.com with SMTP id i16so1786622edv.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 06:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tWgHSNB7/VCfINBd4053Z4Bp4XM8aSMiiq5K+JAFOJU=;
 b=FLkftvLPGVoeJxbq2VHT25nIDxHqlrnsichgg+ZcVZeImFzvr5WM6ikvLnws0GBV75
 e0Zn7vsbU4Yvy69PdBhEWe/kHB8gmtLkkXdVlfQq0BaaUZC0RFw1i+DCdnrmHmd3975E
 ikaIJR7tmKW8ZMPMqS6oIY/eWF4Uwu7lNTxoo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tWgHSNB7/VCfINBd4053Z4Bp4XM8aSMiiq5K+JAFOJU=;
 b=H9RtFB3Yt0mOvoHCFhFbgzBA9EBoEjeMGBTeq1NNt8jx5XlOeA9iImtHCfhAUP7UQF
 SjRAqcvDBNdqjOt0+9jfkg5+ZB0fohxykTKEdemL7VsTJ8LH2DWKSuwiCN7gcW1hExeq
 NGFpd6VxO5O3megtAVjp/um1+wYYCrF86jSzFBmSJzFDapZOngDHAw21Su4u34+jTTwO
 N0Vkl3V1r2T9sc283NnKoKEwvFOLLw5hLcHc1aUUBxQjLM5PIa/YY2+trkqDYrdory0Y
 3HWP3+VGThI8956pV4ywiPYheQlvjCaFn4YGgvT5jgfLfZipG2qbNDn/yFrzNtG4z8xq
 IQlQ==
X-Gm-Message-State: AOAM533nbRuvaDXh5EtfbsNFVVRO922l2l3zJPwx3bm+GcwWMZAzRwjZ
 2X4G0qzAJ3zt55SSAMqqeD4TUsCkgWYWhA==
X-Google-Smtp-Source: ABdhPJx5rVOhZmNVPlMK6+Zs2DyjMIhUOAEezZJeHwKD9tmR6zUep4iOKdb8glN2793ZleIFE/KaqA==
X-Received: by 2002:aa7:d487:: with SMTP id b7mr8372245edr.351.1590759822942; 
 Fri, 29 May 2020 06:43:42 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id fi9sm7482627ejb.5.2020.05.29.06.43.41
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 06:43:42 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id c3so3606019wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 06:43:41 -0700 (PDT)
X-Received: by 2002:a05:6000:d:: with SMTP id h13mr8532637wrx.17.1590759821053; 
 Fri, 29 May 2020 06:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-2-dongchun.zhu@mediatek.com>
 <20200526182847.GA92449@bogus>
 <1590569355.8804.448.camel@mhfsdcap03>
 <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
 <20200527211628.GT7618@paasikivi.fi.intel.com>
 <1590636882.8804.474.camel@mhfsdcap03>
 <20200528072332.GW7618@paasikivi.fi.intel.com>
 <1590653082.8804.517.camel@mhfsdcap03>
In-Reply-To: <1590653082.8804.517.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 29 May 2020 15:43:30 +0200
X-Gmail-Original-Message-ID: <CAAFQd5AuHDpQN8xZsWgnAt6m2reAYJbs9nBp0+mBo7_FS81LbQ@mail.gmail.com>
Message-ID: <CAAFQd5AuHDpQN8xZsWgnAt6m2reAYJbs9nBp0+mBo7_FS81LbQ@mail.gmail.com>
Subject: Re: [V9,
 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_064344_881639_29198DC4 
X-CRM114-Status: GOOD (  27.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 10:06 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Sakari,
>
> On Thu, 2020-05-28 at 10:23 +0300, Sakari Ailus wrote:
> > Hi Dongchun,
> >
> > On Thu, May 28, 2020 at 11:34:42AM +0800, Dongchun Zhu wrote:
> > > Hi Sakari, Rob,
> > >
> > > On Thu, 2020-05-28 at 00:16 +0300, Sakari Ailus wrote:
> > > > Hi Rob, Dongchun,
> > > >
> > > > On Wed, May 27, 2020 at 09:27:22AM -0600, Rob Herring wrote:
> > > > > > > > +    properties:
> > > > > > > > +      endpoint:
> > > > > > > > +        type: object
> > > > > > > > +        additionalProperties: false
> > > > > > > > +
> > > > > > > > +        properties:
> > > > > >
> > > > > > Actually I wonder whether we need to declare 'clock-lanes' here?
> > > > >
> > > > > Yes, if you are using it.
> > > >
> > > > Dongchun, can you confirm the chip has a single data and a single clock
> > > > lane and that it does not support lane reordering?
> > > >
> > >
> > > From the datasheet, 'MIPI inside the OV02A10 provides one single
> > > uni-directional clock lane and one bi-directional data lane solution for
> > > communication links between components inside a mobile device.
> > > The data lane has full support for HS(uni-directional) and
> > > LP(bi-directional) data transfer mode.'
> > >
> > > The sensor doesn't support lane reordering, so 'clock-lanes' property
> > > would not be added in next release.
> > >
> > > > So if there's nothing to convey to the driver, also the data-lanes should
> > > > be removed IMO.
> > > >
> > >
> > > However, 'data-lanes' property may still be required.
> > > It is known that either data-lanes or clock-lanes is an array of
> > > physical data lane indexes. Position of an entry determines the logical
> > > lane number, while the value of an entry indicates physical lane, e.g.,
> > > for 1-lane MIPI CSI-2 bus we could have "data-lanes = <1>;", assuming
> > > the clock lane is on hardware lane 0.
> > >
> > > As mentioned earlier, the OV02A10 sensor supports only 1C1D and does not
> > > support lane reordering, so here we shall use 'data-lanes = <1>' as
> > > there is only a clock lane for OV02A10.
> > >
> > > Reminder:
> > > If 'data-lanes' property is not present, the driver would assume
> > > four-lane operation. This means for one-lane or two-lane operation, this
> > > property must be present and set to the right physical lane indexes.
> > > If the hardware does not support lane reordering, monotonically
> > > incremented values shall be used from 0 or 1 onwards, depending on
> > > whether or not there is also a clock lane.
> >
> > How can the driver use four lanes, considering the device only supports a
> > single lane??
> >
>
> I understood your meaning.
> If we omit the property 'data-lanes', the sensor should work still.
> But then what's the meaning of the existence of 'data-lanes'?
> If this property 'data-lanes' is always optional, then why dt-bindings
> provide the interface?
>
> In the meantime, if omitting 'data-lanes' for one sensor(transmitter)
> that has only one physical data lane, MIPI receiver(e.g., MIPI CSI-2)
> shall enable four-lane configuration, which may increase consumption of
> both power and resource in the process of IIC communication.

Wouldn't the receiver still have the data-lanes property under its
endpoint node, telling it how many lanes and in which order should be
used?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
