Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D351A1A09
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 04:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMTUqtD9ZiA6v6vYwImI7iCMcNGeGV3FvtZeNhiI1VU=; b=IrevsCYnCGPF0a
	zFk5EzKEfTejMN6topPtGPmR2hW1dtCjUgbEcQbnunErefPxJIiWSmGcDjVJaVir1J81L+sV+BSJF
	kzRGmWXYb925FN/43pJjuoFyfysboZGT3wPN/pSJySzx3DDGHcUNJiA2+nJuaAH/C/WsMm3QazRrx
	tvcJAEwBX+Jy+qAUw6hnJ5IVu0LybDLkzm0/4z/EplEaP+ox8NIzejHVSpCQo5fgfF2DVFHuFYgsu
	HmmX8wfj6owVFw99HS/l2KPoJeaeSyiHwqpKmdH3j12gNninL9/vR5lpKl9C/5WQ8Eav5ow/N8yNw
	s+Oh1CIM2KPjt9/sQeAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM0eD-0005um-4x; Wed, 08 Apr 2020 02:41:01 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM0e6-0005uR-Nn
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 02:40:56 +0000
Received: by mail-vs1-xe42.google.com with SMTP id z125so3765409vsb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 19:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C/ZXELd6yqxZHW3BMVHT8QXqccYsYFJYeRQU4hncJI4=;
 b=DWTsYb57lLv4UhbmAHVIqGY1gwsmUFF/xGwTBGcOQCFF77+OitoyXkMEwJdwXhGkDx
 FhAAEQvbXqmJ0WHYXscwJFdhaq3cCsVu4saHA9ffAkEGZdvWEvTCH0WHhZfTR729yF6F
 isQ7KidVqN2l+h6kbXbnJShrtbzYs4w1YOf03qQwluWbbh5zJOWubOZwiQ/wabk+MWfq
 bzF8uhMcLIa5y9O9NiwRFMc8h3lGb4QMHW8AXfjJakqZKqjRyf8KuYCO69vQ/Ry6Biii
 XhoqQZTwDlB1c0gaUNPiLpp39WpFDaBfO+xBbKDJIxM4IsUpLjW8d1PdHuG9jgmRP1xV
 MLDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C/ZXELd6yqxZHW3BMVHT8QXqccYsYFJYeRQU4hncJI4=;
 b=fhtkXRRUQdWpv6xEzJfLJL/VL+4AeKuBpYBIb1hNoyhehQ5JaympFn7WXa9gx7q1Hb
 TwQbfGSlfuxVelH7WYszg2DU/ecykIy5ulR/LYFnVXfqnolEk+nGKCfzrJgzcWMXJjJa
 V7r2v3j39NUUFsKGwTTli/GloJWUIGmgfh+ydKkk0oml1DCm31ldF2N6urt7i0Imc+wK
 0RMwkoDhhiqlhOXIdEyKRdre+47ceKpfjmlSFpVruHLuxAW0p2rQIJpPg4cZPg13TsoW
 jUf7lbTISpPRBHHrDM/DN0e3U0+PqwSasvmyZyNH6WtmsyzggH8k17SONKHj2ubwgQi1
 fKag==
X-Gm-Message-State: AGi0PubftPKXopqoYWIteGirsCTApBorsYjZbIW3nmflY2D7oKuAJk5H
 6S8OUvBGAtfHOw9M2W50aUmOhKFzrtEK5tLaVXM=
X-Google-Smtp-Source: APiQypIP3VAej2uId6VHVbbIUWzlpc0T8buWRSSeE/UQMn2w7lUT8WSp6+QUP6rkBP1MRFbbQdzu/A6tDvKLFRc4HmI=
X-Received: by 2002:a67:902:: with SMTP id 2mr4789025vsj.133.1586313652812;
 Tue, 07 Apr 2020 19:40:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200407055837.3508017-1-alistair@alistair23.me>
 <20200407055837.3508017-2-alistair@alistair23.me>
 <CA+E=qVdQKS9TCG7Sa4aefAZbgWO3-rgA9u13v=iB6+TN7yQe=Q@mail.gmail.com>
In-Reply-To: <CA+E=qVdQKS9TCG7Sa4aefAZbgWO3-rgA9u13v=iB6+TN7yQe=Q@mail.gmail.com>
From: Alistair Francis <alistair23@gmail.com>
Date: Tue, 7 Apr 2020 19:40:26 -0700
Message-ID: <CAKmqyKPGtHLzyeM5optDBF79sWNvCKt=6Qn+i0sdcqgy_W3nzA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] Bluetooth: hci_h5: Add support for binding
 RTL8723BS with device tree
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_194054_801171_C2793345 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alistair23[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [alistair23[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, netdev <netdev@vger.kernel.org>,
 Marcel Holtmann <marcel@holtmann.org>,
 Alistair Francis <alistair@alistair23.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 11:51 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Mon, Apr 6, 2020 at 10:58 PM Alistair Francis <alistair@alistair23.me> wrote:
> >
> > From: Vasily Khoruzhick <anarsoul@gmail.com>
> >
> > RTL8723BS is often used in ARM boards, so add ability to bind it
> > using device tree.
> >
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > ---
> >  drivers/bluetooth/hci_h5.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/bluetooth/hci_h5.c b/drivers/bluetooth/hci_h5.c
> > index 106c110efe56..b0e25a7ca850 100644
> > --- a/drivers/bluetooth/hci_h5.c
> > +++ b/drivers/bluetooth/hci_h5.c
> > @@ -1019,6 +1019,8 @@ static const struct of_device_id rtl_bluetooth_of_match[] = {
> >         { .compatible = "realtek,rtl8822cs-bt",
> >           .data = (const void *)&rtl_vnd },
> >  #endif
> > +       { .compatible = "realtek,rtl8822bs-bt",
>
> Wrong compatible? Also you probably want to keep it over #endif.

Fixed.

Alistair

>
> > +         .data = (const void *)&rtl_vnd },
> >         { },
> >  };
> >  MODULE_DEVICE_TABLE(of, rtl_bluetooth_of_match);
> > --
> > 2.25.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
