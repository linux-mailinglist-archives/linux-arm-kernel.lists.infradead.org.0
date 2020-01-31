Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02D014F344
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 21:41:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0on061rPzMoOHVOzBALffxT+pOeQr61lILEzUwBFjMQ=; b=JIpFIMcnOwpSH1
	s0fYv3EX/duRBqbDBYglfGglvaVQhWPZhVY7PLYqokTZcE1n7olFaTunEYnEatnxvIql/hx23wIte
	N2bMh1AlPIsNHmt540W1Tf3mHncQldHhFHJtmbUXM0Id+mqNe5XVdQXXaElSdRhLB13+D0ez8lyIb
	SsjHsywdmXR5B5OXY7Pg2EjRpKTD+MLzYE504M1k3X6VL4bNw7KvfjNbeF1Sx9A4NTsnDEF/uAU5H
	bET2evwi1rXfyElLS1ovH/Rafdi8jBzax5lsNQCl5oK55O0eegzLh+x/fIFBvzRq9M5xzhNAGtGTI
	Z9iTdDt1Q9aQB+VjjkEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixd6a-0005BB-E0; Fri, 31 Jan 2020 20:41:32 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixd6S-0005A1-Gf
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 20:41:25 +0000
Received: by mail-ed1-f65.google.com with SMTP id r18so9240598edl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 12:41:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QJJQfRq1wZ707JbA7sCfgb7195GzFk0v3Czz3H1LQFM=;
 b=aqyHkvNm6JoW0RNeL7wrcfo2bhuGQf0iMwLv0oi4gWUrZkBPR/VlirzK5q/MyNahuT
 nxTQDxb58bxZcmaaiA2VesJzVcWsYsFGhUMdShyagZ5ixIaiCNOSIglUTLR00NUkcHrc
 0ptZRfhtx3XZVOsnIKkQtS+1N/qTLIckwARSCbFJTaeLEdCoYDX7lnlaeysqSF/mcW+E
 CECNvEI0u3OAJb+FNEyKqRqPUTuV4inXYGvj+x7KUJBxUQahgyZIcj2OSaTlF09WOKvK
 l9j+RrmXRMk+Gjw0sL4h6vrCLt4W/BAhgfZptiLGxkXUwPeOqriT0SEbTOTCDkHyiqGk
 hAmw==
X-Gm-Message-State: APjAAAW4qVobJuDXTnw1kL3wJZZm4ya2NyCCY31XMUgyvgME3pK7/Hiu
 bo0ywF7ChjpfJNJZjAYXLmA=
X-Google-Smtp-Source: APXvYqzi2OiUv/2SQLW0+RWJMHY1JvZjAFeYrqrQ+tOC0v6TlKYJqCvpe6xewRBkzBF4uoalMMoxOg==
X-Received: by 2002:a05:6402:1a25:: with SMTP id
 be5mr2197002edb.220.1580503281876; 
 Fri, 31 Jan 2020 12:41:21 -0800 (PST)
Received: from kozik-lap ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id s16sm558231edy.51.2020.01.31.12.41.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 Jan 2020 12:41:21 -0800 (PST)
Date: Fri, 31 Jan 2020 21:41:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH 3/3] ARM: exynos_defconfig: Enable Energy Model framework
Message-ID: <20200131204118.GA27284@kozik-lap>
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-4-lukasz.luba@arm.com>
 <CAJKOXPeA=_3zPx6Aq3CAUi7JsXr9AigWGWCTNWo_jkm=oVWe_g@mail.gmail.com>
 <db3f2554-288d-81ab-2373-1447367ba673@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db3f2554-288d-81ab-2373-1447367ba673@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_124124_554145_5BC059AE 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?utf-8?Q?Bart=C5=82omiej_=C5=BBo=C5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 05:30:46PM +0000, Lukasz Luba wrote:
 
> > 
> > >                  |-----------------------------------------------|---------------
> > >                  | performance   | SchedUtil     | SchedUtil     | performance
> > >                  | governor      | governor      | governor      | governor
> > >                  |               | w/o EAS       | w/ EAS        |
> > > ----------------|---------------|---------------|---------------|---------------
> > > hackbench w/ PL | 12.7s         | 11.7s         | 12.0s         | 13.0s - 12.2s
> > > hackbench w/o PL| 9.2s          | 8.1s          | 8.2s          | 9.2s - 8.4s
> > 
> > Why does the performance different before and after this patch?
> 
> Probably due to better locality and cache utilization. I can see that
> there is ~700k context switches vs ~450k and ~160k migrations vs ~50k.
> If you need to communicate two threads in different clusters, it will go
> through CCI.

Mhmm... I was not specific - I mean, "performance governor". All this
you mentioned should not differ between performance governor before and
after. However once you have 12.7, then 13.0 - 12.2. Unless multi-core
scheduler affects it... but then these numbers here are not showing
only this change, but also the SCHED_MC effect.  In such case each of
commits should be coming with their own numbers.

> As mentioned in response to patch 1/3. The fist patch would create MC
> domain, something different than Energy Model or EAS. The decisions in
> the scheduler would be different.
> 
> I can merge 1/3 and 3/3 if you like, though.

I understand now that their independent. Still, they are part of one
goal to tune the scheduler for Exynos platform. Splitting these looks
too much, like enabling multiple drivers one after another.

However if you provide numbers for each of cases (before patches, multi
core scheduler, energy model with DTS), then I see benefit of splitting
it.  Each commit would have its own rationale.  I am not sure if it is
worth such investigation - that's just defconfig... distros might ignore
it anyway.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
