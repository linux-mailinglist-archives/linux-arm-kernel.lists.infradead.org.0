Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CCF1180A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 07:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfYg3eQVPApOjkaMtplsWN7Q2pakX2uLrYnGvpK2hH4=; b=T5AkuHsxz/6I+p
	9hLQQxtVcReVU+IMg5ANvdbcOxghoKvEM7OMedIkpZ10tN2Wit8EZNuSZ5BiO/LLkoehchqKkUq++
	FIZT3jOc5JgZJYy3FXZ/4OFwJoCwAMEmPgS01EOlsvc2GtOIWj2lGo22FulKwYthCbL82rAKInjDq
	35AVt5+HvszmdKqZVSBcBWANHeprhtKFO/IFmvJMu3eX85eQMwU+8qQhAGkLEKMEBB+7mcGEvsdAy
	1oikkdrpZiwXojIfQtYkchKL7agPm4/tF7mkGp9FO3Y9inR86Ej6+oGQdcHRXDq/80fBtKfFAVukZ
	nBz4U3hOFr11GTk9Bi6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieZF5-0007AE-F4; Tue, 10 Dec 2019 06:43:31 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieZEw-00079J-K5
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 06:43:24 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ep17so6991033pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 22:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BEsOQpnU2Fph1cy4J7fXWqX+qA8/k32HrrzkPViDr9g=;
 b=rKWS+sYVsja9k0hTYRx7AD3FmdiYxmyDQegsZbxb9XSsVmjse2VRHmD+zciVbY9xfd
 Df1mS1W9/8ZsA4GVQIWMK851Wpq/RDC1D7KDrTFZD7tNqf0pzshtKjLPJfHkL3c5Fs+z
 PUsrAKqyP1GkR+Vh2SA8as16BNtsRfBKNmqdp/t3/i2dbbVGTQqsYIpsYfHxDrMiX+L0
 zTE4tXxRLhskmHL/IrAXD3zA8kxQ/IsiTVimAe7BYhO6yxeMPhXSOwmdvgnsu2dJo0pD
 6yfz739bpjiHyJe9zckZeSWxbYYVdFEDPIPWjJjYRZ+GRkTFoainVrKadvRc5Lx22kxI
 4uwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BEsOQpnU2Fph1cy4J7fXWqX+qA8/k32HrrzkPViDr9g=;
 b=KLn7ueVjmAUSPMrO0EOsrYFbLi8ImTZHWGOtgnUqTE/lodWBAs6SmlZXXScKTXJmjU
 QuUD4tqwTnXR/K1kqX7MawUI1bB0OwAKcg1FxeBPq7vvLNgQfkPpnDvqH5foLCfWw7Je
 kPdRNiCPOD1xps0ThL8AvDLEYbdBlTDjnUGI8+HxN3whUOnk7FGM34UaAeLQ22hfaL8o
 oJMs9iSTzPFB4LrUW5bf5+mB4Kw2eFmcAgCcahpr0habs1tojvPDULM5aXc3dsmtledJ
 GBIYu/7nyyq6w2aLbYXuyzB/DH1wEW5Y57NDYSMGyuB8UUlQRLrLFPdIzim+7rA1hQ+e
 2Dng==
X-Gm-Message-State: APjAAAUOfsEKg0CX0zKsBhNIstcc/IVI3MKyMWq8kIzZxXEjoLcqrDH3
 A7XIQ88yWScnwuuhp1B4E0+L5Q==
X-Google-Smtp-Source: APXvYqwmAHfbEzPNm/4WgwvG4FJ85rMoFfIuvn1FMXhgED7o/6LqgNh4zD7c3ekP+QYYweyaLz2cHQ==
X-Received: by 2002:a17:902:6b49:: with SMTP id
 g9mr34119958plt.156.1575960201667; 
 Mon, 09 Dec 2019 22:43:21 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id s7sm1509431pjk.22.2019.12.09.22.43.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Dec 2019 22:43:20 -0800 (PST)
Date: Tue, 10 Dec 2019 12:13:19 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
Message-ID: <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1574769046-28449-5-git-send-email-andrew-sh.cheng@mediatek.com>
 <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
 <1575874588.13494.4.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575874588.13494.4.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_224322_681071_C2557547 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-12-19, 14:56, andrew-sh.cheng wrote:
> On Wed, 2019-11-27 at 14:06 +0530, Viresh Kumar wrote:
> > On 26-11-19, 19:50, Andrew-sh.Cheng wrote:
> > > +		if (!IS_ERR(opp_item))
> > > +			dev_pm_opp_put(opp_item);
> > > +		else
> > > +			freq = 0;
> > > +
> > 
> > What is the purpose of the above code ?
> When dev_pm_opp_find_freq_ceil() doesn't find matching opp item, freq
> value won't be set.
> Set it as 0 for below checking
> > 
> > > +		/* case of current opp is disabled */
> > > +		if (freq == 0 || freq != info->opp_freq) {
> > > +			// find an enable opp item
> > > +			freq = 1;
> > > +			opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev,
> > > +							     &freq);
> > > +			if (!IS_ERR(opp_item)) {
> > > +				dev_pm_opp_put(opp_item);
> > > +				policy = cpufreq_cpu_get(info->opp_cpu);
> > > +				if (policy) {
> > > +					cpufreq_driver_target(policy,
> > > +						freq / 1000,
> > > +						CPUFREQ_RELATION_L);
> > 
> > Why don't you simply call this instead of all the code in the else
> > block ?
> These else code is used to check "current opp item is disabled or not".
> If not, do nothing.
> If current opp item is disabled, need to find an not-disabled opp item,
> and set frequency to it.

Right. So this notifier helper of yours receive the opp which is getting
disabled, why don't you compare its frequency directly to see if the current OPP
is getting disabled ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
