Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1901FA919
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 08:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zf6oCzVm+5NHNDYRdT+Rummagl5GoZ0TQm2Cz5tQF9E=; b=rpW8upTF0yp0t1
	8MIpkDHPW4YJwGdGnFZDBQtc+7BQRI3r29AHUgjmSQwe8I9MVjJXF2tiRE7nB6SJ8UN0rJYQHyXcq
	Uj1ZXeuxoRXucd81j671fCL6hzBWUW7+3MFJwR/slVSTXGELKasfvRfDrv0AE4bcrC7NOpuU9Yksa
	6Zm4BYsydbIn3QOz7ArBzu0pHI1fxcCTWJeSZuU/nfWc2JWN7QTmg1f/YDyrDMiVUyFdPMpMsEJE/
	Qjc/AATCB3LWHdbXhFoQg67PeKGXj/T/+MKnsMOeClO8k2AM8Gon8qm3EQYbGpYuPbyxIx/8LQa4B
	208zbUH3x9/scBl0ZUIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5QS-0001eQ-G3; Tue, 16 Jun 2020 06:50:28 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5QK-0001do-95
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 06:50:21 +0000
Received: by mail-vs1-xe43.google.com with SMTP id u17so10837730vsu.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 23:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xsn4sYJ9N3GdQ4UwPuiI0oU7Rkc9ofrrOyqI9+Zu+vs=;
 b=lPLhLQjLDtPxB2h7HpZbj5XDp+iQwwn0lgr3MKY1Z9ydSw1gEUqt6EXie/Da9Fy+fZ
 /xrrUYwBQRsw4xD3YYMhg/4cphu+PjsHo5MylX8OfXhTVJcDSl4kD438Hx6gXe86T7eK
 TRb4/gsT+fgFAc3qfQbuWKBL7smIAxo3KR04lCG/W16BK6T7WpSMDBloukBDLHIKTPuk
 QhxuaGLVNqmSs4ly6hR9JYGqAslb654YIhpm+KBrSVidbEzx0eIBWWGg0Xsfm2JZ/wEg
 JxG8L03KPeo43STHvjyzallQfgpXs9+mM4oPEULLd41HaAB0XeLfTDgTsYXsTsssWbDX
 Qc+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xsn4sYJ9N3GdQ4UwPuiI0oU7Rkc9ofrrOyqI9+Zu+vs=;
 b=KjXLvg760g5BEgZqijNTzfZdiKJCTtgPeb9RozH5NiOJWxakdcprq+jv29xO3UQQpF
 mZ/mLeOjqAmisOA0FnmXUl/89NWUpBhi9wsC/eJHpJo5pnoRZyeCsZTUk8/KaYDK0/8M
 YD5rRtLzQTbK/z6C3E0m06ev424Yspz8s87uhczO5uyznRDAwUJzg20HksomRbyVHRgI
 tchcpngKU5FdWRkMO6GYWZwbR5QR5u3naOAv6Th463zX7/05F0+hHN6witnfkXzmoKc5
 fa2ko2ybfEEH0CbatV8Z+8pXf9INg3RPD6cjAqt/MnbMh1ZFXnBd4NVuxcMuYNNVHRW2
 m7LQ==
X-Gm-Message-State: AOAM5337AY77iazApBT8FBiDJ+06RFSV8osRnvb7zFx/9a5pCDyR+UBw
 N4QIgYPEo1brMfvukxHMfeb7Sp7AzucPMVW8rPQd5Q==
X-Google-Smtp-Source: ABdhPJwVprXIzriB+Mukv1+Y2AfHXFYc9TMGG9na1M4igDSqdnDhrHJ5SlkiQmSkoFjGXqzzQsH5L3vNpBwsO6oZXmM=
X-Received: by 2002:a67:db88:: with SMTP id f8mr469381vsk.165.1592290217683;
 Mon, 15 Jun 2020 23:50:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200615152054.6819-1-ulf.hansson@linaro.org>
 <20200615152054.6819-6-ulf.hansson@linaro.org>
 <CAGETcx9bbhW6NoHmjcx3h2y-b8eS_NLwGSyh_scX=CnTpujDNA@mail.gmail.com>
In-Reply-To: <CAGETcx9bbhW6NoHmjcx3h2y-b8eS_NLwGSyh_scX=CnTpujDNA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 16 Jun 2020 08:49:41 +0200
Message-ID: <CAPDyKFo+p3MyesDDXJBBgQEYFfw0wQ=4ujyD_ORcS=gVKw8DSQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] cpuidle: psci: Prevent domain idlestates until
 consumers are ready
To: Saravana Kannan <saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_235020_349812_DC63B62E 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jun 2020 at 20:06, Saravana Kannan <saravanak@google.com> wrote:
>
> On Mon, Jun 15, 2020 at 8:21 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > Depending on the SoC/platform, additional devices may be part of the PSCI
> > PM domain topology. This is the case with 'qcom,rpmh-rsc' device, for
> > example, even if this is not yet visible in the corresponding DTS-files.
> >
> > Without going into too much details, a device like the 'qcom,rpmh-rsc' may
> > have HW constraints that needs to be obeyed to, before a domain idlestate
> > can be picked.
> >
> > Therefore, let's implement the ->sync_state() callback to receive a
> > notification when all consumers of the PSCI PM domain providers have been
> > attached/probed to it. In this way, we can make sure all constraints from
> > all relevant devices, are taken into account before allowing a domain
> > idlestate to be picked.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  drivers/cpuidle/cpuidle-psci-domain.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > index bf527d2bb4b6..b6e9649ab0da 100644
> > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > @@ -27,6 +27,7 @@ struct psci_pd_provider {
> >  };
> >
> >  static LIST_HEAD(psci_pd_providers);
> > +static bool psci_pd_allow_domain_state;
>
> Is there ever only 1 device that's probed by this driver? If yes, this
> is okay. Otherwise, you'll need to handle this on a per device basis.

There is only one device. Subnodes, may exist to describe a
hierarchical description of the topology of the power-domains [1].

Kind regards
Uffe

[1] Documentation/devicetree/bindings/arm/psci.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
