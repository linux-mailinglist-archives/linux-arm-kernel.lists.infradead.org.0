Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8348C1BC464
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvoytCIHZW8iEJ6fnSPjsIblcfhol/YPeanXHUPdKww=; b=dzqnvyDuxJJO3H
	lkdnDt5+6LDt6lnZZnjythrug23FOEbmAvE056OKD+rxuWR1MZBeCZZer7Wsp4Tf5hxHp3+s/o5py
	B0cqx+UfhvnUD5u5/bYmePcBVFGcuGh2WBgHL0v+hDIbf+g8djkJxkrKoTw4iGDnfY2tTsE6s0b7j
	o6RD5EHTU5Yo4tQKDKfAj3nDv8+Ia/+K523BLEMmJngnnmkXPTjQAIU2zp1YJ3aTzksRFCKgraiOH
	3Ic6W7MIBlJjnWE1GcNlHmURFO/MmhJe+vdP8rzLLoa1l8qXFGuiG9kAYSLu9185iSNv7mqZ68ETp
	Hj+gx9CNCZ/pFcw2+BMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSgM-0007fq-Kv; Tue, 28 Apr 2020 16:02:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSgA-0007f7-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:01:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC13F20575;
 Tue, 28 Apr 2020 16:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588089710;
 bh=+hCcSrtU4Z9NRNiGVI8Xsd43qyZ27ONKAD8GFB/miMU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ilt3xTEkYMKB4sqTEUeQ5Qt9HWHPAIk9ZUBmkp4cvxACNz+SabFBXiVl5D67vY2Ps
 MaAXQNKjTVFGpMSTnWuxXiiGB160mdCBU9AkxqppIi9bY9vg6eg/U+dj2uXxLjq66z
 Hv1w6WxTY0r9q0pcA8koz/oNQuQXrlcFAsnmn/es=
Date: Tue, 28 Apr 2020 17:01:43 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200428160141.GD12697@willie-the-truck>
References: <20200316165055.31179-1-broonie@kernel.org>
 <20200422154436.GJ4898@sirena.org.uk> <20200422162954.GF3585@gaia>
 <20200428132804.GF6791@willie-the-truck>
 <20200428151205.GH5677@sirena.org.uk>
 <20200428151815.GB12697@willie-the-truck>
 <20200428155808.GJ5677@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428155808.GJ5677@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_090150_845512_2A830713 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 04:58:12PM +0100, Mark Brown wrote:
> On Tue, Apr 28, 2020 at 04:18:16PM +0100, Will Deacon wrote:
> > On Tue, Apr 28, 2020 at 04:12:05PM +0100, Mark Brown wrote:
> 
> > > It's probably easier for me if you just use the existing branch, I've
> > > already got a branch based on a merge down.
> 
> > Okey doke, I'll funnel that in the direction of linux-next then. It does
> > mean that any subsequent patches for 5.8 that depend on BTI will need to
> > be based on this branch, so as long as you're ok with that then it's fine
> > by me (since I won't be able to apply patches if they refer to changes
> > introduced in the recent merge window).
> 
> That's not a problem, that's what I've got already and if I try to send
> everything based off -rc3 directly the series would get unmanagably
> large.  Actually unless you think it's a bad idea I think what I'll do
> is go and send out a couple of the preparatory changes (the insn updates
> and the last bit of annotation conversions) separately for that branch
> while I finalize the revisions of the main BTI kernel bit, hopefully
> that'll make the review a bit more approachable.

Okey doke, sounds good to me. I'm queuing stuff atm, so as long you tell
me what I need to apply things against then we should be good.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
