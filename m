Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C1D1A1B9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 07:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uE7wxKifdZAiOPaRXJstncF42+yRwI1Xa5/Pf62JXo=; b=scA421QquS+ArZ
	DRTczGIQkqHW+60JT2HykMcRu4V8lx5nGQ5MwqA3+zsjUIE0W/ssBB7IiT2bwkp4OaIEPkeswFK4A
	bhW9t/mbQlNXDwSDkLQZGNZ9tvy90bnmNdaDYmfLktyyrnzXJXb2rcK5aYoaH7f0Xe7fdKTBtTy/A
	SyCinApJ4DHOGXMCORGCKCWCuy/SRwzXqnG6Ofq80YXjJGGunBeRcGgQ6ENk2VLv7E105lOqbVNcH
	lxXFgE3J6YBfV7WptoBp0FhdDZaWHYBg2fLkupuRKomEU2AeqcDK1DgA90vW3IHiywBR32wFfPd2o
	mL9WFBD6cPsls9GRxqvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM3eC-0005U6-9d; Wed, 08 Apr 2020 05:53:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM3e4-0005Tn-Fo
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 05:53:06 +0000
Received: by mail-pg1-x544.google.com with SMTP id s4so2833745pgk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 22:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5e4MJJn8a/rgtRLRcTfQ/Iwfbqly/Z6Qseq2BhNVXhs=;
 b=Buvyp94gdoyw/raDpF1YKbKaOV8H5YUTSwbYKlAKBdifSk24gF0L4UwqZp3RXq99dd
 sRdjTCdrxsdyE1HODCeUTL98tb5zF4E1JAMVkMfFWkyLXApJynqd/dprODX+DZmo7Bzz
 p0CkcsxnkwT6qh4SW5NIr12InVUfZ/K+KS+M80Ijd4O7ClNbKM9cFTk5YSeb+soqgXcE
 23+iEs5d4gEfdVMvUEIK8KwmBPZafE2iIShuoD2klQovIVxmOXrIJ0ELG5x3w4VwDPPQ
 zrkSFKTBQCGnPoVtv6M0xq2xZbSber/BMiLaZKHxCFVx3Qf/Znsu8QYtK6YOX8m5pdr2
 IZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5e4MJJn8a/rgtRLRcTfQ/Iwfbqly/Z6Qseq2BhNVXhs=;
 b=pMn3qu9JhwIbSICR4yw45J2717/7raKGDzmIIso3T1ZtrtLOIsQvb0+hwfMIeB7Zdt
 QkhwMwno93tiDsRY+pOXtslWg4BM0BDwlslQXuKCsiM9RKiE8cfQQ84URw6f1R7ExUcS
 aBC+qFxQYZXu54YfwLJiOC9eJ4IrnTYQmJQKkWDau7ccbdVx3N3B+k6Z5sKz83G9q4aZ
 qUZ2SxY3wUGbokpXSiTAGso8Y7V0UJ0PLvDbuap2h/8StkyEWEigJx7fvKV9ovCX4w29
 Cbo4aAHXzqMvuyoFPxe2ArIVKHBNTtrGcmcbT1PPLze3joYp5ztpyHQ+W4XBUjtRLLPP
 XzEw==
X-Gm-Message-State: AGi0PuYjziIDBuwbu3VxA2e/bO4BRdmxMqwG9PWxdtMycqmyZpSaRVIv
 vPwqLoWUOiMoCI4Zhj1X275PIw==
X-Google-Smtp-Source: APiQypLa1JacUHJ+QeokcMaEZM87v/v2o50a2V2iva/HH9LUehvg+Bz1b7fJMo2ykKancm0Rl5AMAA==
X-Received: by 2002:a63:2903:: with SMTP id p3mr5153192pgp.87.1586325183838;
 Tue, 07 Apr 2020 22:53:03 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id d26sm15488014pfo.37.2020.04.07.22.53.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 Apr 2020 22:53:03 -0700 (PDT)
Date: Wed, 8 Apr 2020 11:23:01 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: sumitg <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Message-ID: <20200408055301.jhvu5bc2luu3b5qr@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20200326115023.xy3n5bl7uetuw7mx@vireshk-i7>
 <d233b26b-6b50-7d41-9f33-a5dc151e0e7d@nvidia.com>
 <20200406025549.qfwzlk3745y3r274@vireshk-i7>
 <3ab4136c-8cca-c2f9-d286-b82dac23e720@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ab4136c-8cca-c2f9-d286-b82dac23e720@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_225305_046212_180B96D7 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07-04-20, 23:48, sumitg wrote:
> On 06/04/20 8:25 AM, Viresh Kumar wrote:
> > On 05-04-20, 00:08, sumitg wrote:
> > > On 26/03/20 5:20 PM, Viresh Kumar wrote:
> > > > On 03-12-19, 23:02, Sumit Gupta wrote:
> > > > > diff --git a/drivers/cpufreq/tegra194-cpufreq.c b/drivers/cpufreq/tegra194-cpufreq.c
> > > > > +static unsigned int tegra194_get_speed_common(u32 cpu, u32 delay)
> > > > > +{
> > > > > +     struct read_counters_work read_counters_work;
> > > > > +     struct tegra_cpu_ctr c;
> > > > > +     u32 delta_refcnt;
> > > > > +     u32 delta_ccnt;
> > > > > +     u32 rate_mhz;
> > > > > +
> > > > > +     read_counters_work.c.cpu = cpu;
> > > > > +     read_counters_work.c.delay = delay;
> > > > > +     INIT_WORK_ONSTACK(&read_counters_work.work, tegra_read_counters);
> > > > > +     queue_work_on(cpu, read_counters_wq, &read_counters_work.work);
> > > > > +     flush_work(&read_counters_work.work);
> > > > 
> > > > Why can't this be done in current context ?
> > > > 
> > > We used work queue instead of smp_call_function_single() to have long delay.
> > 
> > Please explain completely, you have raised more questions than you
> > answered :)
> > 
> > Why do you want to have long delays ?
> > 
> Long delay value is used to have the observation window long enough for
> correctly reconstructing the CPU frequency considering noise.
> In next patch version, changed delay value to 500us which in our tests is
> considered reliable.

I understand that you need to put a udelay() while reading the freq from
hardware, that is fine, but why do you need a workqueue for that? Why can't you
just read the values directly from the same context ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
