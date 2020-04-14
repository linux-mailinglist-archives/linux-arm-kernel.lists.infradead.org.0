Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0891A748F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 09:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ES3LkV1/jCqnURKBJIzeIMO98lLaNUn/HjNthSWaZTM=; b=kBgfxi65tNcMd2
	U687h7WDvfcIo4X2X7LGhVgGZjCv7UXvjd82Nu+3PqfsNUoqcbS+YmfSLfUoJsEGLBb09bpFkqRYq
	Gsg+YLQcDM4R+7kuL6kV6wl7b7QBhR2sx4OceItkL0mgDmremwrxUr5tcjNM61mpjG2Jbi2zrfXGn
	QTP/TyVaAdLCsWkyLubTGRKvYNnvLV6YrhFsvrsGIKChwPrZE8Du/6EOUQbW7KpUQthc3nL3+v8GE
	eZOuI8+xu8F6ME4uQy2YN4SqIswUa2ZR/LjxzfQppzDTw2Ug9cjw3+/HdIH3gW9n+wwA5OQzgXMsh
	7PEQMAl6xC374Rp4B1rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOFsl-0001Tq-Jz; Tue, 14 Apr 2020 07:21:19 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOFsd-0001TR-Lm
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 07:21:13 +0000
Received: by mail-lf1-x144.google.com with SMTP id u10so7396431lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 00:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YnugimfgLlPD7Ub15Rq+ZP2oqGldo7TE1O1Dmve7nnE=;
 b=wRI9dknKV5V3DYRe+7S8M3zpLgJPJdiiGSSB3ViTj+LgBtBkel7wQUYbC/TqthYAMq
 8N+ZCg6krg7n/i49R72BeyHVAAi0sL3HBE3ZFuki7Cb+qEZmfRdZ1UrkQ16rIYWz+PFW
 FQq7ghksGAgTcBLKDGYubGuW+9BAOqg1TygoLL6uZeaOu/4TWmFfwp+couNU8xssKvDi
 0/RGo61l/CBm8h8GjUZ1FpOcWg4tKnbPellLDne2hH4c5YWqDDzjjqmeBv75AiT65HWe
 m25ZKQZLWWspY4lreXA1g+MJ4FzZbRukIrFN5A67WRBvFEIG/+LtcTOSOELrENzRWM/q
 jsyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YnugimfgLlPD7Ub15Rq+ZP2oqGldo7TE1O1Dmve7nnE=;
 b=O3/ibeoQRJLuxTMqS2tfNve1cWyp9pjHClFo9zWOx98JfOfAo1NdWQXgDhq/0gSQfi
 ZG+0O6Tf5sIjlkg1j2eTd0ZpKKJhmclLeXjbP9L5LRMg+etdIw4K3U/85U/WqeO7O6yV
 8SQHDBifQKGQJV7oEbCfYlEUKhLKUgbnH3nvKTZ1qRg7fLIZoHzN81bd8w35BkKZbQWe
 zGs8F+5t46R6HTEA4Tw1BEf3k7ZVqUdWH+V/LbMJhpWAJzFpHejoVJmkIMhFVDjw969d
 mJyGHniCTOIVcRwAu3etoiVlH867jTakLhTToupzFjNpbo1h+c9mcQC9SS0EenzeO9f2
 AL5w==
X-Gm-Message-State: AGi0PubFgox2P6T28TXL8RL5fTCtDpkB8KzDCB4pmPOa6C5VIk17XKDC
 cdnSgs4SC96b7xOR0PA4FSz6adgMYwqnLT6skLdvgA==
X-Google-Smtp-Source: APiQypJ4H6n7yG0F1w2Gn8N+H5CLgqJiuZoYs6jejd2ao/p3wXioqSyoAIymYwIciCXJXV97mBqob4c/A2XaK8HU/Sw=
X-Received: by 2002:ac2:5e65:: with SMTP id a5mr12666522lfr.189.1586848868714; 
 Tue, 14 Apr 2020 00:21:08 -0700 (PDT)
MIME-Version: 1.0
References: <1586779466-4439-1-git-send-email-wangqing@vivo.com>
 <1586779466-4439-2-git-send-email-wangqing@vivo.com>
In-Reply-To: <1586779466-4439-2-git-send-email-wangqing@vivo.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Tue, 14 Apr 2020 09:20:57 +0200
Message-ID: <CAKfTPtDSk31p5xF9aHef4T7ixgx8m1H86Py=deu7L6dG4Z1vzw@mail.gmail.com>
Subject: Re: [PATCH 1/2] [V2 1/2]sched:add task_running_oncpu
To: Wang Qing <wangqing@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_002111_746449_1FB9F042 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 opensource.kernel@vivo.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Dave Martin <Dave.Martin@arm.com>,
 Ben Segall <bsegall@google.com>, jinho lim <jordan.lim@samsung.com>,
 Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>,
 Mel Gorman <mgorman@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Dietmar Eggemann <dietmar.eggemann@arm.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 at 14:04, Wang Qing <wangqing@vivo.com> wrote:
>
> We have no interface whether the task is running,
> so we need to add an interface and distinguish CONFIG_SMP.
>
> Signed-off-by: Wang Qing <wangqing@vivo.com>
> ---
>  include/linux/sched.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/include/linux/sched.h b/include/linux/sched.h
> index 4418f5c..13cc8f5 100644
> --- a/include/linux/sched.h
> +++ b/include/linux/sched.h
> @@ -1843,6 +1843,11 @@ static inline unsigned int task_cpu(const struct task_struct *p)
>
>  extern void set_task_cpu(struct task_struct *p, unsigned int cpu);
>
> +static inline int task_running_oncpu(const struct task_struct *p)

This function name is too close from task_running_on_cpu() and can be
misleading as the difference is only "_"
Also, how task_running_oncpu() is different from task_running() ?

> +{
> +       return p->on_cpu;
> +}
> +
>  #else
>
>  static inline unsigned int task_cpu(const struct task_struct *p)
> @@ -1854,6 +1859,11 @@ static inline void set_task_cpu(struct task_struct *p, unsigned int cpu)
>  {
>  }
>
> +static inline int task_running_oncpu(const struct task_struct *p)
> +{
> +       return p == current;
> +}
> +
>  #endif /* CONFIG_SMP */
>
>  /*
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
