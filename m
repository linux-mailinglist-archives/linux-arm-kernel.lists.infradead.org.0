Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A352306FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuFnKJC6ZiOag71uqp2V0O4LeqEYEZOGTDLY12xfnoE=; b=sX9mHNs9v5hz15
	MJUMxzme+ERNlGko7Sp4Of2WCjFHtUe+C5RG3JpvI28DVG6oIz2pqE3xYzPZUCN+9MLa1P7k4DdOZ
	huFeFqrqsMhWvrxu34pAKuO2OIRMd44LGOxrHRvRQ/cwsb/gh/UxWs3pn78mN0YFx0Odmf9VIeH3Q
	VxIBEyvtjEd1BNDu1TFENgtFRcenj2OYYFDhzXgYLG421+fF45ptHeHo/jzZk5zmlqc8An7R8fNzC
	l2QvxeUrMeGMv04krNSLDJCX9r7VJiuYCUMsCSeqFByPkRiB3v/t4lqa+I2vhGNC0cIsGcKoFqHo2
	xpH4cBQCiPP23sJNzXLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWYEA-0003Q9-Bl; Fri, 31 May 2019 03:29:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWYE1-0003PM-PD
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:29:03 +0000
Received: by mail-pf1-x441.google.com with SMTP id s11so5248583pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xnqDdr2i6Tf87P3bIRZEuiZG4fUxfuReHxw3r4p4RC8=;
 b=fBsnocer8Eo0a/7ZyEvb77ep2wXmQNF2ddphCXGtR0y5+sn6HIoTt0yVC4KOD8cUxa
 qXpIgccbgPvVe0OnwST9m/M74rcUUFM/XwjAYZr1xb8t27cdRD0OlNqZQ+VqFd/e4Ixl
 tOqjZIVNDeucsAkU58TcyLlAatlIau55Lt3MT2Amo71qNoLEw84wREUslV9JuGoSVFVE
 xSehbwGds3LND33ak8RKrLpFC0s1lF7SHrHJJLfMUZIUJ7KNICNCjxxnqIhfAc+yuJ+J
 KynfcJXonA62yial/IHpza8IKPtVNPB3YrAbJzKMUQa74uGzYNrDQaKx2mKHoD+Scaue
 LofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xnqDdr2i6Tf87P3bIRZEuiZG4fUxfuReHxw3r4p4RC8=;
 b=ErQQZWCVdMj5zXsmYiYouMhBU9YL8JIcuGmb910Oy2D3RBxbJw1fOVEG8G8OJ77N0S
 73Z7h2BNBx85zQ7unMOs1VIFP5FAgIo/10IaRY+IxKngMx+yRGmW7wgfTME6AGubjipb
 KXe2qe5QL/wOxivpJoZZnywyo2k/rmJRd18p+fW3VkL+idQK54ZXxWW36UPrtHyaLD2b
 L8s9FYi1q8hWUF6IMbTbkoyfnYCuRnjiFVep6CQjR3idZnb2JgjwJTFOj3UDPDisGFb/
 tlbyaRV0qbiXUxvsUz0WuIIofTW5kb+0Gom9bFYaR0WCWMnqzbgbPcnsykPgBWvnm7sn
 nKbw==
X-Gm-Message-State: APjAAAXw+TGNjHM1YTv3ifaB/TnEIyeOgeHp1/fc1r9uKsw2eMZEwr5F
 //m4I1ZalvOJNv6cnZXyDgIFrg==
X-Google-Smtp-Source: APXvYqxsTLouYZB3eteNn2krrJisXBfEBpoWYOTWJAM8j6ndwI/IhwV6+UAuPkSBV5p5JJAAW7PeQg==
X-Received: by 2002:a65:620a:: with SMTP id d10mr6784558pgv.42.1559273340471; 
 Thu, 30 May 2019 20:29:00 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id s134sm4959835pfc.110.2019.05.30.20.28.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 20:28:58 -0700 (PDT)
Date: Fri, 31 May 2019 08:58:54 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Quentin Perret <quentin.perret@arm.com>
Subject: Re: [PATCH v5 3/3] thermal: cpu_cooling: Migrate to using the EM
 framework
Message-ID: <20190531032854.m66ugtyjyjnksrqr@vireshk-i7>
References: <20190530092038.12020-1-quentin.perret@arm.com>
 <20190530092038.12020-4-quentin.perret@arm.com>
 <20190530112747.nlfyctzjkz5lak7o@queper01-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530112747.nlfyctzjkz5lak7o@queper01-lin>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_202901_830333_1095F3B0 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pm@vger.kernel.org, rjw@rjwysocki.net, amit.kachhap@gmail.com,
 daniel.lezcano@linaro.org, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30-05-19, 12:27, Quentin Perret wrote:
> On Thursday 30 May 2019 at 10:20:38 (+0100), Quentin Perret wrote:
> > The newly introduced Energy Model framework manages power cost tables in
> > a generic way. Moreover, it supports several types of models since the
> > tables can come from DT or firmware (through SCMI) for example. On the
> > other hand, the cpu_cooling subsystem manages its own power cost tables
> > using only DT data.
> > 
> > In order to avoid the duplication of data in the kernel, and in order to
> > enable IPA with EMs coming from more than just DT, remove the private
> > tables from cpu_cooling.c and migrate it to using the centralized EM
> > framework. Doing so should have no visible functional impact for
> > existing users of IPA since:
> > 
> >  - recent extenstions to the the PM_OPP infrastructure enable the
> >    registration of EMs in PM_EM using the DT property used by IPA;
> > 
> >  - the existing upstream cpufreq drivers marked with the
> >    'CPUFREQ_IS_COOLING_DEV' flag all use the aforementioned PM_OPP
> >    infrastructure, which means they all support PM_EM. The only two
> >    exceptions are qoriq-cpufreq which doesn't in fact use an EM and
> >    scmi-cpufreq which doesn't use DT for power costs.
> > 
> > For existing users of cpu_cooling, PM_EM tables will contain the exact
> > same power values that IPA used to compute on its own until now. The
> > only new dependency for them is to compile in CONFIG_ENERGY_MODEL.
> > 
> > The case where the thermal subsystem is used without an Energy Model
> > (cpufreq_cooling_ops) is handled by looking directly at CPUFreq's
> > frequency table which is already a dependency for cpu_cooling.c anyway.
> > Since the thermal framework expects the cooling states in a particular
> > order, bail out whenever the CPUFreq table is unsorted, since that is
> > fairly uncommon in general, and there are currently no users of
> > cpu_cooling for this use-case.
> > 
> > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> Viresh: the patch hasn't changed much so I kept this, but please shout
> if you're not happy with the new version :-)

Yeah, it  looked fine and so I didn't complain :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
