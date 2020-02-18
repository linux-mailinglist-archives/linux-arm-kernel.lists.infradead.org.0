Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F250F162ECA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:40:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBbtjYeBpbqirfipF7u5m9o4+z9XajBOt02pMWHV3aA=; b=qhuOj0hah0TiPt
	d367fVUxkvlQ/U+Nkn1LjoqB+1NTuG1W5kc/XSvJFgwLc77sZzzKZoR4UxHCGhmBoC1tSj0OkHhAU
	Ampdr49T6r0zlvpebH+F6Ioo7z1AgHceJeZJ6RCiLpciKvH6xYcHclVLZnwiKVyE5I8uN2znZSDup
	tbAJeAwQiQP/duqy4CbN/RNpwYbfimekPNp90KbBglNJmm/T+liDgTNbC+X1XJSfZGyiY6omfosmm
	umYRZ029N71SUDL7bwatye2IP3qbCsM88Qf92FAIziq6LSPpYMQeaSX46qAM0J0HjZ3dWrfUaya+V
	/d57ijn0ZuNaNEoFsgdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47nP-00021h-46; Tue, 18 Feb 2020 18:40:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47nD-0001zW-MA
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:40:25 +0000
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02C6224677
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 18:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582051223;
 bh=e0prGkshvWw2XTwL3+iei7JE8F3vbsgEto2sLKzoNxY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZbapHghKemvj/oI+zpPIruW3rQ0y+/IGCFK4hWmOUDx7Vi4fNxeSS/WMkU/tOfVw6
 5U9tzmE0siFMLLMGiimacSWFAD6i3onMYAlpQEevIhoPtM05rP/W3Mn7mRRqz8OUEZ
 FvJ+rEAk2hZeuYncgmnHdz8KREoKXg7XPBgExTnc=
Received: by mail-qk1-f176.google.com with SMTP id v2so20543250qkj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 10:40:22 -0800 (PST)
X-Gm-Message-State: APjAAAXR/gL5DpCNRT23XGZWS5IW3sjP5MswtgcxLDPoXJz502KHa0xA
 icwLDZh39ZjV5Ink46yCZewv9zhPqOESaxSb1Q==
X-Google-Smtp-Source: APXvYqzzc5l2bT41Ulxw896RzAsZHa163jCmWCxKmNgy3aUdTfnzFWB1uBJXqNRZFmClh71pLAlutTDYlRFRVHXfwrQ=
X-Received: by 2002:ae9:f205:: with SMTP id m5mr20551704qkg.152.1582051221993; 
 Tue, 18 Feb 2020 10:40:21 -0800 (PST)
MIME-Version: 1.0
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218181356.09ae0779@donnerap.cambridge.arm.com>
In-Reply-To: <20200218181356.09ae0779@donnerap.cambridge.arm.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 18 Feb 2020 12:40:10 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJpDLn5Zr2UHno1TeReqrwZ-HAAfd78AouigGi4sAQuOw@mail.gmail.com>
Message-ID: <CAL_JsqJpDLn5Zr2UHno1TeReqrwZ-HAAfd78AouigGi4sAQuOw@mail.gmail.com>
Subject: Re: [RFC PATCH 00/11] Removing Calxeda platform support
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_104023_766670_DF5BFEBE 
X-CRM114-Status: GOOD (  23.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Viresh Kumar <viresh.kumar@linaro.org>,
 "open list:LIBATA SUBSYSTEM \(Serial and Parallel ATA drivers\)"
 <linux-ide@vger.kernel.org>, Will Deacon <will@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, soc@kernel.org,
 Joerg Roedel <joro@8bytes.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Tony Luck <tony.luck@intel.com>,
 Alexander Graf <graf@amazon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-edac <linux-edac@vger.kernel.org>, Jens Axboe <axboe@kernel.dk>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 netdev <netdev@vger.kernel.org>, Cornelia Huck <cohuck@redhat.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Borislav Petkov <bp@alien8.de>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 12:14 PM Andre Przywara <andre.przywara@arm.com> wrote:
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
>
> So to not give the impression that actually *everyone* (from that small subset of people actively reading the kernel list) is happy with that, I think that having support for at least Midway would be useful. On the one hand it's a decent LPAE platform (with memory actually exceeding 4GB), and on the other hand it's something with capable I/O (SATA) and networking, so one can actually stress test the system. Which is the reason I was using that for KVM testing, but even with that probably going away now there remain still some use cases, and be it for general ARM(32) testing.

Does LPAE with more than 4GB actually need to work if there's not
another platform out there?

> I don't particularly care about the more optional parts like EDAC, cpuidle, or cpufreq, but I wonder if keeping in at least the rather small SATA and XGMAC drivers and basic platform support is feasible.

cpuidle isn't actually stable from what I remember. I think without
cpufreq, we default to 1.1GHz instead of 1.4.

> If YAML DT bindings are used as an excuse, I am more than happy to convert those over.

Thanks!

>
> And if anyone has any particular gripes with some code, maybe there is a way to fix that instead of removing it? I was always wondering if we could get rid of the mach-highbank directory, for instance. I think most of it is Highbank (Cortex-A9) related.

All the reset/suspend/poweroff and coherency parts are shared. The SCU
and L2 parts could be removed, but not really worth the surgery IMO.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
