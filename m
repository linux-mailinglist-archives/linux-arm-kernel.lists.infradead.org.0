Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B0D181060
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:06:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DR3datpyyN5m8u6q6c0fiW2+Jghvc5sppYIdh7TaLt0=; b=lMiFQfmNRAIs/d
	JdWbTvwmAbIxN8HFrUgujiBNDqqjfx8qOL0p1b4Vd6q0hYiEyaagY7IQJkECkhb5CF+DMAD7TnLJQ
	Q61yzpgxs+bI1Fy+Nzqc6GAvETUyh8Hj0AM1vfvTOc3j3Y/bri94suOs9yZKrSjEaIJNR3KkPXd1q
	MBj3FuqiEN5OxFeoEkHtn9Te+zA5KQjp7v2DsRnVIktJygDYoWAATtjqji79CHO1/MPHwvNYtF6/f
	15Gm/x6qbjI3cXfiYceV5c5CsI78VQ/jsG1p55CfysqT5+DOJDi3Q9zMRxSqR95LozPa1yIrRIt1Z
	S3dr3iAZSjBuE6X1dmFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBuVh-0003Xy-7M; Wed, 11 Mar 2020 06:06:29 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBuVZ-0003XK-3B
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:06:22 +0000
Received: by mail-pg1-x541.google.com with SMTP id m5so598347pgg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 23:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VD15hEVyVLaO06R8soxT+wdeQAWi6jWDprT4gENa4Pk=;
 b=BXuEks7icu5+J5qHi20hsEXmiCS9E/ow1l+ZYZM9dxF94vzf71w5/CXBQ/elTEp2KY
 sK8PCWAC3CzcAsApi7PogMStwLY/F4bznDnaXJEdBmhw68CVuyf9vg0GSasdNXWi1ZwT
 7hT/PuFLEvpc89BNSLsKiNMtvhjH4ARqGRItPC1FZ5eS88OofdfR+fvzxCiIw9RNVbBH
 DKPTCJAE4h7KiuM6zOg9g0+3oavV1W+RM5RX6EcvpwmUgcS5BSDXSw+8pyqe4yxY6HxW
 YO+gCM+xBLjl9wjlLUpYgIyOjYjSmeSVRwCpR+CVEmmjBcyduqs/JiHWgwd69myM0ZN/
 bKMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VD15hEVyVLaO06R8soxT+wdeQAWi6jWDprT4gENa4Pk=;
 b=tMIQfwLrrK5JX10QUFABhzJRyt+8fjbqJydfTo+ShcHtbprwR6OskDfwMpwSqi6lDa
 Ez+c2Y32uQUTt2XsOR70PGWxmY57eyt+3UhD8Qrd8AVt7428zk6pA7wSKMZxGYLYtQGd
 TI92gbK9E+h0ij7Z2reagjR90RuPEi5j1uXmaOc6MM7CeHfJvsXnQBGZqvdFVoRF2lqC
 F4GrReVOjoEQaJBOnsJNmktg1NRerDHomdLohhDTuSffTmuNNO4ASlX9hX6Tb0HGR+Aa
 4Qa8Yl8/qSrpK8IrRVElVLjCmZkexYJwzWCd4nJSCD/wl/p9+6f1LRkCiDH7o34azVYm
 oAAA==
X-Gm-Message-State: ANhLgQ0R+2Lpod/bQPE4SWm8ESF7Gccv32B9bJflaYqQgPztRvbZmL6X
 tj7BClRxAl1os6fFfLFucs9JPg==
X-Google-Smtp-Source: ADFU+vtUcWmiYBhCHp72xQGkMofh54beImT2nmLF78jXNh6JeBSFkkPXyzzpZemY6U8GEERnxtK6Bg==
X-Received: by 2002:a63:a055:: with SMTP id u21mr1300692pgn.100.1583906780227; 
 Tue, 10 Mar 2020 23:06:20 -0700 (PDT)
Received: from localhost ([122.171.122.128])
 by smtp.gmail.com with ESMTPSA id i5sm31347131pfo.173.2020.03.10.23.06.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Mar 2020 23:06:19 -0700 (PDT)
Date: Wed, 11 Mar 2020 11:36:16 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
Message-ID: <20200311060616.62nh7sfwtjwvrjfr@vireshk-i7>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1574769046-28449-5-git-send-email-andrew-sh.cheng@mediatek.com>
 <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
 <1575874588.13494.4.camel@mtksdaap41>
 <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
 <1583827865.4840.1.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583827865.4840.1.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_230621_141939_2485F1B9 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10-03-20, 16:11, andrew-sh.cheng wrote:
> On Tue, 2019-12-10 at 14:43 +0800, Viresh Kumar wrote:
> > On 09-12-19, 14:56, andrew-sh.cheng wrote:
> > > On Wed, 2019-11-27 at 14:06 +0530, Viresh Kumar wrote:
> > > > On 26-11-19, 19:50, Andrew-sh.Cheng wrote:
> > > > > +		if (!IS_ERR(opp_item))
> > > > > +			dev_pm_opp_put(opp_item);
> > > > > +		else
> > > > > +			freq = 0;
> > > > > +
> > > > 
> > > > What is the purpose of the above code ?
> > > When dev_pm_opp_find_freq_ceil() doesn't find matching opp item, freq
> > > value won't be set.
> > > Set it as 0 for below checking
> > > > 
> > > > > +		/* case of current opp is disabled */
> > > > > +		if (freq == 0 || freq != info->opp_freq) {
> > > > > +			// find an enable opp item
> > > > > +			freq = 1;
> > > > > +			opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev,
> > > > > +							     &freq);
> > > > > +			if (!IS_ERR(opp_item)) {
> > > > > +				dev_pm_opp_put(opp_item);
> > > > > +				policy = cpufreq_cpu_get(info->opp_cpu);
> > > > > +				if (policy) {
> > > > > +					cpufreq_driver_target(policy,
> > > > > +						freq / 1000,
> > > > > +						CPUFREQ_RELATION_L);
> > > > 
> > > > Why don't you simply call this instead of all the code in the else
> > > > block ?
> > > These else code is used to check "current opp item is disabled or not".
> > > If not, do nothing.
> > > If current opp item is disabled, need to find an not-disabled opp item,
> > > and set frequency to it.
> > 
> > Right. So this notifier helper of yours receive the opp which is getting
> > disabled, why don't you compare its frequency directly to see if the current OPP
> > is getting disabled ?
> Sorry to overlook your question.
> This is because when the opp is disabled,
> we cannot use dev_pm_opp_get_freq() to get frequency of that opp.
> There is a check:
> 	if (IS_ERR_OR_NULL(opp) || !opp->available) {

I think we can remove the available check here, as we are jut trying
to find frequency of an OPP we already have. Send a patch for that
please.

> 		pr_err("%s: Invalid parameters\n", __func__);
> 		return 0;
> 
> > 
> 

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
