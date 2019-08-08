Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CBD865CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 17:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVPtcHxx2cjZJwG+UU6BazMBwY6g+yCc+V+9uGEt/J4=; b=eSMzrIxLD7J/Tr
	OS4SREauQvJCd0fFTsB8S071p0HnK7uvtXG+Ps8+xH0CqZJvmjaSATC8kuncrJa8v4F9koK792QFa
	NBDvdBrSOjs2OFN+RyXIo5cO4cSC65M3AZXKbTgf4/5M29vSaMg98NdSml9dTAV13HcnHQPgJaSor
	3QmL+G2P8a9HxC9JpvjFSI1r4PuIUFKJCrdHB3GbCxGYm5vtVFouMfaVBhq1sNBIRFdQZPk3R2/KO
	srADhpZZs6B4unvMbCvKJYd+5t0c1APHSR9QWqy/R5YLoxn+Y19Kt+prcwownW/qrNR4cHhuPoNtA
	TgWXZumqipCEOiILAYXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkMq-0004LB-2e; Thu, 08 Aug 2019 15:30:16 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkMd-0003Tm-1d
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 15:30:04 +0000
Received: by mail-vs1-xe42.google.com with SMTP id 62so501722vsl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 08:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QQ67960ROY2a/127HWY6jHmfLZvvKglq5u8NMNjYI1Y=;
 b=kmlK0/FKpYSrx2hur8a9t4OIdtqyOzr9THPxdPoXoVp2SotkfMdIG/oBPmgepUANo7
 5wxGRYKFtXcz35m5NYV6n1mpRxqm3J2IZBnVx0RHjV/f6d+9Nbyp1jlPAq46MLaojzYN
 zfi/wcFKJI3CHSAL+5RzV2adQgeYh7gk4sIk4EnOTPm8bYukyOnot1KAbcjyIKVBrUZh
 sFrr6Tarmycg6qQ2M7QAqs9AkYpRdwv6qGUtBpfOhgF6bEPeR4Re16KmoQwXCwdNsmcl
 zGYuMktiq2EFXkfZ9q8GKn/83u45cK2qTB/gs/sxKjc+SJZ8WXvAkQlU0hjn71hXwCB0
 Kvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QQ67960ROY2a/127HWY6jHmfLZvvKglq5u8NMNjYI1Y=;
 b=lOuWAo/RfUO7lV+GDYc6DbSiy5B13QKE/ZDz36vvHI3foMoRgyvvXwGa2kKyIUwePY
 WmZUxplzUL3jlsyGITsrv/BTjZfHsHsEGGuppOQQ+tf9nMVVUDEgDAlybTnaQOJDkodl
 SkNqDmW9TaFCo1+WpZYxOAsMUwQnEUAlDhJEFeHfu3r4vHZ9z9CjEO0zcg0Rh3XXpNDx
 iF4Nvq9xZ7PjDiCBCNf0hKYB9AO2a4m/p9cAiR4Px66h3Z58SugO9BD0IYTrA9a3JgfW
 FtOOexdGw3/12hpGiEqWyzL3YG/jv3f7X1puqusgh28cPXBSk0aS65xW/G8GJJGpumYs
 Ou8Q==
X-Gm-Message-State: APjAAAVj1XLLHH6RRt6owHlSFHAQ+Dgfmy7eObqNVWWiKTJ4yp6Bhef6
 AX9da5lwHiRtOEEIc2RkH9Gzubag6NDQ4F9HL/3AGQ==
X-Google-Smtp-Source: APXvYqxKi3cA9YcGMYMd//YpNRPqFA3cCz3N7LoXHqKDwPYBU0jxMSGjHUhjBPY7g60T9+jxuZelgTW7fSvznp0WgLQ=
X-Received: by 2002:a67:e454:: with SMTP id n20mr10625187vsm.34.1565278199947; 
 Thu, 08 Aug 2019 08:29:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-7-lorenzo.pieralisi@arm.com>
 <20190808125516.GA2246@e107155-lin>
In-Reply-To: <20190808125516.GA2246@e107155-lin>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 8 Aug 2019 17:29:24 +0200
Message-ID: <CAPDyKFqHHwq=3XhSH_=uu5QoFkP3VYJ+2h7ENG5DNs-YzM6bNQ@mail.gmail.com>
Subject: Re: [PATCH 6/6] PSCI: cpuidle: Refactor CPU suspend power_state
 parameter handling
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_083003_104537_04BF1707 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019 at 14:55, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, Jul 22, 2019 at 04:37:45PM +0100, Lorenzo Pieralisi wrote:
> > Current PSCI code handles idle state entry through the
> > psci_cpu_suspend_enter() API, that takes an idle state index as a
> > parameter and convert the index into a previously initialized
> > power_state parameter before calling the PSCI.CPU_SUSPEND() with it.
> >
> > This is unwieldly, since it forces the PSCI firmware layer to keep track
> > of power_state parameter for every idle state so that the
> > index->power_state conversion can be made in the PSCI firmware layer
> > instead of the CPUidle driver implementations.
> >
> > Move the power_state handling out of drivers/firmware/psci
> > into the respective ACPI/DT PSCI CPUidle backends and convert
> > the psci_cpu_suspend_enter() API to get the power_state
> > parameter as input, which makes it closer to its firmware
> > interface PSCI.CPU_SUSPEND() API.
> >
> > A notable side effect is that the PSCI ACPI/DT CPUidle backends
> > now can directly handle (and if needed update) power_state
> > parameters before handing them over to the PSCI firmware
> > interface to trigger PSCI.CPU_SUSPEND() calls.
> >
> > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Ulf Hansson <ulf.hansson@linaro.org>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
>
> > +static __init int psci_cpu_init_idle(unsigned int cpu)
> > +{
> > +     struct device_node *cpu_node;
> > +     int ret;
> > +
> > +     /*
> > +      * If the PSCI cpu_suspend function hook has not been initialized
> > +      * idle states must not be enabled, so bail out
> > +      */
> > +     if (!psci_ops.cpu_suspend)
> > +             return -EOPNOTSUPP;
> > +
> > +     cpu_node = of_get_cpu_node(cpu, NULL);
>
> [nit] You could use of_cpu_device_node_get in linux/of_device.h as
> it may avoid parsing if used later during the boot(i.e. after
> cpu->of_node is populated). I think there's another instance in
> psci_idle_init_cpu

Good idea!

However, as $subject patch more or less just moves code from the
current psci firmware directory into cpuidle, perhaps it's better to
defer improvements to be made on top?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
