Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8011FA982
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jvddu8CscDvc5p0iJqlfk2mRGxdTx6lsPyan4vuQrok=; b=NsYJSz1/NGnhFb
	1tWuzCUYXyRggqTAt/DESxD1kUl6zEsZtWly/SUGqCTHr9y6CG+wIWpggR+YxMAEFVh7xw3A8quCC
	CEc3QoYA44GklUFH2+sBS+Sf55w4UPgh/2EPji8dU6MxPnzk7/hOkQJJ036O5Or/OpVcyiD1VWPxR
	zSupNpN843SoDfTowa4QvSg11w2GPW922UASC1Gvctgl5NCFL+gjEWTTzunVt46j2OcPEdBQEVV54
	hXxyxc2EQMskvxuvYe8SKqSmQbm33JXjnUexBqZamY+tgUu/6CeLiPQOTWmrxmCpXWF5aq7IdOVA+
	ipGw0B75zu/dWZ7RQ1dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5ft-0003VY-RQ; Tue, 16 Jun 2020 07:06:25 +0000
Received: from mail-oo1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5fl-0003V3-RC
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:06:19 +0000
Received: by mail-oo1-xc43.google.com with SMTP id v3so3897283oot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+dWf3nAO7RIVSziG2R8EQ/byF3ECDsm88+AYas5NW7c=;
 b=hUotNTYXbchN5+ZCIKb2puKz+0Wpr1cYv6v7VWZRr+/1TX1hvM+/cLeVgxvJaWTVRT
 BK06DsQ5hih6fbisut+zRwvLe0SVJEEQLJpdarfBtBsTnPWYBVGVfTQG0jGX4/uQKvOh
 iX0R/Nkxv4JPAI9mylZXUMyp8+xdlUCLaplYa424ZmAt9E5Gn2ASlVA1sghIj+RGHePm
 CedQrJTsqUWf3htF1exEDiTcPB7ZeiNXoRV2m3CoLk5vE0zuog32+8YApbzFY5USxBXV
 jExuLIvfS1/Wv4mQvm4MU9hP1A++pcpeld8k8jy6D6dxDZDFBeImgNt15ZZPNDtN7F2D
 iBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+dWf3nAO7RIVSziG2R8EQ/byF3ECDsm88+AYas5NW7c=;
 b=KzFSSJz37gAsp+rGlsztXlmC9g4vj2jGz1IuPAa3cnDN91cGWTobT59G9mPr31U12B
 kOErieBl3xegeCNme+GSn/xT9JzNBv+exzyUz+Osl/QTydHVM3GOY8JLkZgPvlzQh+sW
 CZ+i27fYnG7KyPA7h1ePupIXBFgYVOh1kPtMFvsk1V6/9y5v75ciHa38UZSLIVuMsBjT
 wRcasAEnQ1IJeVBacBoGRcNG/AMACKgU9tQ3NAsi42bYaeuKB7UwIhG7tcRKhUJ0PG7s
 myJeI03ApO9ggYR7t/JJEGEf9aSwaspUGwXC/4rYpgvbjeNCEk47/mZlTQd1Bey+NBPB
 0T1A==
X-Gm-Message-State: AOAM530GL2WwNVdr8eJmy6br+oMAXntLvJAY3uqY66/7BLIqTSoO43MZ
 vkTvc4kfLYf1QMpLH6gNIFU8a9JZ0tAFNdiQOdwtKg==
X-Google-Smtp-Source: ABdhPJyVCYktZ6V7XSNJTtQEsGKzeWMLHV4XTyT4toPtCAIDWAQGrjSr2pm4XD2vjPGlVkDlDoLj7plcz2bqcFbDg7Q=
X-Received: by 2002:a4a:374b:: with SMTP id r72mr1233953oor.15.1592291176234; 
 Tue, 16 Jun 2020 00:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200615152054.6819-1-ulf.hansson@linaro.org>
 <20200615152054.6819-6-ulf.hansson@linaro.org>
 <CAGETcx9bbhW6NoHmjcx3h2y-b8eS_NLwGSyh_scX=CnTpujDNA@mail.gmail.com>
 <CAPDyKFo+p3MyesDDXJBBgQEYFfw0wQ=4ujyD_ORcS=gVKw8DSQ@mail.gmail.com>
In-Reply-To: <CAPDyKFo+p3MyesDDXJBBgQEYFfw0wQ=4ujyD_ORcS=gVKw8DSQ@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 16 Jun 2020 00:05:40 -0700
Message-ID: <CAGETcx-eCae4iTmZDVnve5Cht+NF_DL6YLde_fhdoNHcSNfwuA@mail.gmail.com>
Subject: Re: [PATCH 5/5] cpuidle: psci: Prevent domain idlestates until
 consumers are ready
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_000617_898489_B8E39F20 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 11:50 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 15 Jun 2020 at 20:06, Saravana Kannan <saravanak@google.com> wrote:
> >
> > On Mon, Jun 15, 2020 at 8:21 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > >
> > > Depending on the SoC/platform, additional devices may be part of the PSCI
> > > PM domain topology. This is the case with 'qcom,rpmh-rsc' device, for
> > > example, even if this is not yet visible in the corresponding DTS-files.
> > >
> > > Without going into too much details, a device like the 'qcom,rpmh-rsc' may
> > > have HW constraints that needs to be obeyed to, before a domain idlestate
> > > can be picked.
> > >
> > > Therefore, let's implement the ->sync_state() callback to receive a
> > > notification when all consumers of the PSCI PM domain providers have been
> > > attached/probed to it. In this way, we can make sure all constraints from
> > > all relevant devices, are taken into account before allowing a domain
> > > idlestate to be picked.
> > >
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >  drivers/cpuidle/cpuidle-psci-domain.c | 14 ++++++++++++++
> > >  1 file changed, 14 insertions(+)
> > >
> > > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > > index bf527d2bb4b6..b6e9649ab0da 100644
> > > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > > @@ -27,6 +27,7 @@ struct psci_pd_provider {
> > >  };
> > >
> > >  static LIST_HEAD(psci_pd_providers);
> > > +static bool psci_pd_allow_domain_state;
> >
> > Is there ever only 1 device that's probed by this driver? If yes, this
> > is okay. Otherwise, you'll need to handle this on a per device basis.
>
> There is only one device. Subnodes, may exist to describe a
> hierarchical description of the topology of the power-domains [1].

Thanks. In that case:

Acked-by: Saravana Kannan <saravanak@google.com>

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
