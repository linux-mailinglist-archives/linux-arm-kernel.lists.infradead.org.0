Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED591E989F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 17:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yWIDr5fxvjFxVIO+BNjZQE70XPvmin9Ij7gUvjwd6k=; b=IsnFO+0A2AlBS1
	cLcWBeEdFIa3TNp1z1jdc8YpXjbsLq1wqnQe2zxAXHvcl19zGAEpQvzFEO+AxpzAWLtijlbMyY0M9
	1wjXo8/y7fJ/9tnjHloPgjW0NP8zuF1uP/sjsJ68owcaP6IrWuaGVhmra7zKsjdGzTuYAofkqnTEi
	ehMrZnrAcgJHdolGGH/KHLI4N5X0V4+ZywJIgY57jTUJv4iHXLujCO1PZAqbYMap6ZgcGGDJZrWBo
	w5UAcrI1xocPrjkeaq0N6N1j5LirUIrXnNrdScZC3S6V6ysu2rBOJW1xEoW2iWfmfwU6cKuDhTenR
	47T9jRiyvLuQWLLuv/ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfQ4g-00051M-3P; Sun, 31 May 2020 15:40:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfQ4Z-00050W-Dz
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 15:40:28 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB41620659;
 Sun, 31 May 2020 15:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590939626;
 bh=ZihwhZLxsqzhnXkpIKIJp7j0qhmfl7QS0mKBa+pmKOg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tp1Sv1rUKr6NrKiTwxlXF4s0pdEoq4kByy9NBdZGnj+otXZHgL3vPTm3kV/UlDZcy
 IR70NT10/iVsHYN4bHayiWg2mM/gVhkFaHgFv23m99x35bH7xvtwmDNpiWgetRj8lO
 EKkSDV4lAJJImd26X+G1XZaAVuYfJvZc8FKw6Yfo=
Date: Sun, 31 May 2020 16:40:20 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Message-ID: <20200531164020.765822dc@archlinux>
In-Reply-To: <20200525113855.178821-3-alexandru.ardelean@analog.com>
References: <20200525113855.178821-1-alexandru.ardelean@analog.com>
 <20200525113855.178821-3-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_084027_490004_F8D3CC03 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linus.walleij@linaro.org, Lars-Peter Clausen <lars@metafoo.de>,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, songqiang1304521@gmail.com,
 mcoquelin.stm32@gmail.com, lorenzo.bianconi83@gmail.com, shawnguo@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 14:38:55 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> From: Lars-Peter Clausen <lars@metafoo.de>
> 
> This patch should be squashed into the first one, as the first one is
> breaking the build (intentionally) to make the IIO core files easier to
> review.
> 
> Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> ---

Friend poke.  Version log?

Other than the wistful comment below (which I'm not expecting you to
do anything about btw!) whole series looks good to me.

These are obviously no functional changes (I think) so it's only really patch 2 that
could do with more eyes and acks.

Far as I can tell that case is fine as well because of the protections
on being in the right mode, but more eyes on that would be great.

So assuming that's fine, what commit message do you want me to use for
the fused single patch?

Thanks,

Jonathan

>  static const struct iio_trigger_ops atlas_interrupt_trigger_ops = {
> diff --git a/drivers/iio/dummy/iio_simple_dummy_buffer.c b/drivers/iio/dummy/iio_simple_dummy_buffer.c
> index 17606eca42b4..8e13c53d4360 100644
> --- a/drivers/iio/dummy/iio_simple_dummy_buffer.c
> +++ b/drivers/iio/dummy/iio_simple_dummy_buffer.c
> @@ -99,20 +99,6 @@ static irqreturn_t iio_simple_dummy_trigger_h(int irq, void *p)
>  }
>  
>  static const struct iio_buffer_setup_ops iio_simple_dummy_buffer_setup_ops = {
> -	/*
> -	 * iio_triggered_buffer_postenable:
> -	 * Generic function that simply attaches the pollfunc to the trigger.
> -	 * Replace this to mess with hardware state before we attach the
> -	 * trigger.
> -	 */
> -	.postenable = &iio_triggered_buffer_postenable,
> -	/*
> -	 * iio_triggered_buffer_predisable:
> -	 * Generic function that simple detaches the pollfunc from the trigger.
> -	 * Replace this to put hardware state back again after the trigger is
> -	 * detached but before userspace knows we have disabled the ring.
> -	 */
> -	.predisable = &iio_triggered_buffer_predisable,
>  };
>  
Hmm. Guess we should probably 'invent' a reason to illustrate the bufer
ops in the dummy example.  Anyone feeling creative?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
