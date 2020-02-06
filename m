Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFD2154DBA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 22:11:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZ8mqTzN/UJL1wTxnL67VzqbnG+rIrr3UAiY0s7o49c=; b=Ftp4i/nC10Uv2Q
	KJTQDYaYHYPb2bBahGwZ8DEyOW6wunQuTLaPx47+fUzW3Us33Ta/dW6iuY/bOIEuaYoZ2YmRd8QZG
	GEKhCGkm9QaVrfTxO4ldNEezFt1WipVymSHfilgWPe+1hCNzGe5yNTbWTBmm7S0eCY8xigw1vHl/E
	xXAoHC1ltzmGEXvZ/A1PqNm/pzlW0uygF88pGW84arWpFhmhXdOPwCbrFuOA9EsKpv6uFxf9+S+65
	4SrhKgesM1Z/fu6ornHfMqOASvQSq7BLbriqCsX7mC1r+uDnzYe3qGK/ZsJ9qqLCVOz8HRdQs1kmt
	4JUI26GO8EHLHnKERz7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izoR8-0001UI-J1; Thu, 06 Feb 2020 21:11:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izoR1-0001Ts-CQ
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 21:11:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id j15so3377314pgm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 13:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=c3NTdAdhdM9DYmFQ0d2YUfPxuIsTP1hTGZxxt3uKZUY=;
 b=zJXxFnEE8Q2NCpkipo/7srIVDo5W0ovP+Yah2bAOHVxwQTzvt/wv3ePcbWvpGkV9Jq
 lAVEK3PQ0SLLdlm8z/Q8OLyvb4xv4d5DFVBRrdxDPOsEGyrssmSAGX9QFuM/C6dNNfZk
 0IkfNrzTYxMCcj0sjuHUXU5j4+Ml2hKCdjCZCo3gaxWhJr1hm5HdK0NJc119OH69ac5v
 Uggv56I/34Sz/QeyxXDwGRHTzlf+Q+S62xFfSxm+jHtNYuV3gcIdWRjoLwY0sD7vMk0/
 0LbZzSaDMCZMU5UNAiq3Pmo4SqJYhLrRGi7QHcVytrfgp7ygWUSDRSkV0HvDiRo+GYUe
 HlPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c3NTdAdhdM9DYmFQ0d2YUfPxuIsTP1hTGZxxt3uKZUY=;
 b=FQuHuTRStMmmWN7LkY9xRInDvGXf1CPKgaAJIPwpja1XKuabhew+4F8aFnw3hyCtQ4
 r6KMmN2uunx60tC98qKDGIjV+qeGwMVegqG4hphun3uGDAujA5IiQneXnujTOcW6foXF
 60znOYGc2Jn/FFImET/RTQqUI/sH8XVh9eyB58lkEGSZdVXUgWezPxlxPwmHBA7C2u++
 FWvCJ9AK22k3IPK2EqPwo+XhQzPLvI7VMfi6CtpTg08VZZH70N0aBwuEZGgkQYei1Vt/
 dCtjLjuPnO+fLoJl9m4U3JrK/O6TPA4pJlLOllcQHX0aMALwrojpAHyFrXW0Vd8g3lT5
 Pu+A==
X-Gm-Message-State: APjAAAWPX0LFc+fEd+uAdhbGFYlTbEMAp50Rjy1CqDyW00inuSjVZH2K
 mGjFBMRi9ofSbdg2x30RJKGe2w==
X-Google-Smtp-Source: APXvYqzrGxCq7CnAyAvJAFB+znvWs+GRUSk2yK50/nOsNyU4uC6b/DPz4td5EjEFKdnWuruf1/X7Kw==
X-Received: by 2002:aa7:8687:: with SMTP id d7mr6079767pfo.164.1581023496876; 
 Thu, 06 Feb 2020 13:11:36 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z19sm307621pfn.49.2020.02.06.13.11.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 13:11:36 -0800 (PST)
Date: Thu, 6 Feb 2020 13:11:33 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
Message-ID: <20200206211133.GR2514@yoga>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
 <20200203170832.GA38466@bogus>
 <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
 <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
 <20200205140603.GB38466@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205140603.GB38466@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_131139_455413_408622C6 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 Lorenzo.Pieralisi@arm.com, rnayak@codeaurora.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, swboyd@chromium.org, david.brown@linaro.org,
 agross@kernel.org, ilina@codeaurora.org, dianders@chromium.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 05 Feb 06:06 PST 2020, Sudeep Holla wrote:

> On Wed, Feb 05, 2020 at 05:53:00PM +0530, Maulik Shah wrote:
> >
> > On 2/4/2020 8:51 PM, Sudeep Holla wrote:
> > > On Tue, Feb 04, 2020 at 10:22:42AM +0530, Maulik Shah wrote:
> > > > On 2/3/2020 10:38 PM, Sudeep Holla wrote:
> > > > > On Mon, Feb 03, 2020 at 07:05:38PM +0530, Maulik Shah wrote:
> > > > > > From: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > >
> > > > > > If the hierarchical CPU topology is used, but the OS initiated mode isn't
> > > > > > supported, we need to rely solely on the regular cpuidle framework to
> > > > > > manage the idle state selection, rather than using genpd and its
> > > > > > governor.
> > > > > >
> > > > > > For this reason, introduce a new PSCI DT helper function,
> > > > > > psci_dt_pm_domains_parse_states(), which parses and converts the
> > > > > > hierarchically described domain idle states from DT, into regular flattened
> > > > > > cpuidle states. The converted states are added to the existing cpuidle
> > > > > > driver's array of idle states, which make them available for cpuidle.
> > > > > >
> > > > > And what's the main motivation for this if OSI is not supported in the
> > > > > firmware ?
> > > > Hi Sudeep,
> > > >
> > > > Main motivation is to do last-man activities before the CPU cluster can
> > > > enter a deep idle state.
> > > >
> > > Details on those last-man activities will help the discussion. Basically
> > > I am wondering what they are and why they need to done in OSPM ?
> >
> > Hi Sudeep,
> >
> > there are cases like,
> >
> > Last cpu going to deepest idle mode need to lower various resoruce
> > requirements (for eg DDR freq).
> >
> 
> In PC mode, only PSCI implementation knows the last man and there shouldn't
> be any notion of it in OS. If you need it, you may need OSI. You are still
> mixing up the things. NACK for any such approach, sorry.
> 

Forgive me if I'm misunderstanding PSCI's role here, but doesn't it deal
with the power management of the "processor subsystem" in the SoC?


In the Qualcomm platforms most resources (voltage rails, clocks, etc)
are controlled through a power controller that provides controls for a
state when the CPU subsystem is running and when it's asleep. This
allows non-CPU-related device to control if resources that are shared
with the CPU subsystem should be kept on when the last CPU/cluster goes
down.

An example of this would be the display controller voting to keep a
voltage rail on after the CPU subsystem collapses, because the display
is still on.

But as long as the CPU subsystem is running it will keep these resources
available and there's no need to change these votes (e.g. if the display
is turned on and off while the CPU is active the sleep-requests cancels
out), so they are simply cached/batched up in the RPMh driver and what
Maulik's series is attempting to do is to flush the cached values when
Linux believes that the firmware might decide to enter a lower power
state.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
