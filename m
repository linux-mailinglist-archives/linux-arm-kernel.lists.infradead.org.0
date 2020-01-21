Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0641442C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BYSRA7KnAwPC0iKCv4ZXUv4WbvbE4mz4nFuYuCnilw=; b=QqY3kFcvLWFjmy
	OdEtcRyAYC804D3/ax3/PgtS0DRrilqgEHOzZF3WiBK5ACzvi69ZD+b6mNnDmI7zGUq6MMPORbxYC
	2OuGiyaSvqlNtpUNuckVOgfLE98O7MEK6DPzjqdTxnZO0MFZRH6TfKUcsWaj3OtABT3wJuBD76iXv
	0K0Z1rqgDDJn99aNBKBPngkixb68Let/mioGyoz6bkil4U3Nzmi7iF57BATY7vuY1LKl+jV32XVXW
	fM+RsJ5wQLfGgXDxy+PEl61r7VVnymioHeSDzPb2ydifMFEmjMC++yLT6lxdG6Ny7E1/yn9bOcvEj
	y98R6yYDZYI7i0ighpSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itx1M-0004nR-FX; Tue, 21 Jan 2020 17:08:56 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itx19-0004lU-Nb
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:08:49 +0000
Received: by mail-pj1-x1042.google.com with SMTP id s94so1127490pjc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 09:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dIrTm/RxgY9EJkd3a5Dr38zt2odYwh4TDnr6W5Q+qys=;
 b=gQvDqxcxdamKDQrZx2OQCok3qtKY3gXBWh4kYRqnRnBq3Tkh1aaFaeGIKHiz/q0XGi
 Mlwt/HO/kGUaNKD5Mq7nh8fgYlnqqMEZVQZYcFySKshuCXjiXSSSH2AqSvlbQII4hoVi
 jnBeZQwvk4YTimzyM89BqTwleDidtDJ8+z8Go8jo4lypBMOvp6w1pU3I3AhSv93GugZC
 JT4ipzNaOPItexENB24NeBr8e2BiLREU4dQXqYAeMUhGMeK+33xmXGQ4/2mh0wFF/nBn
 +dwa7kTQlvhCWcSjNa/jW4qQyw3tGQyvcBm2A1Bm04SrnpuucgRNkH3Pv61+hPkCG8Fv
 xBwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dIrTm/RxgY9EJkd3a5Dr38zt2odYwh4TDnr6W5Q+qys=;
 b=PkB3j06U66CzAOqvzWJTuLi20fvVgz1BZUKtI4is6Jr4/OjtWIXV1fbqrzkPYSfhPK
 6/vVcVUgTkFHG1AtdWinc6aXPmiBOE9qrrlSmzwRQExxxT1Wlc8xeIT9HXYX8sUUKY2+
 N1jPl0wiBI0LLjaXdkLyXuWRpf/HM85qHBVHO7/236RK5Dg0qEWSOdrWJjkFShh65Z3W
 gYIpqK564G6lWChKTuO9ubrxjO/8A0LKwqVD9U3gbUAILZ1ypO5wJ/OivSo6j22qMVyC
 VhQ3CyNSNIV+xALRdejJHteM5YRCZDULKaIKQAtXx7Xl8TOjSs1CV62W0VqQ1wKKvEFY
 7luA==
X-Gm-Message-State: APjAAAW9XLir6jQaMj6PvTI2j+G7Yx+9zsI6fqQMWEhOaY118GdPikE4
 9pNbVjRS4nJGFqE9/U+RbRFJF1KFeVJmELemSG7JMQ==
X-Google-Smtp-Source: APXvYqyo9e64PgawBWyRyPp9bGng3lznayTKxwdX64VZLwZ6nVF+OLAlVfVCrYhXiMNMWoiqJcRPm8Aq9CNAsyYaKCA=
X-Received: by 2002:a17:90a:7784:: with SMTP id
 v4mr6604608pjk.134.1579626520305; 
 Tue, 21 Jan 2020 09:08:40 -0800 (PST)
MIME-Version: 1.0
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
 <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com>
 <20200121103101.GE11154@willie-the-truck>
In-Reply-To: <20200121103101.GE11154@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 21 Jan 2020 09:08:29 -0800
Message-ID: <CAKwvOd=_PqQWUvd_WZRpEr+T==3w6LpsHKBz3E9ybaQ0javVkw@mail.gmail.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_090843_766073_B9530C4E 
X-CRM114-Status: GOOD (  21.66  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Julien Thierry <jthierry@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, raphael.gault@arm.com,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 2:31 AM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Jan 13, 2020 at 07:57:48AM +0000, Julien Thierry wrote:
> > On 1/12/20 8:42 AM, Nathan Chancellor wrote:
> > > The 0day bot reported a couple of issues with clang with this series;
> > > the full report is available here (clang reports are only sent to our
> > > mailing lists for manual triage for the time being):
> > >
> > > https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
> > >
> >
> > Thanks, I'll have a look at those.
> >
> > > The first obvious issue is that this series appears to depend on a GCC
> > > plugin? I'll be quite honest, objtool and everything it does is rather
> > > over my head but I see this warning during configuration (allyesconfig):
> > >
> > > WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
> > >    Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
> > >      Selected by [y]:
> > >        - ARM64 [=y] && STACK_VALIDATION [=y]
> > >
> > > Followed by the actual error:
> > >
> > > error: unable to load plugin
> > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> > > open shared object file: No such file or directory'
> > >
> > > If this plugin is absolutely necessary and can't be implemented in
> > > another way so that clang can be used, seems like STACK_VALIDATION
> > > should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.
> > >
> >
> > So currently the plugin is necessary for proper validation. One option can
> > be to just let objtool output false positives on files containing jump
> > tables when the plugin cannot be used. But overall I guess it makes more
> > sense to disable stack validation for non-gcc builds, for now.
>
> Alternatively, could we add '-fno-jump-tables' to the KBUILD_CFLAGS if
> STACK_VALIDATION is selected but we're not using GCC? Is that sufficient
> to prevent generation of these things?

Surely we wouldn't want to replace jump tables with long chains of
comparisons just because objtool couldn't validate jump tables without
a GCC plugin for aarch64 for some reason, right?  objtool validation
is valuable, but tying runtime performance to a GCC plugin used for
validation seems bad.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
