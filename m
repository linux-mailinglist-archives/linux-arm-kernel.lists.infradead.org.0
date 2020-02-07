Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B6D1557D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 13:33:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RASk6Ptmfa9QApGbDBpK26FMe+FFynJL12ybsSj2dCE=; b=bYfW2nwfOreRjS
	I1B3S4CfXKEeQPUF+7ewPDhc7FZhYrDZSI7dQexyat12HgxiMKMWghaPyJLiHcbH+768sL/XFQ4v9
	XdP8ZuFNaPWzEx1nnXADctfLZ8t/GEVXz7hemxJjWSQ1OT3zXWnjvKmCyBFYVubL/lvbGVZ8hPcGC
	poOvBmoqDCG+k1htKMEFZ8iZgx49sM3JYQMNnzlueYUi243l8SzWd2LfWSQuSuLkrtFw7Eg+VKJLL
	6pEzV6TsbdPUcR6j9bgq2ycK3KRsWEEBUqC8ZU1HxF0yf86OZg1exEfOOgWWYJdG4cz37dIMdqYfY
	lfSGXBBE/y8+GnUclFfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j02os-0007nD-F5; Fri, 07 Feb 2020 12:33:14 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j02ok-0007mp-Jg
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 12:33:07 +0000
Received: by mail-vk1-xa43.google.com with SMTP id o187so546469vka.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 04:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=twtq6AmHtqUnVlUAbKpPEtdoaGtXpV1mwpVd5YJVSts=;
 b=xQu4+EHhFRFlnyvW2p6/S1UWGhxtBGS4fkV0O7245rLUTBWSZvPWZKXPUskfY9lmzB
 /lYHVNze4GDXh8V7W6x/9Q87cQvSAQN/S7uhG3OKqECw9APIZb+tVpRLEdqDHOjulxP4
 jsJRZM+UltT5+fAa6eGFN6V5fJ46cZObhVP+0Q4clWGOSXhq2UjqPSk1vwrUOlM378lL
 n/6hrRitZK+mXiy0qV3jQw4/rw9Svw0kusMJ4FHVzCxj/RaI5u6TKP+af/SWu0iISJto
 gOThRm2CG7TEFmsCSeHCLsUXNkqkhr2NDvglKf7D4TDAOtktXxk6C1tGWiJVGRT1uC+L
 pi8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=twtq6AmHtqUnVlUAbKpPEtdoaGtXpV1mwpVd5YJVSts=;
 b=DqNd8IaKb96HhPmk7lVHR4JpD2jvDuxAJ3PFRMIXRLD3mhasxmsYRgJkGobXWmWWRy
 7Nx2vLAmjoqI7tL+OOEGLvz2ksPdHy056MP3bhRod+PKA6RIKXfQICgz45isNx6VcmP8
 y9idF2h15boB7fL/nsV4UDSPkX/OWOoSi/Rjc/RaEjWi4hr1VML0xBsvTHZHAAefu/BO
 hvAMqewQ7xAPy3IhuLqJuxCwg+1rmgksQL+a1KR/wYYvKM2Jj92PQVNpafx9dMwwfCVB
 O1eUdMHjvqGpjhlkM5g+ULr9GEqVImh3soeKPR6jswqfyB0VicM+wdjgAxGXlXUd3Vhq
 CvOg==
X-Gm-Message-State: APjAAAXRaPKF3leB1fZrMKYaKpf/OeLuxBXRcZwCaGnkChjiNXsw9Jrv
 XsZN1XHado2pZOa5AKsdyOEGlrfa4PIIEOjSqmOReg==
X-Google-Smtp-Source: APXvYqwd2iUAO56g39Z3AI5rVCzQsHgInfZfT32zsa4e7crxd9R36HCQB4/vaaZN1zLJ9dnGC8jrHT52+51jJ+OU93Y=
X-Received: by 2002:ac5:c844:: with SMTP id g4mr4661734vkm.25.1581078784950;
 Fri, 07 Feb 2020 04:33:04 -0800 (PST)
MIME-Version: 1.0
References: <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
 <20200203170832.GA38466@bogus>
 <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
 <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
 <20200205140603.GB38466@bogus>
 <CAPDyKFoyepN2VX4COMomp1e9dXPozzrgCdcy0paee2jp8Wm3YA@mail.gmail.com>
 <20200205161816.GD38466@bogus>
 <CAPDyKFqaA7oN2+oLS=Puw+jQXke_ErGQAWYuTuU-6PS7mo5YbQ@mail.gmail.com>
 <20200206204514.GB8107@codeaurora.org> <20200207111955.GA40103@bogus>
In-Reply-To: <20200207111955.GA40103@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 7 Feb 2020 13:32:28 +0100
Message-ID: <CAPDyKFp-zvD1iFcpRaTFiuazxYmLEx0Czf3=TZJxjSCDmmPsvA@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_043306_653707_1CD2BAB2 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rajendra Nayak <rnayak@codeaurora.org>, Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[...]

> > I understand the arguments for using PC vs OSI and agree with it. But
> > what in PSCI is against Linux knowing when the last core is powering
> > down when the PSCI is configured to do only Platform Cordinated.
>
> Nothing :D. But knowing the evolution and reasons for adding OSI in the
> PSCI specification and having argued about benefits of OSI over PC for
> years and finally when we have it in mainline, this argument of using
> PC for exact reasons why OSI evolved is something I can't understand
> and I am confused.
>
> > There should not be any objection to drivers knowing when all the cores
> > are powered down, be it reference counting CPU PM notifications or using
> > a cleaner approach like this where GendPD framwork does everything
> > cleanly and gives a nice callback. ARM architecture allows for different
> > aspects of CPU access be handled at different levels. I see this as an
> > extension of that approach.
> >
>
> One thing that was repeatedly pointed out during OSI patch review was no
> extra overhead for PC mode where firmware can make decisions. So, just
> use OSI now and let us be done with this discussion of OSI vs PC. If PC
> is what you think you need for future, we can revert all OSI changes and
> start discussing again :-)

Just to make it clear, I fully agree with you in regards to overhead
for PC-mode. This is especially critical for ARM SoCs with lots of
cores, I assume.

However, the overhead you refer to, is *only* going to be present in
case when the DTS has the hierarchical CPU topology description with
"power-domains". Because, that is *optional* to use, I am expecting
only those SoC/platforms that needs to manage last-man activities to
use this layout, the others will remain unaffected.

That said, does that address your concern?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
