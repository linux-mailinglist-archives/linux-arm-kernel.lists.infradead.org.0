Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5317C9D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XC3aXENJFFdjeJvtFkdGNQDdiJaTO2qCcxCgclAvguc=; b=FYbq/pfuyagx1o
	xuWtpAs5Opynljg4cftmCoAyi66jPuyl+gBU1cEOZ+Z8hU5e3YCkI3w5MmNiGtQYjnmX91YfYOi7M
	nitZDe72H5v2kP1umwoqfd3lnsZNw6yM9VGdUdD2C+PQqraRXp1HtNvzRl6CTP+iPU1VtfnxRvSZH
	VpXJZhXwGqUa+AdU3FqHB4DCQytkOviWkckrEq3QCkntF7ZLjP9GnOWNnbGcDd8fnxD2i3TIsZ6mE
	Frw8z7MjufIqV6HSof/5scYZJwc3iAePBA6cpbM73k7KTusQ5KNOccM95auHwGQxhY5GpeP2qxM76
	lw1M/AgC179ySVLWTC5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hss1b-00076d-U7; Wed, 31 Jul 2019 17:04:27 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hss1V-00075r-A5
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:04:22 +0000
Received: by mail-ed1-x541.google.com with SMTP id p15so66321036eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 10:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w3v6TLclWYCTjAr1Tti2BDVXfhzMXBqkZT8bGQWpyYs=;
 b=aOi9HiQRPHO4FOr23H0QJg5L4BRnfgz+Y7QvXWhB/ngiIQaEGHpBRMnl1OxzoXIBD2
 k43GqRNVGXw98UkWEJOgJJ2uCTXIijl6XMElm2r6cO8ZxA6p+VeKe0q36fAAh9KHjGXh
 YSgHNRaRuPZ5vFNks3rQ7KnUpdHhj099KPD3D99ZDMOC90fiBIPstXZKeDLSEGq6tymT
 9ON4RFhkvi6jSB8/Oj5Xi0cdIYetxeUWiifFJKWczZ8hgQpqdsJUnl9/Uwx6rJkeFEJj
 58AJWNsYbe4cmO3e3vyV70t0uKsb/DXhqgr2SLW8GdW3LoqfK74WF1+J9TrqIxeltae+
 yGYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w3v6TLclWYCTjAr1Tti2BDVXfhzMXBqkZT8bGQWpyYs=;
 b=Fel44AFw8RxEjEXnppxMvr80XgT6Diwk7rjntFgY5hinXmPdq3cJx1sO66fvBIDtT9
 SRO1gzyigIsxuA9uh+K/LtU76CkQUjzuidOUwnKf6hfC+WlF+JK3kRgU9XMSfWlf5CkZ
 u00eRYsT38w/ssWP8r4MtRUL2p7WF8C/3YSpm99SWkwedRLnfSLXtOT1SYXb8bccjmBR
 XP7/IdP2ToWo2fZX2TqHKi7dFGVjBWQP+JhuQ4X5qw4JqzvcQBd82chl0RXCtzkVOVXt
 Z5ojbUvgghzp3eWiGLyZbk/k852lYqg9F8tqGZG9cPDfQxXkBjcQTS2enqcTgJqIHVMP
 mD7g==
X-Gm-Message-State: APjAAAVLGPdZqCvXNiaaPVN/7Q+K7XB1it+EmnAbM0pdvUkV/20shxPH
 I+eg73ClPO+9RUw5IkAPDI6WSism8nnlv98rxysHK4MB
X-Google-Smtp-Source: APXvYqyW5t23CPvCpiYNBbUwB050BijLjhKoZGvCCP6vJyE4voxLk8m00zN6oc8wm1lTBdkVRCt4NjssIfYO0PsdD3Y=
X-Received: by 2002:a17:906:9447:: with SMTP id
 z7mr30023478ejx.165.1564592659700; 
 Wed, 31 Jul 2019 10:04:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
 <20190731163258.GH39768@lakrids.cambridge.arm.com>
 <CA+CK2bAYUFBBGo-LHBK4UWRK1tpx3AZ4Z9NkDxiDK0UYEDozaQ@mail.gmail.com>
 <20190731165007.GJ39768@lakrids.cambridge.arm.com>
In-Reply-To: <20190731165007.GJ39768@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 31 Jul 2019 13:04:08 -0400
Message-ID: <CA+CK2bBOSC0iYjq_A18DNaNCYskTTJJTkM4N-WAqssoxpxuNPg@mail.gmail.com>
Subject: Re: [RFC v2 0/8] arm64: MMU enabled kexec relocation
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_100421_347249_C20A0D57 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 12:50 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Jul 31, 2019 at 12:40:51PM -0400, Pavel Tatashin wrote:
> > On Wed, Jul 31, 2019 at 12:33 PM Mark Rutland <mark.rutland@arm.com> wrote:
> > >
> > > Hi Pavel,
> > >
> > > Generally, the cover letter should state up-front what the goal is (or
> > > what problem you're trying to solve). It would be really helpful to have
> > > that so that we understand what you're trying to achieve, and why.
>
> [...]
>
> > > > Here is the current data from the real hardware:
> > > > (because of bug, I forced EL1 mode by setting el2_switch always to zero in
> > > > cpu_soft_restart()):
> > > >
> > > > For this experiment, the size of kernel plus initramfs is 25M. If initramfs
> > > > was larger, than the improvements would be even greater, as time spent in
> > > > relocation is proportional to the size of relocation.
> > > >
> > > > Previously:
> > > > kernel shutdown       0.022131328s
> > > > relocation    0.440510736s
> > > > kernel startup        0.294706768s
> > >
> > > In total this takes ~0.76s...
> > >
> > > >
> > > > Relocation was taking: 58.2% of reboot time
> > > >
> > > > Now:
> > > > kernel shutdown       0.032066576s
> > > > relocation    0.022158152s
> > > > kernel startup        0.296055880s
> > >
> > > ... and this takes ~0.35s
> > >
> > > So do we really need this complexity for a few blinks of an eye?
> >
> > Yes, we have an extremely tight reboot budget, 0.35s is not an acceptable waste.
>
> Could you please elaborate on your use-case?
>
> Understanfin what you're trying to achieve would help us to understand
> which solutions make sense.

An extremely high availability device with an update story utilizing
kexec functionality for a faster kernel update and also for being able
to preserve some state in memory without wasting the time of copying
it to and from a backing storage. We at Microsoft will be using a
fleet of these devices. The total reboot budget is less than half a
second, out of which 0.44s is currently spent in kexec relocation.

Pasha

>
> Thanks,
> Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
