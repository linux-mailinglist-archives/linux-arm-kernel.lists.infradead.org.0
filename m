Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ED7133E15
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 10:14:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Br4rqbyJjXhYnTx9vhqz8yahoJ/gAj1kBNYB6gfc/do=; b=POnaVDzIky9Q7L
	rSzE1G2GG/6WhD4LRtL+qiiigXn3Ov0+/FEWC/hHclw+ArCV4MxtzvvvlavaSiFKD7qiy/tqIn6rM
	ZES5d4YyymvLynfPT9WdxmH5dr+9nCj4eHR/uer+yjuA3ROW1UaON9LAgoFDPHKn7lfy4DVJP0ULh
	ylFocI6tGhmMh6HYDwSPFeBbTmcnoFQPRGm0chr5nrlaLZV0fDYK6bMFNlnNmdn8M64IlvdKh55v7
	wH5dWImX3D61IGW9ptE0j5r501iUUjVqlE6W7E3NA0VPKee56NsK+uYFSisgLoD2WUJontW/zBCd3
	RcW5sSh04bodZhxhQWQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip7QM-0008BL-5F; Wed, 08 Jan 2020 09:14:46 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip7QF-0008A9-N5
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 09:14:41 +0000
Received: by mail-qv1-xf43.google.com with SMTP id x1so1087310qvr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 01:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SPzHp/TCuO+PA2nHlHMVzeUghB/5uams6CZGUZBj35o=;
 b=K/jE8RWozDdRYmSsW9itFfvjGkVpL/zCzGu39X34ur7j0Be+cWMBI2auPmoluvn4c1
 /S/feNX81zbnksyn4ZVjM/8vfVA6T/7g7v52oVDY/X+5X9Y9F/hAbdyl8xKfHD3iR7ln
 3kR5KrCmE2zxPQDibCfArttMxzqMRbVfVXuiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SPzHp/TCuO+PA2nHlHMVzeUghB/5uams6CZGUZBj35o=;
 b=BUR4L5HiXqTLmYPeX/U+LEjIsTLn33oTzlh2T58H/DX4brTqhCWnzOLg+sjCck69n0
 g5kwSlTni96E+jUVxKR414jTJWhORKfAqY3FK7rNUd/+8m/ymoAb9RK10bH5LIJyEZ04
 v5w8c22dZ8zfDLn3YfBIt8uJVAEmkjF+coG7Q0JJ4BhqRiXfF11dkZZoVRH/xjJXOffq
 1jihNihTVrR4suNO5q1rtJirGR59DjA5VCmQ2jC9rl8yDGN8wi5tF6ir6DBeozRpMtiL
 0o/YwvsyOLT5XjEFNwambMbheLoh1hF6Rp8FE2Ua1sBuKzcErwfYxSCAFfqPybzwVO7J
 CYqQ==
X-Gm-Message-State: APjAAAVFYFLH2ilhULLn8nTIUzfAKbQjRO+z7IegG0Q0n2IaFPh3Zvlv
 jjm/08FFNUBeuZtxkCA+K+TDPVY7oubEZcSsKAdTDg==
X-Google-Smtp-Source: APXvYqxf/pnt/xOzQY9MksejO/BRE5fT3xBR6Oezhn4Kzl/SblH+zp9r0nnNwuErhStHc9QFh2BYf2nQYASas+C1/yI=
X-Received: by 2002:a0c:f703:: with SMTP id w3mr3236524qvn.6.1578474878009;
 Wed, 08 Jan 2020 01:14:38 -0800 (PST)
MIME-Version: 1.0
References: <20191227141405.3396-1-yong.liang@mediatek.com>
 <20191227141405.3396-2-yong.liang@mediatek.com>
 <CANMq1KD=jAPn4Y7zQZrsg9FB7Cq6tNX0R8OF4qX21Sjy2=0Naw@mail.gmail.com>
In-Reply-To: <CANMq1KD=jAPn4Y7zQZrsg9FB7Cq6tNX0R8OF4qX21Sjy2=0Naw@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 8 Jan 2020 17:14:27 +0800
Message-ID: <CANMq1KB4PzAUdp03go0Ur_khi2bM3+oNUhHtMK=--V6DmGXiDA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] amr64: dts: modify mt8183.dtsi
To: Yong Liang <yong.liang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_011439_773801_345F1E2C 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Devicetree List <devicetree@vger.kernel.org>, linux-watchdog@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux@roeck-us.net, Matthias Brugger <matthias.bgg@gmail.com>,
 wim@linux-watchdog.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 4:56 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> minor nit, s/amr64/arm64/ in the commit title.
>
> On Fri, Dec 27, 2019 at 10:15 PM Yong Liang <yong.liang@mediatek.com> wrote:
> >
> > From: "yong.liang" <yong.liang@mediatek.com>
> >
> > 1. Include mt8183-reset.h and add reset-cells in infracfg
> > in dtsi file

Err, wait, doesn't this depend on
http://lists.infradead.org/pipermail/linux-mediatek/2020-January/026170.html
?

> > 2. Add watchdog device node

Can we have a patch with just this change instead, since you're
sending the binding with it.

> >
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
>
> Tested-by: Nicolas Boichat <drinkcat@chromium.org>
>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > [snip]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
