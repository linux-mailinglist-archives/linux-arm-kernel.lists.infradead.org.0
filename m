Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3234A450
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOIypOyMP2AS5Qw6XtLDuXgKmZuLwMOTBw/lB2i8VLA=; b=fUmOBbG5FxJrUU
	OLHOemq2w+FfqGwcQESJqwaPDmkOI9m4EJGRzGLWSEba8TnsRQ9l4ZJ/LlyFBPr/AWd2dOxhcqJ0N
	3DqFlTGyxdVXhODY1zhQM/TvRNZ6763uYZYg93jh47ESxq2gRPbMLdvPmbAofLRySUsNGhsAoQT/b
	4EgcYLZthIcx1reUQZN359VnebqY105NNed61CTqCEaONWqflSGsyRp8aBEHHQaUGfDfHyWobjZtA
	1QnRcr6ewsrAAD6D/ALwMxPuEttxJXrd0CsWL3dzBy2eqcWHCXlvl3TFHH3fi+rWs0O0JANCcFprj
	WMtCaRKK6vsCmH6puJVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFNd-0002UQ-UQ; Tue, 18 Jun 2019 14:46:37 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFN7-0002HB-Jl
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:46:07 +0000
Received: by mail-ua1-x942.google.com with SMTP id 8so6192633uaz.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/f14cHYF/JwNNEW7ZZ5tU2/Q+E6LWRIS5CopK+Dp/ws=;
 b=tO8Fsho/8ZrXFwXiDsWwBqJ0ukz1/kUdIS6NDsUPNHp4wR7PH0Qpr8pqVtqeOyQvwe
 ZCdCsl/x8ghDwv+91RrzEhYehxPH9/ZU8nswFi9vgpFqUd8aVx+RIJ+B8B7W+lKpqN8q
 oVZqEnfnoMwUGJnYn4DFbG9W8in/zQWU/EXoEFdg5XjQ1K3cTd+FrQPYfJ5ZccEgDmyz
 MNagThdbCpX8jKLrSGXXMR5hMhj2nFnuK2Zexrpja2BQVJf1a77FV+NCWGlsRQWjFvI+
 tIaE/NsQIfNIag1Ot61qgL5xc9dlxn1UNL1Ly4CYopbH7jg3eVqTuV6wcERxcsWXY8L2
 W+mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/f14cHYF/JwNNEW7ZZ5tU2/Q+E6LWRIS5CopK+Dp/ws=;
 b=aqDVo+v6Dz/Pv6Mv7vvV3HmC9U8ZtO6fnjRcnbWb/gv5PAz6Ge/tD6UuQfil32Ejva
 PVKrX2tBwuLK30unR2+J6GLCW9WgvwKrKa3qkcJ8O+577xyXAaJWtaHDPZBhcXqZK/fI
 LRXNdY8AFb32xcITSPJbxxjlbH9W1KVhJMIXGq8rbaLm30c1q8uogp46F4twjmfOQpVM
 x+xPYg/m/EYGNlq4YeXSRyqER4INZuweFM0IOkMDOf9DxC3P5l80D7lfo2QWNooe61sQ
 7uh9njd2G+9bhhldcH+LM++KC8dydRV/p2uAr6qmf5kR4lZeiPed9ClEwuDGdoOK2ccc
 /HPg==
X-Gm-Message-State: APjAAAW83JuBuzHeGovogeWmJ++Le3Dm929OmD20I+bj/O5JnN8gfxKs
 S6b4Mcs2AV+xafTEOySFoVKnCelVVtEBUUAj0zleiUE6
X-Google-Smtp-Source: APXvYqwtowx0jtZrX1Tnda+aSiwu1+T/1zNbO4rK+It/3z/Xya6kgIlPAocEw5taRgj7RNINbPtPoDBEuvrYufn2K4Y=
X-Received: by 2002:a67:f259:: with SMTP id y25mr53460097vsm.50.1560869161931; 
 Tue, 18 Jun 2019 07:46:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
In-Reply-To: <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Tue, 18 Jun 2019 20:15:50 +0530
Message-ID: <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_074605_680144_D0ED29CF 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 7:32 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Pintu,
>
> On Mon, Jun 17, 2019 at 10:50 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:
> >
> > Hi All,
> >
> > I am trying to implement suspend/resume functionality to to imx-hdmi driver:
> > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/gpu/drm/imx/dw_hdmi-imx.c?h=v4.9.181
>
> Please test a recent kernel, such as 5.1.11. I recall that last time
> you reported an issue with the dw hdmi you were running kernel 3.10
> with backported patches from 4.9.
>
> Just tried suspend/resume on a imx6q board and HDMI behaves correctly.

Thank you so much for your reply.
Yes, I already checked the latest mainline kernel changes until 5.2-**.
I see that there are many cleanup related changes, but still I see
that suspend/resume functions are missing in dw_hdmi-imx driver.
So, I am trying to implement myself.
Also, I see that suspend/resume is missing even in :
drivers/gpu/drm/imx/ipuv3-crtc.c
I am trying this also (not sure if we need this as well).

Can you point out some specific patches which can be helpful ?

Currently, what I observed is that hdmi bind() functions are not getting called.
Not sure who is responsible for triggering this bind function.
Or, irq remains disabled after resume, and we need to enable it back
again (but how ?)
Or, we may need to enable vblank events and thus irqs can be enabled.

So, I am exploring many possibilities.
If you have any suggestions please let me know.

Thanks,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
