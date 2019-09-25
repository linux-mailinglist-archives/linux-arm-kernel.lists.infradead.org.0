Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3865ABE940
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 01:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dC8ALAbjVsi8ulsBMXC6e4CsVBxU0FNyy0AoisA5RQk=; b=oW0kIb8ZWtOHmt
	+EhC80+aKYsMyNlLWiKXDiCBTeaiGF0xdf89u62+HsZZA29Y9KrLA7WKN6DyFeardB/0xNApvKgUj
	ktNP0f6CLKFJOf/+BkbGsprR9Yx+gLF/VtgFLWk7ZTQDpu7QGgsPcSHY3X4bPHLDC234UWaCtHO36
	3Go0JhL/1iQNhGAIKz7I6XSF9zSSmeWfDUfGWFfeJUrOMpOZFRz+8Q6icg6lS30vJ3/aRJYAZ3YB/
	HBu0y2fLG4i+mufhTwECr1SaLSkFoQ/a9zMaM0HWZvp7WCw6EM43QBmtEK3H3WWDC50xdoxpxiOsx
	CVkAdXw4CLeUj3OOnqHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDH67-0004u4-II; Wed, 25 Sep 2019 23:53:27 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDH5u-0004ti-S5
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 23:53:16 +0000
Received: by mail-yb1-xb42.google.com with SMTP id y204so99934yby.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 16:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cyFQHO0gt5mJktt3yKr7R9c1YLgMmxQPz4clIN4BByc=;
 b=NX4N++Ilhb/J+QxCl+m9OQKuUep7vJMws423VnLxrI+JJZb5igg7Ogezjt8G6BXZ37
 eBuYE2PXNvyxQncoy1SlWgggQP4mi/THz6D4OzUqZnWQK1horxAdXZaOv0iqYoJeqhqq
 jxopXY9GPAAub44F6/pzw4LBObdtDZhYX13loPzxMGZ1Qxe22MtqUpkBmCdMgwKIKSxc
 CV9AhCou7Ps3aYHlF4I74Pu/uipvq+O9ZBi7ZXJn/yUlpRhWC4hTw6xpKG1Z/q2pj11M
 ak/wzvln0BXE9SykOMtCUYfrpjvB7tD67nt9VFxZtw+Xv2iz/Kq9JQqBpfXAdUFGGeIv
 LHcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cyFQHO0gt5mJktt3yKr7R9c1YLgMmxQPz4clIN4BByc=;
 b=HgZoZLzDfoo6p26Wgn99l2Gxr/XGhZAw+9ptvo2DjdbO+MPgGaG4nfiqjaAg0KtJ0k
 03RCNT5fWG43Tz19xbznlUZIvIlQLt+iNjr/bILIIwzdI0ZUqr0cr8BEOO0PeYaaFlk1
 j+xuFEOiBxKVaGzPuIb2W/0nnw6uGStcMhejt8mpUL/me2iks9s2jCgc8PuQBwplii3E
 71jua34YGDmYcLRADxiHu4/K2fRsGwzmGfTxFfrIJZRaxOhW9dJ04aLW6gfnKMYbVjPO
 Pae/lDa7CKEI9OnOwbGaaE4kFHg6Z38xmhjjyqLY7cFtLfmis484NWYYRfAnSZMs/DSw
 b1zg==
X-Gm-Message-State: APjAAAVdtkYqKfoUR7jLkIIxSFb9EPttZzzqVpmd20RvE+LYC6vqFYr5
 OeWD6QKdhjsCZA4yK8nSO0w=
X-Google-Smtp-Source: APXvYqyCs6ReFo44FRjG9X8YZDHHS+am/bMANP6oopGV1Zd787odaVvfpd//Pc4OS1/U5biQgJ7CJg==
X-Received: by 2002:a25:a469:: with SMTP id f96mr185130ybi.23.1569455593438;
 Wed, 25 Sep 2019 16:53:13 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id x145sm77056ywx.2.2019.09.25.16.53.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 16:53:12 -0700 (PDT)
Date: Wed, 25 Sep 2019 19:53:10 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Fabrice Gasnier <fabrice.gasnier@st.com>, jic23@jic23.retrosnub.co.uk
Subject: Re: [PATCH] counter: stm32-timer-cnt: fix a kernel-doc warning
Message-ID: <20190925235310.GD14133@icarus>
References: <1568809323-26079-1-git-send-email-fabrice.gasnier@st.com>
 <20190925234927.GB14133@icarus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925234927.GB14133@icarus>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_165314_911058_EA1EF65F 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, jic23@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 07:49:27PM -0400, William Breathitt Gray wrote:
> On Wed, Sep 18, 2019 at 02:22:03PM +0200, Fabrice Gasnier wrote:
> > Fix the following warning when documentation is built:
> > drivers/counter/stm32-timer-cnt.c:37: warning: cannot understand function
> > prototype: 'enum stm32_count_function'
> > 
> > Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> > ---
> >  drivers/counter/stm32-timer-cnt.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
> > index 644ba18..e425dd1 100644
> > --- a/drivers/counter/stm32-timer-cnt.c
> > +++ b/drivers/counter/stm32-timer-cnt.c
> > @@ -28,7 +28,7 @@ struct stm32_timer_cnt {
> >  };
> >  
> >  /**
> > - * stm32_count_function - enumerates stm32 timer counter encoder modes
> > + * enum stm32_count_function - enumerates stm32 timer counter encoder modes
> >   * @STM32_COUNT_SLAVE_MODE_DISABLED: counts on internal clock when CEN=1
> >   * @STM32_COUNT_ENCODER_MODE_1: counts TI1FP1 edges, depending on TI2FP2 level
> >   * @STM32_COUNT_ENCODER_MODE_2: counts TI2FP2 edges, depending on TI1FP1 level
> > -- 
> > 2.7.4
> 
> Fixes: 597f55e3f36c ("counter: stm32-lptimer: add counter device")
> 
> Jonathan, please pick this fix up through IIO.
> 
> Thanks,
> 
> William Breathitt Gray

Sorry, that's the wrong Fixes line. Here's the right one:

Fixes: ad29937e206f ("counter: Add STM32 Timer quadrature encoder")

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
