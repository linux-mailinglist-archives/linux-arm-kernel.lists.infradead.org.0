Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7106532DC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:40:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Boi44+HKPI32TfyhL3pVJnENfbjW1EmxOjQ/xu6CBN4=; b=awS/AI7pfBF08Z
	aGEerBmhpu1V45kuSrklX/p1gN46EiZ7OG8eWJjwXtVD0obJWDjtor62cs4LYXqYTN3yopFM3p9CK
	zLxBQTMsMgGvMmFxNrElV14FwqYq4vR4qRFHJCER+faILgbs1GE21/P4TcFxGfA590TGwkxr1o91w
	6lk4eAthEEQ/ys21VQ0IEgJ7UtayqMPsqps24YzXeGxirnXPN5MxWE0LPbEyWEvYoEXspfazSqr8W
	KIBcXMOxmr3SL890ZP/w0sVt16y6PvOImKyiHlNQSAjJyRpDHtjYc3+G1Z+npKVkgtr3D8dcBuAAt
	e/clFmfyQeiuMc4RWMEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkOI-0003iX-OV; Mon, 03 Jun 2019 10:40:34 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkOB-0003i7-Rh
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:40:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACC9AA78;
 Mon,  3 Jun 2019 03:40:25 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2DD0F3F5AF;
 Mon,  3 Jun 2019 03:40:23 -0700 (PDT)
Date: Mon, 3 Jun 2019 11:40:18 +0100
From: Will Deacon <will.deacon@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Message-ID: <20190603104018.GA27947@fuggles.cambridge.arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
 <DB7PR08MB3865C4AA36C9C465B2A687DABF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905300851.4A68705B0@keescook>
 <DB7PR08MB3865A83066179CE419D171EDBF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905301058.CA55245A0@keescook>
 <20190531092202.GA19208@fuggles.cambridge.arm.com>
 <201906020843.140EC55FB@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201906020843.140EC55FB@keescook>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_034027_899215_079A6257 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Luke Cheeseman <Luke.Cheeseman2@arm.com>,
 Diogo Sampaio <Diogo.Sampaio@arm.com>, Luke Cheeseman <luke.cheeseman@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Christof Douma <Christof.Douma@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 02, 2019 at 08:43:55AM -0700, Kees Cook wrote:
> On Fri, May 31, 2019 at 10:22:02AM +0100, Will Deacon wrote:
> > On Thu, May 30, 2019 at 11:05:15AM -0700, Kees Cook wrote:
> > > On Thu, May 30, 2019 at 04:55:08PM +0000, Luke Cheeseman wrote:
> > > > The semantics of this attribute are straightforward enough but it
> > > > raises some questions. One question being why would I want to turn off
> > > > BTI (also controlled by this option) for one function in a file? Which
> > > > gets a bit odd.
> > > 
> > > It's about leaving very early CPU startup functions in the kernel from
> > > getting marked up (since they are running before or during the PAC setup).
> > > 
> > > > I don't know if the alternatives have been suggested but it's
> > > > possible to achieve the result you seem to be after (a function without
> > > > return address signing) in a couple of ways. First and foremost,
> > > > separating the function out into it's own file and compiling with
> > > > -mbranch-protection=none. Alternatively, writing the function in assembly
> > > > or perhaps even a naked function with inline assembly.
> > > 
> > > Fair enough. :) Thanks for the clarification. Yeah, split on compilation
> > > unit could work. (In the future, though, having the attribute flexibility
> > > would be nice.)
> > > 
> > > Kristina, would it be feasible to split these functions into a separate
> > > source file? (There doesn't seem to be a need to inline them, given
> > > they're not performance sensitive and only used once, etc?)
> > 
> > Right, and we could call it kernel.c
> > 
> > Sarcasm aside, please fix this in the toolchain. Moving logically unrelated
> > functions into one file just because the toolchain doesn't yet support this
> > feature just messes up the codebase and removes the incentive to get this
> > implemented properly. After all, you need something to do now that asm goto
> > is out of the way, right? ;)
> 
> LLVM tracking bug created...
> https://bugs.llvm.org/show_bug.cgi?id=42095

Thanks, Kees!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
