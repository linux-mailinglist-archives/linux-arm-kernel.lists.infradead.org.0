Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C3870B5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syKWO3l/pNdBKcX57Ydwabc3YK1nDsWOdQbY08Nhq80=; b=tYSbK0VO3gUq11
	csgA4rspsF3EE6o9tuqImMgXvlLf7Y4iMblW18eB8B3u/lQTjrD+bOjak4XztRUiNwjeIoy6MRon/
	gx9HlgYiIefOs4cp1d4EBfpBOkVp7+hsZP9fkZqnhClq3TuW90p1jyvmToMbgmNbOjlKeNlSkmziv
	7qiukLmhCRAjUAc4teJzzdSB6MlqMfnOgba/0hpqUVRk+nU4CmxMDQLurUtiIo7TQqugCUTiiouRN
	EN9EUoQDQk6GWgwm9eGvkeDIXvz0vhVByNFxMuP+7WdhvxUDmi7l5tS6C/I3zNH9QuJ1vHoDxIDiw
	nrImEi0vct+s8qOazOnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpft0-0002qX-L4; Mon, 22 Jul 2019 21:30:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfsY-0002q3-VX
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 21:29:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8924D21900;
 Mon, 22 Jul 2019 21:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563830994;
 bh=uwW/oEQ+rIP16Of2YhnZmjQcbaZjB5O2kBkr+rxXs1U=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=vi+PFRFA1apzHXdVjo0FACtPiFs4OVaEL17wILxIWu1gRrdOwIjm8hBwZRC0KB4LC
 FL8NaVB/nJXJpgswnHzjueltqt4wsv0guwau4Ro1NDQ9KTA3+AtGQpx9EgA+OzgZ4X
 Kt0E/skGc+3ypSEy5Ub8MLMpHBWZFsVmWWWh7qOc=
MIME-Version: 1.0
In-Reply-To: <20190708154730.16643-12-sudeep.holla@arm.com>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-12-sudeep.holla@arm.com>
Subject: Re: [PATCH 11/11] firmware: arm_scmi: Use asynchronous CLOCK_RATE_SET
 when possible
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:29:53 -0700
Message-Id: <20190722212954.8924D21900@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_142955_043976_A1F4FBD6 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sudeep Holla (2019-07-08 08:47:30)
> CLOCK_PROTOCOL_ATTRIBUTES provides attributes to indicate the maximum
> number of pending asynchronous clock rate changes supported by the
> platform. If it's non-zero, then we should be able to use asynchronous
> clock rate set for any clocks until the maximum limit is reached.
> 
> Keeping the current count of pending asynchronous clock set rate
> requests, we can decide if we can you asynchronous request for the

This last part of the sentence doesn't read properly. Please rewrite.

> incoming/new request.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/clock.c | 21 ++++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
> index dd215bd11a58..70044b7c812e 100644
> --- a/drivers/firmware/arm_scmi/clock.c
> +++ b/drivers/firmware/arm_scmi/clock.c
> @@ -221,21 +222,35 @@ static int scmi_clock_rate_set(const struct scmi_handle *handle, u32 clk_id,
>                                u64 rate)
>  {
>         int ret;
> +       u32 flags = 0;
>         struct scmi_xfer *t;
>         struct scmi_clock_set_rate *cfg;
> +       struct clock_info *ci = handle->clk_priv;
>  
>         ret = scmi_xfer_get_init(handle, CLOCK_RATE_SET, SCMI_PROTOCOL_CLOCK,
>                                  sizeof(*cfg), 0, &t);
>         if (ret)
>                 return ret;
>  
> +       if (ci->max_async_req) {
> +               if (atomic_inc_return(&ci->cur_async_req) < ci->max_async_req)
> +                       flags |= CLOCK_SET_ASYNC;
> +               else
> +                       atomic_dec(&ci->cur_async_req);

Can this be combined with the atomic_dec() below and done after either
transfer?

> +       }
> +
>         cfg = t->tx.buf;
> -       cfg->flags = cpu_to_le32(0);
> +       cfg->flags = cpu_to_le32(flags);
>         cfg->id = cpu_to_le32(clk_id);
>         cfg->value_low = cpu_to_le32(rate & 0xffffffff);
>         cfg->value_high = cpu_to_le32(rate >> 32);
>  
> -       ret = scmi_do_xfer(handle, t);
> +       if (flags & CLOCK_SET_ASYNC) {
> +               ret = scmi_do_xfer_with_response(handle, t);
> +               atomic_dec(&ci->cur_async_req);
> +       } else {
> +               ret = scmi_do_xfer(handle, t);
> +       }

I mean putting the atomic_dec() here.

>  
>         scmi_xfer_put(handle, t);
>         return ret;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
