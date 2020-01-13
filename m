Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0690E138BCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 07:28:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSfsaD5koCHAPGIZYgP9M56mDIqv6ypL8fDSMkaIM/g=; b=jVenE22i9HlWZZ
	v9cf3DrmZIHgA9RGHjVB0jUAKnVIJuKDuF0rFFHA3b0skH+Zko3Oi7qlHj810NcJqusj9DNG/7W/O
	/Wp0yYeraurFb6MbpAMpmMbgMnfr1PUl5VXc/nfL3rrwGuK4iFYxtFSisows0eDZGIZM9d6UznjKk
	oG3guKYk7iUgUwKiq6GGqRX7suZnZB5burlqPPz7QUsq4YJBWSzlpcsQ/fhqxVcKiali/+m5JrNur
	DoySvt9JzdWXdBTOjMnG4KbEJMQAY3JtXcG5yRScI8F/LqB04EZiBaBgS/UsF/LjjNyJbhipY+Nqy
	tEcFsmYnQL8xjlCuK6Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtCg-0007E3-QS; Mon, 13 Jan 2020 06:27:58 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtCN-000739-Pd
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 06:27:41 +0000
Received: by mail-qk1-x742.google.com with SMTP id j9so7576388qkk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 22:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qqU50tJXg4btjktw2VvbKv0T9TvXNsl1InIj+ksOmtQ=;
 b=BesEvaNjkjkIaEKU8s1yXxtetLayewpTzSIxgPAnNIWav0rTK98k3PPyGaPY2ooOev
 PIM5l4QCvCTOXJN9/lV28q95hAXAwCBK0NsqjUnuTxlcAFy50WZaCvEZUAtRr7ZYVZUl
 GjvY+SmcmMu/fBk4T4iGDv10EKa6Rk0lxaUB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qqU50tJXg4btjktw2VvbKv0T9TvXNsl1InIj+ksOmtQ=;
 b=E+9dqW6oUpgTST4kSPuR2pp80N9eBmg9LafgNC4G/BMNvUxgU4y1P7mumT/DfwrGxu
 Y+IfJNZgG88ORrwmXLhZDzwGV1FbN3URJtuU/0hRpxTLwTlSAWAsOqxUuKCRSzRBXmUX
 6veUtpN9p5Tx6pyhVT8eRo9DTtVqMoTv51ga1LR9yZECIdmLkWGJFQuW8c6JgtPT+dPJ
 5YAK1qzU59uDo08ohcTvrdPs6vgldsC5KeqmICen2sKKPt9EQuNWTECrE8gHZUSC57Dg
 Bo9h/LLK7dAinro65X4dFYeYt50Un+shhBDi/XYE0U9R00Rqz4vck+vSnSXJUX7bIOt0
 5/jQ==
X-Gm-Message-State: APjAAAWVDxkZkOnU3vxbUkfcOkW4lWNaP3rG6H1Ln4GNVm6dmUKsR6n6
 eW/D9lX4YuW3Qsa9TJbdliu5NjRAVkj/XVv00vbTCQ==
X-Google-Smtp-Source: APXvYqzP2GQhgfRONDK0y5ZOBxgMhbBnqFh8jwEdZzw+mIw4d1s/lLCcUIgYHMP8DEVTe7wIzDfiU37pKS7LntYC0ao=
X-Received: by 2002:a37:6551:: with SMTP id z78mr15363934qkb.144.1578896857929; 
 Sun, 12 Jan 2020 22:27:37 -0800 (PST)
MIME-Version: 1.0
References: <20191227141405.3396-1-yong.liang@mediatek.com>
 <20191227141405.3396-2-yong.liang@mediatek.com>
 <CANMq1KD=jAPn4Y7zQZrsg9FB7Cq6tNX0R8OF4qX21Sjy2=0Naw@mail.gmail.com>
 <CANMq1KB4PzAUdp03go0Ur_khi2bM3+oNUhHtMK=--V6DmGXiDA@mail.gmail.com>
 <2bbd8f47-fe68-574c-cbe9-bcc680dd4c84@gmail.com>
 <CANMq1KCXMUP=5ijqLsZ67MvO2ROFkG0vSX64KqmWtYKm7w8f2g@mail.gmail.com>
In-Reply-To: <CANMq1KCXMUP=5ijqLsZ67MvO2ROFkG0vSX64KqmWtYKm7w8f2g@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 14:27:27 +0800
Message-ID: <CANMq1KCLGx2K5qSVJLFkFqYjghVk40HaZcBeUmSxpBSJQAMOzg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] amr64: dts: modify mt8183.dtsi
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_222739_826953_A7F30A13 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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
 lkml <linux-kernel@vger.kernel.org>, Jiaxin Yu <jiaxin.yu@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux@roeck-us.net, wim@linux-watchdog.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Jiaxin +Sj Huang

On Mon, Jan 13, 2020 at 12:44 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> On Fri, Jan 10, 2020 at 6:09 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> > [snip]
> > That's all a bit confusing, I thought we are fine to add the reset cells to
> > infracfg as we have the resets defined in
> > 64ebb57a3df6 ("clk: reset: Modify reset-controller driver")
>
> You're right, we're fine. But at least in theory, we should still have
> the binding documentation that I linked above.
>
> I will try to pick up all the required patches, split them across
> 8183/2712 and resend as one series.

Okay, summary of the patches, there are 2 series:

https://patchwork.kernel.org/patch/11311237/
[1.1] [v3,1/2] amr64: dts: modify mt8183.dtsi
  => Partially applied to Matthias' v5.5-next/dts64
  => Other part depend on [1.2], needs to be applied
https://patchwork.kernel.org/patch/11311241/
[1.2] [v3,2/2] dt-bindings: mt8183: Add watchdog dt-binding
  => Pending Guenter/Wim

https://patchwork.kernel.org/cover/11326757/
[2.0] [PATCH v11 0/3] ASoC: mt8183: fix audio playback slowly after playback
[2.1] [PATCH v11 1/3] dt-bindings: mediatek: mt8183: Add #reset-cells
  => IMHO adding mt2712 compatible should be another patch
  => Depends on [1.2]
  => Tags should be all dropped
[2.2] [PATCH v11 2/3] watchdog: mtk_wdt: mt8183: Add reset controller
  => Issues about tags
[2.3] [PATCH v11 3/3] watchdog: mtk_wdt: mt2712: Add reset controller
  => Issues about tags

Jiaxin/Yong Liang/Matthias: Please let me know, I'm happy to pick up
the patches, clean them up and resend them, if you think that helps.


> > That's why I took this part from:
> > https://lore.kernel.org/linux-mediatek/20191226093930.22413-1-yong.liang@mediatek.com/
> >
> > Please let me know if I'm wrong and I'll drop it.
> >
> > Regards,
> > Matthias
> >
> > >>> 2. Add watchdog device node
> > >
> > > Can we have a patch with just this change instead, since you're
> > > sending the binding with it.
> > >
> > >>>
> > >>> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > >>
> > >> Tested-by: Nicolas Boichat <drinkcat@chromium.org>
> > >>
> > >>> ---
> > >>>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 8 ++++++++
> > >>>  1 file changed, 8 insertions(+)
> > >>> [snip]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
