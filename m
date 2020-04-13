Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2BA1A62FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IicSiE4UCJ2uGSV7HNtvM20eVVAG4XHxje1daGlDVb8=; b=XK4nd3+HUpOXk4
	U92bhxIpUF0T0ey26fGOXCB13mr0fffbU5BzF6XV361Ht0AJ2lvzu4FadhXHbVJhB7d83cmvuGILl
	W25AfsGJFwgQ2juqXdX2oD+aANzzmnLYGjxopf0OATZq92qQh1mvglHJoxIkTk50i+iPsu2g95eiq
	lACo/uLUoYgbFO56dH6lrOPGp0ho7fsYyPDwrfq8c6MdW2OuhpWqDdAgRnEGnNdIzyNFmu4br7QGf
	AF8BjNFo5F0ajtOxcvlb+uQ55926XIftCcIDxzDI99te6o7eL6PzT6ff5SydWFXOBUM+1xtEmQRhH
	ZqJ2/n6wDNCqJn0r6jhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNsTm-0008WD-8S; Mon, 13 Apr 2020 06:21:58 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNsTb-0008Vp-Gw
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:21:49 +0000
Received: by mail-pg1-x532.google.com with SMTP id c23so4065091pgj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 23:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=La50agcb/2KWA0YXVPyR15X/cVxbH5EFFNzow2CasCk=;
 b=U4AhDKmpTjiiQCZMx8qJ1pvV8qHN5/3QPa+VuBSFlJKps1DI9ITUMc5Vs0rjFqGEFk
 jnergkSEQGWU+5Kxd+rABuZrt2Uj2pIFjr97R4gXPKNC2B/tXBLXUEMn3jWZTCMxTC+d
 Y4KwetQ/ZEN+5oNXk8NX3XVPtMRJjfP50fHutrzSmg8Ifet9woNEzC0a/qi0yLFeVccx
 yRgkeliuuX2KAd5dT6IYcQ6e99JJXkCFk5kQixdxmzcrT9s3llqQkdUclDJTvA9sLQPS
 owAhwVjvH/loJKinZhJcY6sV48c57edrdQub9pYTPcZQAbuOoulrCTh1pW59H8Tz2tlK
 lW2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=La50agcb/2KWA0YXVPyR15X/cVxbH5EFFNzow2CasCk=;
 b=ma+mZ8QXPBb1SxRRSvKnaFv94il3cA/S87PxKBNQFoR3C65y1enBf5TfdHXLFpDVCV
 RCvXIaN6agbf4Xuq0hoAur8mvHIkaT0qHRFXv5vhFza7SqOAWjnNhQBQiqJ+qF3zRQeX
 gqEmHL7LiCy+cPceEJkqfe1pMh8r/V7S7gYDCx+McRUyMEHHLD1+swFsMAMAzEhW2+yn
 A2O5HVzKGm1JZWEJOBweAo9A3aUR0ZqOlGv/pi3OfdxBTaO9+NeSCvVlZx5EFekv55hF
 Er8jWeep+jBEel5wEvZ+vNrLU9gN1aBh1od4ujjR0miJ87SlhwcLCHEquphpc+JVyP+/
 v02g==
X-Gm-Message-State: AGi0PuYUEoSI/n7xYNaBGdvEpTkdLX7mlI+k3bATySr9IBc1zqH3ByYM
 DTocYxu7EwmKl0mIG3WnsSi7bw==
X-Google-Smtp-Source: APiQypJQcvb09jM8vKcT10ou779L5BrE/iVeMVqorUgMs0rxNdmOzAZ2huH75ZLiRKpYDW7+F1nNsw==
X-Received: by 2002:a63:a50c:: with SMTP id n12mr16740745pgf.274.1586758905511; 
 Sun, 12 Apr 2020 23:21:45 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id d203sm2351825pfd.79.2020.04.12.23.21.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Apr 2020 23:21:44 -0700 (PDT)
Date: Mon, 13 Apr 2020 11:51:41 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sumit Gupta <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Message-ID: <20200413062141.a6hmwipexhv3sctq@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20200326115023.xy3n5bl7uetuw7mx@vireshk-i7>
 <d233b26b-6b50-7d41-9f33-a5dc151e0e7d@nvidia.com>
 <20200406025549.qfwzlk3745y3r274@vireshk-i7>
 <3ab4136c-8cca-c2f9-d286-b82dac23e720@nvidia.com>
 <20200408055301.jhvu5bc2luu3b5qr@vireshk-i7>
 <08307e54-0e14-14a3-7d6a-d59e1e04a683@nvidia.com>
 <20200409074415.twpzu2n4frqlde7b@vireshk-i7>
 <00390070-38a1-19aa-ca59-42c4658bee7e@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00390070-38a1-19aa-ca59-42c4658bee7e@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_232147_594509_6CC824C4 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-04-20, 16:51, Sumit Gupta wrote:
> We are using "read_counters_work" as local variable. So every invocation the
> function will have its own copy of counters for corresponding cpu. That's
> why are doing INIT_WORK_ONSTACK here.

Why? To support parallel calls to reading the freq ?

> > > > > > > > > +     queue_work_on(cpu, read_counters_wq, &read_counters_work.work);
> > > > > > > > > +     flush_work(&read_counters_work.work);
> > > > > > > > 
> > > > > > > > Why can't this be done in current context ?
> > > > > > > > 
> > > > > > > We used work queue instead of smp_call_function_single() to have long delay.
> > > > > > 
> > > > > > Please explain completely, you have raised more questions than you
> > > > > > answered :)
> > > > > > 
> > > > > > Why do you want to have long delays ?
> > > > > > 
> > > > > Long delay value is used to have the observation window long enough for
> > > > > correctly reconstructing the CPU frequency considering noise.
> > > > > In next patch version, changed delay value to 500us which in our tests is
> > > > > considered reliable.
> > > > 
> > > > I understand that you need to put a udelay() while reading the freq from
> > > > hardware, that is fine, but why do you need a workqueue for that? Why can't you
> > > > just read the values directly from the same context ?
> > > > 
> > > The register to read frequency is per core and not accessible to other
> > > cores. So, we have to execute the function remotely as the target core to
> > > read frequency might be different from current.
> > > The functions for that are smp_call_function_single or queue_work_on.
> > > We used queue_work_on() to avoid long delay inside ipi interrupt context
> > > with interrupts disabled.
> > 
> > Okay, I understand this now, finally :)
> > 
> > But if the interrupts are disabled during some call, won't workqueues face the
> > same problem ?
> > 
> Yes, we are trying to minimize the case.

But how do you know workqueues will perform better than
smp_call_function_single() ? Just asking for clarity on this as normally
everyone tries to do smp_call_function_single().

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
