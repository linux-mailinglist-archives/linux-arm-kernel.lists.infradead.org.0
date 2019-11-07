Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFE9F2690
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 05:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iw954N9HQGywK8EqXB24W6hNUmA/DrzAckcu9PBryOs=; b=h2HEUrL3Vc9DPx
	Qc7PfddIqy1MCV3fG6d01tNEWGXpZKJq8jDk6ApkjaMect1SYqOfBGTf1bzV9n7t7ToKIPiWve0xF
	4xZDL6E+OV56K42yBo14kp1Yvq02NKbR0kKPrZZtS2xKyj5W0nhE527/6tXzxw4S4t4cN0f4gXNs7
	+xys147ECEUbhFU9SAT4eTwH13HazcPZW2pWO7ImZaq4d3iND0DWktW6i0777NdlCeHYIua/50QsV
	AWX/fdH/YWCzStYbw4PyKKmBRVXOGZmoLCpkOPPW5KtOHcmtZylDXzfJZzryn7fUull61SRmlTMn8
	jI4Ing2zTCCArfIkNhyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSZO3-0000WM-B6; Thu, 07 Nov 2019 04:27:11 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSZNt-0000VK-Qd
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 04:27:04 +0000
Received: by mail-ed1-x544.google.com with SMTP id l25so748391edt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 20:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NTuqbBhbQp3ygPAHQ/95mErmiV21/dbwEM5cnatuYgo=;
 b=OBaBm0xpvCSYxK1MAXtaS1QtSia6M7jk/+XEyXOMV6AMB2BZ556TUBNw66KOGKf4x5
 5caki3RhmulXn4bzNACgONX83+XtQI/ckKr3KRSdsf19yJvsbLmBQkRQdymNxenRUoey
 ZiyCs5JnOXqqnXoLrk8bFydcdb5AChyA5cLAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NTuqbBhbQp3ygPAHQ/95mErmiV21/dbwEM5cnatuYgo=;
 b=WMr4ounuXesQlIl1xo67ePb/bSFHJ0Oll5iXsntIrM8Cc0eGZhq1Wsze994FccsrZR
 Ve3g8jEY9iGoUH63xzWvIuJmScNG98IqLQWRmO93zs6FmT9VPAbjyxUtRP1VzpVDhOPL
 uoebwS+EnQAQVXXEypdqKcKPW143neEwM40iLe+UiYkL49R/CRQxAHacYNuxwPZND+t+
 DZziqSJhk+oGdu6ODrhPxi6T4QI1cHNebfExLQpDl9AJduDblmket2A77JiRkBGd1/G/
 jNBCKJK7BagbNMSuxnpv+XNGqf0Zc03Nq1shJVhS+TCNgJWJCU64rl/91N2Rrf1qosI0
 byCA==
X-Gm-Message-State: APjAAAU0sSuyJZSuA5AWlojIAJzPXpSaabrB7OF3yRNczW0WYt9GZ5M4
 A1lg+zI5sychd2A6bxNNPOY2c4d0RYkupQ==
X-Google-Smtp-Source: APXvYqzm026kXo2Y29BnWtD3hYL/0NyBdzEK/42wuJ8lSW2kRMlDmCSH6NAM4d5ao3LTWLZtebzEsQ==
X-Received: by 2002:a50:d7c9:: with SMTP id m9mr1422177edj.93.1573100819386;
 Wed, 06 Nov 2019 20:26:59 -0800 (PST)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id c16sm22526edu.31.2019.11.06.20.26.58
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Nov 2019 20:26:58 -0800 (PST)
Received: by mail-wm1-f53.google.com with SMTP id l17so126019wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 20:26:58 -0800 (PST)
X-Received: by 2002:a1c:3c42:: with SMTP id j63mr966022wma.90.1573100817773;
 Wed, 06 Nov 2019 20:26:57 -0800 (PST)
MIME-Version: 1.0
References: <20191010075004.192818-1-tfiga@chromium.org>
 <1570697118.32135.20.camel@mhfsdcap03>
 <CAAFQd5AU53=BRUrK_i-0dRYueVoSd3Bg3AtvZUMHgFv3hLuNug@mail.gmail.com>
 <1570705147.22261.13.camel@mhfsdcap03>
 <CAAFQd5AszvSow2vgRq+CbtBzdNO7ysymXp=xerR6dtmi8OxMZw@mail.gmail.com>
 <1572423288.18464.38.camel@mhfsdcap03>
In-Reply-To: <1572423288.18464.38.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 7 Nov 2019 13:26:46 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AiFZGZkND++umeTg5SoQK_VES5JEXdJ8hCGL-izs3NkQ@mail.gmail.com>
Message-ID: <CAAFQd5AiFZGZkND++umeTg5SoQK_VES5JEXdJ8hCGL-izs3NkQ@mail.gmail.com>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_202701_863854_020BAD66 
X-CRM114-Status: GOOD (  35.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Changqi Hu <Changqi.Hu@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Shik Chen <shik@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 5:15 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Fri, 2019-10-11 at 13:35 +0900, Tomasz Figa wrote:
> > On Thu, Oct 10, 2019 at 7:59 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> > >
> > > On Thu, 2019-10-10 at 18:00 +0900, Tomasz Figa wrote:
> > > > Hi Chunfeng,
> > > >
> > > > On Thu, Oct 10, 2019 at 5:45 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> > > > >
> > > > > Hi, Tomasz,
> > > > >
> > > > > On Thu, 2019-10-10 at 16:50 +0900, Tomasz Figa wrote:
> > > > > > MediaTek XHCI host controller does not support 64-bit addressing despite
> > > > > > the AC64 bit of HCCPARAMS1 register being set. The platform-specific
> > > > > > glue sets the DMA mask to 32 bits on its own, but it has no effect,
> > > > > > because xhci_gen_setup() overrides it according to hardware
> > > > > > capabilities.
> > > Yes, this is what I want to do, maybe need remove DMA mask setting in
> > > platform-specific.
> > >
> > > > > >
> > > > > > Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
> > > > > > 32-bit DMA mask instead.
> > > > > >
> > > > > > Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> > > > > > ---
> > > > > >  drivers/usb/host/xhci-mtk.c | 10 +++++-----
> > > > > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > > > > > index b18a6baef204a..4d101d52cc11b 100644
> > > > > > --- a/drivers/usb/host/xhci-mtk.c
> > > > > > +++ b/drivers/usb/host/xhci-mtk.c
> > > > > > @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
> > > > > >       xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
> > > > > >       if (mtk->lpm_support)
> > > > > >               xhci->quirks |= XHCI_LPM_SUPPORT;
> > > > > > +     /*
> > > > > > +      * MTK host controller does not support 64-bit addressing, despite
> > > > > > +      * having the AC64 bit of the HCCPARAMS1 register set.
> > > > > > +      */
> > > > > > +     xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
> > > > > Somes SoCs support 64bits in fact, so can't support this quirk, do you
> > > > > encounter any issues without this quirk?
> > > > >
> > > >
> > > > Thanks for taking a look at this patch.
> > > >
> > > > Yes, on MT8183 the DMA mask ended up being set to 64 bits, but
> > > > according to the information I received from MediaTek, the controller
> > > > on that SoC only supports 32 bits.
> > > As I know, mt8183 doesn't support memory greater than 4G mode.
> > >
> >
> > We have 4GB of DRAM at 0x40000000-0x140000000 on our board with
> > MT8183. What happens if you attempt to use the memory from
> > 0x100000000-0x140000000 with the XHCI controller on this SoC?
>
> Sorry for the late reply.
>
> I've checked it with USB DE, USB IP supports 64bit on MT8183, so no need
> set XHCI_NO_64BIT_SUPPORT.
> Would you please help to send a new patch to remove local dma mask
> setting, no need set it.
>
> Thanks a lot
>

Thanks Chunfeng. Sounds good then. I'll send a follow-up clean-up
patch once I catch up after a conference and vacation. :)

Best regards,
Tomasz

>
> >
> > > >
> > > > If some SoCs support only 32 bits and some support 64 bits, we may
> > > > either need to use different DT compatible string for them or add a DT
> > > > property and set the quirk based on that. Right now in upstream we
> > > > have:
> > > >
> > > > 1) "mediatek,mt8173-xhci", used by:
> > > > MT8173
> > > >
> > > > 2)"mediatek,mtk-xhci", used by:
> > > > MT2712
> > > > MT7622
> > > > MT8183 (not yet upstream, but I suppose it's on the mailing lists)
> > > >
> > > > Would you be able to check which of the SoCs above report 64 bits but
> > > > support only 32? (and so would need this quirk)
> > > I'm afraid I can't, almost all MTK SoCs supporting xHCI are using this
> > > driver, AC64 should be set rightly according to addressing capability.
> > >
> >
> > Does it mean that only MT8183 may be the only SoC with a problem with
> > this capability bit?
> >
> > Matthias, do you have access to MT2712 and MT7622 devices? I have
> > MT8173 and MT8183, so I can check them, but would be good to check
> > this on the other ones too.
>
>
> >
> > Best regards,
> > Tomasz
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
