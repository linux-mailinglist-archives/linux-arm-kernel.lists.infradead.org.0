Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E88194459
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6q5zmpiTsU6PbiGXPK4yrnr6iNjMIV7hXsm2z2g3RA4=; b=NbXGYVz3zgzKvA
	P4Asya6rrx7+fxESfuMfEdRCU2s2C1wsMMy5iJNTPGfLacKPlhnbSO8IwzXZEUf69ZOThvGF4N/fC
	lFP2ufKyjrwCAxEyg2QGEBKWD3aN/JhtmU8mYrUXhm4VIdUOs08FN1PKTDwahALKThy1Yb87HngCB
	SOO7W0weaJ+rNnZhvoaghq9OrmJdntLc+uk12C3VhOaJ8JNk41snDOeXSt2SsUmcUcoUi5RG3zfFH
	+4Lw3n2pnuTz1iouMyKHHbMsJmHGm64pndiuzn8a1m/4XhWXUj/m+5ciINC0NplQe9d0jlXi++Bty
	PZYYz2WFuRtj5qPCyEzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVQ2-000182-G5; Thu, 26 Mar 2020 16:31:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVPr-000178-VZ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:31:37 +0000
Received: by mail-pl1-x641.google.com with SMTP id x1so2336680plm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 09:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZDF6On+HDyMfQFFmOzj2HQxDo1MqPfrIkTej+3BhvlQ=;
 b=fMaF0p1e3sw4WUqlnz+78vbRi0z7dyl2McMHXTD+sd1/6njnlDhaPruhcC8Rm/PONY
 h/KIZx8kfstf2SInDgM8Ia8ACWComL6cz15SRdgw2ZqSeVFDj6jKGl1qdbKgSajR39p6
 OWi/cobumFsmvp3qDjKwP7CpsIHjb95Q2VwBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZDF6On+HDyMfQFFmOzj2HQxDo1MqPfrIkTej+3BhvlQ=;
 b=eiiT8p2FV2hAIpME/QeuALgQbdlE1mpjiUMju5HcTKEO11EMBJ+arQasv4+ekRrI+k
 /YZG4qcv9pxAK/prmR96n+X0w+Arh3uHZr2pWJVvMr0/9Jgj8oZj9xgrzCphSnSt/K+H
 bOe1rw5x8zdX+2M8vzp1RIlEyPNqrOL1JhF9JKOXzcmHboX2xPz2x5lJKJKKsApG1tEQ
 JCqgdmI7Utinsy1/4mBqQiofYe5sxktfn1w5eizG7NnXBd0qz1Fosu4Qqh7GyoyzXyjn
 01iGKiCGkGQUfukTcg3u95xbdvP5iKEGwEMqVBp2vDV2UO9lctHLJ/ig6Kxpj4VPwVXG
 lNVg==
X-Gm-Message-State: ANhLgQ3YOEH8G1FXxF/ojOmB34KiJTyxuL4jfJ5YsE88/ZexDXiUbqWq
 8XzEHRiXjsdr9mdnk5Wjj1Ljw2V8b1I=
X-Google-Smtp-Source: ADFU+vuLwI1ER/8Bbsjtmss9W6jlCzZe3fmKIOXRb2Ju4TVJZ9hfmc4Ba4cmo4/+h6Vgp2PYRi2lvA==
X-Received: by 2002:a17:90a:2541:: with SMTP id
 j59mr883153pje.128.1585240294536; 
 Thu, 26 Mar 2020 09:31:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t60sm2044703pjb.9.2020.03.26.09.31.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 09:31:33 -0700 (PDT)
Date: Thu, 26 Mar 2020 09:31:32 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 5/5] arm64: entry: Enable random_kstack_offset support
Message-ID: <202003260926.83BC44B@keescook>
References: <20200324203231.64324-1-keescook@chromium.org>
 <20200324203231.64324-6-keescook@chromium.org>
 <20200325132127.GB12236@lakrids.cambridge.arm.com>
 <202003251319.AECA788D63@keescook>
 <20200326111521.GA72909@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326111521.GA72909@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_093136_042467_01992B11 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 11:15:21AM +0000, Mark Rutland wrote:
> On Wed, Mar 25, 2020 at 01:22:07PM -0700, Kees Cook wrote:
> > On Wed, Mar 25, 2020 at 01:21:27PM +0000, Mark Rutland wrote:
> > > On Tue, Mar 24, 2020 at 01:32:31PM -0700, Kees Cook wrote:
> > > > Allow for a randomized stack offset on a per-syscall basis, with roughly
> > > > 5 bits of entropy.
> > > > 
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > 
> > > Just to check, do you have an idea of the impact on arm64? Patch 3 had
> > > figures for x86 where it reads the TSC, and it's unclear to me how
> > > get_random_int() compares to that.
> > 
> > I didn't do a measurement on arm64 since I don't have a good bare-metal
> > test environment. I know Andy Lutomirki has plans for making
> > get_random_get() as fast as possible, so that's why I used it here.
> 
> Ok. I suspect I also won't get the chance to test that in the next few
> days, but if I do I'll try to share the results.

Okay, thanks! I can try a rough estimate under emulation, but I assume
that'll be mostly useless. :)

> My concern here was that, get_random_int() has to grab a spinlock and
> mess with IRQ masking, so has the potential to block for much longer,
> but that might not be an issue in practice, and I don't think that
> should block these patches.

Gotcha. I was already surprised by how "heavy" the per-cpu access was
when I looked at the resulting assembly (there looked to be preempt
stuff, etc). But my hope was that this is configurable so people can
measure for themselves if they want it, and most people who want this
feature have a high tolerance for performance trade-offs. ;)

> > I couldn't figure out if there was a comparable instruction like rdtsc
> > in aarch64 (it seems there's a cycle counter, but I found nothing in
> > the kernel that seemed to actually use it)?
> 
> AArch64 doesn't have a direct equivalent. The generic counter
> (CNTxCT_EL0) is the closest thing, but its nominal frequency is
> typically much lower than the nominal CPU clock frequency (unlike TSC
> where they're the same). The cycle counter (PMCCNTR_EL0) is part of the
> PMU, and can't be relied on in the same way (e.g. as perf reprograms it
> to generate overflow events, and it can stop for things like WFI/WFE).

Okay, cool; thanks for the details! It's always nice to confirm I didn't
miss some glaringly obvious solution. ;)

For a potential v2, should I add your reviewed-by or wait for your
timing analysis, etc?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
