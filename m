Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACBF1F3F41
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shVjgb7Occu8v2vjTiI6ihUEEZuKJZIYdv3ndfwQCqg=; b=nTExlfhD5E+VH9
	EFXG4XEcpkJF/NjVpWNYH2WcED+EyU7YFGSrpdd2I0zNUnIl0q0y4MrzrPOcYc1+QBWmz90vlqKls
	MOk1nHM7ZRq30nWPRXcTK/6uFJiNI8seakhGafaXZqULluhPcMoJM4B5yw3+uTBPH7w0Lz6gGoOgS
	f075HKN541MGtlZD7X6rk+pnHsnCQNZRb4q0a/zyvZNS8rqL759V4vT7n6O+PK6M6v4nn3nhIJoh7
	rc8mx51tYS7cyI9ftVJPLjgQMd8qoZ5J882NvFIiNKgqZbsUUfR/EkRimTKfJ6qCyJdFJXrr+u60R
	5IX/iPoV1xsROb0kBSPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigA2-0002Md-7J; Tue, 09 Jun 2020 15:27:34 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jig9h-0002M1-Hv
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 15:27:15 +0000
Received: by mail-qv1-xf43.google.com with SMTP id e2so10258557qvw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 08:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RvlMT/V7LdXyffx3XNyHPxoXrKOJiaM6774rBZHZc5M=;
 b=RQ75T/FBBH2SzmhTcazD+7GUT2ZOpp2wbvDJaTXomaPDcv+laZ/z4aBoF6pPnG0wfX
 /8POirPQAMawWOjzxXyFFUh9dL8IrK5SVyP6PPkckuLddw6JI72c7/6HoA3rV0ztUJwp
 BUaeWxih0rZjgX9KrZIX/oMVtjyUMDYjBTXLPEtWvQA9SskPwkzW3mmb3YgFVz3H9itv
 cL3PVLt3jD18+Ca5e9AStPHg+FIDotho19bnTZo/MiqrK/U4Q2j0EoeKqzbRv4eyBNz8
 IvcSzHy3z7lXoPvcZxXx6d0arvumrvAb05dSNa0j0iaPImnrsSYgZpkSl3y08VYltg+d
 GW9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RvlMT/V7LdXyffx3XNyHPxoXrKOJiaM6774rBZHZc5M=;
 b=P9W9W7NJkNQ/J7oTyp71b8cjnSl7lfRrnMhS+cKpyyYvVsook+IJ1MhiWfSIO8Xehf
 deXzoS5+tROKVwLRRCHpHlH42+nOb87cRvav9J8U7gTC0/zEVBKt2ben5WBSHu+JNAzS
 TbZpW+w6u3//j7920bGDh5zup3jz9M9QepT+oj9JobqwnObMq5nd6G+Za+BnG4CzETEk
 2UN4XxLRUdB4fMkzZM339c0uUoqkOBRyC9cJYugl5JtGUA6TDoIxMcUdlfjkm/z4xNkS
 sNMdwhhH3ysza+O8YPBaAPGGg3D76wBONOs8tg95Mqv6t6FGC372oE6Mc6/yqXRWjHc7
 0OFQ==
X-Gm-Message-State: AOAM531yRYpWHFFLpreYzU7/VYmSVlPr+Gyk3s4FcUj1YUey+5MnbGA3
 mBO33cJ5ThPABj+WygkvheQ/OIIGI7lHcXkFRIBk6g==
X-Google-Smtp-Source: ABdhPJyxXqgCvFmvIhfW2kfVHAp7ILUJuPskbEjZV9ZlNXRLGLzjbSaJyRmiJWTfi9MW9GWAkQPQ7WaFX+Dv3tT/ELU=
X-Received: by 2002:a05:6214:72a:: with SMTP id
 c10mr4364967qvz.189.1591716431832; 
 Tue, 09 Jun 2020 08:27:11 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <6d759cc28628ea72767c1304883630eb@codeaurora.org>
 <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
 <f0357072de96970b641bbd0da98c1d61@codeaurora.org>
 <CAJ9a7Vj9STJw4jBxWU_9wHftj4Q7+k8o1nTc8tr21KjYi0RkpQ@mail.gmail.com>
 <4a09cd2e054836d85f2e024ca4435e91@codeaurora.org>
 <CAJ9a7VgCFeHNbY_9Gwvu6uT9MFBeY=_GCaN4N1dwmm+iNpfJOw@mail.gmail.com>
 <1a5a6a6d-b86d-df45-cf91-7081e70d88a3@arm.com> <20200603174426.GA23165@xps15>
 <da1fdf765ea29cfe7a44145b17431721@codeaurora.org>
 <dfa6aa626f075f49d9ba1ae8ffa3d384@codeaurora.org>
In-Reply-To: <dfa6aa626f075f49d9ba1ae8ffa3d384@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 9 Jun 2020 09:27:00 -0600
Message-ID: <CANLsYkzqmMZNY=N+x7tVFppGHPp6GviQsDMLqoQ36mnL2aRBLA@mail.gmail.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_082713_621992_9385BB2D 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jun 2020 at 08:07, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Mathieu, Mike
>
> On 2020-06-04 12:57, Sai Prakash Ranjan wrote:
> >
>
> [...]
>
> >>
> >> Robin has a point - user space is long gone at this time.  As such the
> >> first
> >> question to ask is what kind of CS session was running at the time the
> >> system
> >> was shutting down.  Was it a perf session of a sysfs session?
> >>
> >> I'm guessing it was a sysfs session because user space has been blown
> >> away a
> >> while back and part of that process should have killed all perf
> >> sessions.
> >
> > I was enabling trace via sysfs.
> >
> >>
> >> If I am correct then simply switching off the ETR HW in the shutdown()
> >> amba bus
> >> callback should be fine - otherwise Mike's approach is mandatory.
> >> There is
> >> also the exchange between Robin and Sai about removing the SMMU
> >> shutdown
> >> callback, but that thread is still incomplete.
> >>
> >
> > If Robin is hinting at removing SMMU shutdown callback, then I think
> > adding
> > all these shutdown callbacks to all clients of SMMU can be avoided. Git
> > blaming
> > the thing shows it was added to avoid some kexec memory corruption.
> >
>
> I think I misread the cryptic hint from Robin and it is not right to
> remove
> SMMU shutdown callback. For more details on why that was a bad idea and
> would
> break kexec, please refer to [1].
>
> As for the coresight, can I disable the ETR only in the tmc shutdown
> callback
> or are we still concerned about the userspace coming into picture?

User space isn't a concern, especially after you've confirmed the
problem occured during an ongoing sysfs session.

>
> [1] https://lore.kernel.org/patchwork/patch/1253131/
>
> Thanks,
> Sai
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
> member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
