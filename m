Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1238310069C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 14:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcbOMmATaRSgcfmxKtr6ctHmkqiyMj8H9N+yaMf17Ro=; b=LeaWMhLP4fDgJA
	sYoPbOmwAZzoPn5aQRBBZpcaRkrx88zsjGv3snUh+lxHW8IQHC7d/qKtptBh5QWXRkdkXUALdBcns
	1udF+g11A2tKh8NJ7inLYv8F8hrs0qdNdX64MPu5p9pBIXUuKnQVX3y2mF1aIHpiUGYnNdpH6ixCb
	hhEn5N71T1DhmBcEUrf010YtSBWrgQ0Bq2Fn3GRVtZvrDj7fVlKkpl0T3pk0KWW1SNaKtzWG5YBfh
	BKZIK8qXa8jLJSZxSVjc4LmTOV50M41oE+/zZmv6wAfg9TJv1+40M4cb0t+bCxUkwll+bRUgZHKCG
	VkXXS7MwocGjqkyj9dWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWhEY-0002t2-J6; Mon, 18 Nov 2019 13:38:26 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWhER-0002sV-0b
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 13:38:20 +0000
Received: by mail-vk1-xa42.google.com with SMTP id z19so2131710vkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 05:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/77pUYmYz7k7jHWCZ8ME97fD0QEJopQhVV1Wft8srRM=;
 b=rXVcwC04Dw3sP5f0UbSNsb70P5cHd+ewZ7Crr6h4d8hZ+AXTqm/fEI/LD6i03HFWVK
 mlA61V1kbYdKS30Na5zP1VkSfWKB1gQxRiPgOtoR6GeKgO+sMkE578+5wExm7co2MhGA
 eSiFPyv2zBMVZmVlG19sBdCpHTSPFIHxU6p72lS0EGXbEJ96Lcsu9aca9cIhS0tKhw5K
 BYwmnTQppZjqQMzOpFy4CcBOxmmAl+PuTF/gmqG8uuqmqQPzMvcpAgq3BuBvMWK4xqAO
 345tJ9uqP9jrlyEGUHYs3IevZPfkVgL8c+g9pPX8vlPCWrZ2YJVczaiEg1P3uT5eOqaD
 g5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/77pUYmYz7k7jHWCZ8ME97fD0QEJopQhVV1Wft8srRM=;
 b=Ha9942OaKgJ97lNwl84tYqZpUVEk6Qi8BIKB632lpJn/jPb2HYrBLzWmJxIE9nFUAQ
 xEG4PQE2L5VolMV7mly8rjbJE/hAlRzqkisrfJgbn9O+bYR5cjxDZZ7Dp28DdRsT1LKz
 pqDGZ/l0X+7WgZekf24EIqTPTRkPMEokEmdEMed04bCbAEGBdZGL4x/ROkc15Q1sIGYb
 Y9C0NdokAHEBG3iSs4+iNiHaptM/Xm2gKOEyv+9D029dhDhKSJbW1J95YrdaCOZ3zvjK
 +tjwZDGXHmQGoDaGpkwj8pQMzZANCKtRBeDX+EjDxtrOcFl166OT+EmLGdfhfaBA4RF4
 //3A==
X-Gm-Message-State: APjAAAWTZVCGPituFj6pG2Kk7R43rKAdZC9sOtD2AfDCPC6vgoO4Grat
 rRvb4jMGF49WL9PWts1IrGLiFuP0/H9uF/ZSn7cZyRIXqXc=
X-Google-Smtp-Source: APXvYqyAccXywO3dLSpf9U8QdQsjon07qgb4WXqdwjPKakwD0V8cWv3zMIgV+w3PtKaed2gIOPIutMtXJhjD1Beh3pY=
X-Received: by 2002:a1f:7381:: with SMTP id o123mr16970902vkc.53.1574084297284; 
 Mon, 18 Nov 2019 05:38:17 -0800 (PST)
MIME-Version: 1.0
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-11-ulf.hansson@linaro.org>
 <20191115173053.GE27170@bogus>
In-Reply-To: <20191115173053.GE27170@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 18 Nov 2019 14:37:41 +0100
Message-ID: <CAPDyKFraEhFVm27YG0fVkjT0-oBBxFpfiBY4zS+1TMy=0F6GRQ@mail.gmail.com>
Subject: Re: [PATCH v2 10/13] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_053819_066663_950E95EE 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 Nov 2019 at 18:30, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Tue, Oct 29, 2019 at 05:44:35PM +0100, Ulf Hansson wrote:
> > The per CPU variable psci_power_state, contains an array of fixed values,
> > which reflects the corresponding arm,psci-suspend-param parsed from DT, for
> > each of the available CPU idle states.
> >
> > This isn't sufficient when using the hierarchical CPU topology in DT, in
> > combination with having PSCI OS initiated (OSI) mode enabled. More
> > precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
> > idle state the cluster (a group of CPUs) should enter, while in PSCI
> > Platform Coordinated (PC) mode, each CPU independently votes for an idle
> > state of the cluster.
> >
> > For this reason, introduce a per CPU variable called domain_state and
> > implement two helper functions to read/write its value. Then let the
> > domain_state take precedence over the regular selected state, when entering
> > and idle state.
> >
> > Finally, let's also avoid sprinkling the existing non-OSI path with
> > operations being specific for OSI.
> >
>
> Mostly looks good.

Thanks!


> I am still wondering if we can keep all OSI related
> info in the newly created structure and have psci_states outside it as
> before. And I was think psci_enter_idle_state_pc and psci_enter_idle_state_osi
> instead of single psci_enter_idle_state and assign/initialise state->enter
> based on the mode chosen. I had to closer look now and looks like enter
> is initialised in generic dt_idle_states. That said, what you have in this
> patch also looks OK to me, was just trying to avoid access to the new
> structure all together and keep the PC mode patch almost same as before
> when suspending. I will see what Lorenzo thinks about this.

I did explore that approach a bit, but found it easier to go with what
I propose here. The most important point, in my view, is that in this
suggested approach only one if-check, "if (!data->dev)", is added to
the PC mode path compared to the original path. I think this should be
fine, right!?

In any case, if you prefer any other solution, just tell me and I adapt to it.

Now, I am looking forward to hear from Lorenzo.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
