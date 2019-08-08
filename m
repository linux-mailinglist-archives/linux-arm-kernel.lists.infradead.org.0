Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EADD85974
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 06:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdtI/xykquFjU3tirUnyGTEX5sPeNVoYjcde1fOkRM4=; b=IJCT0GJ3kA2k89
	Dlbwh1vWryfSIhg6UPxkL77fJ1zUaOZmXnVvhuBm3SDx9BmIX5Mqh7Ck1MaxxqkGqFjz5h5ruy1YM
	HXf+JAoPrU54pg1yGxT5aeMx1dQvn97u+c+DqnvKPqCXedRK0ZbREtiyAitzH3LGaux38/egpFm5O
	PxOYpLbq5RReaza2+nhR0lV3uBb3HcbxfTpLWeaUIh8vNrSmNKvxZluIbjbxbkz7ss5tTqcgwBQ/L
	IOIYHfceuUVzGRpFS8bcSnVOqByyS73YBlrZDc0V025bc6B2GpAH4tBGYAzkp94Nkstu/eefK0TgH
	+O1xTwGGLnAp2I4CB10g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvaLG-00062M-Ux; Thu, 08 Aug 2019 04:47:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvaKv-00060p-6y; Thu, 08 Aug 2019 04:47:38 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4E83217D7;
 Thu,  8 Aug 2019 04:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565239656;
 bh=y0710HmReVsBMWZ/XfSor0U2soY0toxlrShfhv6D9iA=;
 h=In-Reply-To:References:From:Cc:To:Subject:Date:From;
 b=heRTJYGb+MKnfdifsw1aaCQ5Te73E3T+adwWyB2Qh8LsxkzkNb2+gHXK1Y9y7VVdO
 ttEq4DZqadJi6JBJlRK984Me6oF7tc8yhfyHyjYw7UuSPc0c970anKM8dtH2P9Tfdl
 W/A0NQDTkGsu91OWcxft8zXa33tPBgskXOJ37lzY=
MIME-Version: 1.0
In-Reply-To: <1j36iewvdo.fsf@starbuckisacylon.baylibre.com>
References: <20190731084019.8451-1-narmstrong@baylibre.com>
 <20190731084019.8451-2-narmstrong@baylibre.com>
 <1j36iewvdo.fsf@starbuckisacylon.baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 1/4] clk: core: introduce clk_hw_set_parent()
User-Agent: alot/0.8.1
Date: Wed, 07 Aug 2019 21:47:35 -0700
Message-Id: <20190808044736.A4E83217D7@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_214737_277570_DDCFD42A 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jerome Brunet (2019-08-06 01:28:19)
> On Wed 31 Jul 2019 at 10:40, Neil Armstrong <narmstrong@baylibre.com> wrote:
> 
> > Introduce the clk_hw_set_parent() provider call to change parent of
> > a clock by using the clk_hw pointers.
> >
> > This eases the clock reparenting from clock rate notifiers and
> > implementing DVFS with simpler code avoiding the boilerplates
> > functions as __clk_lookup(clk_hw_get_name()) then clk_set_parent().
> >
> > Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> > Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> 
> Looks ok to me but we will obviously need Stephen's ack to apply it

Acked-by: Stephen Boyd <sboyd@kernel.org>

> 
> > ---
> >  drivers/clk/clk.c            | 6 ++++++
> >  include/linux/clk-provider.h | 1 +
> >  2 files changed, 7 insertions(+)
> >
> > diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> > index c0990703ce54..c11b1781d24a 100644
> > --- a/drivers/clk/clk.c
> > +++ b/drivers/clk/clk.c
> > @@ -2487,6 +2487,12 @@ static int clk_core_set_parent_nolock(struct clk_core *core,
> >       return ret;
> >  }
> >  
> > +int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *parent)
> > +{
> > +     return clk_core_set_parent_nolock(hw->core, parent->core);

I wonder if you really want to call all those things in
clk_core_set_parent_nolock(). For example, do you want notifiers to run
again and for rates to be speculated? Maybe all you want to do is
overwrite some value for the clk's parent by calling into the ops for
the clk and generically parse the value that's passed as the "parent"
here.

I ask because it may be good to avoid doing all that work and updating
bookkeeping when we're deep in a notifier. If we can clearly understand
what the driver wants to do from the notifier then it's simpler to
change in the future to use things such as the coordinated clk rate
vaporware.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
