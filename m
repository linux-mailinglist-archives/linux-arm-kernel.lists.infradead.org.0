Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BEF7D2F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 03:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EhaDSeO3A2+UKX16w226Vr6I50qX0d6rI873mm1hxBo=; b=eWkJ/8Dy6Svx0H
	L/e9HRyH+EMJ4eAfzukPnRyEcFbUHXT9wyBAgy/VZ7w06UU8Pe+ei0PhBAUg0qSrfCc22run1H0hA
	wEPENhnaQduiQ0Gp1ug5BTUP5jjkV/E2ovp6PARSE98SsUDRYqRljPW8XF0au5kqkKOTbghj+oN++
	9/wuR9ge9hMWVVrlQUIHh7c54xkSGbxRQBAV3lmCbN2WCTmM9MaxNNqwODNgVdBl88UtXj1Bvmo9X
	DDqkJ7pbS0OPdV6HkQcQnbUjZpvRfQaPoNGaly4LKPjB7kNs1WzW76sxq+jvA3y4uaFhn/EP5Skvv
	DODbjcnweIV/hW9fHXKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht06m-0008Qe-RC; Thu, 01 Aug 2019 01:42:20 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht06g-0008QJ-73
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 01:42:15 +0000
Received: by mail-ot1-x344.google.com with SMTP id o101so72371148ota.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 18:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZfGrI2T8Io+ZaXdoiPh/ozSsrOYzabAUcKD9H+JB39Q=;
 b=a0FAF83qeGlFS7k8/nxXJLJ5Kh6ewCif/DahOmBKgUQKDzBIvI56PZQsLKOY2vcKze
 a9qsiuXl4hEadSEa/L602ZAVxNmYmIqKw8NqNQRiQScBJWysXWviioyb/tBtBPZt6Jg3
 nNSeumFFwel+c+Cbmk2jWVq1zMrpW8MEt/dbfGHLN1eN9vZAzZdXJnaIy47mvA6NNmLz
 n4+7dspozOAiPSj7nvleG8W6Iy7d2CfCkbIANp9eQTb/2sLB3ZkXHlWygwrJ1UAXEitb
 tLixPPKoHnxFZcJ7MICrXLa6JMkjQ1X4Smp+ellrB1iVQz4GlNZdsfEaF2dZPGypLJGT
 9VpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZfGrI2T8Io+ZaXdoiPh/ozSsrOYzabAUcKD9H+JB39Q=;
 b=TgfDrpacbhGPSXUd2+q6ecA28435xybtmx6jtMz3clE8mGv7JMKtRcwL2lDtSnTOKm
 BAhaoZu6PXIhnb2o3eaSS/vsQIpsavQWaQJcq3f/2rTcqBJuvsg75QKvZeS2D9yMT51s
 RZ5AKbZWCr4g/bN3XKugvoTpIpNdVNmueuYMpU6TEA2kgQ6Fox36Z/JZeS0j4ilYBD5b
 3IMbucGX68Llw+jonNNW3anVRP/+jVTidbVyQ8X1SeUdd/1Yt6TdT3hcWu0hjbVcfhaa
 lTHy4/L7VtNOBDyrZkGOuwkIqtIzrHXlr4Zx5lntF8wrcsw6c0Y+qzpLErVuSJF4+bhy
 sD7w==
X-Gm-Message-State: APjAAAUpYBV23ICOtBnLhNEwetGHTAlBPINzkuLCHjlCvma3L2rlxLQ+
 kL+oP9voP1qqrMAnD8jxknHwGvsGDK0vCXnQY7Y=
X-Google-Smtp-Source: APXvYqyB6SEjgS9U7kTGYQ9tev8wMhiX2CLosAjncHGHH+VNkxfm4lsbU25vSYUhLTgFLbs/tmVXBUp0qgH186vaps4=
X-Received: by 2002:a9d:4b02:: with SMTP id q2mr57355971otf.312.1564623732869; 
 Wed, 31 Jul 2019 18:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190731071447.9019-1-stefan@olimex.com>
 <20190731071447.9019-2-stefan@olimex.com>
 <CAGb2v64tzMypnB5Ho2A-gWPk2yYsmH9tNn+OKfb51c+d6pK=kw@mail.gmail.com>
In-Reply-To: <CAGb2v64tzMypnB5Ho2A-gWPk2yYsmH9tNn+OKfb51c+d6pK=kw@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 31 Jul 2019 18:42:14 -0700
Message-ID: <CA+E=qVcY2PE3zg3CRNGD4vLbLTdov6wgioUrbijp-W6km9SCaA@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH 1/1] nvmem: sunxi_sid: fix A64 SID
 controller support
To: wens@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_184214_280967_024F3612 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Mavrodiev <stefan@olimex.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 open list <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 1:43 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Wed, Jul 31, 2019 at 3:15 PM Stefan Mavrodiev <stefan@olimex.com> wrote:
> >
> > Like in H3, A64 SID controller doesn't return correct data
> > when using direct access. It appears that on A64, SID needs
> > 8 bytes of word_size.
> >
> > Workaround is to enable read by registers.

I came up with identical patch while adding A64 support into
sun8i-thermal driver, so:

> >
> > Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>

Tested-by: Vasily Khoruzhick <anarsoul@gmail.com>

>
> And for single patches, you don't need to write a separate cover letter.
> Just put whatever you need to add after the "---" separator.
>
> > ---
> >  drivers/nvmem/sunxi_sid.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/nvmem/sunxi_sid.c b/drivers/nvmem/sunxi_sid.c
> > index a079a80ddf2c..e26ef1bbf198 100644
> > --- a/drivers/nvmem/sunxi_sid.c
> > +++ b/drivers/nvmem/sunxi_sid.c
> > @@ -186,6 +186,7 @@ static const struct sunxi_sid_cfg sun8i_h3_cfg = {
> >  static const struct sunxi_sid_cfg sun50i_a64_cfg = {
> >         .value_offset = 0x200,
> >         .size = 0x100,
> > +       .need_register_readout = true,
> >  };
> >
> >  static const struct sunxi_sid_cfg sun50i_h6_cfg = {
> > --
> > 2.17.1
> >
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/CAGb2v64tzMypnB5Ho2A-gWPk2yYsmH9tNn%2BOKfb51c%2Bd6pK%3Dkw%40mail.gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
