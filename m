Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E89015ADCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:56:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kb2QBH+WN3Ac78MWNh0deCZbcxtbGKLM/Wpy7vs5rcI=; b=l2fCvcOqVEDrYc
	SWkUXHxlL+diXcLvX+kiotyRIfEL+MdhEqtXyz4uGMdbHSDomTqBjg/8pINONBUvRh0MEAXSd0Ueg
	G/vUNpL9eM6HnSsRmrdZ1e5mS9IJlLcrlslc/tl8aIuWFFQs0OluRoLPGyfo7GqVbjbqiHX573asK
	rr2qVj7m+5VLzJtlVvsz50/QVz7Trn853/7SpkcMAoi0U8kJVaRtqiZ6gtXDje6vcvzI0ru1bWT9a
	DdLeqGbdUMKAuk7SORApv0wMNNMEHxiTAK1/P2umEXuI68iUbRuAf7igwF2XxIaZzO/G1TKvYv/4n
	KWQikxwg/Uc4zM4s2dVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vIx-0002oJ-L3; Wed, 12 Feb 2020 16:56:03 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vIp-0002nb-5r
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:55:56 +0000
Received: by mail-oi1-x241.google.com with SMTP id z2so2669871oih.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 08:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZkG/VJ0lY45qdF4MZ2qq6J5mSSjviuZtICqPeqXG708=;
 b=Vv2ffK4Tn6ryJ3u0zImgBE+lv/0R7s5t+mw+3Te7EpAzd38xjmIPEqZyXrxi/WIGy3
 PuP7b09q/I+873zyJbKPBdUJISC3i0ZaeEme5R8OeHbU564OvTTGCOfC87gouXmzQdaw
 JPauOP9XAQprQjVpwRu27CWvJ0prmMrhvAP79aPDCJ+oyMriUldZKW2AClI04zeM9N4U
 QHr76ARNFeJEehxVx6CHopb36awgrqyU2zJg+acUmAJh5Z1rnxMsGT0hqUpaq0ku5nI0
 z2W33+sMe+iZzh14V6TZ/Ma+B/fRWBKuaDN+cgOhYrN5ulNGzWC7KF4XsnMtmy3PpkmX
 hOMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZkG/VJ0lY45qdF4MZ2qq6J5mSSjviuZtICqPeqXG708=;
 b=bpgr25NEeQetv1Iy4JlCvl0j2z2x5BICyrNfXI6FlXwZ3WIm+9r/jtUd85liCmFP6X
 rRirTtJAPdwLf+u2l0REQ0uQ2+0OOUzJgLz0Bv5CPFZ4IVXahUUAwxjj810OzuMZHQK6
 Xi5svlE7AfMADsjT5Ce0rVBdQqNWLcTHOjIBUiWO3AsLuZ3L3Eoz5ixFh3csd+tDFCf5
 ajm/Gxfci6Ivx+qUqnXxtFygCpxyTVJVxtsD2beiUlKRIJNEEtcsvUIMC69PAJo4xXV0
 k9FQNCZf1mLJeh3+/g/WbM5Udesn2xRWHdIer/WKDE2O9utVeMn3mQgZl+QbK834J8L3
 A1lA==
X-Gm-Message-State: APjAAAXOcBlKE8gDvMB7KdBGkT/xC+F428ySwEi87wgrKhy6ZO/ZOSLY
 Mm3hct55W7QBhO+CaI3itWKCeKhbN6ONyJXK2xVzXw==
X-Google-Smtp-Source: APXvYqzYAb+EoIZD6mRgbOzS6nvLilEz5kbsemDCZy3GCG2u6vymyRgjxZkbkDxYxSLDxkHcfqO1vFSxU1iqnnTcdXs=
X-Received: by 2002:aca:4e02:: with SMTP id c2mr7056666oib.142.1581526551075; 
 Wed, 12 Feb 2020 08:55:51 -0800 (PST)
MIME-Version: 1.0
References: <1581108026-28170-1-git-send-email-tharvey@gateworks.com>
 <20200207210209.GD19213@lunn.ch>
In-Reply-To: <20200207210209.GD19213@lunn.ch>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 12 Feb 2020 08:55:39 -0800
Message-ID: <CAJ+vNU0LV7EquWXfBKfYYLzagXiVHtvqMtx5hiM1zxXQWVgWrA@mail.gmail.com>
Subject: Re: [PATCH] net: thunderx: use proper interface type for RGMII
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_085555_281233_70650BF4 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 rrichter@marvell.com, linux-arm-kernel@lists.infradead.org,
 David Miller <davem@davemloft.net>, sgoutham@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 7, 2020 at 1:02 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Fri, Feb 07, 2020 at 12:40:26PM -0800, Tim Harvey wrote:
> > The configuration of the OCTEONTX XCV_DLL_CTL register via
> > xcv_init_hw() is such that the RGMII RX delay is bypassed
> > leaving the RGMII TX delay enabled in the MAC:
> >
> >       /* Configure DLL - enable or bypass
> >        * TX no bypass, RX bypass
> >        */
> >       cfg = readq_relaxed(xcv->reg_base + XCV_DLL_CTL);
> >       cfg &= ~0xFF03;
> >       cfg |= CLKRX_BYP;
> >       writeq_relaxed(cfg, xcv->reg_base + XCV_DLL_CTL);
> >
> > This would coorespond to a interface type of PHY_INTERFACE_MODE_RGMII_RXID
> > and not PHY_INTERFACE_MODE_RGMII.
> >
> > Fixing this allows RGMII PHY drivers to do the right thing (enable
> > RX delay in the PHY) instead of erroneously enabling both delays in the
> > PHY.
>
> Hi Tim
>
> This seems correct. But how has it worked in the past? Does this
> suggest there is PHY driver out there which is doing the wrong thing
> when passed PHY_INTERFACE_MODE_RGMII?
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>

Andrew,

Yes, the DP83867 phy driver used on the Gateworks Newport boards would
configure the delay in an incompatible way when enabled.

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
