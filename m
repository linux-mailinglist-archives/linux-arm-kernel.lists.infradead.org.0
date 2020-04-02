Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0880E19C7F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 19:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0+oKjomq7d2YR5Za0i31cklbYVd9hG8Yx9XVxZ/9bQ=; b=HbyHiBG6N5DomV
	NDnNUIcLXO79V2stShwWDuQ5x7yAuU/hKKCBr+Rm9sw3OsMbFv1NAFl/FLcH5sqzbh1580Y1F7Xsl
	+i6pj+Zs5457GqZCaQvj0Y5pgLbSOh+0/N0aAfeneBqRJAJ/j6OK9k9RhB3cDqJA/Mclt1J+l0foy
	qRQ4su+ZZAY6IsuwLMQvbUzY9jxDkNIkm5TAXE+dYw06Cz9srQsYShplLB59IPll/I0MVwVc3EmOU
	PSlSik5+MWIOBYU1FNOrADVs14znIlorXQX0QkUaffT7s7g0f79jX5UVU6iFBO+Q+VrjQb9EHRTTv
	zBf5BCweNHTPaaQOWftA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK3c7-0002xB-Pq; Thu, 02 Apr 2020 17:26:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK3c1-0002wP-N3
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 17:26:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id k191so2121309pgc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 10:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=H5lB7pAvXIGYlFSVzFQn+Y4Z8wDMSG1ZSww0VcSBoT8=;
 b=gKNvgOy8hc6wCQvlSge37MBqulJCBRagCkj447Qm1o8xx2FINMhQg5yknXEoUR6m+Z
 ULQfZI01R/Qh6BD8443+HVRJj3c4uKax+LRFJqInEv1IolAfai65y4GBiay60zRG7BpJ
 TCadjYWSD4d+eJ6tLlRgQ4de9aCNzq574JQwM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=H5lB7pAvXIGYlFSVzFQn+Y4Z8wDMSG1ZSww0VcSBoT8=;
 b=O+UDBepoj4hdJeYs8FPS8L859xW3ZsNJ5zK7TUPD622pZuGzFeVKVI+tt/JwqNuSfE
 8AWKQI2RzrhTWj+HdjClB3n/1FQ/hYWhzoGWxLRfxqbP0qz2XXiDHIibKVM9qrMSC6Pw
 Qw8miy5nJZweQo2V0zGbduKSCtLeB9HXg7UiBaca2QDT6jxojYsbJdywKinOo+eWld3L
 u6WG+2NjxonNESs0BPTiBj2UQc3QTzumemrJRLl3iEhfmv92uE5svZvIDSWgmFh66zFn
 Ow0V3BNs8rwkYVRFs5EiKcdCm8u3G1+yLnvdO9F4u/S5+8+UO7d+v89KmgZKsBoDZAgN
 G7sQ==
X-Gm-Message-State: AGi0PubnOkF2ycr8jz1sxORYZWAJ4PT7A/RBn/9nOdII2ZdccifuhNgc
 vfj5R4z1rqo2dBv9TVS+cYxCHw==
X-Google-Smtp-Source: APiQypJ2hmcB7ZLOhajLAuwgEV7uDtr5aTLCSP2mbBo/qg5FkMdgwdaJkp+Be18iVsLhUUcAH8dMmA==
X-Received: by 2002:a05:6a00:2cf:: with SMTP id
 b15mr4105568pft.174.1585848400117; 
 Thu, 02 Apr 2020 10:26:40 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id p1sm4171243pjr.40.2020.04.02.10.26.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 10:26:39 -0700 (PDT)
Date: Thu, 2 Apr 2020 10:26:38 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH 0/9] Enable orphan section warning
Message-ID: <202004021023.D3D8AA3BE@keescook>
References: <20200228002244.15240-1-keescook@chromium.org>
 <CA+icZUWTnP8DYfbaMwKtJbG30v7bB4w6=ywo8gn8fvwr731mUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+icZUWTnP8DYfbaMwKtJbG30v7bB4w6=ywo8gn8fvwr731mUQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_102641_751087_0B62801F 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 James Morse <james.morse@arm.com>, linux-arch@vger.kernel.org,
 Borislav Petkov <bp@suse.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 06:20:57PM +0200, Sedat Dilek wrote:
> On Fri, Feb 28, 2020 at 1:22 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > Hi!
> >
> > A recent bug was solved for builds linked with ld.lld, and tracking
> > it down took way longer than it needed to (a year). Ultimately, it
> > boiled down to differences between ld.bfd and ld.lld's handling of
> > orphan sections. Similarly, the recent FGKASLR series brough up orphan
> > section handling too[2]. In both cases, it would have been nice if the
> > linker was running with --orphan-handling=warn so that surprise sections
> > wouldn't silently get mapped into the kernel image at locations up to
> > the whim of the linker's orphan handling logic. Instead, all desired
> > sections should be explicitly identified in the linker script (to be
> > either kept or discarded) with any orphans throwing a warning. The
> > powerpc architecture actually already does this, so this series seeks
> > to extend this coverage to x86, arm64, and arm.
> >
> > This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
> > landed), and has a minor conflict[4] with the ARM tree (related to
> > the earlier mentioned bug). As it uses refactorings in the asm-generic
> > linker script, and makes changes to kbuild, I think the cleanest place
> > for this series to land would also be through -tip. Once again (like
> > my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
> > this can go all together with the least disruption. Splitting it up by
> > architecture seems needlessly difficult.
> >
> > Thanks!
> >
> 
> Hi Kees,
> 
> what is the status of this patchset?
> Looks like it is not in tip or linux-next Git.

Based on the feedback, I have 3 TODO items:

- track down and eliminate (or explain) the source of the .got.plt on arm64
- enable orphan warnings for _all_ architectures
- refactor final link logic to perform the orphan warning in a clean way

I'm working through these (and other work) still. I'm hoping to have
another version up some time next week.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
