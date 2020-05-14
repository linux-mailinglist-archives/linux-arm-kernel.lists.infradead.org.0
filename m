Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B721D3569
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/NMmCfB87TqhiVlSRcYr3/RmRZTWQ782cv5Nd/yOg4=; b=cKMYMUW0REt17m
	pcHOhly0cTagFxMcbMLp5UhnQJefZB871+rtCdLrQhw/y0B5oEx2OzfgXCylSjZO0VQCsSc4rL2if
	YwhPaKdKGmmT6fPKqDJBQtRAPSi/3bjxWldJgarRPZjbWXKlvHNogOWOp6DSsl7ZO9aOw1C3JUrfe
	4/qo8+qyNBKze2nIt5YwW6k5Yq6GrgdPTf2h1EQaBDIPK/11NG/sj+tNEFLQ1RHKQmsnM7U5I/uMU
	xQvOXxLDYPRAGPjrVtDCeJCdoccg61mE3MwAtJjVom6gpLJhhzKbQDKsoVtLi/n7IL3FZ6eJ24MCQ
	/KbgtDcQ82wWwu0bbKeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZG0D-0005k8-VD; Thu, 14 May 2020 15:42:29 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZG00-0005iZ-Di
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:42:20 +0000
Received: by mail-ua1-x943.google.com with SMTP id i5so1313059uaq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 08:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2rIx/Wu7eMh93mXeZtHrHjtTiAAX0hql7/jejCyN09w=;
 b=a5GPjn8648UlAfmJaK2TJFrcyVrDkiNzYsJxuOz8jPR6ciYok3uavjFviHTuS4A7PV
 rfm+tyI01ZfEqTm62Fv9Gfqp+UiXYkdOzsev9G0DpivQRPUdAGGo6TVIlZGNxm6/NCFm
 34ml3WCEocIytXFsg515AmudQ2algOPI4NN9VFtX5EujELFvnyt2wL5xwF87SVCaVFdw
 qlyj9w66Vk2AepGL5kSKwdiH90SJBmhp3VkBWHHttVHddxXVYIjjbbJtgFSCTgQ9qLhp
 odwe5cyAk1sh0cxMu8Y1wiseiodka0q6pd0uQhrpEriyoL2MkTmMJRsLNZlizE//58Sg
 BOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2rIx/Wu7eMh93mXeZtHrHjtTiAAX0hql7/jejCyN09w=;
 b=C1lmJrlxH9tJf3p4ub6bztdUacIEaweIVRA0P/AvRky3g7Gbk+2R2YKd7fR/TB4TPd
 Jk81jIA3O+XjdPivJyeFEoFRl+q0dxhPA1c9JJNhNqXiEzvnOYDTpLgUWlLyHQMzXRKi
 PNSByO+AgLI883ALvIqbznGzJpDvwE45UTGWS1I9nxImRPaW2v5bBL+H25dczynVM+sq
 +9PFhx3tIdOKA97+Dt17/tpKabPVbLeJq6jE13wQIguT9qxbepj3PHi+Wil+AWopY0K1
 5Me+IfpT3udfM0m2yruDL70uQgeGVwIuIMkQZGOGudMw2Dt1hpYOpRsb2XitEv8tuQn9
 wnHg==
X-Gm-Message-State: AOAM532SxXU96t4vvJvW1jJXQoF9NdTX2FATCJ2saDJBaz5j/ZX9hEXa
 20vK0Xas4Ar/3kO/iNCo4Q2xbOfPIOEGc7JMIW4TgQ==
X-Google-Smtp-Source: ABdhPJz/bMzouhi1RGPHhOCmF6Koyy+n5c60NKn1Em+Y4Tc7MHz1QcibV/c1az5d/ugLkeDWtYYAx0FsQwvovoaPWlk=
X-Received: by 2002:ab0:5ca:: with SMTP id e68mr4338167uae.19.1589470933422;
 Thu, 14 May 2020 08:42:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200511133346.21706-1-ulf.hansson@linaro.org>
 <20200514142015.GA23401@bogus>
In-Reply-To: <20200514142015.GA23401@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 May 2020 17:41:37 +0200
Message-ID: <CAPDyKFoVo8L7eiGdEVNYR2DY7cszDuLkmX8O_SfyUKh73pbpMQ@mail.gmail.com>
Subject: Re: [PATCH] cpuidle: psci: Fixup execution order when entering a
 domain idle state
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_084216_494091_C2F1608E 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 at 16:20, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, May 11, 2020 at 03:33:46PM +0200, Ulf Hansson wrote:
> > Moving forward, platforms are going to need to execute specific "last-man"
> > operations before a domain idle state can be entered.
>
> I need to dig the thread details, but I remember commenting on one of
> the similar discussion. It was something to do with voting which wasn't
> necessary at all. I am interested in the details here.
>
> > In one way or the other, these operations needs to be triggered while
> > walking the  hierarchical topology via runtime PM and genpd, as it's at that
> > point the last-man becomes known.
> >
> > Moreover, executing last-man operations needs to be done after the CPU PM
> > notifications are sent through cpu_pm_enter(), as otherwise it's likely
> > that some notifications would fail. Therefore, let's re-order the sequence
> > in psci_enter_domain_idle_state(), so cpu_pm_enter() gets called prior
> > pm_runtime_put_sync().
> >
>
> More details on why notifications fail ?

Well, at this moment this is more of a hypothetical issue as there is
no last-man notification sent/used yet.

However, typically we would call cpu_cluster_pm_enter() in the path as
when the psci_pd_power_off() is called (for psci PM domains), when a
valid domain state has been found.

This means, we would violate the cpu_cluster_pm_enter() API, as it's
clearly stated in its corresponding function header, that
cpu_pm_enter() needs to be called first (and that's also how others
are currently using it).

Note that, I am currently exploring whether we shall call
cpu_cluster_pm_enter|exit() at all, or whether we can use some other
new genpd mechanism to accomplish the similar thing.

>
> > Fixes: ce85aef570df ("cpuidle: psci: Manage runtime PM in the idle path")
> > Reported-by: Lina Iyer <ilina@codeaurora.org>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index bae9140a65a5..d0fb585073c6 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -58,6 +58,10 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> >       u32 state;
> >       int ret;
> >
> > +     ret = cpu_pm_enter();
> > +     if (ret)
> > +             return -1;
> > +
>
> This change is ignoring the retention case psci_enter_state handles and
> this may affect performance by doing unnecessary save/restore.

This was already the case before. CPU_PM_CPU_IDLE_ENTER_PARAM() ends
up always setting "is_retention" to 0, when __CPU_PM_CPU_IDLE_ENTER()
is called.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
