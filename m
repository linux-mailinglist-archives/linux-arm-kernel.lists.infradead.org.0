Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE02E143A8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E32poc9s06t94W2sT4IXFs2Ay/xQEHWg4fpSscpXeYE=; b=YkVZ3Gj0MI7oU8
	v71I3JLM8g9TuRngttcOibV4zCFcplO1yuUJd2sCFExhTU660fTBdT2gDPEZIdcvOfFBU2OUVe2LP
	xCZTp/O0Akw1vcthcPYLTcm+TyI3HsOlwaai1OlH+Xuk9FVYjLZlBaW/v4WPtRLEwwlTBjSZk9Wn8
	UYVmuy72kB0xgG52zWcOOoHrmV+0qLHNCXSLU7qmkGCdbrN4KE+PfnazG/bEyYs/50EhB+yBr1JzT
	rZtFg1hgEjuoqEM2wyV1JCtLqlZNoINQ7yC+RX3Jbh/6t3JFfoOkFYDqzFdiPzXdl2+2Si5MCr5DA
	ZK5I1vB/JcZf/OUgtVQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqUl-0004ad-NU; Tue, 21 Jan 2020 10:10:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqSy-00022K-SL
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:09:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so2465092wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 02:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8os47Jh+iH/mWhGJOKaN0Ikowvgw7Dsg6piAesimf+8=;
 b=iNHLk9Soh1BgMmomizmi4fIcor2oN/NsBEzYcXn39v8n4anlIoYM5pz+LSafgd8Spu
 f+S7jCQINFEBJ4GDG4xVgihL44c++E/0Tg7Shs1Ps4QiMQ+Do8ke4XZtb91mtCCPSb17
 8jgPfcy7ylRBXPBUjDLzy7qpdgFjobOdmL+AyehNXUbus45Wmkzcz9npQK6FoRh2lfld
 RgloPfjLJuxfGsc3KMrRsmMDzHu36mcWyIeIyYDOEtja0RuhZt+1QHUg64Sy4nQtummn
 SwblUn6R1sIWp1O85xu9BZGrKNkVu0yj2lUWmC2wFXq9newsw22roQLk7hwpoD5DrjFT
 RJtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8os47Jh+iH/mWhGJOKaN0Ikowvgw7Dsg6piAesimf+8=;
 b=Zn1J7CbeVZf91J8Z8uSS8zB/FnrycSECaNgwZmVOHIxeN/3z3paQ5GazK4KUADS6Kx
 TYM4DwFxsUxXXao3lP4pSfRf+OhZntfy1E46Ft4nvfXk37TeR3D7q9BeK3Zwo7HUZ+Rb
 wS9MDECZccmquw+Z5T8ac8XXPFg6isM3mZgYI5XcO86qiau0y22UPsL19sGKHmKoEts0
 nK0UF9fsNJifYv98GyfV2LuKcmMFztLrzqp2ALCa7fmSwzZtJyXblviUhiW+tgLoR2jv
 xugrqNt/M2RWPr/WtLGi34lN6+K516K52nZFzw/Ldpp3F7ZI5+PCYLUHRnqb11qr35IC
 0BKg==
X-Gm-Message-State: APjAAAUkrGPaFoYZMqTvv9vr8NAKHNtYUd+a7anmIUi791UF66995YtG
 HQ2m1mxhTYrwOvYT0a16xyp7jA==
X-Google-Smtp-Source: APXvYqzMOzjFtDVGl6edwO/7tSb9RrQo9+Hb9CFGAJn1i1sGI47f1x+xTj047nTS+b5NOSYS7F4xnw==
X-Received: by 2002:adf:fcc4:: with SMTP id f4mr4493720wrs.247.1579601338751; 
 Tue, 21 Jan 2020 02:08:58 -0800 (PST)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id u18sm51454016wrt.26.2020.01.21.02.08.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 02:08:58 -0800 (PST)
Date: Tue, 21 Jan 2020 10:08:54 +0000
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
Message-ID: <20200121100854.GB157387@google.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <17b77e0c-9455-0479-d37b-c57717c784c7@arm.com>
 <20200120152804.GB164543@google.com>
 <453034e5-f7b9-20f7-4e26-5d0d7164edd1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <453034e5-f7b9-20f7-4e26-5d0d7164edd1@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020900_963811_B372D290 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, juri.lelli@redhat.com, daniel.lezcano@linaro.org,
 peterz@infradead.org, viresh.kumar@linaro.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, khilman@kernel.org,
 agross@kernel.org, b.zolnierkie@samsung.com, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, linux-imx@nxp.com,
 rui.zhang@intel.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, patrick.bellasi@matbug.net, ionela.voinescu@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday 20 Jan 2020 at 16:20:49 (+0000), Lukasz Luba wrote:
> On 1/20/20 3:28 PM, Quentin Perret wrote:
> > Agreed, this looks a bit confusing. It should be trivial to make
> > em_dev_get() (or whatever we end up calling it) work for CPUs too,
> > though. And we could always have a em_cpu_get(int cpu) API that is a
> > basically a wrapper around em_dev_get() for convenience.
> 
> The problem not only here is that we have a CPU index 'int cpu'
> and if we ask for device like:
> 
> struct device *dev = get_cpu_device(cpu);
> 
> It might be not the same device that was used during the
> registration, when we had i.e. 4 CPUs for the same policy:
>
> int cpu_id = cpumask_first(policy->cpus);
> struct device *cpu_dev = get_cpu_device(cpu_id);
> em_register_perf_domain(cpu_dev, nr_opp, &em_cb);
> 
> That's why the em_cpu_get() is different than em_get_pd(), mainly by:
> if (cpumask_test_cpu(cpu, em_span_cpus(em_pd)))
> 
> It won't be simple wrapper, let me think how it could be handled
> differently than it is now.

Right so I suppose the easiest solution would be to do the opposite of
my first suggestion. That is, make em_get_pd() call em_cpu_get() if the
device is a CPU device, or proceed to the PD list iteration for other
devices. And em_cpu_get() can remain as you originally suggested (that
is, iterate over the PDs and test the mask).

That should ensure em_get_pd() always works, em_cpu_get() is still there
handy for the scheduler and such, and the two EM lookup functions (for
CPUs or for devices) are kept cleanly separated.

Thoughts ?

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
