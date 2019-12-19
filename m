Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCE312661D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:50:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Y5HfeOTwqePwOEPcc0mN+JltDv+C42vEh6wExbvRBk=; b=RxGFuEz9XWDsJe
	CrOtu5tuh8Uz+KpCDG4YvkaP14QQ4Li9uxrE35BvtJVdsRT+kau2S5hD1DfFVoEX6saCe1ceU2XyK
	9rh5NLXiy7WLbR4eJ122pN0H0cqqbrIJWdLTq52u9zBtUnsUQtWfN3QFLoL22gJhuUCLBOeSALwP4
	N0j5C00a772PvWcYwibC9yjsK8h5VlIRmW07z15GA9+jh08bFAwhfsT36wz411drzS7mJI5w3KGug
	JGXIzpGSGcV5AvjiT0pqdvv1feTohAoH4uP9k2zTjIOJqqPqLw24ocdAs2cwvrLDEr/LbC2/TTWYX
	GjWPF9mRlXXwWV/G0axQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihy3u-0000i4-Qi; Thu, 19 Dec 2019 15:50:03 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihy3L-0000RQ-Lm
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:49:31 +0000
Received: by mail-ua1-x943.google.com with SMTP id f9so2115928ual.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lXAvb1r92TnWK6C8dcnV7rx6hUZ8P71du1awwZOMpPs=;
 b=G0gvMHAcbaF/7lf/kFlpKzgPxYInj0tU+AECKhyI4EHND+mz3estSGIpY3oPXmKLMP
 gPo9PxMglxm9IAXdtznEBwxDfqWF3jQBsR2BAx/2VORiVEnhKQELCSolxCXO1H5EurID
 y1+KwpSGrgjMVhQRtqR4Ot/6v7JcGgL9GUjQE78sEUfEx8Jl1rvMbdK3ZpjnqF9lEmXi
 vCMvxQbMAxMWIsCc3kw4yhtYgwY2kyMYt6uloDPZhSWbecC25ecMfLOz7hSjrPrviiSo
 UigrTCd9Bwk6qy8gf6ZKiA1YiyAZrNPHFGKILVelGqsW0+iR8mykssawyJg/Dozs0Hc7
 5AQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lXAvb1r92TnWK6C8dcnV7rx6hUZ8P71du1awwZOMpPs=;
 b=Wf6KHQPFpcu6a8/1c+qhzS2+9/TNmT8UNLNvHJudfP9omxJfJRZmfj9dQQ21PjIIO3
 Di1C8p6fN3l1tA/4ceutnnmNzFJ8t55+AH5sHpZA8MD38zEQH22vkv4TxlZspJQ/R0dm
 gr8EDfLxNNM6xVPZWKqyWY6yPD6TNigM2gY3iHP+LSmkRW6wkJBOcsAz4KarzF8W7sEf
 Cvlvbpe/MDSeFjQAKnOk8WOZCqXPqCUXarv2gp4T00WtBq5lkSoYe5eDbta9j7ApgWFj
 YilFpWVzBYoG9w3vO1MJEfHg7S38QGBMZm/EvxfXVhFTP2r5HDU/uXxTQOljFfUKBNpD
 qAvQ==
X-Gm-Message-State: APjAAAU45TTv2FjKe9NCl9FscHZmcfH921S/zIH0r6ABYBjB4f8P3bT6
 m6LLrRC1RwIjNXPZV0u7JsyDn856ebIkt0ss8gbwcg==
X-Google-Smtp-Source: APXvYqzxayg//pdNpURx84BRAAl/dDcXVnta1LHOdI+qHwzENvNfTwcnpGaBIkok4+XfnyWH/9ANOFRvCIOH60V/V+c=
X-Received: by 2002:ab0:6894:: with SMTP id t20mr5903032uar.100.1576770563346; 
 Thu, 19 Dec 2019 07:49:23 -0800 (PST)
MIME-Version: 1.0
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-15-ulf.hansson@linaro.org>
 <20191219143446.GG20746@bogus>
In-Reply-To: <20191219143446.GG20746@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Dec 2019 16:48:47 +0100
Message-ID: <CAPDyKFpkSjq5RzuxCvj8wawU6Q15qq3qiBcrGz=H2X+1Wf3t8w@mail.gmail.com>
Subject: Re: [PATCH v4 14/14] arm64: dts: Convert to the hierarchical CPU
 topology layout for MSM8916
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_074928_103163_9330C004 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019 at 15:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Dec 11, 2019 at 04:43:43PM +0100, Ulf Hansson wrote:
> > To enable the OS to better support PSCI OS initiated CPU suspend mode,
> > let's convert from the flattened layout to the hierarchical layout.
> >
> > In the hierarchical layout, let's create a power domain provider per CPU
> > and describe the idle states for each CPU inside the power domain provider
> > node. To group the CPUs into a cluster, let's add another power domain
> > provider and make it act as the master domain. Note that, the CPU's idle
> > states remains compatible with "arm,idle-state", while the cluster's idle
> > state becomes compatible with "domain-idle-state".
> >
> > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes in v4:
> >       - None.
> >
> > ---
> >  arch/arm64/boot/dts/qcom/msm8916.dtsi | 57 +++++++++++++++++++++++++--
> >  1 file changed, 53 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> > index 8686e101905c..282c36c8fa3b 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> > @@ -102,10 +102,11 @@
> >                       reg = <0x0>;
> >                       next-level-cache = <&L2_0>;
> >                       enable-method = "psci";
> > -                     cpu-idle-states = <&CPU_SLEEP_0>;
> >                       clocks = <&apcs>;
> >                       operating-points-v2 = <&cpu_opp_table>;
> >                       #cooling-cells = <2>;
> > +                     power-domains = <&CPU_PD0>;
> > +                     power-domain-names = "psci";
> >               };
> >
> >               CPU1: cpu@1 {
> > @@ -114,10 +115,11 @@
> >                       reg = <0x1>;
> >                       next-level-cache = <&L2_0>;
> >                       enable-method = "psci";
> > -                     cpu-idle-states = <&CPU_SLEEP_0>;
> >                       clocks = <&apcs>;
> >                       operating-points-v2 = <&cpu_opp_table>;
> >                       #cooling-cells = <2>;
> > +                     power-domains = <&CPU_PD1>;
> > +                     power-domain-names = "psci";
> >               };
> >
> >               CPU2: cpu@2 {
> > @@ -126,10 +128,11 @@
> >                       reg = <0x2>;
> >                       next-level-cache = <&L2_0>;
> >                       enable-method = "psci";
> > -                     cpu-idle-states = <&CPU_SLEEP_0>;
> >                       clocks = <&apcs>;
> >                       operating-points-v2 = <&cpu_opp_table>;
> >                       #cooling-cells = <2>;
> > +                     power-domains = <&CPU_PD2>;
> > +                     power-domain-names = "psci";
> >               };
> >
> >               CPU3: cpu@3 {
> > @@ -138,10 +141,11 @@
> >                       reg = <0x3>;
> >                       next-level-cache = <&L2_0>;
> >                       enable-method = "psci";
> > -                     cpu-idle-states = <&CPU_SLEEP_0>;
> >                       clocks = <&apcs>;
> >                       operating-points-v2 = <&cpu_opp_table>;
> >                       #cooling-cells = <2>;
> > +                     power-domains = <&CPU_PD3>;
> > +                     power-domain-names = "psci";
> >               };
> >
> >               L2_0: l2-cache {
> > @@ -161,12 +165,57 @@
> >                               min-residency-us = <2000>;
> >                               local-timer-stop;
> >                       };
> > +
> > +                     CLUSTER_RET: cluster-retention {
> > +                             compatible = "domain-idle-state";
> > +                             arm,psci-suspend-param = <0x41000012>;
>
> If I followed the thread correctly, we are now just using the param as is
> without any extra logic like ORing like before. i.e. The domain state
> parameter overrides the any param below it in the hierarchy.
>
> If that's correct, then

That's correct!

> Acked-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
