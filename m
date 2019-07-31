Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42C47C92C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Up4c1zrlzyOgqTL31uFIxIuWVG3k697zCDfdR7UZrJs=; b=r03o5gEcCinArB
	JOnmwgr/bLD8XYBNswljX2MMhwu0ZRwHACcZxFbSEyVSDc9s064qgAqNllgBVkDepCCPKqTYnVIvW
	4jsFGZHdXvVfghdrb5gJ0I/R+AIpJ71adUeYqBvyOEqY3MFDDOzGg5zDBFPzidq/n30Ho5IP553rd
	Pv6RXx2/gGyqc4SvDucjIwlQ6Plj7nXNc4f83qGGEItkycOjJACuCnqQcoz52B2P3PZW6DiRwBHar
	R8NS8MhJZFkmpSdAb25XuYdaxZBmn2v1okGElzZDp5h0Hunq1OXO/8j/gSxfaxyLoM6VV1Qcjr+dZ
	GBRD1FX50Cj3oYZahROg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrny-0003gT-Du; Wed, 31 Jul 2019 16:50:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrnp-0003el-7o; Wed, 31 Jul 2019 16:50:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EEE3337;
 Wed, 31 Jul 2019 09:50:12 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D8EA3F71F;
 Wed, 31 Jul 2019 09:50:09 -0700 (PDT)
Date: Wed, 31 Jul 2019 17:50:07 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [RFC v2 0/8] arm64: MMU enabled kexec relocation
Message-ID: <20190731165007.GJ39768@lakrids.cambridge.arm.com>
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
 <20190731163258.GH39768@lakrids.cambridge.arm.com>
 <CA+CK2bAYUFBBGo-LHBK4UWRK1tpx3AZ4Z9NkDxiDK0UYEDozaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bAYUFBBGo-LHBK4UWRK1tpx3AZ4Z9NkDxiDK0UYEDozaQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_095013_322136_5FF7342A 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Jul 31, 2019 at 12:40:51PM -0400, Pavel Tatashin wrote:
> On Wed, Jul 31, 2019 at 12:33 PM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > Hi Pavel,
> >
> > Generally, the cover letter should state up-front what the goal is (or
> > what problem you're trying to solve). It would be really helpful to have
> > that so that we understand what you're trying to achieve, and why.

[...]

> > > Here is the current data from the real hardware:
> > > (because of bug, I forced EL1 mode by setting el2_switch always to zero in
> > > cpu_soft_restart()):
> > >
> > > For this experiment, the size of kernel plus initramfs is 25M. If initramfs
> > > was larger, than the improvements would be even greater, as time spent in
> > > relocation is proportional to the size of relocation.
> > >
> > > Previously:
> > > kernel shutdown       0.022131328s
> > > relocation    0.440510736s
> > > kernel startup        0.294706768s
> >
> > In total this takes ~0.76s...
> >
> > >
> > > Relocation was taking: 58.2% of reboot time
> > >
> > > Now:
> > > kernel shutdown       0.032066576s
> > > relocation    0.022158152s
> > > kernel startup        0.296055880s
> >
> > ... and this takes ~0.35s
> >
> > So do we really need this complexity for a few blinks of an eye?
> 
> Yes, we have an extremely tight reboot budget, 0.35s is not an acceptable waste.

Could you please elaborate on your use-case?

Understanfin what you're trying to achieve would help us to understand
which solutions make sense.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
