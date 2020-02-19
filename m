Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A571652D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 23:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wm2NGlWi18rHknnluzu7lZz+U5nEs+n7H/DEqCX5Zqw=; b=jxLqZuPna/ctfh
	7sbBOAXvWzLr2jiJ9cW4lZiAEFRErXtdorvoM2byT8cV7tn/Tns9QSg4dJBHsxxXiiO5WyzEo9O3m
	CYaZfzIqCKAKUSTvKoAVssqXte8Lgx/k4ArWxVx1NR7a0nx6g9wznklNQ0SazJcpHDRxcKkXu5rxW
	F5lxHmcMs4veUGY2UDyInRyCp9PUy9u0tA601zpkGkAdBEvGaXKvdGhI0lP35wu5fwc9lM3+P3sh6
	r6USOMGni/exZGmcuIe6GH9WuVB/fffd04wEyUbALx/TOIovzKJhe/be3cOuqqatiKsI78ljdefM6
	R05WbDR0bJG3ofWMp0pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4YFS-0007WV-As; Wed, 19 Feb 2020 22:55:18 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4YFK-0007PQ-5J
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 22:55:11 +0000
Received: by mail-il1-x142.google.com with SMTP id s18so22036144iln.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 14:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EpAMqTgPV4b+hRig2cUuoFOjWPXPfch7/PyvuUrynfo=;
 b=MgyJDERiivp1dcjo74oCW8yuyz6aC8CNoXb0F6HsaegPUinGGik9ix6+iP5CnOalk1
 4UjzVEepkpU3z8MTk5mU1ADbPZVRkWYWlS2H4Ct3iRstTrtyq6jQV1GZeFhXFsOfAFJB
 MRF928ZnYXO7aHo00rSYB5EX8sAHKDNNxZMo8Ul4ECu0STSLii2l6X4odKnwts1wmiLc
 pTNby6eBi80K/79yJDmac47n7L1nrvDOPTuR0YKYmrKsNjQkf57nQ77NjximRQjy0WPu
 oxVprbv/W3YU12Npr8w3cr1ssDrya9ovY16d0PyCYB6FmQYHDBnlcloXk0iHLs2HOI/B
 oQgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EpAMqTgPV4b+hRig2cUuoFOjWPXPfch7/PyvuUrynfo=;
 b=QNykav7PCuBgg/vBXt4hS9S9SAWI19qqi8Dv/dlGxtUdeXsL/6eBN8Ren8astUBn7y
 9mFrPXXCQAJ060BIr648WGTYtSPyVI5gK1SU4hAJcoEKwCbPA9KgCpBN1i1uyOuwYfUL
 4wPJcQ0PQmKpyRHqqvLidq4iQ6mrXDnj+7JExzi80Q7ZlgCehABpLaqZpX4ZvZ4j8voM
 ap5eBrHlQWfWkKn73cq056zUoRMRaDtFUnCfRk1+/qvuodN7i076GhryN8zNaFb6BC6N
 Qg1LdWlJoL11c+ZqyjkmOXvrzdjQx0sZs4R2PcBrsYvcoRhsjEvdbfojtmSZGgjlZXXs
 bRWQ==
X-Gm-Message-State: APjAAAUcTcP6ApnV2JhEjRjNF4oJAOS7heUYIzSZxNRbLJhPP9PmPKlr
 KG9ZlgWknKYAmd7mJmZscq6IMyl94o5U5sbHT3imyQ==
X-Google-Smtp-Source: APXvYqyb15r2mBFqMeHZTZlCfhyqX8qvJmHY5h2wuxudCzKO9l5t9qgNWFv72waBtxlihRgSTFhu7tMKS/98+D5l1K0=
X-Received: by 2002:a92:db49:: with SMTP id w9mr24744338ilq.277.1582152904310; 
 Wed, 19 Feb 2020 14:55:04 -0800 (PST)
MIME-Version: 1.0
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218181356.09ae0779@donnerap.cambridge.arm.com>
In-Reply-To: <20200218181356.09ae0779@donnerap.cambridge.arm.com>
From: Olof Johansson <olof@lixom.net>
Date: Wed, 19 Feb 2020 14:54:53 -0800
Message-ID: <CAOesGMg=-w6+gpAmBDV6yfAg-HUk5AZfsKxQ+kYOn56NcB59vA@mail.gmail.com>
Subject: Re: [RFC PATCH 00/11] Removing Calxeda platform support
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_145510_212941_445013FA 
X-CRM114-Status: GOOD (  27.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Langsdorf <mlangsdo@redhat.com>, kvm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-ide@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 Rob Herring <robh@kernel.org>, SoC Team <soc@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 DTML <devicetree@vger.kernel.org>, Jon Loeliger <jdl@jdl.com>,
 linux-pm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Tony Luck <tony.luck@intel.com>,
 Alexander Graf <graf@amazon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-edac@vger.kernel.org, Jens Axboe <axboe@kernel.dk>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Borislav Petkov <bp@alien8.de>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Feb 18, 2020 at 10:14 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Tue, 18 Feb 2020 11:13:10 -0600
> Rob Herring <robh@kernel.org> wrote:
>
> Hi,
>
> > Calxeda has been defunct for 6 years now. Use of Calxeda servers carried
> > on for some time afterwards primarily as distro builders for 32-bit ARM.
> > AFAIK, those systems have been retired in favor of 32-bit VMs on 64-bit
> > hosts.
> >
> > The other use of Calxeda Midway I'm aware of was testing 32-bit ARM KVM
> > support as there are few or no other systems with enough RAM and LPAE. Now
> > 32-bit KVM host support is getting removed[1].
> >
> > While it's not much maintenance to support, I don't care to convert the
> > Calxeda DT bindings to schema nor fix any resulting errors in the dts files
> > (which already don't exactly match what's shipping in firmware).
>
> While every kernel maintainer seems always happy to take patches with a negative diffstat, I wonder if this is really justification enough to remove a perfectly working platform. I don't really know about any active users, but experience tells that some platforms really are used for quite a long time, even if they are somewhat obscure. N900 or Netwinder, anyone?

One of the only ways we know to confirm whether there are active users
or not, is to propose removing a platform.

The good news is that if/when you do, and someone cares enough about
it to want to keep it alive, they should also have access to hardware
and can help out in maintaining it and keeping it in a working state.

For some hardware platforms, at some point in time it no longer makes
sense to keep the latest kernel available on them, especially if
maintainers and others no longer have easy access to hardware and
resources/time to keep it functional.

It's really more about "If you care about this enough to keep it
going, please speak up and help out".

> So to not give the impression that actually *everyone* (from that small subset of people actively reading the kernel list) is happy with that, I think that having support for at least Midway would be useful. On the one hand it's a decent LPAE platform (with memory actually exceeding 4GB), and on the other hand it's something with capable I/O (SATA) and networking, so one can actually stress test the system. Which is the reason I was using that for KVM testing, but even with that probably going away now there remain still some use cases, and be it for general ARM(32) testing.

How many bugs have you found on this platform that you would not have
on a more popular one? And, how many of those bugs only affected this
platform, i.e. just adding onto the support burden without positive
impact to the broader community?

> I don't particularly care about the more optional parts like EDAC, cpuidle, or cpufreq, but I wonder if keeping in at least the rather small SATA and XGMAC drivers and basic platform support is feasible.

At what point are you better off just running under QEMU/virtualization?

> If YAML DT bindings are used as an excuse, I am more than happy to convert those over.
>
> And if anyone has any particular gripes with some code, maybe there is a way to fix that instead of removing it? I was always wondering if we could get rid of the mach-highbank directory, for instance. I think most of it is Highbank (Cortex-A9) related.

Again, how do you fix it if nobody has signed up for maintaining and
keeping it working? Doing blind changes that might or might not work
is not a way to keep a platform supported.

Just because code is removed, it doesn't mean it can't be reintroduced
when someone comes along and wants to do that. Look at some of the
recent additions of old OLPC hardware support, for example. But
there's a difference between this and keeping the code around hoping
that someone will care about it. It's not lost, and it's easy to bring
back.



-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
