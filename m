Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D581AB6ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 06:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9NsX8lz5lZRJBV+DcZKo3wdbqITkf2mYPPD2JHRz9I=; b=sx1HBeG1LxoVCK
	H4a9hzdV0Fd6WtrrakyfW/9nWlqVxqSxKKV6lubNavDI8GJOFoevky6T0D/82ROjt5Oa/GCtHYKue
	K9+AHE4A5GDlBjhZaWCD4XJgqVhUzgoH+pr1Kny5XNKhXhFVasKUnB9WzZpouXGQODRj4TgSomrE0
	BOMYyslS1LmkTExGaUF+w/o36ZsXSlP7b+bOLMb+/941H6IcPKOtlTa1hT7+MnxcMHb3IvL7t814q
	lHGUAL8bXEV0YEhTu2jOBpymddp4h0g6fWEVIqbkmjhDvdd4l8EXAQ4wJRY49jIc+Mgir7X6gxbE8
	ZDqyneCmzzu66JQxQA6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOwR5-0006tY-Fs; Thu, 16 Apr 2020 04:47:35 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOwQv-0006tD-SK
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 04:47:27 +0000
Received: by mail-lj1-x242.google.com with SMTP id k21so6374504ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 21:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+NDlWQ/mRFjSuqtZlOq7qrYq4K4xoJ9j5o51tM/JSCc=;
 b=DIr5D1DwGtuWE+AQZWvlocaxYUwNMz4kWu1civ3xfMmjTJptX9W/wDWceP+Ufd46OU
 TMM1FddMh61/VRQPGRl+VZiqTv/2mTZGXp6xwrFGC0wqsbdu1e/qXu7bPPJxzKwElWZ9
 W+/w8sk81hHsOttLqrUDm1veCpPpttvFydWhg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+NDlWQ/mRFjSuqtZlOq7qrYq4K4xoJ9j5o51tM/JSCc=;
 b=tFamUnFxltt6kdTija3NShSOUcdIOMvMgf76ztMFCvKPZRBbaVTFgv10lAZCe9d2Rj
 L0wyKWFwpY5rD/DDJJnUFA+SF9Ca/nPID/j19xQy6IsV+l8WhzSaA+ygsl90CknSwzeT
 sAIT/ZZwDPX0w/+OiYxRSEu68DUY2hsjdY/zEtbPiKZ+nNrCmgHAWH+oXKGlwdSEX98z
 4Upz4d3lJ1mF1qV6Brg/I9S9aLwSjUY/uyXQhn4rSzFzneJOhrMBLK2l9tXSs/ayBC7u
 QZXHMNiEtJeo62YnwzAF9uljwpYYj7Hgq2Fjo6YYHMIPF8iDK0agNFjlXpbHiyhaV80N
 SiCw==
X-Gm-Message-State: AGi0PuaO3Wz0tCkRs+IWvFBRY7/FKvX6oTkw3YJMrUR5JhrJkGJcZzh9
 V/tXhr1rJPBU27hWhMZkuSKhabRQJ372cQHV2Dhsvg==
X-Google-Smtp-Source: APiQypJA4A7ULXkeBweYmQbdUIOUieWPyVIxDPOys0Ry6iqrOvNMb71M3vq6dhM29YnR8rKQis03m1kXD1m5wzUHDRU=
X-Received: by 2002:a2e:b4d0:: with SMTP id r16mr125354ljm.129.1587012443450; 
 Wed, 15 Apr 2020 21:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200322182019.32493-1-rayagonda.kokatanur@broadcom.com>
 <20200415122945.GC910@ninjato>
In-Reply-To: <20200415122945.GC910@ninjato>
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Date: Thu, 16 Apr 2020 10:17:11 +0530
Message-ID: <CAHO=5PF5yOOUUKHzEA1710YRFJe8VvR09HinjR9Hyoo7kXFa=g@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] i2c: iproc: generate stop event for slave writes
To: Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_214725_916768_DF149192 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lori Hikichi <lori.hikichi@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-i2c@vger.kernel.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 5:59 PM Wolfram Sang <wsa@the-dreams.de> wrote:
>
> On Sun, Mar 22, 2020 at 11:50:19PM +0530, Rayagonda Kokatanur wrote:
> > When slave status is I2C_SLAVE_RX_END, generate I2C_SLAVE_STOP
> > event to i2c_client.
> >
> > Fixes: c245d94ed106 ("i2c: iproc: Add multi byte read-write support for slave mode")
> > Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
>
> Just to make sure: That means the HW has already detected a STOP
> condition on the bus?
Yes.
>
> > ---
> >  drivers/i2c/busses/i2c-bcm-iproc.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
> > index 30efb7913b2e..b58224b7ba79 100644
> > --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> > +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> > @@ -360,6 +360,9 @@ static bool bcm_iproc_i2c_slave_isr(struct bcm_iproc_i2c_dev *iproc_i2c,
> >                       value = (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
> >                       i2c_slave_event(iproc_i2c->slave,
> >                                       I2C_SLAVE_WRITE_RECEIVED, &value);
> > +                     if (rx_status == I2C_SLAVE_RX_END)
> > +                             i2c_slave_event(iproc_i2c->slave,
> > +                                             I2C_SLAVE_STOP, &value);
> >               }
> >       } else if (status & BIT(IS_S_TX_UNDERRUN_SHIFT)) {
> >               /* Master read other than start */
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
