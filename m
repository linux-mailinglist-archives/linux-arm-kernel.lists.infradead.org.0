Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE816CCD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 12:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PnX3gyRX8JGArOa3xNdzGMD0lV1EzaEv7kr//117eg=; b=h56oTW1bm2797V
	wR9qvA6WGdYZMgGki6ELR42Cf3NmQwr4mIwUSHLPWPjfRJ2qI8Jt6A6VGW49fEKVH9d1gLCpQfBKl
	vQ/sHy/FwC5DjbJpLlsHUezCUa4WNKoEgImTfZW/qyTT+01klfsxZ0CCmrwTsQkep9ECPMDP3uWbS
	iOP8w23F5+19CWjhyg6OJ7DzElrF7QapN9WXx4xtpZzLDrq+cUMLxdNzO6IisHCBkW52QQaCmdaFC
	L+gkC7GFlU9erjTKldr/rK43PdTRrmDwmUsOml+zLsv6xDM4/u1weX2Tt//sITZumJkpqIBlrUNTe
	PC234Ik03rgmlxCdBQHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho3lU-00023K-6s; Thu, 18 Jul 2019 10:35:56 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho3lK-00022u-AD
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 10:35:47 +0000
Received: by mail-vs1-xe42.google.com with SMTP id 190so18748318vsf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 03:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bPsZyaY1avB4NmRKihmlAbRWMA/+wWnkWYAQnUJy/uc=;
 b=hRS9tdns/W1JgD4gXX9suvoW/sEfa10WszlqRMNyTDVGE4pvXMTTfwq/5kkohrxDM7
 W7+I5ziWAyIuiHrX/lcoOj0SJw+f5YG4xCubaO4tE70Z+vieiYB4B26jaOQUvlMI4S+U
 xyN1krAtJQAXe2Vz8klpfFqYJMDNdZ8cfzuW9QcUmMv6R4UjK1Kq/58lPsgA4sCtpTzA
 0qFoFw674o5/tuQ1z4FPQeyxpwMSw1+qVsC8O6HgdTQBOqM/uGIyiyS0Pf5HCXETQW4d
 5Gyb4/sUE+H9nH3Nb/q1LqBqKoM5Uq2R4rYtA1XYgsHvHKaCOvYtSeHXrL6RULNV1DnO
 IYpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bPsZyaY1avB4NmRKihmlAbRWMA/+wWnkWYAQnUJy/uc=;
 b=HzP7br3PHIgZjoMZe0q20GY6IIk7xVM/XpMbwhIdn6flwO6Wh40rJnrBJeFJ3a/mJO
 dkVoazpnAJFfJx2khkG6buLryjpHaRull/jaT0S0laPE5Gk89pBG3V9vZ1b5ND5Q320g
 q7Nw1BLihuhXegyAFFWIL4Cj5qWkGYHqXJscioBANsO+sLlwZ+ZHZahPe3N9dsUbEks/
 OWpbMr+VOfilujmlYjUSO71q/xZxxao8FNw8eZypF2w3xt0bbEIblLRL8ZaylUkIca6l
 RlmYavtx/npUfzzQppXxmPE+Peu5Ohg4OEbwR+GYH86xsDGpk+3Kq87CSTLYPDe56/nc
 HVLQ==
X-Gm-Message-State: APjAAAXVj7M4f+th6FUrVSNJJJ4rg5Nbey/ZdVqlOd4nH8A3lAW3/uUJ
 6zhC4UEhZHcRTURJF+2HzUhtPmsYcdymyUNVvb4LJQ==
X-Google-Smtp-Source: APXvYqzSx0aR/M+aRW6giaR+8hf163WchtvCdbWRJMcDQ/HVNG1W8viO5bTF5uxNvGiQXgL7jxarygjbk3mkugNqF9Q=
X-Received: by 2002:a67:ee16:: with SMTP id f22mr28548547vsp.191.1563446144144; 
 Thu, 18 Jul 2019 03:35:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-15-ulf.hansson@linaro.org>
 <20190716155317.GB32490@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190716155317.GB32490@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 18 Jul 2019 12:35:07 +0200
Message-ID: <CAPDyKFrJ75mo+s6GuUCTQ-nVv7C+9YJyTVmwuBZ2RKFOvOi3Nw@mail.gmail.com>
Subject: Re: [PATCH 14/18] drivers: firmware: psci: Manage runtime PM in the
 idle path for CPUs
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_033546_381313_03433B46 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jul 2019 at 17:53, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Mon, May 13, 2019 at 09:22:56PM +0200, Ulf Hansson wrote:
> > When the hierarchical CPU topology layout is used in DT, let's allow the
> > CPU to be power managed through its PM domain, via deploying runtime PM
> > support.
> >
> > To know for which idle states runtime PM reference counting is needed,
> > let's store the index of deepest idle state for the CPU, in a per CPU
> > variable. This allows psci_cpu_suspend_enter() to compare this index with
> > the requested idle state index and then act accordingly.
>
> I do not see why a system with two CPU CPUidle states, say CPU retention
> and CPU shutdown, should not be calling runtime PM on CPU retention
> entry.

If the CPU idle governor did select the CPU retention for the CPU, it
was probably because the target residency for the CPU shutdown state
could not be met.

In this case, there is no point in allowing any other deeper idle
states for cluster/package/system, since those have even greater
residencies, hence calling runtime PM doesn't make sense.

>
> The question then is what cluster/package/system states
> are allowed for a given CPU idle state, to understand
> what idle states can be actually entered at any hierarchy
> level given the choice made for the CPU idle state.
>
> In the case above, a CPU entering retention state should prevent
> runtime PM selecting a cluster shutdown state; most likely firmware
> would demote the request to cluster retention but still, we should
> find a way to describe these dependencies.

See above.

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
