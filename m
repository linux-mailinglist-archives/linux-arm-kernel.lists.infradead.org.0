Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED60F159DB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 00:54:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkbWcyiThBWMh0F/ZjLBXvoLgZ5X9BoQXhoaZiH5tW0=; b=O8rzF6+7lboV8c
	dyZTYPF9df5+g8hdPyR98KbVJCNM97EI7L79z4dXggLl7Ukmu6EgbElcPkZu+FW/ivPkFlcECPUMo
	4Oo4Yqmn/UNJk6A6VLvuCV00BM8/zEEgGywrIwdqOCZl4Ga/PteugQjjkWajUIj6PC6xhRWyUv8r1
	4dh8A3oSrziREJBH9b3xjTIUQcWA2FOjN7v92oakzsU1WSWS7wfctXIfrqJc+M+wXfx0W+b75O8st
	hibajxGVZWw32lk7VRvFcIcHah1wcXb2z7SCA3XEREDQwf+C3TE9rYUxvCJNQwK7y3wyA7S3eJSHw
	1eOeWMZOOPWOXQeEZvEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1fMA-0007fF-VP; Tue, 11 Feb 2020 23:54:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1fM2-0007eW-2C
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 23:54:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so195347plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 15:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BDlxFx20QE0gAgkEMA+u4mAwlJYSDizranolCfN6FSU=;
 b=XB7DUxrOlRWKCxIVzsmwUiozIyPNm+XipqRy+ojNQXQ4il5NSGcySle4DA3copkxR0
 txpPB/fPke36xIv/qe2phszSj0yMMBhZ7SSIKgC8wlYAX/nwLnydJ9528PktuoKka0Xo
 FIQk6kwnmb94p+mMQF56OxOJi3mG8ahbOTuU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BDlxFx20QE0gAgkEMA+u4mAwlJYSDizranolCfN6FSU=;
 b=fEiHifN/3RFGqrdSBqWnB5CZDikY/F70lGK0k1VQmLdX/mnl2YVwjyklezjeq+3blu
 i4Mtcr7AdHpLwXGEPF4TXgTk4RJy9MCZbWYNtmYROnO2dHRnc2yFl73gPWpUs/5ka+uO
 3D3j7ULveF9pN7RVOfIipycLJzbYT9NZpb9hslHh2IbcHWLPa0kxgsbiEovoa+l1onVJ
 1ZskBHs5glXSlsgry+uXn4z3LbI37lZ6UOPxjB+Q7AW/U6MSEDyubYxj5VPwbva+a/zi
 JdmyiOlSQMgwFl5nfhPvfTh/TqWejnHgFEaOdEVBlmOzjJ5GYK6P156oxZHfl1H/Msv4
 693Q==
X-Gm-Message-State: APjAAAUNzxsH6ekWXQCxn0fPlAQRihddMLoNw8vVEnb2V0VLwPCQ7cy6
 HEtASKuvYZz9WWPva3HvcFqFvw==
X-Google-Smtp-Source: APXvYqwqQSXGq4Fmc5d6MiCNIFPhP1UefR6VzsmHhkS/fi/pcrd5lNid2Jli/7N0q+/799PEFAxbdw==
X-Received: by 2002:a17:902:708b:: with SMTP id
 z11mr5645748plk.121.1581465248817; 
 Tue, 11 Feb 2020 15:54:08 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id l13sm4513339pjq.23.2020.02.11.15.54.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 15:54:08 -0800 (PST)
Date: Tue, 11 Feb 2020 15:54:06 -0800
From: Kees Cook <keescook@chromium.org>
To: shuah <shuah@kernel.org>
Subject: Re: [PATCH v3 7/7] selftests/exec: Add READ_IMPLIES_EXEC tests
Message-ID: <202002111549.CF18B7B3B@keescook>
References: <20200210193049.64362-1-keescook@chromium.org>
 <20200210193049.64362-8-keescook@chromium.org>
 <4f8a5036-dc2a-90ad-5fc8-69560a5dd78e@kernel.org>
 <202002111124.0A334167@keescook>
 <c09c345a-786f-25d2-1ee5-65f9cb23db6d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c09c345a-786f-25d2-1ee5-65f9cb23db6d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_155410_130793_0178A196 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jann Horn <jannh@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, Hector Marco-Gisbert <hecmargi@upv.es>,
 Russell King <linux@armlinux.org.uk>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@mellanox.com>,
 linux-kselftest@vger.kernel.org, kernel-hardening@lists.openwall.com,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 02:06:53PM -0700, shuah wrote:
> On 2/11/20 12:25 PM, Kees Cook wrote:
> > On Tue, Feb 11, 2020 at 11:11:21AM -0700, shuah wrote:
> > > On 2/10/20 12:30 PM, Kees Cook wrote:
> > > > In order to check the matrix of possible states for handling
> > > > READ_IMPLIES_EXEC across native, compat, and the state of PT_GNU_STACK,
> > > > add tests for these execution conditions.
> > > > 
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > 
> > > No issues for this to go through tip.
> > > 
> > > A few problems to fix first. This fails to compile when 32-bit libraries
> > > aren't installed. It should fail the 32-bit part and run other checks.
> > 
> > Do you mean the Makefile should detect the missing compat build deps and
> > avoid building them? Testing compat is pretty important to this test, so
> > it seems like missing the build deps causing the build to fail is the
> > correct action here. This is likely true for the x86/ selftests too.
> > 
> > What would you like this to do?
> > 
> 
> selftests/x86 does this already and runs the dependency check in
> x86/Makefile.
> 
> 
> check_cc.sh:# check_cc.sh - Helper to test userspace compilation support
> Makefile:CAN_BUILD_I386 := $(shell ./check_cc.sh $(CC)
> trivial_32bit_program.c -m32)
> Makefile:CAN_BUILD_X86_64 := $(shell ./check_cc.sh $(CC)
> trivial_64bit_program.c)
> Makefile:CAN_BUILD_WITH_NOPIE := $(shell ./check_cc.sh $(CC)
> trivial_program.c -no-pie)
> 
> Take a look and see if you can leverage this.

I did before, and it can certainly be done, but their stuff is somewhat
specific to x86_64/ia32. I'm looking at supporting _all_ compat for any
64-bit architecture. I can certainly write some similar build tooling,
but the question I have for you is one of coverage:

If a builder is 64-bit, it needs to be able to produce 32-bit compat
binaries for testing, otherwise the test is incomplete. (i.e. the tests
will only be able to test native behavior and not compat). This doesn't
seem like an "XFAIL" situation to me, and it doesn't seem right to
silently pass. It seems like the build should explicitly fail because
the needed prerequisites are missing. Do you instead want me to just
have it skip building the compat binaries if it can't build them?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
