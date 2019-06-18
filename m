Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5903049DB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:46:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzQ30X44Xjjqb7uf0owoumRrxZ54R6HcMCuQtKIoM3Q=; b=HcR4IMjYjUJFCG
	8xwvpNUhsexwQAuu68NO41z7IoxNkjSm0bULNUNssOkGKYn8Zcvey7Zg+dA1U4LeSy1gSqNQcgPDS
	CmzN+zxhTKd4RDY/iSy7ZQoLwtdd3QiwoR+iXn07mTu/QvWu59NlJ+mCu1FAX0CDKQUtrEyOY4Nsy
	yzo+AtHzLSRWTI1mwNVMeozmhCegSRi1pc9Skza8tyFhWgDrbljQXHODDvBZ8xzVJFj2GQHfqI6z1
	sOiUw5s7UpIvuMenS7z6Omz6P3tkNssJryOOvIA1pjvH6OalowjTdEmPtCsNJ+psvne3lwfmGsN2M
	CnVy1J8FLlQEqYQV354A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAgv-00046Q-O1; Tue, 18 Jun 2019 09:46:13 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAgn-00045l-0R
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:46:06 +0000
Received: by mail-lj1-x242.google.com with SMTP id k18so12372193ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 02:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dFNO/LKvYXvmFansFhyqwV2emff3osiWobNFjm+LOZY=;
 b=KoP3nBVtEN46bstqiMPFdsUTbbPqY93iN7frcTYWr8sCkKcBebn35gCjj5jqcvfKhd
 fAuG3oSUIsxzueLCci8XKFWf5vyJEcjs8vc/tenn/7tedfBJnIjkrUS2emDtyh1XcVKN
 oJDo3aSm0I9kNs8kSqe8S7BpxGPY/S1XIGyrpqJwXiVoAjJ21EkDkul6gD/j+g2k7chV
 1q8IYd1jAabrLTjzTFW+sNKXtfxKxoVVe4Tv2xbq9ilJGzSX2Xwu1c6FkoVxQK/B9d7O
 5xswsVa1q7duPRYnUKJhxEn70tEaolrLmQiQYoN4UFh8A5Cuug+J++VyRPd/hcvZEWkl
 4ciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dFNO/LKvYXvmFansFhyqwV2emff3osiWobNFjm+LOZY=;
 b=CMYJT9nAaUmtTsycZnZH9uPI6wALzfndt6cMxzlSe+CcRyp9MeuFmZ6qzgdojgLmEC
 kDiZcIdG3wxnnaiviGt7MutX/LaQgzjM8jFskVxFekY8/Nxf+lGshViV6EwIXxmSkPNY
 n4QOM3JrpitoIT92zFWkAiX9fD7uHONPHgpJU3xQiwADPqn1TlWhoxPwafnB6rLLOBea
 jc4WK+oq1l/E7jZmHVHJB/6FcGgxAY5NmsohIGYIom9FifxwiGkQzr47uzaO9+HHyhz1
 KLkt3K1GE0FWyohgEc2fhQgAqiX8QTpRlzQ8IbIm2Xxn8Prf8P9kVHT4KMzONVpZ9dtD
 UbRw==
X-Gm-Message-State: APjAAAWz1drG75T/xATn03m7NQSV51bQTt0yEoznNy8W6hLbYAlBlyRD
 d9F0HBWJcualqKFOowZ9X39A3LMH2pR2SeUDQY4JxQ==
X-Google-Smtp-Source: APXvYqwLdmo7/UQzJICTwX7MmW1II8rP/12ROJHu2fbSKBjfNIwSirb55B1kWr5B7bMLEWjTiNO044PrL3t15XUYJ7U=
X-Received: by 2002:a2e:1290:: with SMTP id 16mr43089752ljs.88.1560851163194; 
 Tue, 18 Jun 2019 02:46:03 -0700 (PDT)
MIME-Version: 1.0
References: <1560783617-5827-1-git-send-email-vincent.guittot@linaro.org>
 <c8030f30-0899-070b-df3c-3839ec7e1909@arm.com>
 <20190618093453.GN3436@hirez.programming.kicks-ass.net>
In-Reply-To: <20190618093453.GN3436@hirez.programming.kicks-ass.net>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Tue, 18 Jun 2019 11:45:52 +0200
Message-ID: <CAKfTPtAcV-CS_6hibJa0N6U925KASw1Eg7OSDcBt-Hw_frQkXw@mail.gmail.com>
Subject: Re: [PATCH] sched/topology: remove unused sd param from
 arch_scale_cpu_capacity()
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_024605_052325_75585C13 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:THERMAL" <linux-pm@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Quentin Perret <quentin.perret@arm.com>, Ingo Molnar <mingo@redhat.com>,
 viresh kumar <viresh.kumar@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Jun 2019 at 11:34, Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Mon, Jun 17, 2019 at 06:07:29PM +0100, Valentin Schneider wrote:
> > Hi,
> >
> > On 17/06/2019 16:00, Vincent Guittot wrote:
> > > struct sched_domain *sd parameter is not used anymore in
> > > arch_scale_cpu_capacity() so we can remove it.
> > >
> >
> > I think it can't hurt to give a bit of background. The *sd parameter used
> > to be there for smt_gain, which got snipped out by:
> >
> >   765d0af19f5f ("sched/topology: Remove the ::smt_gain field from 'struct sched_domain'")
> >
> > I'd appreciate having that commit mentioned in the log.
> >
> > > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> >
> > Other than that, the changes look fine to me.
> >
> > Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>
>
> The commit log now reads:
>
> ---
> The 'struct sched_domain *sd' argument to arch_scale_cpu_capacity() is
> unused since commit:
>
>   765d0af19f5f ("sched/topology: Remove the ::smt_gain field from 'struct sched_domain'")
>
> remove it.
> ---

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
