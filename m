Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AF1139C01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:58:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olveHbPXw1ClwxQ4b+iKSeFxwKLdnZWkIMrml3Cwq4w=; b=jaiRqQKLwqW3ls
	wlupaHYmQk8+RuCkx7zjXdA1FnN0dEsAxUhrmUa6jR/VGmjFS8JJdpBXuCfdy+2GORRKLiazG5B9Y
	w9g9WXribgPmbCZiUuFsAE1AJmj3/PHM0iEk2pTgTVX/pdD7Ne0U7ewhh7stL9IvU3OOgcPQJQPfm
	JRQGEknSbhMpq3xa18W8iQzFYw/p+aZ1CoNvB5yu8aHxe6P7TorDRFB4L/VZaCUhDS+0bdfvhOW2u
	LB38F2VJTbYnRDLxtpLS9zV+SrICzicIPonSYZ4ByZC1foC//xTdTmUuLNuY4+uhT/Jj2ZA3BzrdO
	LH7gjlTGI5uWrS9gZ9Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7jD-0001Ro-4w; Mon, 13 Jan 2020 21:58:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7j4-0001RL-EJ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:58:23 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2CE921569;
 Mon, 13 Jan 2020 21:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578952701;
 bh=dMiza/iFXEPvYxpswfqKt8lrTVj6PkpTWxCzuISkOes=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AIPV9ksy5zQIiyHAZyc6EUHspEbXIRjdyjILtjsn1YOGmbdnDfMxXxu9dMGqQ9l45
 L6b8PKp3loQkEysjwa2DkPFbyJ2fN31SVRulXCynXkhsZriKKrtMRuVrnFIUVmTI0y
 1lJcQEeZNqXqeCzhYTAgUf1h7NNdcyBgUDnMk5oE=
Date: Mon, 13 Jan 2020 21:58:16 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier MOYSAN <olivier.moysan@st.com>
Subject: Re: [PATCH v2] iio: adc: stm32-dfsdm: fix single conversion
Message-ID: <20200113215816.753310aa@archlinux>
In-Reply-To: <1a4261a5-1835-a248-9094-c4e7236e7254@st.com>
References: <20191127130729.18511-1-olivier.moysan@st.com>
 <1a4261a5-1835-a248-9094-c4e7236e7254@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_135822_502316_C458AFCC 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "lars@metafoo.de" <lars@metafoo.de>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "knaack.h@gmx.de" <knaack.h@gmx.de>, Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 10:05:47 +0000
Olivier MOYSAN <olivier.moysan@st.com> wrote:

> Hi Jonathan, all,
> 
> Kind reminder on this patch.

Gah. Sorry .I marked it to reply then forgot to actually come back and do so.

Thanks for the reminder.  Given timing I'll apply this to the togreg branch
of iio.git and get it lined up for the merge window.  Marked it for stable
so it should quickly get applied to stable as appropriate after that.

Sorry for the delay.

Thanks,

Jonathan

> Regards
> Olivier
> 
> On 11/27/19 2:07 PM, Olivier Moysan wrote:
> > Apply data formatting to single conversion,
> > as this is already done in continuous and trigger modes.
> >
> > Fixes: 102afde62937 ("iio: adc: stm32-dfsdm: manage data resolution in trigger mode")
> >
> > Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> > ---
> > changes in version 2:
> > - correct title
> > ---
> >   drivers/iio/adc/stm32-dfsdm-adc.c | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> > index e493242c266e..0339ecdd06bd 100644
> > --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> > +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> > @@ -1204,6 +1204,8 @@ static int stm32_dfsdm_single_conv(struct iio_dev *indio_dev,
> >   
> >   	stm32_dfsdm_stop_conv(adc);
> >   
> > +	stm32_dfsdm_process_data(adc, res);
> > +
> >   stop_dfsdm:
> >   	stm32_dfsdm_stop_dfsdm(adc->dfsdm);
> >     


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
