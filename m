Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0B5108C02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 11:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+IMiGNen7u8pUdS9yq1wwmemq1pYUbcPoAHM9jfcjQ=; b=VW2LQCLczKJNpE
	ensvQntUnax1ntM3yfcvQVLlDmjhFpqsE6tUzpG6SO0d3ciFGd4k7x7Tk+CBRhfrRdzjLx8q8JnSG
	L21mmLovs2+AdqrROkfxBf8wBb9uYvmNMfpVMqM1KcZnDNa/arESB6FBCxvoolZzc4Y80c3G+96eQ
	8noKj168iaotOskMtjLP/xNo7icvDkyIZjRyIWV/pnm0xd/vIjNz+IXVS4z81KDWFNVIQE3/oGMRv
	oxenk2OkYujmhblDT+GwyFofTLFn/6L1y1ZHPbp7lH/pkkw6/C4Tx9KYKNK0j9imWvc0t5XwlHP90
	Ey+Jb0twCZxTl75fwchQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZBs6-0005Nj-Q2; Mon, 25 Nov 2019 10:45:34 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZBry-0005N3-8U
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 10:45:27 +0000
Received: by mail-ua1-x944.google.com with SMTP id o9so4233646uat.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 02:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v3FcaoN4WpK7Q0vtzl4nYB1ganJ2eAq1FfL3c8YRofM=;
 b=ZDRYVS6oMiefCRKtfx6O85kns5YodUHvE0qkZ89CA83dG5VPVQ/5ydRUAYnvWdMIvF
 wQCIQC5Xj1D2G/oyRg+NI0d9KV0LwX3FienSwjDKbOPAAN0eDWGOd73IZ3ismtaDHgX6
 eqgctaE/jXwP7enTDv3Ur1JUOsZw0ZNhaJzd7x2yBfPxAVte2/ebjN0glqeypCe6H91e
 IwBZQYXojUnzcGvwbz3ef5J1ZA+d+DquArEddji6W/MQyfGjJoWAwtllFwVD1hfRrxx2
 r7xnWPhwnYyjDGZH+WyLSH6v/auD9V6Gn9OUbRIO8ZIWntvvC+vdV6b/92dtzN38lAlU
 nuPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v3FcaoN4WpK7Q0vtzl4nYB1ganJ2eAq1FfL3c8YRofM=;
 b=kBGbFAhQF2JVFPqnHRI1m/ecenYijD7jzNgKhV0/mp68+DRinJlbYqSTYXzp8endPm
 WDXGF067wYWBZx7WpYHkxveu8n7s2RqqLARigXqWzX1UXp1WQgTjlfcdboxReBhNUe9n
 jYmOjD5XYYMPAZPY1yooxNl1iZeaq7I3CsMDWRw83twqDfBROmhuOI8LQRgPLTCmeIjp
 a3vJCQWbItUfrlwUoWMfZEdMV6M1eXdPnVExE4ffAgXcXmiqZCf35L3cIdrTv0WzdjJB
 2r1o9X5n92Ke0xw/iOBJ4tpZk7PEMAA38s24mI2LQOgJ0IEyvN+Y+48QtJsWTbzj6M4L
 QzOw==
X-Gm-Message-State: APjAAAWefXhJeg5NnAG+mKCzESrkwnnmqg0S7G6UsbahTTcfCwUsRIhc
 Yz4GHR18Qgryh+UTbHaD+yDdxoSrSi37W0HVI6AHlQ==
X-Google-Smtp-Source: APXvYqyDzET5SML3xNWZZrjmwffcN/e/xq3A6chWsSJXUzKQk6BczKfAYyCDO2GtQX02kfBKmW4iJtVcrcnUlGDfDBA=
X-Received: by 2002:ab0:74cd:: with SMTP id f13mr17428863uaq.104.1574678724284; 
 Mon, 25 Nov 2019 02:45:24 -0800 (PST)
MIME-Version: 1.0
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-11-ulf.hansson@linaro.org>
 <20191115173053.GE27170@bogus>
 <CAPDyKFraEhFVm27YG0fVkjT0-oBBxFpfiBY4zS+1TMy=0F6GRQ@mail.gmail.com>
 <20191122182623.GA8290@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191122182623.GA8290@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 25 Nov 2019 11:44:47 +0100
Message-ID: <CAPDyKFruoj_r3ktAHbVJAnnCZ6EP1dB9sZLE0=BZX=UziUYJag@mail.gmail.com>
Subject: Re: [PATCH v2 10/13] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_024526_433692_75C410B4 
X-CRM114-Status: GOOD (  26.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 at 19:26, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Mon, Nov 18, 2019 at 02:37:41PM +0100, Ulf Hansson wrote:
> > On Fri, 15 Nov 2019 at 18:30, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Tue, Oct 29, 2019 at 05:44:35PM +0100, Ulf Hansson wrote:
> > > > The per CPU variable psci_power_state, contains an array of fixed values,
> > > > which reflects the corresponding arm,psci-suspend-param parsed from DT, for
> > > > each of the available CPU idle states.
> > > >
> > > > This isn't sufficient when using the hierarchical CPU topology in DT, in
> > > > combination with having PSCI OS initiated (OSI) mode enabled. More
> > > > precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
> > > > idle state the cluster (a group of CPUs) should enter, while in PSCI
> > > > Platform Coordinated (PC) mode, each CPU independently votes for an idle
> > > > state of the cluster.
> > > >
> > > > For this reason, introduce a per CPU variable called domain_state and
> > > > implement two helper functions to read/write its value. Then let the
> > > > domain_state take precedence over the regular selected state, when entering
> > > > and idle state.
> > > >
> > > > Finally, let's also avoid sprinkling the existing non-OSI path with
> > > > operations being specific for OSI.
> > > >
> > >
> > > Mostly looks good.
> >
> > Thanks!
> >
> >
> > > I am still wondering if we can keep all OSI related
> > > info in the newly created structure and have psci_states outside it as
> > > before. And I was think psci_enter_idle_state_pc and psci_enter_idle_state_osi
> > > instead of single psci_enter_idle_state and assign/initialise state->enter
> > > based on the mode chosen. I had to closer look now and looks like enter
> > > is initialised in generic dt_idle_states. That said, what you have in this
> > > patch also looks OK to me, was just trying to avoid access to the new
> > > structure all together and keep the PC mode patch almost same as before
> > > when suspending. I will see what Lorenzo thinks about this.
> >
> > I did explore that approach a bit, but found it easier to go with what
> > I propose here. The most important point, in my view, is that in this
> > suggested approach only one if-check, "if (!data->dev)", is added to
> > the PC mode path compared to the original path. I think this should be
> > fine, right!?
>
> I don't see why we should use data->dev at runtime when we can
> have two separate idle enter functions and the detection can
> be done at probe once for all instead of every idle entry.
>
> The overhead is close to nought but the point is that it is
> really not needed.

Alright, I will adopt our suggestion and override the assigned idle
enter callback, when we succeed to attach the cpu-device to its PM
domain.

Do you have any other thoughts about the series?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
