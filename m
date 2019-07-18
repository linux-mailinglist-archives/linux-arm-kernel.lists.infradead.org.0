Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B375E6D26B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kK0Yg+aYkFmsu0jzqOvtOXz40exyp9A1wfjtdawb9ps=; b=AHFq+6rz9vB8Co
	sfmcL3kBQJnfcktUwdCRbc0dyfhbVD75Dus3LxlqWF1M1eSDUTRl/jkrJaYTqjNdodu0Izg8WeZcg
	yZgu7gAaTw5hEZ7DdMdqJj8aH72awdKK9ZLxMdZGpZLOGlDeLFr5GkXy/OAzIZKzNW1nCKMHwbM6I
	6hAgTyW3+OANn6cYuy3l7a1zyv9Vry6rCF/aMEoftb8sWFgaKdhYthQa4GduHJFIDkAuHOSZjJz2F
	OjPlTuaMd1Xzf/ig5/Srwp83gex2wlkwBIt5UOpFVOpaVWMFGzZeBBn4SD6ercvhTZnPgbQzcK3JJ
	8CGhwgkTZhGPbtH03M8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9h1-0004y4-14; Thu, 18 Jul 2019 16:55:43 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9gn-0004xX-SF
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 16:55:31 +0000
Received: by mail-vs1-xe41.google.com with SMTP id v6so19629041vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 09:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UbJA1LvVSBKZi34z8EvemKhQnL5/c6wyw0dFUXsJ7H4=;
 b=v+KXmWJJHgzxhzH/ByzH+UGInDESBlyCnkXDLOYXkFL108hatd/9puy+QFFba3m5WD
 bhtTKrLRw2YAQnFRC5M36S3T5i8Oe9gGBtNFE7ZdCJ/1I4gLyUmnIjKdORLB/9odeMnw
 FhmH4wyOwzolrzleyGwIui2FQ8MLa67j+7E28mZP0dcFPtbM1CXxugMkHsdZeP6VkJ9g
 pXT21JDk/94eK4JtwLYOUv7st8v723fVliWhRYVAZKpLQy8dM/d+IyfGekDqo5K749U+
 kzXKq432p3MGhIBhb+v8kvOZnTcKOkNOpxCcu9VamQd7Pt/FKJqG22ZTWj0nzsbngz0X
 0K4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UbJA1LvVSBKZi34z8EvemKhQnL5/c6wyw0dFUXsJ7H4=;
 b=LvSmuxTYjsdJqy0pTC99B90t59UAzVnwl5bkWOz6O6kCmrUr+0e8GLF7P5cPa4mpyA
 /xsHySbjkgDq5WfJvNEu4pzG/4hCxStyem6wDG/ZaG4uM3sx0FsEHWGM55gPU8un4E5w
 fDFpxigX0wGzuvGa9MQpMNJsyrqyhy0n3rf0gxCeA/RlZPbbktm1iN6JQ/AIUSfhfmfF
 FEApN9zy6PQN+cGUzWOzaTUE13IOd1idr4388lgiKFKXPtr5ZAoYU02ls6Bqn7ELPDAB
 5awm3flPzuYrSxypPD9DchxsoOZ7r0Yig5q23w6kCBsKJqtCpWoIIx0MD6TMk73jZIBc
 y5wQ==
X-Gm-Message-State: APjAAAVM7LxK0MdNzXwCbCj7zF8/chPfgMvEIGBS7OXbqP+iYOSza8a5
 cbV/2HRL/Pt++a6PSHLj6i0gz834FO8fyLFsr0ZIEg==
X-Google-Smtp-Source: APXvYqz3H7NW9n8k3hccLVjUE4vzSLFYDceNlDN7TRygVSGTeYT1EPbUZoWXTC9qw+g+yzQp96xVbuz30qFeCiP1+X8=
X-Received: by 2002:a67:61c7:: with SMTP id
 v190mr28723774vsb.165.1563468928660; 
 Thu, 18 Jul 2019 09:55:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-15-ulf.hansson@linaro.org>
 <20190716155317.GB32490@e121166-lin.cambridge.arm.com>
 <CAPDyKFrJ75mo+s6GuUCTQ-nVv7C+9YJyTVmwuBZ2RKFOvOi3Nw@mail.gmail.com>
 <20190718133053.GA27222@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190718133053.GA27222@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 18 Jul 2019 18:54:52 +0200
Message-ID: <CAPDyKFr4NmichQk4uf+Wgbanh=5idKYY=37WCb6U_hNFDVYg=w@mail.gmail.com>
Subject: Re: [PATCH 14/18] drivers: firmware: psci: Manage runtime PM in the
 idle path for CPUs
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_095529_917963_F1F9CEF8 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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

On Thu, 18 Jul 2019 at 15:31, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Jul 18, 2019 at 12:35:07PM +0200, Ulf Hansson wrote:
> > On Tue, 16 Jul 2019 at 17:53, Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Mon, May 13, 2019 at 09:22:56PM +0200, Ulf Hansson wrote:
> > > > When the hierarchical CPU topology layout is used in DT, let's allow the
> > > > CPU to be power managed through its PM domain, via deploying runtime PM
> > > > support.
> > > >
> > > > To know for which idle states runtime PM reference counting is needed,
> > > > let's store the index of deepest idle state for the CPU, in a per CPU
> > > > variable. This allows psci_cpu_suspend_enter() to compare this index with
> > > > the requested idle state index and then act accordingly.
> > >
> > > I do not see why a system with two CPU CPUidle states, say CPU retention
> > > and CPU shutdown, should not be calling runtime PM on CPU retention
> > > entry.
> >
> > If the CPU idle governor did select the CPU retention for the CPU, it
> > was probably because the target residency for the CPU shutdown state
> > could not be met.
>
> The kernel does not know what those cpu states represent, so, this is an
> assumption you are making and it must be made clear that this code works
> as long as your assumption is valid.
>
> If eg a "cluster" retention state has lower target_residency than
> the deepest CPU idle state this assumption is wrong.

Good point, you are right. I try to find a place to document this assumption.

>
> And CPUidle and genPD governor decisions are not synced anyway so,
> again, this is an assumption, not a certainty.
>
> > In this case, there is no point in allowing any other deeper idle
> > states for cluster/package/system, since those have even greater
> > residencies, hence calling runtime PM doesn't make sense.
>
> On the systems you are testing on.

So what you are saying typically means, that if all CPUs in the same
cluster have entered the CPU retention state, on some system the
cluster may also put into a cluster retention state (assuming the
target residency is met)?

Do you know of any systems that has these characteristics?

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
