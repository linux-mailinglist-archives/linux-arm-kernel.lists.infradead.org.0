Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EC53B31F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4FULRAgq9YuzdKkhhP+keR2blkw37rrtnMNpCdicP4=; b=ZySBd+ABrxcrUg
	U/Hh4EbWnbeUicbQzkKVQT+a4GhGLL72l+MUhCjbhZu5jDtDCW0zeaBz78muKe/5lyN1+5wDHaRTU
	xLUIJ5mM2L0u5jPDUviXdipQPWA2IIFJqC5RtKPu9/nOHz24r/CagxmsNXBLjtt0Xw2WPfPlE9SjL
	lMNBdw3yq05E/sl3W8p1HUYZxLzrP9vcndnqK7f5VsdcOfBfYEFRzOKVdgdErdCdrtbRkw5JE4ySA
	mSYuSNGj7WuTnJ26gFwx/VG1cSHeCPXKbLnzqoDxErX1/M6W6teDturqY4UOwDrIDdJtK/xw2A12a
	CqYDMDnXM6J2LKfNBXng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHS4-0004II-I1; Mon, 10 Jun 2019 10:22:56 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHRY-00040b-Cz
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:22:27 +0000
Received: by mail-vs1-xe43.google.com with SMTP id n21so4949330vsp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 03:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pFMIIVsyJBl8LZ+WUnN+JflDTkBBRBPq/m9+UsHc1js=;
 b=kOl0u/Rhe57ubEv7N22/9aZ//K3tjzZfW3Py8ox3gbRPJ6UjiUgoBGpilHmu/nCgmF
 Ll1a6TJ7+gn0FAn103tRUjuk892mvZfOsB00cLYygk5yPXdQvJrPnZIpzYG3zXELtLMJ
 NLCtkLm8RZc0kCi5TJQfbd9CP/i/0rIJmiJvP1UXVlh0gR4m02y3koKodB6L+b382pE0
 M3zkVPlISPXoI3B7+3H/4zEB5JxriVTdDltIcyAUw50l/asQ0SrKbfQjTlnP9OKVTAjE
 njP6gb75FZQe1lldrnZ7yn8rRe+wgtVpTZ0/WmG3SePMX0wfqy+bDDbLj459+WuP2TPZ
 aefQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pFMIIVsyJBl8LZ+WUnN+JflDTkBBRBPq/m9+UsHc1js=;
 b=JPcj/PgqhjWdAIGfVssnZ6dIolCNi8a039AU15LWeq+BjpH+qGjDcqFwTqG2O230af
 nw/WZ0LiP+ypsZwTo7MhR3nAoAmDfvOJ0DFW/muOU9pTNfyKO5vzSTueqFt1Ya4pTdOK
 3xgJHvM6Bp7sSW+6ATL/37SC+N0pik6dyjzTS+kGffmtaFEfaDEPTAee84UMXp4KF1lD
 fZ1vDt2yKPWF3v+3s8Z1kQfr9SYlxwz1GeQCF2HgoAh78xNedp2o0kzTfBqE0geS657n
 +52WIGp87xaK/5pnzEr0IzTagn7AgBotoINmz9YVksqxKOpfydI048qSltYu2/bUE3BH
 hMfw==
X-Gm-Message-State: APjAAAVLkkqNeWwpJR+gxqqjSSquKwVdnUPa1en/4nS18NeDRUcYLfbJ
 QovQo3UtZNVrGl0L9vxxHKBhNsmH9vyZcIvJcBRuiQ==
X-Google-Smtp-Source: APXvYqxDX2qJsmmcFSXEA/D7lgBIhL5BcM//GZ2Awrb+ANPG1PdpnIRRbG98Nj437OF6HC5C/S/rLx9BEVMrPwv/lGw=
X-Received: by 2002:a67:ebc5:: with SMTP id y5mr24379568vso.34.1560162143163; 
 Mon, 10 Jun 2019 03:22:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-16-ulf.hansson@linaro.org>
 <20190607153114.GI15577@e107155-lin>
In-Reply-To: <20190607153114.GI15577@e107155-lin>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 10 Jun 2019 12:21:47 +0200
Message-ID: <CAPDyKFqooMww0B6vGL56BnG-L=13C3oWeDFx4v1cO9=W9QPwVQ@mail.gmail.com>
Subject: Re: [PATCH 15/18] drivers: firmware: psci: Support CPU hotplug for
 the hierarchical model
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_032224_556277_26A018F8 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019 at 17:31, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, May 13, 2019 at 09:22:57PM +0200, Ulf Hansson wrote:
> > When the hierarchical CPU topology is used and when a CPU has been put
> > offline (hotplug), that same CPU prevents its PM domain and thus also
> > potential master PM domains, from being powered off. This is because genpd
> > observes the CPU's attached device as being active from a runtime PM point
> > of view.
> >
> > To deal with this, let's decrease the runtime PM usage count by calling
> > pm_runtime_put_sync_suspend() of the attached struct device when putting
> > the CPU offline. Consequentially, we must then increase the runtime PM
> > usage count, while putting the CPU online again.
> >
>
> Why is this firmware/driver specific ? Why can't this be dealt in core
> pm-domain ? I am concerned that if any other architectures or firmware
> method decides to use this feature, this need to be duplicated there.

What is the core pm-domain? Do you refer to the generic PM domain (genpd), no?

In such case, this is not the job of genpd, but rather the opposite
(to *monitor* the reference count).

>
> The way I see this is pure reference counting and is hardware/firmware/
> driver agnostic and can be made generic.

As stated in the another reply, I would rather start with having more
things driver specific rather than generic. Later on we can always
consider to move/split things, when there are more users.

In this particular case, the runtime PM reference counting is done on
the struct device*, that genpd returned via
dev_pm_domain_attach_by_name(). And because
dev_pm_domain_attach_by_name() is called from PSCI code, I decided to
keep this struct device* internal to PSCI.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
