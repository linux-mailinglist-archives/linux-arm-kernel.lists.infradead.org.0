Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE654DA0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 21:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahXB03BmN+ugsb9rQtpFGAzs/QxLV18ArAq3WRkZUt8=; b=rSNv7LQmehADfL
	828b+ki+pzN4qKP/01hwfRoLDihaHxlo0JcmhTP73PghkT/Gc+IY1Z6swX3D1/SBJHgPm5a/21976
	q4is/YJl1BZTnIrTtA+Tqtd2TKMEWtqXUm2R6q5TMfj6BiL0URKzvRwB1508dTkZKs6FERwMXWfoi
	vZWeCmPG95pur+bPTBtQBQ+6lyDSsMXMhqUy9pZyvOdgwE9ZSg7ikHPtSj0UZKWUP9yCkAEkxr35Q
	ztnDt7PenrtVAV5RJoxOwVVTXOohX31JzIjZ/nbiAGZPfA+cEtSYA93V49uTW+/SKuyYPMklLuf9C
	ejp/GM/shtOMZ6yN22mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2Yg-0001zg-JP; Thu, 20 Jun 2019 19:17:18 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2YT-0001zC-QY; Thu, 20 Jun 2019 19:17:07 +0000
Received: by mail-io1-xd42.google.com with SMTP id k20so709968ios.10;
 Thu, 20 Jun 2019 12:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ib3L7OuMRjA8bgB09Os/hkdjlbd3vqU0W0NzPiRba3k=;
 b=tTy2Df3PNcLZI7/u46yGHzE5KTJkf7aTl7Se+G6dOl3po4cAmMoarGiZWd88B41Cr2
 V3emW6h6GBOo8KVLfCanXxC5zvPl9YH2ZTDwJJS8ydLwfkFaXSQJ6NPHz+LL3yVDVxQl
 tNfeR8q17ZvLoESI9D3b4qIEd/kYnFVMi1sEuaadaZ1RPtcZISd+/gMa6TuGyHBuKTWD
 NehgLcra8m47u0OWWxYvn8t+HS6dsJXQenjdTm3bIXB5n2MwcZO/QNJux4oXoXn+i4k6
 NzG7ZJzoq2D8eJl8IY74ZXfwKrexdmd6dpC52WxLSIFQWpCZh/JFgDxCjL6Rd9yuMp8E
 5Btw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ib3L7OuMRjA8bgB09Os/hkdjlbd3vqU0W0NzPiRba3k=;
 b=EUoNDzllrl1ulvesBwNDyhhK4FOo2MzH0gAWiirVumwU59r8h0fWwVnv8Edt74Tbz4
 ScQwayBXl5l6FVjF172CVk9QqH2O4Ffz4gSxZwcPmog0FbUufymVPXW5DvzCrJqAUEge
 6DJb2vwKLd1UB/svKXdRUSvW0ir0YQPfKrjMUwhyek4VdQfHfTbGq8pxEkjG0bh9QXZe
 u0LNIsBlWGZKQdh1rhBjvbxD09l/37qf1ZgmArJ2+yI6tSUF4/AfTSTPICF5phQni+D5
 AvJiuxVPjIlLP4z7WiFYpc/Kz8c6e3GQwVrCcYjdLWBB6fDRHAdyRySLmKm8hyMvqjAN
 /Hgg==
X-Gm-Message-State: APjAAAUMJOy8Zxr00DFYzDPW7xhie6sHW2KbnsMo0ZmK0sFZ/0259klP
 0flVwlqMT3QXRXAQEdI++52eQweLwwMPL9ZurDU=
X-Google-Smtp-Source: APXvYqyc3WT1BkN2ASnm3IuHIhcm2V7CFmUmNKcBBA3KcGsn96s6AT7aRfxhEer7j8MrzbYSv7CGV/56qfVCGhXF1zk=
X-Received: by 2002:a6b:c9d8:: with SMTP id
 z207mr91310316iof.184.1561058224804; 
 Thu, 20 Jun 2019 12:17:04 -0700 (PDT)
MIME-Version: 1.0
References: <1561048126-27578-1-git-send-email-linux@roeck-us.net>
 <20190620170736.GA10902@anatevka>
In-Reply-To: <20190620170736.GA10902@anatevka>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Thu, 20 Jun 2019 15:16:53 -0400
Message-ID: <CA+rxa6qJJjFWmMOHL-mpJZ5e5YAan-7887bQPwC8KEfCmQaW+A@mail.gmail.com>
Subject: Re: [PATCH] watchdog: convert remaining drivers to use SPDX license
 identifier
To: Jerry.Hoemann@hpe.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_121705_860819_FBA0E572 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-watchdog@vger.kernel.org, Wan ZongShun <mcuos.com@gmail.com>,
 linux-kernel@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 Vladimir Zapolskiy <vz@mleia.com>, David Brown <david.brown@linaro.org>,
 Andy Gross <agross@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 1:07 PM Jerry Hoemann <jerry.hoemann@hpe.com> wrote:
>
> On Thu, Jun 20, 2019 at 09:28:46AM -0700, Guenter Roeck wrote:
> > This gets rid of the unnecessary license boilerplate, and avoids
> > having to deal with individual patches one by one.
> >
> > No functional changes.
> >
> > Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> > ---
> > Note: Several drivers include a paragraph such as
> >
> > "Neither <name> nor <company> admit liability nor
> >  provide warranty for any of this software. This material is
> >  provided "AS-IS" and at no charge."
> >
> > Presumably this is covered by the GPL license. However, since I am not
> > an attorney, I am not sure, and I opted for leaving such paragraphs in
> > place.
> >
[...]
> >  drivers/watchdog/pnx4008_wdt.c         |  5 +----
[...]
> >  51 files changed, 54 insertions(+), 336 deletions(-)
> >
[...]
For pnx4008_wdt.c:

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
