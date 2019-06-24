Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79C8504CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIxyKfkGymfhGqaSncc8lWLMgW0R15tq7846qxXDAU4=; b=H/Zi206KX9D8nH
	y+Py0UB0AhOeWqe0XXRURkFPB1cZi3tOJEilL+F/cfT/bAqvbznTMmegVfENhUqYcq6x0B5S4VEFF
	ixgpnVRykx3/f7/891qHFQUfNsnLcMwGipu/lom9amEfH+mfqfJ2ePEnY6x5n8qQeJOwhEEWcrQQq
	StwjbtS47xATGIWZrXKIksjsp7ryTXRb6MOnuMelqz0fESw3vNbfn4sp+c3cHOGVZqGQZzbpTyT+2
	n9gmZoqvLVpn+ZaSdXKY0JNPEWF/TOz0ya6BlexR4G+mexHJ+VVlvR2K78l++Z9tU3+jV/vxUWxUA
	tzViT47hAyV82HgdY57g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfKcP-0005pV-7u; Mon, 24 Jun 2019 08:46:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfKcB-0005o2-Gy; Mon, 24 Jun 2019 08:46:16 +0000
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80CFD208E4;
 Mon, 24 Jun 2019 08:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561365972;
 bh=6TATCU0GhRHaB0rZ9tfc9t4qrBINVwEG0u5ftLPSTlw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PjDY/QKBI+ZmiRu4XX5GjZ+Dxb7JafvXOpjtp0XIFHK7kAYe+4vTjTP7fLhq+Gwar
 cIO7Hp1AlzQAq3jUaVimcx+xWM8engZwm4nI9CecRPKmim6kOUBmPtoa0X4p4C0ECn
 R70MfPPaNNLE4g+ultolziA9ZCDL02joNNjc7APo=
Received: by mail-wr1-f41.google.com with SMTP id k11so12964992wrl.1;
 Mon, 24 Jun 2019 01:46:12 -0700 (PDT)
X-Gm-Message-State: APjAAAWgMQsv/9NzyDsIJBtramg9CSIh3yALyO+4KM2hr1GM8JNGhz2W
 sQ+/VfvL54ihK9g9zFso4OC5br5n33cfG0mtgJM=
X-Google-Smtp-Source: APXvYqyoWqaBwTU9Yx0egHzCZIsc7sDUKXLjaMVV3B3oAgm/AEkZz3CA10MVePBc4MRlkeaIIL1ilUaJ2ZFhMBX4/fM=
X-Received: by 2002:adf:fc85:: with SMTP id g5mr21861481wrr.324.1561365971112; 
 Mon, 24 Jun 2019 01:46:11 -0700 (PDT)
MIME-Version: 1.0
References: <0292EC91-0CBE-4F22-8F28-BD581A157CD6@dlaube.de>
 <2543a892-d7b6-f528-4df3-923edbf1dd85@free.fr>
In-Reply-To: <2543a892-d7b6-f528-4df3-923edbf1dd85@free.fr>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 24 Jun 2019 16:46:01 +0800
X-Gmail-Original-Message-ID: <CAGb2v67qE0AV9SaJA3ALXHwoPsj=mSGNsnQ-xTib+iB8K=U-eA@mail.gmail.com>
Message-ID: <CAGb2v67qE0AV9SaJA3ALXHwoPsj=mSGNsnQ-xTib+iB8K=U-eA@mail.gmail.com>
Subject: Re: Help offering for AmLogic S905Y2 Mainline Effort
To: Daniel Laube <mail@dlaube.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_014615_593299_3F004139 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 4:36 PM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
>
> On 23/06/2019 22:42, Daniel Laube wrote:
>
> > recently bought a cheap HDMI Stick Computer with an AmLogic Chip (S905Y2 on x96s Board)
> > because i was told that it had mainline linux support. That seems to be
> > true only partly because there are drm drivers missing for the gpu and
> > no video encoding/decoding support.
> > Because i would like to get these things working in the future i would
> > like to offer my help.
> > I already ripped that thing open to get access to UART to see boot progress.
> > Could someone please guide me where i can help with the mainlining effort?
>
> I suppose the first thing to do is try to get in touch with whomever
> might be working on this at the moment or in the (recent) past.
>
> Look at the MAINTAINERS file, to find "official" maintainers and reviewers.
>
> The baylibre team seems to be handling some of the mainlining effort,
> so perhaps they are in a good position to provide relevant information.
>
> There's also a specific mailing list: linux-amlogic@lists.infradead.org

The #linux-amlogic IRC channel on freenode is a good place to start as any.
AFAICT, most of the active community contributors hang out there.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
