Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8729C13CC53
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 19:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xx9QphxMrdjCh5UpAQGrmTwvhonlrsxYp79RF1r9umQ=; b=dgQQC9LNL9J1Qk
	V1bac7n4G9inRqCUAvEnsRVe28Q34PC8gI/ZpxAlMf3NmbR/C3hzNov32w9DDVn27fwIq4hApoguB
	jP+O0bU15uYOtypVEXMpLqEUtiGf+JEgiWZQLEXdoM19gzXW87aJ0pdayP9hNGnpG7if8qOs4Bn5L
	T1jYTrhayAk5YVVBNo9ugH9Qr06fTnJSi4BwDXUscWjLUPhWbONQTnEiSpeNtZfrp1cRCD+2MV4N2
	PqKfiQP12HJP/RyoH6re6n8BqQ2riyy1CmCUUN/WZ5a4tmApEEHkWSoaE46PH5I64sP14scjJGc37
	s3HV6McGmVEnCP+qR2KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irne6-0003GE-3n; Wed, 15 Jan 2020 18:44:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irndv-0003F6-9v
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 18:43:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30BEA24671;
 Wed, 15 Jan 2020 18:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579113831;
 bh=/eFC1/94GM/E14LrzsWyGdijl3QoD8C9TR2FDKmnYcw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wmu6omqSUifD8yHMKfUjlm2U8XK4g8Z1dnok1u+NOuQdD8aL5ZRbGaM92SbfMnMlv
 O9V5C3K7z5Bzw50HUB3j7y7AZYx9QiybpTkCP8mttCRv7UUyyRuPcQIKjEmCN4opAA
 /zfs3XwxOLIo7jh2ipu4SfeZW37uo5/9lmZCpCzM=
Date: Wed, 15 Jan 2020 18:43:47 +0000
From: Will Deacon <will@kernel.org>
To: Jiri Slaby <jslaby@suse.com>
Subject: Re: [PATCH 2/3] arm64: lib: Use modern annotations for assembly
 functions
Message-ID: <20200115184346.GD31673@willie-the-truck>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-3-broonie@kernel.org>
 <20200107144445.GC29001@willie-the-truck>
 <20200107174741.GG4877@sirena.org.uk>
 <20200108122957.GA16658@willie-the-truck>
 <c241898d-3a0f-4356-0f2c-7d18ee35f45c@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c241898d-3a0f-4356-0f2c-7d18ee35f45c@suse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_104351_363557_00D25EF4 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 05:56:22PM +0100, Jiri Slaby wrote:
> On 08. 01. 20, 13:29, Will Deacon wrote:
> > On Tue, Jan 07, 2020 at 05:47:41PM +0000, Mark Brown wrote:
> >> On Tue, Jan 07, 2020 at 02:44:46PM +0000, Will Deacon wrote:
> >>> Jiri -- is it ok to omit the stack frame for leaf functions annotated with
> >>> SYM_FUNC_START? I'm guessing it should be, since the link register isn't
> >>> going to be clobbered. Could we update the documentation to reflect that?
> >>
> >> Yeah, the documentation isn't great on that.  I was going on the basis
> >> of both trying to minimize changes to the generated output as part of
> >> the bulk change and looking at it from the point of view of the caller -
> >> if as in this case the caller thinks it's a regular C function it seems
> >> sensible to annotate it as such.
> > 
> > Maybe a small tweak to the documentation as per below, indicating that the
> > stack stuff is just an x86-specific example?
> > 
> > Jiri?
> 
> Yes, the text in the documentation was too x86-specific. Could you send
> the below as a proper patch? Thanks.

Sorry it took so long:

https://lkml.kernel.org/r/20200115184305.1187-1-will@kernel.org

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
