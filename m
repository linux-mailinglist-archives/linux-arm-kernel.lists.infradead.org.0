Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2D88FADA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yty3PcSI1ENICheD3+STQrc+MctGXUxcr48OMnwXlJo=; b=BNJfukjo/ibodk
	UbjExZXLEq2OhhGrwlbzHTpHP9vgmw3qDaHhE0IOySPw5tzHZNFZjFFRe3jPeKbi70/llwuKp0Uha
	mNvxPaxLqMzomgsCRu4iDpQLT1YxWf5d+UoMVPl2Q0kE6Ye040KGThMEY7kNLSGA+woeCUIlGeA7z
	OnTg5v+Y91SRUfdio0gZWlCgDykdGP86pzHQmefrg/0j4DMuRv0jHZb8hrtFsZawEeVpqTeR0e3IT
	rT0lyAbCmgq0LxcmUtOtIS6bJ4QjugnfXtdAs2Y/OgICax7CiBZbkRJ76y5/AXfeEuPCW56cBGy5j
	DyELnOuli7p6LgR8MX7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyVdO-0003PE-T1; Fri, 16 Aug 2019 06:22:46 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyVdC-0003OK-57
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 06:22:35 +0000
Received: by mail-lj1-x244.google.com with SMTP id t3so4279337ljj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 23:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v14OzUMjNE/HZfmgpIMBDvJqOK1CswJ2VwtCDJGNi9A=;
 b=d2YLXXBOzD77vCmyMvNMNkLFQOk7NUI1qpgaDcil7EdRabwka633i5xOEC3ejL7pYY
 Wh44in0bgl21+YBTpijwOL92QY34JVSDRu48ytxYYkABfv4odbonMAnA3Nxe2cRjAWVA
 yl16HvY4gjb4mXLnUmMC5DWAnMQEtvU8s9mub2TsrRAslQfWbxFfvTEo4byXrIT7U/BU
 ddujW/xmZ1w5/dXspnNrvQFag4c+3/qm7lAw7hQVJr0nkWCCYYr6CSFfwB4KV5OX4KOi
 P0UmbrAsOQtYPm2DQ1mzBdxRoOL8UWH79mJ2rHUYPJphWQifjjlUBMBHOd0c/75WvAdQ
 Ithg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v14OzUMjNE/HZfmgpIMBDvJqOK1CswJ2VwtCDJGNi9A=;
 b=KRSJxiNi6/INSO1UbFWB+hAscAytgDaltNMXIvvc9V5T8hZY28WR7n4b9TKfgfHvSk
 m7MlLpmWqby8aDjCg7QrFVuDd8tUPvM9KLHBCVka3pMEVzTTE5y52B2TIfN4u5gmZamG
 OfaeYjfx7WB/a0dEM20m7lCdSsN66YV9K+c0rznMD3nvPCXPx4n3c62BJ34xy4EDlTYw
 LkwesxoeJV7qd9x46GxQZcW4ZmjijlFaOgO5/hmUQ+l8kaFKEoYJw+/sk8bj0Tl04JK4
 iKMI79P7LT2w99KdkVR9HRWEl3QngpfOPlTdMlFgvIxmHs1Es6QYiTHMG5AINajshyGH
 kA9A==
X-Gm-Message-State: APjAAAUQg8NwQK72rL34wPQBMVr6nDH2ajoyLmS5ZMJ04HaljPpjMVFP
 13JarZolPxdhkAXqNWt0bzzuwSUG7yf/1FhLzho=
X-Google-Smtp-Source: APXvYqwhioniLpZMMBXNvBmmi5v2yWJBAdLohCrRL1i0nxn3uIqNq01gaFdnIoMaSgfpTsi8KzDMhjIp1PuPqIbAlHw=
X-Received: by 2002:a2e:978e:: with SMTP id y14mr4692405lji.10.1565936551522; 
 Thu, 15 Aug 2019 23:22:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-3-codekipper@gmail.com>
 <20190814093011.GD4640@sirena.co.uk>
In-Reply-To: <20190814093011.GD4640@sirena.co.uk>
From: Code Kipper <codekipper@gmail.com>
Date: Fri, 16 Aug 2019 08:22:20 +0200
Message-ID: <CAEKpxBkbuQZ9-XLCOcWxV5gzyXPbASmBgYVJ6fL5yj98GE0f9w@mail.gmail.com>
Subject: Re: [PATCH v5 02/15] ASoC: sun4i-i2s: Add set_tdm_slot functionality
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_232234_200395_D4595699 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <maxime.ripard@free-electrons.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019 at 11:30, Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Aug 14, 2019 at 08:08:41AM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > Codecs without a control connection such as i2s based HDMI audio and
> > the Pine64 DAC require a different amount of bit clocks per frame than
>
> This isn't a universal property of CODECs without a control, and it's
> something that CODECs with control can require too.

ACK
>
> >       return sun4i_i2s_set_clk_rate(dai, params_rate(params),
> > -                                   params_width(params));
> > +                                   i2s->tdm_slots ?
> > +                                   i2s->slot_width : params_width(params));
>
> Please write normal conditional statements unless there's a strong
> reason to do otherwise, it makes things more legible.
ACK
>
> > +static int sun4i_i2s_set_dai_tdm_slot(struct snd_soc_dai *dai,
> > +                                   unsigned int tx_mask,
> > +                                   unsigned int rx_mask,
> > +                                   int slots, int width)
> > +{
> > +     struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
> > +
> > +     i2s->tdm_slots = slots;
> > +
> > +     i2s->slot_width = width;
> > +
> > +     return 0;
> > +}
>
> No validation of the parameters here?
ACK
Thanks,
CK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
