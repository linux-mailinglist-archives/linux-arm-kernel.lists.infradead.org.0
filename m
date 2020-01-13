Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3474138A50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:44:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hB7sux3CL45p8O7g77EJT6G6ZKK58hMK0DPpf7YfYV0=; b=kgitdwHUsViFS7
	HLO2/4Qmp0vP+yoBD4VuEypBUjuKXLahBPrJAvYq/yl83zXQ/BUYY4DvKoJKDeG0M4BvCeWxIPe7W
	fO6K2VWgD0Rg6YajNlEhDCpwtLtOIBX6qVmqsydrIin65mQJkxRvnulUqLkeCa9n/XMgWBc3b5aJJ
	nXkAEhVbcKkD30DPHBXyp27Bax7jTwCWzckGtP8Oawoz4F00ISpORkyP9/NpxD0EYjHiRJRnC4N8K
	534YA5QOSMKNn0bzJRsp7sa2yfbRLIV1s+rwpzdlciI3J9S2QEVnqwv5iMdb4Lh0Kn5N4jaNeh7sf
	afj3goq40kmyeGs/eJVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqrah-0006gJ-8G; Mon, 13 Jan 2020 04:44:39 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqraU-0006ee-2v
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:44:27 +0000
Received: by mail-qt1-x843.google.com with SMTP id e5so8055436qtm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 20:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RyRzsNkAooAl3CXmjsa9W0SlFMm2BfQr/u0cFTqztIs=;
 b=YtzQLMTYi/kldBF6YYcIPuroqqYIvxXUvFONigR4Dfl8w2speTLhMOoGxcDZYw9OM1
 FgtbFKU2OvsDiZvseynxkHwklMLh5YKPOusMg0dToNRHh+bLHTwU9e0XaYmOYIn/vI94
 dEcwcU+iGg0HkoyHc5LThywaVg+FZ5hhITBYE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RyRzsNkAooAl3CXmjsa9W0SlFMm2BfQr/u0cFTqztIs=;
 b=lZqffvfHm6gsH3SNLSn/+gg/iELxjGSeGthbjGmAfDkjeSOgw72ckB89j8UvvsTy9E
 D056H/g3HHxUVGvahrTorJpG0o61clcUpCf64IDlfMZpXMv4X5ubW8uRrk+Ezo4R2IDI
 UpUtq9ydQMGSKjSCj1rFDdSHb+PQb24yFETZlM0jqHIP/oKD9R11Y5AOOM95XR8it98a
 JxZq+0SzGdTIYb6YILPwIeOiKhu7NmXKcVryxNQxBaYD1HMUWZDh/qwUe9xE7cgFEKyh
 L9/QOxgpJanuOzo1VrOSBMkTcwUZ44pPf3RLZDzra0M2nVeQMzm/KEi+NcefkrvDZGK+
 O/Jg==
X-Gm-Message-State: APjAAAVWYMTLZaNpBW4Hc77VOxFNXbnyquMq9sF7ZOHcS7WQ84o7xZfl
 mVZKyZ6Q9rRQyJBgy50DBUqPVGTeg2ZzC+dMxt+lQg==
X-Google-Smtp-Source: APXvYqy3LB6U150QIptmA2JsO9/a4I+iPJJewaoaUQbDRBc1Zx9V28Z/ANjOmYw2SHIkmhQ0FjMPTtUiqVGwYQaYARk=
X-Received: by 2002:ac8:750b:: with SMTP id u11mr12533148qtq.174.1578890662186; 
 Sun, 12 Jan 2020 20:44:22 -0800 (PST)
MIME-Version: 1.0
References: <20191227141405.3396-1-yong.liang@mediatek.com>
 <20191227141405.3396-2-yong.liang@mediatek.com>
 <CANMq1KD=jAPn4Y7zQZrsg9FB7Cq6tNX0R8OF4qX21Sjy2=0Naw@mail.gmail.com>
 <CANMq1KB4PzAUdp03go0Ur_khi2bM3+oNUhHtMK=--V6DmGXiDA@mail.gmail.com>
 <2bbd8f47-fe68-574c-cbe9-bcc680dd4c84@gmail.com>
In-Reply-To: <2bbd8f47-fe68-574c-cbe9-bcc680dd4c84@gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 12:44:11 +0800
Message-ID: <CANMq1KCXMUP=5ijqLsZ67MvO2ROFkG0vSX64KqmWtYKm7w8f2g@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] amr64: dts: modify mt8183.dtsi
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_204426_155397_8B4ADE29 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Yong Liang <yong.liang@mediatek.com>, linux-watchdog@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux@roeck-us.net, wim@linux-watchdog.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 6:09 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
>
>
> On 08/01/2020 10:14, Nicolas Boichat wrote:
> > On Wed, Jan 8, 2020 at 4:56 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >>
> >> minor nit, s/amr64/arm64/ in the commit title.
> >>
> >> On Fri, Dec 27, 2019 at 10:15 PM Yong Liang <yong.liang@mediatek.com> wrote:
> >>>
> >>> From: "yong.liang" <yong.liang@mediatek.com>
> >>>
> >>> 1. Include mt8183-reset.h and add reset-cells in infracfg
> >>> in dtsi file
> >
> > Err, wait, doesn't this depend on
> > http://lists.infradead.org/pipermail/linux-mediatek/2020-January/026170.html
> > ?
> >
>
> That's all a bit confusing, I thought we are fine to add the reset cells to
> infracfg as we have the resets defined in
> 64ebb57a3df6 ("clk: reset: Modify reset-controller driver")

You're right, we're fine. But at least in theory, we should still have
the binding documentation that I linked above.

I will try to pick up all the required patches, split them across
8183/2712 and resend as one series.

> That's why I took this part from:
> https://lore.kernel.org/linux-mediatek/20191226093930.22413-1-yong.liang@mediatek.com/
>
> Please let me know if I'm wrong and I'll drop it.
>
> Regards,
> Matthias
>
> >>> 2. Add watchdog device node
> >
> > Can we have a patch with just this change instead, since you're
> > sending the binding with it.
> >
> >>>
> >>> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> >>
> >> Tested-by: Nicolas Boichat <drinkcat@chromium.org>
> >>
> >>> ---
> >>>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 8 ++++++++
> >>>  1 file changed, 8 insertions(+)
> >>> [snip]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
